#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_tp.h"

Gfx gTailpasaranTailSegmentDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(NOISE, 0, PRIMITIVE, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_CLD_SURF2),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(object_tpVtx_000070, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_tpVtx_000070[] = {
#include "assets/objects/object_tp/object_tpVtx_000070.vtx.inc"
};

Gfx gTailpasaranHeadClawDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gTailpasaranHeadClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_tpVtx_000070[4], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 10, 9, 0, 13, 14, 12, 0),
    gsSP2Triangles(15, 14, 13, 0, 16, 7, 6, 0),
    gsSP2Triangles(5, 17, 18, 0, 2, 1, 19, 0),
    gsSP2Triangles(20, 17, 21, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP2Triangles(29, 28, 30, 0, 31, 25, 24, 0),
    gsSPVertex(&object_tpVtx_000070[36], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 7, 6, 0),
    gsSP2Triangles(5, 4, 10, 0, 11, 12, 0, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 14, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gTailpasaranHeadClawBaseTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPVertex(&object_tpVtx_000070[53], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gTailpasaranHeadRearTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_tpVtx_000070[62], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 7, 9, 0, 11, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gTailpasaranHeadMouthpartsDL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gTailpasaranHeadMouthpartsTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA_PRIM2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_tpVtx_000070[74], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 9, 11, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 4, 19, 5, 0),
    gsSP2Triangles(17, 20, 18, 0, 7, 21, 8, 0),
    gsSP2Triangles(13, 15, 22, 0, 0, 2, 23, 0),
    gsSPEndDisplayList(),
};

Gfx gTailpasaranHeadDL[] = {
    gsSPDisplayList(gTailpasaranHeadClawDL),
    gsSPDisplayList(gTailpasaranHeadMouthpartsDL),
    gsSPEndDisplayList(),
};

u64 gTailpasaranHeadRearTex[] = {
#include "assets/objects/object_tp/tailpasaran_head_rear.rgba16.inc.c"
};

u64 gTailpasaranHeadClawBaseTex[] = {
#include "assets/objects/object_tp/tailpasaran_head_claw_base.rgba16.inc.c"
};

u64 gTailpasaranHeadClawTex[] = {
#include "assets/objects/object_tp/tailpasaran_head_claw.rgba16.inc.c"
};

u64 gTailpasaranTailSegmentTex[] = {
#include "assets/objects/object_tp/tailpasaran_tail_segment.ia8.inc.c"
};

u64 gTailpasaranHeadMouthpartsTex[] = {
#include "assets/objects/object_tp/tailpasaran_head_mouthparts.rgba16.inc.c"
};

