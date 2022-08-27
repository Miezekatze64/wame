void render_fill_rect(int color, int x, int y, int w, int h);
void println(const char *str);
void request_level(const char *const name, char *const buffer);
void render_text(int color, const char *text, int size, int x, int y);

typedef unsigned long size_t;
#define NULL ((void*)0)

#include <stdbool.h>

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

#define MAX_SHOT_PARTICLES 20

typedef struct {
    int x;
    int y;
    double vy;
    double vx;
    bool looking_right;
    bool alive;
    bool right, left, grounded, jumping;
} entity_t;

static entity_t player = {
    .x = 0,
    .y = HEIGHT - PLAYER_SIZE,
    .vx = 0,
    .vy = 0,
    .looking_right = true,
    .alive = true,
};

typedef struct {
    int x, y;
} pos;

typedef struct {
    bool existend;
    pos position;
    int vx;
    int vy;
} particle_t;

typedef struct {
    entity_t entity;
    int left_x;
    int right_x;
} enemy_t;

static particle_t shoot_particles[MAX_SHOT_PARTICLES];

static bool active[ROWS][COLS] = {{false}};

#define MAX_ENEMIES 20
static enemy_t enemies[MAX_ENEMIES] = {0};

static char levels[10][(COLS + 1) * ROWS];
static pos goal = {0, 0};

static int level = -1;
static bool shooting = false;

