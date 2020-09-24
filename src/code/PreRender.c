#include <global.h>

void PreRender_SetValuesSave(PreRenderContext* this, u32 width, u32 height, void* fbuf, void* zbuf, void* cvg) {
    this->widthSave = width;
    this->heightSave = height;
    this->fbufSave = fbuf;
    this->cvgSave = cvg;
    this->zbufSave = zbuf;
    this->ulxSave = 0;
    this->ulySave = 0;
    this->lrxSave = width - 1;
    this->lrySave = height - 1;
}

void PreRender_Init(PreRenderContext* this) {
    bzero(this, sizeof(PreRenderContext));
    ListAlloc_Init(&this->alloc);
}

void PreRender_SetValues(PreRenderContext* this, u32 width, u32 height, void* fbuf, void* zbuf) {
    this->width = width;
    this->height = height;
    this->fbuf = fbuf;
    this->zbuf = zbuf;
    this->ulx = 0;
    this->uly = 0;
    this->lrx = width - 1;
    this->lry = height - 1;
}

void PreRender_Destroy(PreRenderContext* this) {
    ListAlloc_FreeAll(&this->alloc);
}

void func_800C0F28(PreRenderContext* this, Gfx** gfxp, void* buf, void* bufSave) {
    Gfx* gfx;
    s32 x;
    s32 x2;
    s32 add;
    s32 uls;
    s32 ult;
    s32 lrs;
    s32 lrt;

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 215);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 216);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 218);

    gDPPipeSync(gfx++);
    gDPSetOtherMode(gfx++,
                    G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_COPY | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, bufSave);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);

    x = this->height;
    add = 0x1000 / (this->width * 2);
    uls = 0;
    x2 = 0;

    while (x > 0) {
        lrs = this->width - 1;
        if (x < add) {
            add = x;
        }

        ult = x2;
        lrt = (ult + add) - 1;

        if (1) {}
        gDPLoadTextureTile(gfx++, buf, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->height, uls, ult, lrs, lrt, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);
        gSPTextureRectangle(gfx++, uls << 2, ult << 2, lrs << 2, lrt << 2, G_TX_RENDERTILE, uls << 5, ult << 5, 4 << 10,
                            1 << 10);

        x -= add;
        x2 += add;
    }

    gDPPipeSync(gfx++);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    *gfxp = gfx;
}

void func_800C1258(PreRenderContext* this, Gfx** gfxp) {
    Gfx* gfx;
    s32 y;
    s32 y2;
    s32 add;
    s32 ult;
    s32 lrs;
    s32 lrt;
    s32 uly;

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 278);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 279);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 281);

    gDPPipeSync(gfx++);
    gDPSetOtherMode(gfx++,
                    G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_COPY | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, this->ulx, this->uly, this->lrx + 1, this->lry + 1);

    y2 = 0;
    add = 0x1000 / ((this->lrxSave - this->ulxSave + 1) * 2);
    y = (this->lrySave - this->ulySave) + 1;

    while (y > 0) {
        if (y < add) {
            add = y;
        }

        ult = this->ulySave + y2;
        uly = this->uly + y2;
        lrt = (ult + add) - 1;

        if (1) {}
        gDPLoadTextureTile(gfx++, this->fbufSave, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->widthSave, this->height - 1,
                           this->ulxSave, ult, this->lrxSave, lrt, 0, G_TX_NOMIRROR | G_TX_WRAP,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(gfx++, this->ulx << 2, uly << 2, this->lrx << 2, (uly + add - 1) << 2, G_TX_RENDERTILE,
                            this->ulxSave << 5, ult << 5, 4 << 10, 1 << 10);

        y -= add;
        y2 += add;
    }

    gDPPipeSync(gfx++);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);
    *gfxp = gfx;
}

