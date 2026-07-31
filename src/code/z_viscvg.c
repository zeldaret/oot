/**
 * This file implements framebuffer effects relying on coverage.
 * Coverage's primary use is performing antialiasing: it basically tracks how much of a pixel is covered by its current
 * color. Coverage is stored in a rgba16 framebuffer as a 3 bits value.
 * Coverage is typically partial on geometry outer edges and full elsewhere: this makes the framebuffer effects here
 * usually highlight silhouettes.
 */

#include "ultra64.h"
#include "gfx.h"
#include "vis.h"

Gfx sVisCvgModulateBlendColorDL[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | G_RM_VISCVG | G_RM_VISCVG2),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsDPPipeSync(),
    gsDPSetBlendColor(0, 0, 0, 8),
    gsSPEndDisplayList(),
};

Gfx sVisCvgModulateFramebufferAdditiveFogDL[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL |
                         // Note: additive blending often overflows the blender, causing visual bugs
                         GBL_c1(G_BL_CLR_FOG, G_BL_A_FOG, G_BL_CLR_MEM, G_BL_A_MEM) |
                         GBL_c2(G_BL_CLR_FOG, G_BL_A_FOG, G_BL_CLR_MEM, G_BL_A_MEM)),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsSPEndDisplayList(),
};

Gfx sVisCvgModulateFramebufferDL[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL |
                         GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM) |
                         GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM)),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsSPEndDisplayList(),
};

Gfx sVisCvgFadeToPrimAndModulateFramebuffer[] = {
    // Fade the framebuffer towards prim color
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PRIMITIVE),
    gsDPSetOtherMode(G_AD_NOTPATTERN | G_CD_DISABLE | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     // Note: G_RM_CLD_SURF sets CVG_DST_SAVE which preserves coverage
                     G_AC_NONE | G_ZS_PRIM | G_RM_CLD_SURF | G_RM_CLD_SURF2),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    // Like sVisCvgModulateFramebufferDL
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL |
                         GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM) |
                         GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM)),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsSPEndDisplayList(),
};

void VisCvg_Init(VisCvg* this) {
    this->type = VISCVG_TYPE_NOP;
    this->setScissor = false;
    this->color.r = 255;
    this->color.g = 255;
    this->color.b = 255;
    this->color.a = 255;
}

void VisCvg_Destroy(VisCvg* this) {
}

void VisCvg_Draw(VisCvg* this, Gfx** gfxp) {
    Gfx* gfx = *gfxp;

    gDPPipeSync(gfx++);
    // Primitive depth and G_ZS_PRIM are set but this is useless since neither Z_CMD nor Z_UPD are set.
    gDPSetPrimDepth(gfx++, 0xFFFF, 0xFFFF);

    if (this->setScissor == true) {
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }

    switch (this->type) {
        case VISCVG_TYPE_MODULATE_FB:
            gSPDisplayList(gfx++, sVisCvgModulateFramebufferDL);
            break;

        case VISCVG_TYPE_FADE_AND_MODULATE_FB:
            gDPSetColor(gfx++, G_SETPRIMCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, sVisCvgFadeToPrimAndModulateFramebuffer);
            break;

        case VISCVG_TYPE_MODULATE_COLOR:
            gDPSetColor(gfx++, G_SETBLENDCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, sVisCvgModulateBlendColorDL);
            break;

        case VISCVG_TYPE_MODULATE_FB_ADDITIVE_COLOR:
            gDPSetColor(gfx++, G_SETFOGCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, sVisCvgModulateFramebufferAdditiveFogDL);
            break;
    }

    gDPPipeSync(gfx++);
    *gfxp = gfx;
}
