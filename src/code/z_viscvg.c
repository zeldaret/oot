/**
 * @file z_viscvg.c
 * Description: Visualise Coverage (how much of the neighbourhood of a pixel is covered by a primitive) in various ways.
 *
 * To understand this file, it is helpful to remember that A_MEM is essentially synonymous with coverage, and that
 * `GBL_c1/2(p, a, m, b)` are essentially `(p * a + m * b) / (a + b)`.
 */
#include "global.h"

/**
 * Draws only coverage (does not retain any of the original colours)
 */
Gfx sCoverageOnlyDL[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | G_RM_VISCVG | G_RM_VISCVG2),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsDPPipeSync(),
    gsDPSetBlendColor(0, 0, 0, 8),
    gsSPEndDisplayList(),
};

/**
 * Draws fog + coverage * RGB of pixels
 *
 * @bug This easily overflows the blender because the fog value is added to the coverage value.
 */
Gfx sCoverageRGBFogDL[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL |
                         GBL_c1(G_BL_CLR_FOG, G_BL_A_FOG, G_BL_CLR_MEM, G_BL_A_MEM) |
                         GBL_c2(G_BL_CLR_FOG, G_BL_A_FOG, G_BL_CLR_MEM, G_BL_A_MEM)),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsSPEndDisplayList(),
};

/**
 * Draws (coverage * RGB) of pixels
 */
Gfx sCoverageRGBDL[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL |
                         GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM) |
                         GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM)),

    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsSPEndDisplayList(),
};

/**
 * Transparently blends primColor with original frame, creating uniform fog: formula is (fore) * (cvg) + (back) * (1 - cvg)
 * Second half is the same as sCoverageRGBDL's, i.e. (coverage * RGB) of pixel
 */
Gfx sCoverageRGBPrimFogDL[] = {
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PRIMITIVE),
    gsDPSetOtherMode(G_AD_NOTPATTERN | G_CD_DISABLE | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | G_RM_CLD_SURF | G_RM_CLD_SURF2),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL |
                         GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM) |
                         GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM)),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsSPEndDisplayList(),
};

void VisCvg_Init(VisCvg* this) {
    this->type = 0;
    this->setScissor = false;
    this->primColor.r = 255;
    this->primColor.g = 255;
    this->primColor.b = 255;
    this->primColor.a = 255;
}

void VisCvg_Destroy(VisCvg* this) {
}

void VisCvg_Draw(VisCvg* this, Gfx** gfxp) {
    Gfx* gfx = *gfxp;

    gDPPipeSync(gfx++);
    gDPSetPrimDepth(gfx++, 0xFFFF, 0xFFFF);

    if (this->setScissor == true) {
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }

    switch (this->type) {
        case FB_FILTER_CVG_RGB:
            gSPDisplayList(gfx++, sCoverageRGBDL);
            break;
        case FB_FILTER_CVG_RGB_PRIMFOG:
            gDPSetColor(gfx++, G_SETPRIMCOLOR, this->primColor.rgba);
            gSPDisplayList(gfx++, sCoverageRGBPrimFogDL);
            break;
        case FB_FILTER_CVG:
            gDPSetColor(gfx++, G_SETBLENDCOLOR, this->primColor.rgba);
            gSPDisplayList(gfx++, sCoverageOnlyDL);
            break;
        case FB_FILTER_CVG_RGB_FOG:
            gDPSetColor(gfx++, G_SETFOGCOLOR, this->primColor.rgba);
            gSPDisplayList(gfx++, sCoverageRGBFogDL);
            break;
    }

    gDPPipeSync(gfx++);
    *gfxp = gfx;
}
