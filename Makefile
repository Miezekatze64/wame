WASMFLAGS=--target=wasm32 --no-standard-libraries -Wl,--export-all -Wl,--no-entry -Wl,--allow-undefined
CFLAGS=-O3 -W -Wformat=2 -g -Wall -Wextra -Werror -pedantic -ffreestanding
LDFLAGS=`pkg-config --libs sdl2 SDL2_ttf`
FILE=main.c
SDL_FILES=sdl_main.c
OUT=main
CC=clang

all: wasm sdl

.PHONY wasm:
wasm: ${FILES}
	${CC} ${FILE} -o ${OUT}.wasm ${CFLAGS} ${WASMFLAGS}

.PHONY sdl:
sdl: ${FILES}
	${CC} ${FILE} ${SDL_FILES} -o ${OUT} ${CFLAGS} ${LDFLAGS}

run: ${OUTFILE}
	./${OUTFILE}
