#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_toki_objects.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_toki_objects_Tex_000000[] = {
#include "assets/objects/object_toki_objects/tex_000000.i8.inc.c"
};

Vtx object_toki_objectsVtx_000800[] = {
#include "assets/objects/object_toki_objects/object_toki_objectsVtx_000800.vtx.inc"
};

Gfx object_toki_objects_DL_000880[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_I, G_IM_SIZ_8b, 4, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, 15),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x00FC),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, TEXEL1, 1, ENVIRONMENT, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_toki_objectsVtx_000800, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSPEndDisplayList(),
};

Vtx object_toki_objectsVtx_000930[] = {
#include "assets/objects/object_toki_objects/object_toki_objectsVtx_000930.vtx.inc"
};

Gfx object_toki_objects_DL_0009C0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(object_toki_objectsVtx_000930, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP1Triangle(3, 2, 5, 0),
    gsDPPipeSync(),
    gsSPVertex(&object_toki_objectsVtx_000930[6], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 object_toki_objects_Tex_000A30[] = {
#include "assets/objects/object_toki_objects/tex_000A30.rgba16.inc.c"
};

u64 object_toki_objects_Tex_000C30[] = {
#include "assets/objects/object_toki_objects/tex_000C30.rgba16.inc.c"
};

Vtx object_toki_objectsVtx_001430[] = {
#include "assets/objects/object_toki_objects/object_toki_objectsVtx_001430.vtx.inc"
};

Gfx object_toki_objects_DL_001BD0[] = {
    gsSPTexture(0x1770, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 15, 15),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, PRIMITIVE, ENVIRONMENT, COMBINED, ENVIRONMENT,
                       0, 0, 0, COMBINED),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(90, 100, 110, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_toki_objectsVtx_001430, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_toki_objectsVtx_001430[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 10, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(12, 14, 13, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 3, 19, 0, 20, 16, 15, 0),
    gsSP2Triangles(21, 7, 9, 0, 13, 22, 11, 0),
    gsSP2Triangles(11, 22, 23, 0, 24, 3, 18, 0),
    gsSP2Triangles(25, 21, 9, 0, 17, 26, 27, 0),
    gsSP2Triangles(24, 4, 3, 0, 2, 26, 17, 0),
    gsSP2Triangles(19, 28, 18, 0, 29, 30, 31, 0),
    gsSPVertex(&object_toki_objectsVtx_001430[35], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 2, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 14, 12, 0),
    gsSP1Triangle(1, 7, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0x0BB8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 170, 255),
    gsDPSetEnvColor(150, 120, 0, 128),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_toki_objectsVtx_001430[105], 17, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 4, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 11, 15, 16, 0),
    gsSP2Triangles(14, 13, 16, 0, 0, 1, 2, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_toki_objectsVtx_001430[50], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 0, 0, 5, 0, 2, 0),
    gsSP2Triangles(0, 4, 6, 0, 0, 6, 1, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP1Triangle(8, 6, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000A30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001430[61], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 1, 0, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001430[67], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 2, 5, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 7, 6, 9, 0),
    gsSP2Triangles(6, 5, 10, 0, 6, 10, 11, 0),
    gsSP1Triangle(6, 11, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000A30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001430[79], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 0, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001430[89], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 0, 2, 5, 0),
    gsSP2Triangles(2, 6, 5, 0, 2, 4, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 9, 10, 7, 0),
    gsSP2Triangles(7, 10, 11, 0, 8, 7, 12, 0),
    gsSP2Triangles(13, 12, 7, 0, 13, 7, 4, 0),
    gsSP2Triangles(2, 7, 14, 0, 7, 11, 14, 0),
    gsSP2Triangles(6, 14, 15, 0, 14, 11, 15, 0),
    gsSP2Triangles(15, 11, 10, 0, 6, 2, 14, 0),
    gsSPEndDisplayList(),
};

Vtx object_toki_objectsVtx_001FA0[] = {
#include "assets/objects/object_toki_objects/object_toki_objectsVtx_001FA0.vtx.inc"
};

Gfx object_toki_objects_DL_0028E0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_toki_objectsVtx_001FA0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000A30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[6], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[9], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 9, 8, 10, 0),
    gsSP2Triangles(9, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 16, 20, 0, 20, 15, 21, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000A30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[31], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[34], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 5, 0, 3, 5, 1, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000A30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[46], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[51], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000A30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[56], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000C30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[61], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(7, 6, 12, 0, 10, 12, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_000A30, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[74], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 0, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_toki_objects_Tex_006FC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_toki_objectsVtx_001FA0[86], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0x07D0, 0x09C4, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gHilite1Tex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_WRAP, 4, 4, G_TX_NOLOD, 15),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_toki_objectsVtx_001FA0[94], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_toki_objectsVtx_001FA0[97], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(2, 30, 0, 0),
    gsSPVertex(&object_toki_objectsVtx_001FA0[128], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 18, 16, 0, 19, 11, 10, 0),
    gsSPEndDisplayList(),
};

u64 object_toki_objects_Tex_002DC0[] = {
#include "assets/objects/object_toki_objects/tex_002DC0.rgba16.inc.c"
};

u64 object_toki_objects_Tex_0035C0[] = {
#include "assets/objects/object_toki_objects/tex_0035C0.ia8.inc.c"
};

u64 object_toki_objects_Tex_003DC0[] = {
#include "assets/objects/object_toki_objects/tex_003DC0.rgba16.inc.c"
};

u64 object_toki_objects_Tex_0045C0[] = {
#include "assets/objects/object_toki_objects/tex_0045C0.i4.inc.c"
};

u64 object_toki_objects_Tex_0055C0[] = {
#include "assets/objects/object_toki_objects/tex_0055C0.rgba16.inc.c"
};

u8 object_toki_objects_Blob_0065C0[] = {
#include "assets/objects/object_toki_objects/object_toki_objects_Blob_0065C0.bin.inc.c"
};

u64 object_toki_objects_Tex_006FC0[] = {
#include "assets/objects/object_toki_objects/tex_006FC0.rgba16.inc.c"
};

Vtx object_toki_objectsVtx_0071C0[] = {
#include "assets/objects/object_toki_objects/object_toki_objectsVtx_0071C0.vtx.inc"
};

Gfx object_toki_objects_DL_007440[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_0055C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_toki_objectsVtx_0071C0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_toki_objectsVtx_0071C0[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(6, 5, 1, 0, 6, 1, 0, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_toki_objects_Tex_0045C0, G_IM_FMT_I, 64, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_toki_objectsVtx_0071C0[16], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx object_toki_objects_DL_007578[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_0055C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_toki_objectsVtx_0071C0[20], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_toki_objectsVtx_0071C0[28], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 4, 7, 0),
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_toki_objects_Tex_0045C0, G_IM_FMT_I, 64, 128, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 7, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPVertex(&object_toki_objectsVtx_0071C0[36], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gDoorTokiColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDoorTokiColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gDoorTokiColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x0000, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0005, 0x0001, 0x7FFF, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0003, 0x0006, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0003, 0x0004, 0x0000, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0005, 0x0007, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0005, 0x0002, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0002, 0x0007, 0x0006, 0x8001, 0x0000, 0x0000, 0xFF9C},
    {0x0000, 0x0002, 0x0006, 0x0003, 0x8001, 0x0000, 0x0000, 0xFF9C},
    {0x0000, 0x0006, 0x0007, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFFF6},
    {0x0000, 0x0006, 0x0005, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFFF6},
    {0x0000, 0x0000, 0x0008, 0x0009, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x0000, 0x0009, 0x0001, 0x0000, 0x0000, 0x8001, 0xFFF6},
    {0x0000, 0x0001, 0x0005, 0x0004, 0x8001, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000, 0x0000},
    {0x0000, 0x0009, 0x000A, 0x0005, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0009, 0x0005, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0008, 0x000B, 0x000A, 0x7FFF, 0x0000, 0x0000, 0xFF9C},
    {0x0000, 0x0008, 0x000A, 0x0009, 0x7FFF, 0x0000, 0x0000, 0xFF9C},
    {0x0000, 0x0004, 0x000B, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0004, 0x0008, 0x0000, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0005, 0x000A, 0x000B, 0x0000, 0x0000, 0x7FFF, 0xFFF6},
    {0x0000, 0x0005, 0x000B, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFFF6},
};

Vec3s gDoorTokiColVertices[] = {
    {      0,    200,    -10 },
    {      0,      0,    -10 },
    {   -100,      0,    -10 },
    {   -100,    200,    -10 },
    {      0,    200,     10 },
    {      0,      0,     10 },
    {   -100,    200,     10 },
    {   -100,      0,     10 },
    {    100,    200,    -10 },
    {    100,      0,    -10 },
    {    100,      0,     10 },
    {    100,    200,     10 },
};

CollisionHeader gDoorTokiCol = { 
    { -100, 0, -10 },
    { 100, 200, 10 },
    12, gDoorTokiColVertices,
    24, gDoorTokiColPolygons,
    gDoorTokiColSurfaceType,
    gDoorTokiColCamDataList,
    0, NULL
};

u8 object_toki_objects_possiblePadding_0078B4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_toki_objectsVtx_0078C0[] = {
#include "assets/objects/object_toki_objects/object_toki_objectsVtx_0078C0.vtx.inc"
};

Gfx object_toki_objects_DL_007E20[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_002DC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_toki_objectsVtx_0078C0, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Gfx object_toki_objects_DL_007EE0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_0035C0, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_toki_objectsVtx_0078C0[24], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 6, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 19, 21, 22, 0),
    gsSP2Triangles(23, 24, 20, 0, 23, 20, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 29, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 204),
    gsSPDisplayList(0x09000000),
    gsSPVertex(&object_toki_objectsVtx_0078C0[54], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPEndDisplayList(),
};

Vtx object_toki_objectsVtx_008010[] = {
#include "assets/objects/object_toki_objects/object_toki_objectsVtx_008010.vtx.inc"
};

Gfx object_toki_objects_DL_008190[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_003DC0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, SHADE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_toki_objectsVtx_008010, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(10, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(15, 17, 18, 0, 15, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSPEndDisplayList(),
};

Vtx object_toki_objectsVtx_008250[] = {
#include "assets/objects/object_toki_objects/object_toki_objectsVtx_008250.vtx.inc"
};

Gfx object_toki_objects_DL_008390[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_toki_objects_Tex_0035C0, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_MIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_toki_objectsVtx_008250, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

