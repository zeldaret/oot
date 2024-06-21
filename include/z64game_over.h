#ifndef Z64GAME_OVER_H
#define Z64GAME_OVER_H

#include "ultra64.h"

struct PlayState;

typedef enum GameOverState {
    /* 00 */ GAMEOVER_INACTIVE,
    /* 01 */ GAMEOVER_DEATH_START,
    /* 02 */ GAMEOVER_DEATH_WAIT_GROUND, // wait for link to fall and hit the ground
    /* 03 */ GAMEOVER_DEATH_DELAY_MENU,  // wait for 1 second before showing the game over menu
    /* 04 */ GAMEOVER_DEATH_MENU,        // do nothing while kaleidoscope handles the game over menu
    /* 20 */ GAMEOVER_REVIVE_START = 20,
    /* 21 */ GAMEOVER_REVIVE_RUMBLE,
    /* 22 */ GAMEOVER_REVIVE_WAIT_GROUND, // wait for link to fall and hit the ground
    /* 23 */ GAMEOVER_REVIVE_WAIT_FAIRY,  // wait for the fairy to rise all the way up out of links body
    /* 24 */ GAMEOVER_REVIVE_FADE_OUT     // fade out the game over lights as link is revived and gets back up
} GameOverState;

typedef struct GameOverContext {
    /* 0x00 */ u16 state;
} GameOverContext; // size = 0x2

void GameOver_Init(struct PlayState* play);
void GameOver_FadeInLights(struct PlayState* play);
void GameOver_Update(struct PlayState* play);

#endif
