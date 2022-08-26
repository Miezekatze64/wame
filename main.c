void render_fill_rect(int color, int x, int y, int w, int h);
void println(const char *str);
void request_level(const char *const name, char *const buffer);
void render_text(int color, const char *text, int size, int x, int y);

#include <stdbool.h>
typedef unsigned long size_t;

#define BLOCK_SIZE 25
#define COLS       50
#define ROWS       30

#define WIDTH       (BLOCK_SIZE * COLS)
#define HEIGHT      (BLOCK_SIZE * ROWS)

#define ARROW_RIGHT 39
#define ARROW_LEFT  37
#define ARROW_UP    38
#define ARROW_DOWN  40

#define PLAYER_SIZE  (BLOCK_SIZE * 2)

#define JUMP_FACTOR  0.1
#define JUMP_MAX_VEL 2.0

#define MAX_X_VEL    1.5
#define X_DELTA_VEL  0.15

#define FRICTION     0.08
#define FACTOR       2

typedef struct {
    const int size;
    int x;
    int y;
    double vy;
    double vx;
} player_t;

static player_t player = {
    .size = PLAYER_SIZE,
    .x = 0,
    .y = HEIGHT - PLAYER_SIZE,
    .vx = 0,
    .vy = 0,
};

typedef struct {
    int x, y;
} pos;

static bool active[ROWS][COLS] = {{false}};

static char levels[10][(COLS + 1) * ROWS];
static pos goal = {0, 0};
static int right = false;
static int left = false;

static bool grounded = false, jumping = false;

static int level = -1;

static int collision_y(player_t *const player, const int dy) {
    if (player->y + dy > HEIGHT - player->size) return HEIGHT - player->size;

    for (size_t i = 0; i < ROWS; i++) {
        for (size_t j = 0; j < COLS; j++) {
            if (active[i][j]) {
                int obj_x = j * BLOCK_SIZE;
                int obj_y = i * BLOCK_SIZE;
                if (player->x + player->size > obj_x && player->x < obj_x + BLOCK_SIZE) {
                    if ((player->y + player->size <= obj_y && player->y + player->size + dy >= obj_y) ||
                        (player->y >= obj_y + BLOCK_SIZE   && player->y + dy <= obj_y + BLOCK_SIZE)) {
                        if (dy > 0) {
                            return obj_y - player->size;
                        } else if (dy < 0) {
                            return obj_y + BLOCK_SIZE;
                        }
                    }
                }
            }
        }
    }

    return -1;
}

static int collision_x(player_t *const player, const int dx) {
    if (player->x + dx > WIDTH - player->size) return WIDTH - player->size;
    if (player->x < 0) return 0;

    for (size_t i = 0; i < ROWS; i++) {
        for (size_t j = 0; j < COLS; j++) {
            if (active[i][j]) {
                int obj_x = j * BLOCK_SIZE;
                int obj_y = i * BLOCK_SIZE;
                if ((player->x + player->size <= obj_x && player->x + player->size + dx >= obj_x) ||
                    (player->x >= obj_x + BLOCK_SIZE && player->x + dx <= obj_x + BLOCK_SIZE)) {
                    if (player->y + player->size > obj_y && player->y < obj_y + BLOCK_SIZE) {
                        if (dx > 0) {
                            return obj_x - player->size;
                        } else if (dx < 0) {
                            return obj_x + BLOCK_SIZE;
                        }
                    }
                }
            }
        }
    }
    return -1;
}

static void update_player(int dt, player_t *const player) {
    if (right) {
        if (player->vx < MAX_X_VEL) player->vx += X_DELTA_VEL;
    }

    if (left) {
        if (player->vx > -MAX_X_VEL) player->vx -= X_DELTA_VEL;
    }

    if  (player->vx > 0) player->vx -= FRICTION;
    if  (player->vx < 0) player->vx += FRICTION;

    if (jumping && grounded) {
        player->vy = -JUMP_MAX_VEL;
        grounded = false;
    }

    if (player->vy < JUMP_MAX_VEL) player->vy += JUMP_FACTOR;

    int dx = (dt * player->vx) / FACTOR;
    int collx = collision_x(player, dx);
    if (collx == -1)
        player->x += dx;
    else {
        player->x   = collx;
        player->vx  = 0;
    }

    int dy = (dt * player->vy) / FACTOR;
    int colly = collision_y(player, dy);

    if (colly == -1)
        player->y   += dy;
    else {
        /*if (dy > 0) */grounded    = true;
        player->y   = colly;
        player->vy  = 0;
    }
}

void step(int dt) {
    if (levels[0][0] != 0) {
        if (level == -1) {
            level = 0;
            int index = 0;
            for (int i = 0; i < (COLS+1) * ROWS; i++) {
                if (levels[0][i] == '\n') continue;
                if (levels[0][i] == 'X' || levels[0][i] == 'x') {
                    goal.x = index % COLS;
                    goal.y = index / COLS;
                }
                active[index / COLS][index % COLS] = levels[0][i]=='#';
                index++;
            }
        }
    }
    update_player(dt, &player);
}


void render() {
    render_fill_rect(0x000000, 0, 0, WIDTH, HEIGHT);
    render_fill_rect(0xffff00, goal.x * BLOCK_SIZE, goal.y * BLOCK_SIZE, BLOCK_SIZE, BLOCK_SIZE);

    render_fill_rect(0xff0000, player.x, player.y, PLAYER_SIZE, PLAYER_SIZE);
    for (size_t i = 0; i < ROWS; i++) {
        for (size_t j = 0; j < COLS; j++) {
            if (active[i][j])
                render_fill_rect(0x00ff00, j * BLOCK_SIZE, i * BLOCK_SIZE, BLOCK_SIZE, BLOCK_SIZE);
        }
    }

    int goalx = goal.x*BLOCK_SIZE;
    int goaly = goal.y*BLOCK_SIZE;
    if (goalx+BLOCK_SIZE > player.x && goalx < player.x + player.size &&
        goaly+BLOCK_SIZE > player.y && goaly < player.y + player.size) {
        render_text(0xffffff, "You won!", 40, WIDTH/2, HEIGHT/2);
        println("you won!");
    }
}

void game_keydown(int keycode) {
    switch (keycode) {
    case ARROW_RIGHT:
    case 'D':
        right = true;
        break;
    case ARROW_LEFT:
    case 'A':
        left = true;
        break;
    case ' ':
    case ARROW_UP:
    case 'W':
        jumping = true;
        break;
    }
}

void game_keyup(int keycode) {
    switch (keycode) {
    case ARROW_RIGHT:
    case 'D':
        right = false;
        break;
    case ARROW_LEFT:
    case 'A':
        left = false;
        break;
    case ' ':
    case ARROW_UP:
    case 'W':
        jumping = false;
        break;
    }
}

void init() {
    println("initialized");
    request_level("level1", levels[0]);
}

int get_width()  {return WIDTH;}
int get_height() {return HEIGHT;}
