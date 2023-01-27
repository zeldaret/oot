#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_efc_fire_ball.h"

Vtx object_efc_fire_ballVtx_000000[] = {
#include "assets/objects/object_efc_fire_ball/object_efc_fire_ballVtx_000000.vtx.inc"
};

Gfx gCreationFireBallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gCreationFireBallMaskTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(gCreationFireBallFlameEffectTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR |
                       G_TX_CLAMP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, 15),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_efc_fire_ballVtx_000000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gCreationFireBallMaskTex[] = {
#include "assets/objects/object_efc_fire_ball/fire_ball_mask.i8.inc.c"
};

u64 gCreationFireBallFlameEffectTex[] = {
#include "assets/objects/object_efc_fire_ball/fire_ball_flame_effect.i8.inc.c"
};