void func_800C170C(PreRenderContext* this, Gfx** gfxp, void* fbuf, void* fbufSave, u32 r, u32 g, u32 b, u32 a) {
    Gfx* gfx;
    s32 x;
    s32 x2;
    s32 add;
    s32 uls;
    s32 ult;
    s32 lrs;
    s32 lrt;
    s32 unk;

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 343);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 344);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 346);

    gDPPipeSync(gfx++);
    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_OPA_SURF | G_RM_OPA_SURF2);
    gDPSetEnvColor(gfx++, r, g, b, a);
    gDPSetCombineLERP(gfx++, 0, 0, 0, TEXEL0, 0, 0, 0, 1, 0, 0, 0, TEXEL0, 0, 0, 0, 1);
    gDPSetCombineLERP(gfx++, TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, 1, TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, 1);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, fbufSave);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);

    x2 = 0;
    x = this->height;
    add = 0x1000 / (this->width * 2);

    while (x > 0) {
        lrs = this->width - 1;

        if (x < add) {
            add = x;
        }

        uls = 0;
        ult = x2;
        lrt = (x2 + add - 1);

        gDPLoadTextureTile(gfx++, fbuf, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->height, uls, ult, lrs, lrt, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);
        if (1) {}
        gSPTextureRectangle(gfx++, uls << 2, ult << 2, (lrs + 1) << 2, (lrt + 1) << 2, G_TX_RENDERTILE, uls << 5,
                            ult << 5, 1 << 10, 1 << 10);

        x -= add;
        x2 += add;
    }

    gDPPipeSync(gfx++);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    *gfxp = gfx;
}

void func_800C1AE8(PreRenderContext* this, Gfx** gfxp, void* fbuf, void* fbufSave) {
    func_800C170C(this, gfxp, fbuf, fbufSave, 255, 255, 255, 255);
}

void func_800C1B24(PreRenderContext* this, Gfx** gfxp, void* fbuf, void* cvgSave) {
    Gfx* gfx;
    s32 x;
    s32 x2;
    s32 add;
    s32 uls;
    s32 ult;
    s32 lrs;
    s32 lrt;

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 422);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 423);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 425);

    gDPPipeSync(gfx++);
    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_PASS | G_RM_OPA_CI2);
    gDPSetCombineLERP(gfx++, 0, 0, 0, TEXEL0, 0, 0, 0, 0, 0, 0, 0, TEXEL0, 0, 0, 0, 0);
    gDPSetColorImage(gfx++, G_IM_FMT_I, G_IM_SIZ_8b, this->width, cvgSave);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);

    x = this->height;
    x2 = 0;
    add = 0x1000 / (this->width * 2);

    while (x > 0) {
        lrs = this->width - 1;
        if (x < add) {
            add = x;
        }
        uls = 0;
        ult = x2;
        lrt = (x2 + add) - 1;

        gDPLoadTextureTile(gfx++, fbuf, G_IM_FMT_IA, G_IM_SIZ_16b, this->width, this->height, uls, ult, lrs, lrt, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);
        if (1) {}
        gSPTextureRectangle(gfx++, uls << 2, ult << 2, (lrs + 1) << 2, (lrt + 1) << 2, G_TX_RENDERTILE, uls << 5,
                            ult << 5, 1 << 10, 1 << 10);

        x -= add;
        x2 += add;
    }

    gDPPipeSync(gfx++);
    gDPSetColorImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width, this->fbuf);
    *gfxp = gfx;
}

void func_800C1E9C(PreRenderContext* this, Gfx** gfxp) {
    LogUtils_CheckNullPointer("this->zbuf_save", this->zbufSave, "../PreRender.c", 481);
    LogUtils_CheckNullPointer("this->zbuf", this->zbuf, "../PreRender.c", 482);

    if (!this->zbufSave || !this->zbuf) {
        return;
    }

    func_800C0F28(this, gfxp, this->zbuf, this->zbufSave);
}

void func_800C1F20(PreRenderContext* this, Gfx** gfxp) {
    LogUtils_CheckNullPointer("this->fbuf_save", this->fbufSave, "../PreRender.c", 495);
    LogUtils_CheckNullPointer("this->fbuf", this->fbuf, "../PreRender.c", 496);

    if (!this->fbufSave || !this->fbuf) {
        return;
    }

    func_800C1AE8(this, gfxp, this->fbuf, this->fbufSave);
}

void func_800C1FA4(PreRenderContext* this, Gfx** gfxp) {
    Gfx* gfx;

    gfx = *gfxp;

    gDPPipeSync(gfx++);
    gDPSetBlendColor(gfx++, 255, 255, 255, 8);
    gDPSetPrimDepth(gfx++, -1, -1);
    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | G_RM_VISCVG | G_RM_VISCVG2);
    gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, this->width, this->height);
    gDPFillRectangle(gfx++, 0, 0, this->width, this->height);
    gDPPipeSync(gfx++);

    *gfxp = gfx;
}

