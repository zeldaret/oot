#include <ultra64.h>
#include <global.h>

u32 sFontColorRed = 255;
u32 sFontColorGreen = 255;
u32 sFontColorBlue = 255;
u32 sFontColorAlpha = 255;
s32 D_80120120 = 0;
s32 D_80120124 = 0;

UNK_TYPE D_8015FFC0;
UNK_TYPE D_8015FFC4;

void func_8007B910(u32 red, u32 green, u32 blue, u32 alpha) {
    sFontColorRed = red;
    sFontColorGreen = green;
    sFontColorBlue = blue;
    sFontColorAlpha = alpha;
}

void func_8007B934(s32 arg0, s32 arg1) {
    if (arg0 > 39) {
        D_80120120 = 39 * 8;
    } else if (arg0 < 0) {
        D_80120120 = 0;
    } else {
        D_80120120 = arg0 * 8;
    }

    if (arg1 > 29) {
        D_80120124 = 29 * 8;
    } else if (arg1 < 0) {
        D_80120124 = 0;
    } else {
        D_80120124 = arg1 * 8;
    }
}

void func_8007B9A4(GraphicsContext* gfxCtx, u8 arg1) {
    Gfx* dispRefs[7];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_moji.c", 86);

    if ((u32)gLetterTLUT & 0xF) {
        osSyncPrintf("moji_tlut --> %X\n", gLetterTLUT);
    }

    if (D_8015FFC0 != (arg1 & 3)) {
        gDPLoadTLUT(gfxCtx->polyOpa.p++, 16, 256, &gLetterTLUT[arg1 & 3]);
        D_8015FFC0 = arg1 & 3;
    }

    gSPTextureRectangle(gfxCtx->polyOpa.p++, D_80120120 << 2, D_80120124 << 2, (D_80120120 + 8) << 2,
                        (D_80120124 + 8) << 2, G_TX_RENDERTILE, (u16)(arg1 & 4) * 64, (u16)(arg1 >> 3) * 256, 1024,
                        1024);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_moji.c", 123);
}

void func_8007BBA8(GraphicsContext* gfxCtx, u8* arg1) {
    s32 i;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_moji.c", 137);

    if ((u32)gFontFF & 0xF) {
        osSyncPrintf("font_ff --> %X\n", gFontFF);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, sFontColorRed, sFontColorGreen, sFontColorBlue, sFontColorAlpha);

    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, (s32)gFontFF);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP,
               G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 511, 2048);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP,
               G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 60, 508);

    D_8015FFC0 = -1;

    for (i = 0; arg1[i] != 0; i++) {
        switch (arg1[i]) {
            case 9:
                D_80120120 = (((D_80120120 / 8) / 8) + 1) * 8 * 8;
                if (D_80120120 >= 320) {
                    D_80120120 = 0;
                    D_80120124 += 8;
                    if (D_80120124 >= 240) {
                        D_80120124 = 0;
                    }
                }
                break;
            case 10:
            case 13:
                D_80120120 = 0;
                D_80120124 += 8;
                if (D_80120124 >= 240) {
                    D_80120124 = 0;
                }
                break;
            default:
                func_8007B9A4(gfxCtx, arg1[i]);
                D_80120120 += 8;
        }
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_moji.c", 181);
}
