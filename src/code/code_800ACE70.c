#include <global.h>

typedef struct {
    /* 0x00 */ u32 type;
    /* 0x04 */ u32 setScissor;
    /* 0x08 */ Color_RGBA8 color;
    /* 0x0C */ u32 unk_0C;
} struct_801664F0;

Gfx D_8012AC00[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | G_RM_VISCVG | G_RM_VISCVG2),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsDPPipeSync(),
    gsDPSetBlendColor(0, 0, 0, 8),
    gsSPEndDisplayList(),
};

Gfx D_8012AC28[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL |
                         GBL_c1(G_BL_CLR_FOG, G_BL_A_FOG, G_BL_CLR_MEM, G_BL_A_MEM) |
                         GBL_c2(G_BL_CLR_FOG, G_BL_A_FOG, G_BL_CLR_MEM, G_BL_A_MEM)),
    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsSPEndDisplayList(),
};

Gfx D_8012AC40[] = {
    gsDPSetOtherMode(G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL |
                         GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM) |
                         GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_MEM, G_BL_A_MEM)),

    gsDPFillRectangle(0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1),
    gsSPEndDisplayList(),
};

Gfx D_8012AC58[] = {
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

// Init func
void func_800ACE70(struct_801664F0* this) {
    this->type = 0;
    this->setScissor = false;
    this->color.r = 0xFF;
    this->color.g = 0xFF;
    this->color.b = 0xFF;
    this->color.a = 0xFF;
}

// Destroy func
void func_800ACE90(struct_801664F0* this) {
}

// Update func
void func_800ACE98(struct_801664F0* this, Gfx** gfxp) {
    Gfx* gfx;

    gfx = *gfxp;

    gDPPipeSync(gfx++);
    gDPSetPrimDepth(gfx++, -1, -1);

    if (this->setScissor == true) {
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }

    switch (this->type) {
        case 1:
            gSPDisplayList(gfx++, D_8012AC40);
            break;
        case 2:
            gDPSetColor(gfx++, G_SETPRIMCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, D_8012AC58);
            break;
        case 3:
            gDPSetColor(gfx++, G_SETBLENDCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, D_8012AC00);
            break;
        case 4:
            gDPSetColor(gfx++, G_SETFOGCOLOR, this->color.rgba);
            gSPDisplayList(gfx++, D_8012AC28);
            break;
    }

    gDPPipeSync(gfx++);
    *gfxp = gfx;
}
