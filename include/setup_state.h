#ifndef SETUP_STATE_H
#define SETUP_STATE_H

#include "z64game.h"

typedef struct SetupState {
    /* 0x00 */ GameState state;
} SetupState; // size = 0xA4

void Setup_Init(GameState* thisx);
void Setup_Destroy(GameState* thisx);

#endif
