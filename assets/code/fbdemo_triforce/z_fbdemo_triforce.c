#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "z_fbdemo_triforce.h"

Gfx sTriforceWipeDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR
                          | G_LOD | G_SHADING_SMOOTH),
    gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                     G_TD_CLAMP | G_TP_PERSP | G_CYC_1CYCLE | G_PM_1PRIMITIVE, G_AC_NONE | G_ZS_PIXEL | G_RM_AA_OPA_SURF
                     | G_RM_AA_OPA_SURF2),
    gsSPEndDisplayList(),
};

Vtx sTriforceWipeVtx[] = {
#include "assets/code/fbdemo_triforce/sTriforceWipeVtx.vtx.inc"
};