static int collision_y(const pos position, const int dy, const int W, const int H) {
    if (position.y + dy > HEIGHT - H) return HEIGHT - H;

    for (size_t i = 0; i < ROWS; i++) {
        for (size_t j = 0; j < COLS; j++) {
            if (active[i][j]) {
                int obj_x = j * BLOCK_SIZE;
                int obj_y = i * BLOCK_SIZE;
                if (position.x + W > obj_x && position.x < obj_x + BLOCK_SIZE) {
                    if ((position.y + H <= obj_y && position.y + H + dy >= obj_y) ||
                        (position.y >= obj_y + BLOCK_SIZE   && position.y + dy <= obj_y + BLOCK_SIZE)) {
                        if (dy > 0) {
                            return obj_y - H;
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

static int collision_x(const pos position, const int dx, const int W, const int H) {
    if (position.x + dx > WIDTH - W) return WIDTH - W;
    if (position.x < 0) return 0;

    for (size_t i = 0; i < ROWS; i++) {
        for (size_t j = 0; j < COLS; j++) {
            if (active[i][j]) {
                int obj_x = j * BLOCK_SIZE;
                int obj_y = i * BLOCK_SIZE;
                if ((position.x + W <= obj_x && position.x + W + dx >= obj_x) ||
                    (position.x >= obj_x + BLOCK_SIZE && position.x + dx <= obj_x + BLOCK_SIZE)) {
                    if (position.y + H > obj_y && position.y < obj_y + BLOCK_SIZE) {
                        if (dx > 0) {
                            return obj_x - W;
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

static void update_entity(int dt, entity_t *const entity) {
    if (entity->right) {
        if (!entity->left) entity->looking_right = true;
        if (entity->vx < MAX_X_VEL) entity->vx += X_DELTA_VEL;
    }

    if (entity->left) {
        if (!entity->right) entity->looking_right = false;
        if (entity->vx > -MAX_X_VEL) entity->vx -= X_DELTA_VEL;
    }

    if  (entity->vx > 0) {
        entity->vx -= FRICTION;
    }
    if  (entity->vx < 0) {
        entity->vx += FRICTION;
    }

    if (entity->jumping && entity->grounded) {
        entity->vy = -JUMP_MAX_VEL;
        entity->grounded = false;
    }

    if (entity->vy < JUMP_MAX_VEL) entity->vy += JUMP_FACTOR;

    int dx = (dt * entity->vx) / FACTOR;
    int collx = collision_x((pos){entity->x, entity->y}, dx, PLAYER_SIZE, PLAYER_SIZE);
    if (collx == -1)
        entity->x += dx;
    else {
        entity->x   = collx;
        entity->vx  = 0;
    }

    int dy = (dt * entity->vy) / FACTOR;
    int colly = collision_y((pos){entity->x, entity->y}, dy, PLAYER_SIZE, PLAYER_SIZE);

    if (colly == -1)
        entity->y   += dy;
    else {
        /*if (dy > 0) */entity->grounded    = true;
        entity->y   = colly;
        entity->vy  = 0;
    }
}

static void shoot(entity_t *player) {
    for (int i = 0; i < MAX_SHOT_PARTICLES; i++) {
        if (!shoot_particles[i].existend) {
            shoot_particles[i].existend = true;
            shoot_particles[i].position.x = (player->looking_right)?
                player->x + PLAYER_SIZE:
                player->x;
            shoot_particles[i].position.y = player->y + BLOCK_SIZE - (BLOCK_SIZE / 4);
            shoot_particles[i].vx = (player->looking_right)?1:-1;
            break;
        }
    }
}


#define SHOOT_COOLDOWN 15
static int cooldown = 0;
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
                if (levels[0][i] == 'P' || levels[0][i] == 'p') {
                    player.x = (index % COLS) * BLOCK_SIZE;
                    player.y = (index / COLS) * BLOCK_SIZE;
                }
                if (levels[0][i] == 'E' || levels[0][i] == 'e') {
                    int left = index;
                    // search for path
                    if (levels[0][i+1] == '-')
                        for (index++,i++; levels[0][i] == '-'; i++, index++);
                    //                    if (!(levels[0][i] == 'E' || levels[0][i] == 'e')) continue;

                    for (int i = 0; i < MAX_ENEMIES; i++) {
                        enemy_t *enemy = &enemies[i];
                        if (!enemy->entity.alive) {
                            enemy->entity.x = (index % COLS) * BLOCK_SIZE;
                            enemy->entity.y = (index / COLS-1) * BLOCK_SIZE;
                            enemy->entity.alive = true;
                            enemy->left_x = (left % COLS)   * BLOCK_SIZE;
                            enemy->right_x = (index % COLS-1) * BLOCK_SIZE;
                            break;
                        }
                    }
                }
                active[index / COLS][index % COLS] = levels[0][i]=='#';
                index++;
            }
        }
    }

    if (player.alive) update_entity(dt, &player);

    if (cooldown > 0) cooldown--;
    else {
        if (shooting) {
            shoot(&player);
            cooldown = SHOOT_COOLDOWN;
        }
    }

    for (int i = 0; i < MAX_SHOT_PARTICLES; i++) {
        particle_t *particle = &shoot_particles[i];
        if (!particle->existend) continue;
        if (collision_x(particle->position, particle->vx * dt, PLAYER_SIZE, BLOCK_SIZE/2) > 0 ||
            collision_y(particle->position, particle->vy * dt, PLAYER_SIZE, BLOCK_SIZE/2) > 0) {
            particle->existend = false;
            continue;
        }
        particle->position.x += particle->vx * dt;
        particle->position.y += particle->vy * dt;

        
        if (particle->position.x < 0 ||
            particle->position.x > WIDTH ||
            particle->position.y > HEIGHT) {
            particle->existend = false;
        }
    }

    for (int i = 0; i < MAX_ENEMIES; i++) {
        enemy_t *enemy = &enemies[i];
        if (enemy->entity.alive) {
            update_entity(dt, &enemy->entity);
            if (enemy->left_x >= enemy->entity.x)  enemy->entity.looking_right = true;
            if (enemy->right_x <= enemy->entity.x) enemy->entity.looking_right = false;
            
            if (enemy->entity.looking_right && enemy->entity.vx < MAX_X_VEL) enemy->entity.vx += X_DELTA_VEL;
            else if (enemy->entity.vx > -MAX_X_VEL)                   enemy->entity.vx -= X_DELTA_VEL;

            // check for player
            if ((player.x >= enemy->entity.x && player.x <= enemy->entity.x+PLAYER_SIZE) ||
                    (player.x+PLAYER_SIZE >= enemy->entity.x && player.x+PLAYER_SIZE <= enemy->entity.x+PLAYER_SIZE)) {
                    if ((player.y >= enemy->entity.y && player.y <= enemy->entity.y+PLAYER_SIZE) ||
                        (player.y+PLAYER_SIZE >= enemy->entity.y && player.y+PLAYER_SIZE <= enemy->entity.y+PLAYER_SIZE)) {
                        player.alive = false;
                        println("LOST");
                        break;
                    }
                }
            
            // check for shots
            for (int j = 0; j < MAX_SHOT_PARTICLES; j++) {
                particle_t *particle = &shoot_particles[j];
                if (!particle->existend) continue;
                if ((particle->position.x > enemy->entity.x && particle->position.x < enemy->entity.x+PLAYER_SIZE) ||
                    (particle->position.x+PLAYER_SIZE > enemy->entity.x && particle->position.x+PLAYER_SIZE < enemy->entity.x+PLAYER_SIZE)) {
                    if ((particle->position.y > enemy->entity.y && particle->position.y < enemy->entity.y+PLAYER_SIZE) ||
                        (particle->position.y+PLAYER_SIZE > enemy->entity.y && particle->position.y+PLAYER_SIZE < enemy->entity.y+PLAYER_SIZE)) {
                        enemy->entity.alive = false;
                        break;
                    }
                }
            }
        }
    }
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

    if (!player.alive) render_text(0xffffff, "You lost! (r to restart)", 40, WIDTH/2, HEIGHT/2);

    int goalx = goal.x*BLOCK_SIZE;
    int goaly = goal.y*BLOCK_SIZE;
    if (goalx + BLOCK_SIZE > player.x && goalx < player.x + PLAYER_SIZE &&
        goaly + BLOCK_SIZE > player.y && goaly < player.y + PLAYER_SIZE) {
        render_text(0xffffff, "You won!", 40, WIDTH/2, HEIGHT/2);
        println("WON");
    }

    for (int i = 0; i < MAX_SHOT_PARTICLES; i++) {
        particle_t particle = shoot_particles[i];
        if (particle.existend)
            render_fill_rect(0x00ffff,
                             particle.position.x,
                             particle.position.y,
                             BLOCK_SIZE*2, BLOCK_SIZE/2);
    }

    for (int i = 0; i < MAX_ENEMIES; i++) {
        enemy_t enemy = enemies[i];
        if (enemy.entity.alive)
            render_fill_rect(0x0000ff,
                             enemy.entity.x,
                             enemy.entity.y,
                             PLAYER_SIZE, PLAYER_SIZE);
    }
}

void game_keydown(int keycode) {
    switch (keycode) {
    case ARROW_RIGHT:
    case 'D':
        player.right = true;
        break;
    case ARROW_LEFT:
    case 'A':
        player.left = true;
        break;
    case ' ':
    case ARROW_UP:
    case 'W':
        println("JUMP!");
        player.jumping = true;
        break;
    case ARROW_DOWN:
    case 'S':
        if (cooldown == 0) {
            println("SHOOT");
            shoot(&player);
            cooldown = SHOOT_COOLDOWN;
        }
        shooting = true;
        break;
    }
}

void game_keyup(int keycode) {
    switch (keycode) {
    case ARROW_RIGHT:
    case 'D':
        player.right = false;
        break;
    case ARROW_LEFT:
    case 'A':
        player.left = false;
        break;
    case ' ':
    case ARROW_UP:
    case 'W':
        player.jumping = false;
        break;
    case ARROW_DOWN:
    case 'S':
        shooting = false;
        cooldown = 0;
        break;
    case 'R':
        player.x     = 0;
        player.y     = HEIGHT - PLAYER_SIZE;
        player.alive = true;
        level        = -1;
        for (int i = 0; i < MAX_ENEMIES; i++) {
            enemies[i].entity.alive = false;
        }
        break;
    }
}

void init() {
    println("initialized");
    request_level("level1", levels[0]);
}

int get_width()  {return WIDTH;}
int get_height() {return HEIGHT;}
