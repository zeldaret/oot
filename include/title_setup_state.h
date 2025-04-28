#ifndef TITLE_SETUP_STATE_H
#define TITLE_SETUP_STATE_H

#include "game.h"
#include "view.h"

typedef struct TitleSetupState {
    /* 0x0000 */ GameState state;
    /* 0x00A8 */ View view;
} TitleSetupState; // size = 0x1D0

void TitleSetup_Init(GameState* thisx);
void TitleSetup_Destroy(GameState* thisx);

#endif
