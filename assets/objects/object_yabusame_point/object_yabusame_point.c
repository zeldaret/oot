#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_yabusame_point.h"

u64 object_yabusame_point_Tex_000000[] = {
#include "assets/objects/object_yabusame_point/tex_00000000.ia8.inc.c"
};

u64 object_yabusame_point_Tex_000480[] = {
#include "assets/objects/object_yabusame_point/tex_00000480.ia8.inc.c"
};

u64 object_yabusame_point_Tex_000900[] = {
#include "assets/objects/object_yabusame_point/tex_00000900.ia8.inc.c"
};

Vtx object_yabusame_pointVtx_000D80[] = {
#include "assets/objects/object_yabusame_point/object_yabusame_pointVtx_000D80.vtx.inc"
};

Gfx object_yabusame_point_DL_000DC0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 48, 24, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENVIRONMENT, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_yabusame_pointVtx_000D80, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

