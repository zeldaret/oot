/**
 * Unused. A very simple utility for drawing text on screen.
 */

#include "global.h"

#define CHAR_WIDTH 8
#define CHAR_HEIGHT 8

u32 sFontColorRed = 255;
u32 sFontColorGreen = 255;
u32 sFontColorBlue = 255;
u32 sFontColorAlpha = 255;

s32 sScreenPosX = 0;
s32 sScreenPosY = 0;

s32 sCurTLUTIndex;

static s32 sUnused;

void Moji_SetColor(u32 red, u32 green, u32 blue, u32 alpha) {
    sFontColorRed = red;
    sFontColorGreen = green;
    sFontColorBlue = blue;
    sFontColorAlpha = alpha;
}

void Moji_SetPosition(s32 gridX, s32 gridY) {
    if (gridX >= SCREEN_WIDTH / CHAR_WIDTH) {
        sScreenPosX = SCREEN_WIDTH - CHAR_WIDTH;
    } else if (gridX < 0) {
        sScreenPosX = 0;
    } else {
        sScreenPosX = gridX * CHAR_WIDTH;
    }

    if (gridY >= SCREEN_HEIGHT / CHAR_HEIGHT) {
        sScreenPosY = SCREEN_HEIGHT - CHAR_HEIGHT;
    } else if (gridY < 0) {
        sScreenPosY = 0;
    } else {
        sScreenPosY = gridY * CHAR_HEIGHT;
    }
}

void Moji_DrawChar(GraphicsContext* gfxCtx, char c) {
    s32 pad[2];

    OPEN_DISPS(gfxCtx, "../z_moji.c", 86);

    if ((u32)gMojiFontTLUTs & 0xF) {
        osSyncPrintf("moji_tlut --> %X\n", gMojiFontTLUTs);
    }

    if (sCurTLUTIndex != (c & 3)) {
        gDPLoadTLUT(POLY_OPA_DISP++, 16, 256, &gMojiFontTLUTs[c & 3]);
        sCurTLUTIndex = c & 3;
    }

    gSPTextureRectangle(POLY_OPA_DISP++, sScreenPosX << 2, sScreenPosY << 2, (sScreenPosX + 8) << 2,
                        (sScreenPosY + 8) << 2, G_TX_RENDERTILE, (u16)(c & 4) * 64, (u16)(c >> 3) * 256, 1 << 10,
                        1 << 10);

    CLOSE_DISPS(gfxCtx, "../z_moji.c", 123);
}

/**
 * Does not work as is in most cases.
 * Can work if the render mode, combiner and possibly other settings are set correctly.
 * For example this works with the render mode used in `GfxPrint_InitDlist`,
 * and `G_CC_MODULATEI_PRIM` for both combiner cycles.
 */
void Moji_DrawString(GraphicsContext* gfxCtx, const char* str) {
    s32 i;

    OPEN_DISPS(gfxCtx, "../z_moji.c", 137);

    if ((u32)gMojiFontTex & 0xF) {
        osSyncPrintf("font_ff --> %X\n", gMojiFontTex);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sFontColorRed, sFontColorGreen, sFontColorBlue, sFontColorAlpha);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, (s32)gMojiFontTex, G_IM_FMT_CI, 16, 128, 0, G_TX_NOMIRROR | G_TX_WRAP,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    sCurTLUTIndex = -1;

    for (i = 0; str[i] != '\0'; i++) {
        switch (str[i]) {
            case '\t':
                sScreenPosX = (((sScreenPosX / CHAR_WIDTH) / 8) + 1) * CHAR_WIDTH * 8;
                if (sScreenPosX >= SCREEN_WIDTH) {
                    sScreenPosX = 0;
                    sScreenPosY += CHAR_HEIGHT;
                    if (sScreenPosY >= SCREEN_HEIGHT) {
                        sScreenPosY = 0;
                    }
                }
                break;
            case '\n':
            case '\r':
                sScreenPosX = 0;
                sScreenPosY += CHAR_HEIGHT;
                if (sScreenPosY >= SCREEN_HEIGHT) {
                    sScreenPosY = 0;
                }
                break;
            default:
                Moji_DrawChar(gfxCtx, str[i]);
                sScreenPosX += CHAR_WIDTH;
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_moji.c", 181);
}
