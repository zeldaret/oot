#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_ghost.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_ghostTex_000000[] = {
#include "assets/objects/object_gi_ghost/object_gi_ghostTex_000000.i8.inc.c"
};

u64 object_gi_ghostTex_000200[] = {
#include "assets/objects/object_gi_ghost/object_gi_ghostTex_000200.i8.inc.c"
};

Vtx object_gi_ghostVtx_000400[] = {
#include "assets/objects/object_gi_ghost/object_gi_ghostVtx_000400.vtx.inc"
};

Gfx gGiPoeColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 0, 0, 50, 255),
    gsDPSetEnvColor(100, 0, 200, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBigPoeColorDL[] = {
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0x80, 50, 100, 0, 255),
    gsDPSetEnvColor(150, 200, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiGhostContainerLidDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, 1),
    gsDPSetPrimColor(0, 0, 120, 130, 100, 255),
    gsDPSetEnvColor(20, 30, 20, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x07D0, 0x07D0, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, 1, 1),
    gsSPClearGeometryMode(G_FOG),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_ghostVtx_000400, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_ghostVtx_000400[3], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 1, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 2, 10, 4, 0),
    gsSP2Triangles(7, 6, 14, 0, 13, 4, 10, 0),
    gsSP2Triangles(15, 16, 17, 0, 10, 9, 13, 0),
    gsSP2Triangles(18, 19, 14, 0, 14, 20, 18, 0),
    gsSP2Triangles(16, 21, 22, 0, 17, 22, 23, 0),
    gsSP2Triangles(18, 20, 16, 0, 22, 17, 16, 0),
    gsSP2Triangles(21, 16, 20, 0, 22, 24, 25, 0),
    gsSP2Triangles(5, 26, 7, 0, 11, 13, 9, 0),
    gsSP2Triangles(21, 14, 6, 0, 24, 6, 8, 0),
    gsSP2Triangles(3, 7, 19, 0, 6, 24, 21, 0),
    gsSP2Triangles(14, 19, 7, 0, 26, 8, 7, 0),
    gsSP2Triangles(27, 0, 19, 0, 20, 14, 21, 0),
    gsSP2Triangles(19, 2, 3, 0, 7, 3, 5, 0),
    gsSP2Triangles(22, 21, 24, 0, 27, 1, 0, 0),
    gsSP2Triangles(2, 19, 0, 0, 4, 12, 5, 0),
    gsSP2Triangles(25, 23, 22, 0, 12, 4, 13, 0),
    gsSP2Triangles(10, 2, 1, 0, 4, 3, 2, 0),
    gsSP2Triangles(8, 25, 24, 0, 28, 26, 12, 0),
    gsSP2Triangles(8, 28, 25, 0, 5, 12, 26, 0),
    gsSP2Triangles(28, 8, 26, 0, 23, 25, 28, 0),
    gsSP1Triangle(28, 12, 23, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 100, 60, 0, 255),
    gsDPSetEnvColor(50, 20, 0, 255),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_ghostVtx_000400[32], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(4, 3, 5, 0, 6, 5, 1, 0),
    gsSP2Triangles(4, 7, 0, 0, 5, 3, 2, 0),
    gsSP2Triangles(1, 0, 6, 0, 0, 2, 3, 0),
    gsSP2Triangles(5, 7, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(6, 0, 7, 0, 2, 1, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 14, 15, 0, 8, 15, 9, 0),
    gsSP2Triangles(11, 9, 12, 0, 13, 8, 10, 0),
    gsSP2Triangles(11, 10, 9, 0, 13, 10, 11, 0),
    gsSP2Triangles(14, 13, 12, 0, 14, 9, 15, 0),
    gsSP2Triangles(14, 12, 9, 0, 8, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 16, 0),
    gsSP2Triangles(20, 19, 21, 0, 22, 21, 17, 0),
    gsSP2Triangles(20, 23, 16, 0, 21, 19, 18, 0),
    gsSP2Triangles(17, 16, 22, 0, 16, 18, 19, 0),
    gsSP2Triangles(21, 23, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(22, 16, 23, 0, 18, 17, 21, 0),
    gsSPEndDisplayList(),
};

Gfx gGiGhostContainerGlassDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 255, 230, 255, 255),
    gsDPSetEnvColor(120, 200, 150, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x0A8C, 0x0A8C, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown10Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_gi_ghostVtx_000400[56], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_ghostVtx_000400[59], 22, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 1, 0, 8, 9, 10, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 12, 3, 0),
    gsSP2Triangles(11, 10, 3, 0, 3, 12, 13, 0),
    gsSP2Triangles(3, 13, 4, 0, 4, 13, 14, 0),
    gsSP2Triangles(4, 14, 0, 0, 14, 6, 5, 0),
    gsSP2Triangles(0, 14, 5, 0, 6, 15, 16, 0),
    gsSP2Triangles(6, 16, 7, 0, 9, 17, 18, 0),
    gsSP2Triangles(9, 18, 10, 0, 10, 18, 19, 0),
    gsSP2Triangles(10, 19, 12, 0, 12, 19, 20, 0),
    gsSP2Triangles(12, 20, 13, 0, 13, 20, 21, 0),
    gsSP2Triangles(13, 21, 14, 0, 14, 21, 15, 0),
    gsSP1Triangle(14, 15, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gGiGhostContainerContentsDL[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(NOISE, 0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_ghostTex_000000, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock(object_gi_ghostTex_000200, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, 15, 15),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(&object_gi_ghostVtx_000400[81], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPEndDisplayList(),
};

