#ifndef Z_PRENMI_GAME_H
#define Z_PRENMI_GAME_H

#include "z64game.h"

typedef struct {
    /* 0x00 */ GameState state;
    /* 0xA4 */ u32       timer;
    /* 0xA8 */ UNK_TYPE4 unk_A8;
} PreNMIState; // size = 0xAC

#endif
