#ifndef PRENMI_STATE_H
#define PRENMI_STATE_H

#include "ultra64.h"
#include "game.h"

typedef struct PreNMIState {
    /* 0x00 */ GameState state;
    /* 0xA4 */ u32 timer;
    /* 0xA8 */ s32 unk_A8;
} PreNMIState; // size = 0xAC

void PreNMI_Init(GameState* thisx);
void PreNMI_Destroy(GameState* thisx);

#endif
