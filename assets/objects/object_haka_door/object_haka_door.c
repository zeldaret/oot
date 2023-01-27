#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_haka_door.h"

u64 object_haka_door_Tex_000000[] = {
#include "assets/objects/object_haka_door/tex_00000000.rgba16.inc.c"
};

Vtx object_haka_doorVtx_001000[] = {
#include "assets/objects/object_haka_door/object_haka_doorVtx_001000.vtx.inc"
};

Gfx object_haka_door_DL_001310[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_door_Tex_000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_haka_doorVtx_001000[34], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 7, 13, 0, 12, 13, 14, 0),
    gsSPEndDisplayList(),
};

Gfx object_haka_door_DL_0013B8[] = {
    gsSPDisplayList(object_haka_door_DL_001310),
    gsSPVertex(object_haka_doorVtx_001000, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 6, 9, 0, 7, 9, 10, 0),
    gsSP2Triangles(7, 10, 11, 0, 7, 11, 12, 0),
    gsSP2Triangles(12, 13, 8, 0, 12, 8, 7, 0),
    gsSP2Triangles(14, 9, 6, 0, 14, 6, 5, 0),
    gsSP2Triangles(11, 15, 13, 0, 11, 13, 12, 0),
    gsSP2Triangles(16, 10, 9, 0, 16, 9, 14, 0),
    gsSP2Triangles(15, 11, 10, 0, 15, 10, 16, 0),
    gsSPEndDisplayList(),
};

Gfx object_haka_door_DL_001420[] = {
    gsSPDisplayList(object_haka_door_DL_001310),
    gsSPVertex(&object_haka_doorVtx_001000[17], 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 8, 9, 0),
    gsSP2Triangles(5, 4, 10, 0, 5, 10, 11, 0),
    gsSP2Triangles(8, 7, 12, 0, 8, 12, 13, 0),
    gsSP2Triangles(8, 13, 14, 0, 8, 14, 9, 0),
    gsSP2Triangles(12, 7, 6, 0, 12, 6, 15, 0),
    gsSP2Triangles(9, 14, 10, 0, 9, 10, 4, 0),
    gsSP2Triangles(15, 6, 5, 0, 15, 5, 11, 0),
    gsSP2Triangles(0, 3, 16, 0, 0, 16, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_door_possiblePadding_001488[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_haka_door_Tex_001490[] = {
#include "assets/objects/object_haka_door/tex_00001490.rgba16.inc.c"
};

Vtx object_haka_doorVtx_002490[] = {
#include "assets/objects/object_haka_door/object_haka_doorVtx_002490.vtx.inc"
};

Gfx object_haka_door_DL_002620[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_door_Tex_001490, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_doorVtx_002490, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPVertex(&object_haka_doorVtx_002490[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPVertex(&object_haka_doorVtx_002490[10], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 3, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSPEndDisplayList(),
};

u8 object_haka_door_possiblePadding_0026F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_haka_door_Tex_002700[] = {
#include "assets/objects/object_haka_door/tex_00002700.rgba16.inc.c"
};

Vtx object_haka_doorVtx_003700[] = {
#include "assets/objects/object_haka_door/object_haka_doorVtx_003700.vtx.inc"
};

Gfx object_haka_door_DL_003890[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_haka_door_Tex_002700, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_haka_doorVtx_003700, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPVertex(&object_haka_doorVtx_003700[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 1, 0, 4, 3, 1, 0),
    gsSPVertex(&object_haka_doorVtx_003700[10], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 3, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSPEndDisplayList(),
};

