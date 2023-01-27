#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_lightswitch.h"

Vtx object_lightswitchVtx_000000[] = {
#include "assets/objects/object_lightswitch/object_lightswitchVtx_000000.vtx.inc"
};

Gfx object_lightswitch_DL_000260[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, ENVIRONMENT, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x09000000),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 155, 125, 255, 255),
    gsSPVertex(object_lightswitchVtx_000000, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 1, 0),
    gsSP2Triangles(9, 5, 1, 0, 10, 11, 6, 0),
    gsSP2Triangles(10, 12, 11, 0, 11, 7, 6, 0),
    gsSP2Triangles(10, 13, 12, 0, 0, 14, 10, 0),
    gsSP2Triangles(14, 15, 10, 0, 15, 16, 10, 0),
    gsSP2Triangles(6, 8, 17, 0, 8, 1, 17, 0),
    gsSP2Triangles(1, 0, 17, 0, 10, 17, 0, 0),
    gsSP2Triangles(10, 6, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 18, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(18, 8, 19, 0, 18, 22, 8, 0),
    gsSP2Triangles(20, 23, 24, 0, 20, 25, 21, 0),
    gsSP2Triangles(20, 24, 25, 0, 12, 13, 20, 0),
    gsSP2Triangles(19, 7, 11, 0, 19, 11, 20, 0),
    gsSP2Triangles(11, 12, 20, 0, 22, 5, 9, 0),
    gsSP2Triangles(22, 9, 8, 0, 8, 7, 19, 0),
    gsSP2Triangles(26, 27, 22, 0, 27, 5, 22, 0),
    gsSP2Triangles(26, 22, 28, 0, 22, 21, 28, 0),
    gsSP2Triangles(29, 13, 16, 0, 13, 10, 16, 0),
    gsSP2Triangles(23, 20, 13, 0, 23, 13, 29, 0),
    gsSPEndDisplayList(),
};

Gfx object_lightswitch_DL_000398[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_lightswitch_Tex_001C20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, ENVIRONMENT, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_lightswitchVtx_000000[30], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_lightswitch_DL_000408[] = {
    gsSPVertex(&object_lightswitchVtx_000000[34], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 object_lightswitch_Tex_000420[] = {
#include "assets/objects/object_lightswitch/tex_00000420.rgba16.inc.c"
};

u64 object_lightswitch_Tex_000C20[] = {
#include "assets/objects/object_lightswitch/tex_00000C20.rgba16.inc.c"
};

u64 object_lightswitch_Tex_001420[] = {
#include "assets/objects/object_lightswitch/tex_00001420.rgba16.inc.c"
};

u64 object_lightswitch_Tex_001C20[] = {
#include "assets/objects/object_lightswitch/tex_00001C20.rgba16.inc.c"
};

