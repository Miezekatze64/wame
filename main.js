let wasm = undefined;

let WIDTH  = null;
let HEIGHT = null;

const canvas  = document.getElementById("canvas");
const ctx     = canvas.getContext("2d");

document.addEventListener('keydown', (e) => (wasm)? wasm.game_keydown(e.keyCode):{});
document.addEventListener('keyup',   (e) => (wasm)? wasm.game_keyup(e.keyCode):{});
document.addEventListener('mouseup', (e) => {
    if (wasm) {
        wasm.game_keyup(65);
        wasm.game_keyup(32);
        wasm.game_keyup(68);
        wasm.game_keyup(83);
    }
});

let prev = 0;
function loop(timestamp) {
    if (document.hasFocus()) {
        // calling update & render functions from WASM
        wasm.step(timestamp - prev, WIDTH, HEIGHT);
        wasm.render(WIDTH, HEIGHT);
    }

    // updating game loop
    prev = timestamp;
    window.requestAnimationFrame(loop);
}

const int_to_rgb = (color) => `rgb(${color&0xff0000}, ${color&0xff00}, ${color&0xff})`;

// Exported functions
function render_fill_rect(color, x, y, w, h) {
    ctx.fillStyle = int_to_rgb(color);
    ctx.fillRect(x, y, w, h);
}

function render_text(color, ptr, sz, x, y) {
    let text      = ptr2str(ptr);
    ctx.fillStyle = int_to_rgb(color);
    ctx.font      = `${sz}px serif`;
    ctx.textAlign = "center";
    ctx.fillText(text, x, y);
}

function ptr2str(ptr) {
    let heap = new Uint8Array(wasm.memory.buffer);
    let str = "";
    for (let i = ptr; heap[i] != 0; i++) {
        str += String.fromCharCode(heap[i]);
    }
    return str;
}

function println(ptr) {
    console.log("--- WASM ---\n", ptr2str(ptr));
}

async function request_level(ptr, buf) {
    let filename = "./" + ptr2str(ptr) + ".lvl";
    console.log("Requested file:", filename);
    let res = await fetch(filename);
    let text = await res.text();

    let heap = new Uint8Array(wasm.memory.buffer, buf, text.length);
    for (let i = 0; i < text.length; i++) {
        heap[i] = text.charCodeAt(i);
    }

    heap[text.length] = 0;
}

// initializing WASM
WebAssembly.instantiateStreaming(fetch('./main.wasm'), {
    env: {
        render_fill_rect,
        println,
        request_level,
        render_text
    }
}).then(w => {
    wasm          = w.instance.exports;
    let ptr       = wasm.init();
    let heap      = new Uint32Array(wasm.memory.buffer);

    WIDTH         = wasm.get_width();
    HEIGHT        = wasm.get_height();
    canvas.width  = WIDTH;
    canvas.height = HEIGHT;

    // starting game loop
    window.requestAnimationFrame(loop);
});
