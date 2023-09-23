#ifndef Z_SAMPLE_H
#define Z_SAMPLE_H

#include "z64game.h"
#include "z64view.h"

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ u8* staticSegment;
    /* 0x00A8 */ View view;
} SampleState; // size = 0x1D0

void Sample_Destroy(GameState* thisx);
void Sample_Init(GameState* thisx);

#endif
