#ifndef Z_TITLE_SETUP_H
#define Z_TITLE_SETUP_H

#include "z64game.h"

typedef struct {
    /* 0x00 */ GameState state;
} SetupState; // size = 0xA4

void Setup_Init(GameState* thisx);
void Setup_Destroy(GameState* thisx);

#endif
