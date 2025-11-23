#ifndef SAMPLE_STATE_H
#define SAMPLE_STATE_H

#include "ultra64.h"
#include "game.h"
#include "view.h"

typedef struct SampleState {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ u8* staticSegment;
    /* 0x00A8 */ View view;
} SampleState; // size = 0x1D0

void Sample_Init(GameState* thisx);
void Sample_Destroy(GameState* thisx);

#endif
