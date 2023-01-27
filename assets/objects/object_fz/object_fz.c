#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_fz.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_fzVtx_000000[] = {
#include "assets/objects/object_fz/object_fzVtx_000000.vtx.inc"
};

Gfx gFreezardIntactDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x03E8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_fzVtx_000000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fzVtx_000000[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(14, 18, 12, 0, 11, 19, 9, 0),
    gsSP2Triangles(17, 20, 15, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 0, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_fzVtx_000000[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(7, 23, 5, 0, 2, 1, 3, 0),
    gsSP2Triangles(24, 15, 25, 0, 10, 24, 26, 0),
    gsSP2Triangles(10, 27, 24, 0, 25, 15, 14, 0),
    gsSP2Triangles(11, 13, 9, 0, 26, 8, 10, 0),
    gsSP2Triangles(28, 13, 29, 0, 12, 30, 31, 0),
    gsSPVertex(&object_fzVtx_000000[67], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(2, 18, 0, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 27, 26, 0, 13, 29, 14, 0),
    gsSPVertex(&object_fzVtx_000000[97], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 19, 21, 0),
    gsSP2Triangles(19, 18, 22, 0, 23, 21, 19, 0),
    gsSP2Triangles(19, 24, 23, 0, 22, 24, 19, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 29, 30, 0),
    gsSPVertex(&object_fzVtx_000000[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_fzVtx_000000[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 1, 6, 0, 6, 7, 2, 0),
    gsSP2Triangles(8, 4, 3, 0, 3, 9, 8, 0),
    gsSP2Triangles(10, 11, 5, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(11, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_fzVtx_000000[192], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 22, 19, 0, 23, 1, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 0, 28, 24, 0),
    gsSP2Triangles(5, 4, 27, 0, 25, 29, 26, 0),
    gsSP2Triangles(2, 30, 0, 0, 5, 31, 3, 0),
    gsSPVertex(&object_fzVtx_000000[224], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 2, 1, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(2, 26, 27, 0, 28, 29, 5, 0),
    gsSPVertex(&object_fzVtx_000000[254], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsSPEndDisplayList(),
};

Vtx object_fzVtx_0013F0[] = {
#include "assets/objects/object_fz/object_fzVtx_0013F0.vtx.inc"
};

Gfx gFreezardTopRightHornChippedDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x03E8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_fzVtx_0013F0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fzVtx_0013F0[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 9, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 27, 18, 0, 28, 29, 8, 0),
    gsSP1Triangle(30, 15, 9, 0),
    gsSPVertex(&object_fzVtx_0013F0[34], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(5, 11, 12, 0, 6, 8, 10, 0),
    gsSP2Triangles(13, 14, 12, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 23, 22, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSP2Triangles(2, 9, 0, 0, 5, 14, 3, 0),
    gsSPVertex(&object_fzVtx_0013F0[66], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_fzVtx_0013F0[96], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 3, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 16, 17, 0, 0),
    gsSP2Triangles(16, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 12, 0),
    gsSP2Triangles(6, 28, 4, 0, 29, 30, 31, 0),
    gsSPVertex(&object_fzVtx_0013F0[128], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSP2Triangles(9, 10, 8, 0, 8, 11, 6, 0),
    gsSP2Triangles(12, 8, 10, 0, 11, 8, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(25, 26, 27, 0, 28, 2, 1, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_fzVtx_0013F0[160], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 0, 15, 16, 0),
    gsSP2Triangles(3, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 14, 25, 12, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 4, 30, 0),
    gsSPVertex(&object_fzVtx_0013F0[191], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 3, 5, 0, 12, 13, 14, 0),
    gsSP2Triangles(14, 13, 15, 0, 5, 16, 6, 0),
    gsSP2Triangles(17, 18, 10, 0, 19, 1, 20, 0),
    gsSP2Triangles(21, 2, 1, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 5, 4, 0, 25, 26, 27, 0),
    gsSPEndDisplayList(),
};

Vtx object_fzVtx_0023F0[] = {
#include "assets/objects/object_fz/object_fzVtx_0023F0.vtx.inc"
};

Gfx gFreezardHeadChippedDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x03E8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPTileSync(),
    gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0x0000, 1, 0, G_TX_NOMIRROR | G_TX_WRAP, 5, G_TX_NOLOD, G_TX_NOMIRROR |
                G_TX_WRAP, 5, G_TX_NOLOD),
    gsDPSetTileSize(1, 0, 0, 0x007C, 0x007C),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_fzVtx_0023F0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fzVtx_0023F0[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 9, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 14, 20, 12, 0),
    gsSP2Triangles(21, 22, 23, 0, 21, 23, 24, 0),
    gsSP2Triangles(19, 25, 17, 0, 26, 27, 8, 0),
    gsSP2Triangles(28, 15, 9, 0, 29, 30, 31, 0),
    gsSPVertex(&object_fzVtx_0023F0[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 9, 10, 0),
    gsSP2Triangles(3, 5, 8, 0, 11, 12, 10, 0),
    gsSP2Triangles(7, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 21, 22, 0),
    gsSP2Triangles(1, 0, 23, 0, 24, 25, 26, 0),
    gsSP2Triangles(23, 7, 6, 0, 2, 12, 0, 0),
    gsSP2Triangles(27, 28, 29, 0, 21, 18, 30, 0),
    gsSPVertex(&object_fzVtx_0023F0[66], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 4, 0, 5, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 13, 12, 18, 0),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 24, 0),
    gsSP2Triangles(24, 0, 22, 0, 25, 26, 27, 0),
    gsSP2Triangles(1, 0, 24, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 3, 18, 0),
    gsSPVertex(&object_fzVtx_0023F0[98], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 14, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 9, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 14, 17, 15, 0),
    gsSP2Triangles(30, 28, 31, 0, 31, 28, 27, 0),
    gsSPVertex(&object_fzVtx_0023F0[130], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
    gsSP1Triangle(2, 3, 8, 0),
    gsSPEndDisplayList(),
};

u8 object_fz_possiblePadding_002E68[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFreezardSteamTex[] = {
#include "assets/objects/object_fz/steam.i4.inc.c"
};

Vtx object_fzVtx_003070[] = {
#include "assets/objects/object_fz/object_fzVtx_003070.vtx.inc"
};

Gfx gFreezardSteamStartDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gDecorativeFlameMaskTex, G_IM_FMT_I, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, 15),
    gsDPLoadMultiBlock_4b(gFreezardSteamTex, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR
                          | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENV_ALPHA, TEXEL1, TEXEL0, 1, ENVIRONMENT, TEXEL1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetEnvColor(255, 255, 255, 128),
    gsSPEndDisplayList(),
};

Gfx gFreezardSteamDL[] = {
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_fzVtx_003070, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_fz_possiblePadding_003178[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_fzVtx_003180[] = {
#include "assets/objects/object_fz/object_fzVtx_003180.vtx.inc"
};

Gfx gFreezardIceTriangleDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x03E8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 155, 255, 255, 255),
    gsDPSetEnvColor(200, 200, 200, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fzVtx_003180, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fzVtx_003180[3], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 7, 8, 9, 0),
    gsSP1Triangle(8, 7, 10, 0),
    gsSPEndDisplayList(),
};

Vtx object_fzVtx_003310[] = {
#include "assets/objects/object_fz/object_fzVtx_003310.vtx.inc"
};

Gfx gFreezardIceRockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x03E8, 0x0BB8, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT,
                       COMBINED, ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 155, 255, 255, 255),
    gsDPSetEnvColor(200, 200, 200, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fzVtx_003310, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_fzVtx_003310[3], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 5, 6, 0, 0),
    gsSP2Triangles(5, 0, 3, 0, 7, 5, 3, 0),
    gsSP2Triangles(7, 8, 6, 0, 6, 8, 9, 0),
    gsSP2Triangles(0, 9, 1, 0, 9, 8, 1, 0),
    gsSP2Triangles(10, 3, 4, 0, 7, 3, 10, 0),
    gsSP2Triangles(6, 9, 0, 0, 1, 4, 2, 0),
    gsSP2Triangles(8, 10, 4, 0, 7, 10, 8, 0),
    gsSP1Triangle(6, 5, 7, 0),
    gsSPEndDisplayList(),
};

