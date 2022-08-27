#include <SDL2/SDL.h>
#include <SDL2/SDL_error.h>
#include <SDL2/SDL_ttf.h>
#include <SDL2/SDL_events.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_timer.h>
#include <SDL2/SDL_video.h>

#include <stdio.h>

int get_width();
int get_height();
void step(int dt, const int width, const int height);
void render(const int width, const int height);
void init(void);
void game_keyup(int key);
void game_keydown(int key);

static SDL_Renderer *renderer = NULL;

void render_fill_rect(int color, int x, int y, int w, int h) {
    if (renderer != NULL) {
        SDL_Rect rect = {
            x, y, w, h
        };

        SDL_SetRenderDrawColor(renderer, (color >> 8*2) & 0xff, (color >> 8*1) & 0xff, color & 0xff, 0xff);
        SDL_RenderFillRect(renderer, &rect);
    }
    (void)color;
}
void println(const char *str) {
    printf("%s\n", str);
}
void request_level(const char *const name, char *const buffer) {
    char *buf = malloc(strlen(name) + sizeof(".lvl\0"));
    strcpy(buf, name);
    strcpy(buf+strlen(name), ".lvl\0");

    FILE *fp = fopen(buf, "r");
    if (fp != NULL) {
        for (char symbol = 0;
             (symbol = getc(fp)) != EOF;
             strcat(buffer, &symbol));
        fclose(fp);
    }

}
void render_text(int color, const char *text, int size, int x, int y) {
    TTF_Font *font = TTF_OpenFont("FreeSans.otf", size);
    if (font == NULL) {
        fprintf(stderr, "ERROR loading font: %s\n", SDL_GetError());
        exit(1);
    }

    SDL_Color cl = {(color >> 8*2)&0xff, (color >> 8*1)&0xff, color&0xff, 255};
    SDL_Surface *surface = TTF_RenderText_Solid(font, text, cl);
    SDL_Texture *texture = SDL_CreateTextureFromSurface(renderer, surface);

    SDL_Rect rect = {x, y, surface->w, surface->h};
    SDL_RenderCopy(renderer, texture, NULL, &rect);

    SDL_FreeSurface(surface);
    SDL_DestroyTexture(texture);
}

static void scc(int code) {
    if (code < 0) {
        fprintf(stderr, "SDL ERROR: %s", SDL_GetError());
    }
}

static void *scp(void *ptr) {
    if (ptr == NULL) {
        fprintf(stderr, "SDL ERROR: %s", SDL_GetError());
        exit(1);
    }
    return ptr;
}

int main(void) {
    scc(SDL_Init(SDL_INIT_VIDEO));
    scc(TTF_Init());

    SDL_Window *window = (SDL_Window*)
        scp(SDL_CreateWindow("Platformer game",
                             0, 0,
                             get_width(),
                             get_height(), 0));

    renderer = (SDL_Renderer*)
        scp(SDL_CreateRenderer(window, -1, 0));

    // initialize game
    init();

    SDL_Event event;
    const int width = get_width();
    const int height = get_width();
    
    for (;;) {
        step(16, width, height);
        render(width, height);

        SDL_RenderPresent(renderer);

#define ARROW_RIGHT 39
#define ARROW_LEFT  37
#define ARROW_UP    38
#define ARROW_DOWN  40

        while (SDL_PollEvent(&event)) {
            switch (event.type) {
            case SDL_KEYDOWN: {
                int sym = event.key.keysym.sym;
                if (sym >= 'a' && sym <= 'z') sym -= 32;
                if (sym == SDLK_UP) sym = ARROW_UP;
                if (sym == SDLK_DOWN) sym = ARROW_DOWN;
                if (sym == SDLK_LEFT) sym = ARROW_LEFT;
                if (sym == SDLK_RIGHT) sym = ARROW_RIGHT;
                game_keydown(sym);
                break;
            }
            case SDL_KEYUP: {
                int sym = event.key.keysym.sym;
                if (sym >= 'a' && sym <= 'z') sym -= 32;
                if (sym == SDLK_UP) sym = ARROW_UP;
                if (sym == SDLK_DOWN) sym = ARROW_DOWN;
                if (sym == SDLK_LEFT) sym = ARROW_LEFT;
                if (sym == SDLK_RIGHT) sym = ARROW_RIGHT;
                game_keyup(sym);
                break;
            }
            case SDL_QUIT:
                SDL_DestroyRenderer(renderer);
                SDL_DestroyWindow(window);
                SDL_Quit();
                exit(0);
            }
        }

        SDL_Delay(16);
    }
    
    return 0;
}
