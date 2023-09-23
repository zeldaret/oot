#ifndef Z_OPENING_H
#define Z_OPENING_H

#include "z64game.h"
#include "z64view.h"

typedef struct {
    /* 0x0000 */ GameState state;
    /* 0x00A8 */ View view;
} TitleSetupState; // size = 0x1D0

void TitleSetup_Init(GameState* thisx);
void TitleSetup_Destroy(GameState* thisx);

#endif