void func_800C20B4(PreRenderContext* this, Gfx** gfxp) {
    func_800C1FA4(this, gfxp);
    LogUtils_CheckNullPointer("this->cvg_save", this->cvgSave, "../PreRender.c", 532);
    if (!this->cvgSave) {
        return;
    }

    func_800C1B24(this, gfxp, this->fbuf, this->cvgSave);
}

void func_800C2118(PreRenderContext* this, Gfx** gfxp) {
    func_800C0F28(this, gfxp, this->zbufSave, this->zbuf);
}

#ifdef NON_MATCHING
// regalloc differences in gDPLoadMultiTile
void func_800C213C(PreRenderContext* this, Gfx** gfxp) {
    Gfx* gfx;
    s32 y;
    s32 y2;
    s32 add;
    s32 uls;
    s32 ult;
    s32 lrx;
    s32 lry;

    if (!this->cvgSave) {
        return;
    }

    LogUtils_CheckNullPointer("this", this, "../PreRender.c", 563);
    LogUtils_CheckNullPointer("glistpp", gfxp, "../PreRender.c", 564);
    gfx = *gfxp;
    LogUtils_CheckNullPointer("glistp", gfx, "../PreRender.c", 566);

    gDPPipeSync(gfx++);
    gDPSetEnvColor(gfx++, 255, 255, 255, 32);
    gDPSetOtherMode(gfx++,
                    G_AD_DISABLE | G_CD_DISABLE | G_CK_NONE | G_TC_FILT | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_2CYCLE | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PRIM | AA_EN | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA |
                        GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1) |
                        GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1));
    gDPSetCombineLERP(gfx++, 0, 0, 0, TEXEL0, 1, 0, TEXEL1, ENVIRONMENT, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED);

    y = this->height;
    add = 4;
    y2 = 0;

    while (y > 0) {
        lrx = this->width - 1;
        if (y < add) {
            add = y;
        }

        uls = 0;
        ult = y2;
        lry = (y2 + add - 1);

        gDPLoadMultiTile(gfx++, this->fbufSave, 0x0000, G_TX_RENDERTILE, G_IM_FMT_RGBA, G_IM_SIZ_16b, this->width,
                         this->height, uls, ult, lrx, lry, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gDPLoadMultiTile(gfx++, this->cvgSave, 0x0160, 1, G_IM_FMT_I, G_IM_SIZ_8b, this->width, this->height, uls, ult,
                         lrx, lry, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                         G_TX_NOLOD, G_TX_NOLOD);

        gSPTextureRectangle(gfx++, uls << 2, ult << 2, (lrx + 1) << 2, (lry + 1) << 2, G_TX_RENDERTILE, uls << 5,
                            ult << 5, 1 << 10, 1 << 10);

        if (1) {}
        y -= add;
        y2 += add;
    }

    gDPPipeSync(gfx++);
    *gfxp = gfx;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/PreRender/func_800C213C.s")
#endif

void func_800C24BC(PreRenderContext* this, Gfx** gfxp) {
    func_800C0F28(this, gfxp, this->fbufSave, this->fbuf);
}

void func_800C24E0(PreRenderContext* this, Gfx** gfxp) {
    func_800C1258(this, gfxp);
}

#ifdef NON_EQUIVALENT
void func_800C2500(PreRenderContext* this, s32 x, s32 y) {

    u32 buffA[3 * 8]; // 0x144
    u32 buffR[3 * 8]; // 0x108
    u32 buffG[3 * 8]; // 0xCC
    u32 buffB[3 * 8]; // 0x90

    u32 pxR, pxG, pxB, pxR2, pxG2, pxB2;

    s32 i;

    s32 x1, y1;
    u32 px;
    u32 comp;

    u32 unk;
    u16 pixel;

    /*
    you have to picture this as a 3x5 rectangle where the middle pixel (index 7) correspond to (x; y)
      _ _ _ _ _
    | 0 1 2 3 4 |
    | 5 6 7 8 9 |
    | A B C D E |
      ‾ ‾ ‾ ‾ ‾
    */
    for (i = 0; i < 3 * 5; i++) {
        x1 = (i % 5) + x - 2; // range (-2) - (2)
        y1 = (i / 5) + x - 1; // range (-1) - (1)

        if (x1 < 0) {
            x1 = 0;
        } else if (this->width - 1 < x1) {
            x1 = this->width - 1;
        }
        if (y1 < 0) {
            y1 = 0;
        } else if (this->height - 1 < y1) {
            y1 = this->height - 1;
        }

        px = this->fbufSave[y1 * this->width + x1];
        comp = (px << 0) >> 27; // R
        buffR[i] = (comp << 3) | (comp >> 2);
        comp = (px << 5) >> 27; // G
        buffG[i] = (comp << 3) | (comp >> 2);
        comp = (px << 10) >> 27; // B
        buffB[i] = (comp << 3) | (comp >> 2);
        buffA[i] = this->cvgSave[y1 * this->width + x1] >> 5; // A
    }

    // 7 == buffA[7] ?
    if (7 == buffA[7]) {
        osSyncPrintf("Error, should not be in here \n");
        return;
    }

    pxR = buffR[7];
    pxG = buffG[7];
    pxB = buffB[7];

    for (i = 1; i < 3 * 5; i += 2) {
        if (7 == buffA[i]) {
            // R
            if (pxR < buffR[i]) {
                if (i != 1 && buffR[1] >= buffR[i] && 7 == buffA[1]) {
                    pxR = buffR[i];
                }
                if (i != 3 && buffR[3] >= buffR[i] && 7 == buffA[3]) {
                    pxR = buffR[i];
                }
                if (i != 5 && buffR[5] >= buffR[i] && 7 == buffA[5]) {
                    pxR = buffR[i];
                }
                if (i != 7 && buffR[7] >= buffR[i] && 7 == buffA[7]) {
                    pxR = buffR[i];
                }
                if (i != 9 && buffR[9] >= buffR[i] && 7 == buffA[9]) {
                    pxR = buffR[i];
                }
                if (i != 11 && buffR[11] >= buffR[i] && 7 == buffA[11]) {
                    pxR = buffR[i];
                }
                if (i != 13 && buffR[13] >= buffR[i] && 7 == buffA[13]) {
                    pxR = buffR[i];
                }
            }
            // G
            if (pxG < buffG[i]) {
                if (i != 1 && buffG[1] >= buffG[i] && 7 == buffA[1]) {
                    pxG = buffG[i];
                }
                if (i != 3 && buffG[3] >= buffG[i] && 7 == buffA[3]) {
                    pxG = buffG[i];
                }
                if (i != 5 && buffG[5] >= buffG[i] && 7 == buffA[5]) {
                    pxG = buffG[i];
                }
                if (i != 7 && buffG[7] >= buffG[i] && 7 == buffA[7]) {
                    pxG = buffG[i];
                }
                if (i != 9 && buffG[9] >= buffG[i] && 7 == buffA[9]) {
                    pxG = buffG[i];
                }
                if (i != 11 && buffG[11] >= buffG[i] && 7 == buffA[11]) {
                    pxG = buffG[i];
                }
                if (i != 13 && buffG[13] >= buffG[i] && 7 == buffA[13]) {
                    pxG = buffG[i];
                }
            }
            // B
            if (pxB < buffB[i]) {
                if (i != 1 && buffB[1] >= buffB[i] && 7 == buffA[1]) {
                    pxB = buffB[i];
                }
                if (i != 3 && buffB[3] >= buffB[i] && 7 == buffA[3]) {
                    pxB = buffB[i];
                }
                if (i != 5 && buffB[5] >= buffB[i] && 7 == buffA[5]) {
                    pxB = buffB[i];
                }
                if (i != 7 && buffB[7] >= buffB[i] && 7 == buffA[7]) {
                    pxB = buffB[i];
                }
                if (i != 9 && buffB[9] >= buffB[i] && 7 == buffA[9]) {
                    pxB = buffB[i];
                }
                if (i != 11 && buffB[11] >= buffB[i] && 7 == buffA[11]) {
                    pxB = buffB[i];
                }
                if (i != 13 && buffB[13] >= buffB[i] && 7 == buffA[13]) {
                    pxB = buffB[i];
                }
            }

            // R
            if (pxR2 < buffR[i + 1]) {
                if (i + 1 != 1 && buffR[1] >= buffR[i + 1] && 7 == buffA[1]) {
                    pxR2 = buffR[i + 1];
                }
                if (i + 1 != 3 && buffR[3] >= buffR[i + 1] && 7 == buffA[3]) {
                    pxR2 = buffR[i + 1];
                }
                if (i + 1 != 5 && buffR[5] >= buffR[i + 1] && 7 == buffA[5]) {
                    pxR2 = buffR[i + 1];
                }
                if (i + 1 != 7 && buffR[7] >= buffR[i + 1] && 7 == buffA[7]) {
                    pxR2 = buffR[i + 1];
                }
                if (i + 1 != 9 && buffR[9] >= buffR[i + 1] && 7 == buffA[9]) {
                    pxR2 = buffR[i + 1];
                }
                if (i + 1 != 11 && buffR[11] >= buffR[i + 1] && 7 == buffA[11]) {
                    pxR2 = buffR[i + 1];
                }
                if (i + 1 != 13 && buffR[13] >= buffR[i + 1] && 7 == buffA[13]) {
                    pxR2 = buffR[i + 1];
                }
            }
            // G
            if (pxG2 < buffG[i + 1]) {
                if (i + 1 != 1 && buffG[1] >= buffG[i + 1] && 7 == buffA[1]) {
                    pxG2 = buffG[i + 1];
                }
                if (i + 1 != 3 && buffG[3] >= buffG[i + 1] && 7 == buffA[3]) {
                    pxG2 = buffG[i + 1];
                }
                if (i + 1 != 5 && buffG[5] >= buffG[i + 1] && 7 == buffA[5]) {
                    pxG2 = buffG[i + 1];
                }
                if (i + 1 != 7 && buffG[7] >= buffG[i + 1] && 7 == buffA[7]) {
                    pxG2 = buffG[i + 1];
                }
                if (i + 1 != 9 && buffG[9] >= buffG[i + 1] && 7 == buffA[9]) {
                    pxG2 = buffG[i + 1];
                }
                if (i + 1 != 11 && buffG[11] >= buffG[i + 1] && 7 == buffA[11]) {
                    pxG2 = buffG[i + 1];
                }
                if (i + 1 != 13 && buffG[13] >= buffG[i + 1] && 7 == buffA[13]) {
                    pxG2 = buffG[i + 1];
                }
            }
            // B
            if (pxB2 < buffB[i + 1]) {
                if (i + 1 != 1 && buffB[1] >= buffB[i + 1] && 7 == buffA[1]) {
                    pxB2 = buffB[i + 1];
                }
                if (i + 1 != 3 && buffB[3] >= buffB[i + 1] && 7 == buffA[3]) {
                    pxB2 = buffB[i + 1];
                }
                if (i + 1 != 5 && buffB[5] >= buffB[i + 1] && 7 == buffA[5]) {
                    pxB2 = buffB[i + 1];
                }
                if (i + 1 != 7 && buffB[7] >= buffB[i + 1] && 7 == buffA[7]) {
                    pxB2 = buffB[i + 1];
                }
                if (i + 1 != 9 && buffB[9] >= buffB[i + 1] && 7 == buffA[9]) {
                    pxB2 = buffB[i + 1];
                }
                if (i + 1 != 11 && buffB[11] >= buffB[i + 1] && 7 == buffA[11]) {
                    pxB2 = buffB[i + 1];
                }
                if (i + 1 != 13 && buffB[13] >= buffB[i + 1] && 7 == buffA[13]) {
                    pxB2 = buffB[i + 1];
                }
            }
        }
    }

    unk = 7 - buffA[7];

    pixel =
        (((((((pxR + pxR2) - (buffR[7] << 1)) * unk + 4) >> 3) + buffR[7]) >> 3) << 3) | (pixel & 0xFF07); // RG + 7?
    pixel = ((((((((pxG + pxG2) - (buffG[7] << 1)) * unk + 4) >> 3) + buffG[7]) >> 3) << 6) & 0x07C0) |
            (pixel & 0xF83F); // R-BA
    pixel = ((((((((pxB + pxB2) - (buffB[7] << 1)) * unk + 4) >> 3) + buffB[7]) >> 3) << 1) & 0x003E) |
            (pixel & 0xFFC1); // RG-A
    pixel |= 1;
    this->fbufSave[y * this->width + x] = pixel;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/PreRender/func_800C2500.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/PreRender/func_800C2FE4.s")

void PreRender_Calc(PreRenderContext* this) {
    s32 x;
    s32 y;

    if (!this->cvgSave || !this->fbufSave) {
        return;
    }

    for (y = 0; y < this->height; y++) {
        for (x = 0; x < this->width; x++) {
            s32 a = this->cvgSave[x + y * this->width];
            a >>= 5;
            a++;
            if (a != 8) {
                func_800C2500(this, x, y);
            }
        }
    }

    if (HREG(80) == 0xF ? HREG(81) : 0) {
        func_800C2FE4(this);
    }
}
