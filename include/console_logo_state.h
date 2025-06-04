#ifndef CONSOLE_LOGO_STATE_H
#define CONSOLE_LOGO_STATE_H

#include "ultra64.h"
#include "game.h"
#include "sram.h"
#include "view.h"

typedef struct ConsoleLogoState {
    /* 0x0000 */ GameState state;
    /* 0x00A4 */ u8* staticSegment;
    /* 0x00A8 */ View view;
    /* 0x01D0 */ SramContext sramCtx;
    /* 0x01D4 */ s16 unk_1D4;
    /* 0x01D6 */ s16 coverAlpha;
    /* 0x01D8 */ s16 addAlpha;
    /* 0x01DA */ s16 visibleDuration;
    /* 0x01DC */ s16 ult;
    /* 0x01DE */ s16 uls;
    /* 0x01E0 */ u8 unk_1E0;
    /* 0x01E1 */ u8 exit;
    /* 0x01E2 */ char unk_1E2[0x06];
} ConsoleLogoState; // size = 0x1E8

void ConsoleLogo_Init(GameState* thisx);
void ConsoleLogo_Destroy(GameState* thisx);

#endif
