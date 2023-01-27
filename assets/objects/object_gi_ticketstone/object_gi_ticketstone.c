#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_ticketstone.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

u64 object_gi_ticketstoneTex_000000[] = {
#include "assets/objects/object_gi_ticketstone/object_gi_ticketstoneTex_000000.i4.inc.c"
};

u64 object_gi_ticketstoneTex_000240[] = {
#include "assets/objects/object_gi_ticketstone/object_gi_ticketstoneTex_000240.i8.inc.c"
};

Vtx object_gi_ticketstoneVtx_000540[] = {
#include "assets/objects/object_gi_ticketstone/object_gi_ticketstoneVtx_000540.vtx.inc"
};

Gfx gGiClaimCheckDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 1, 1, PRIM_LOD_FRAC, 1, COMBINED, 0, SHADE, 0, 1, 1,
                       PRIM_LOD_FRAC, 1),
    gsDPSetPrimColor(0, 0, 110, 110, 100, 255),
    gsDPSetEnvColor(60, 60, 50, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown12Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(object_gi_ticketstoneVtx_000540, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 2, 9, 0, 0),
    gsSP2Triangles(0, 10, 1, 0, 3, 5, 11, 0),
    gsSP2Triangles(2, 12, 9, 0, 9, 13, 0, 0),
    gsSP2Triangles(13, 14, 0, 0, 15, 13, 9, 0),
    gsSP2Triangles(8, 16, 17, 0, 18, 17, 16, 0),
    gsSP2Triangles(18, 19, 17, 0, 19, 18, 20, 0),
    gsSP2Triangles(21, 19, 20, 0, 21, 22, 19, 0),
    gsSP2Triangles(23, 24, 25, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 23, 21, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 24, 28, 0, 26, 25, 24, 0),
    gsSP2Triangles(27, 4, 25, 0, 4, 27, 5, 0),
    gsSP2Triangles(3, 29, 30, 0, 29, 31, 30, 0),
    gsSP1Triangle(29, 3, 11, 0),
    gsSPVertex(&object_gi_ticketstoneVtx_000540[32], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 1, 4, 0, 3, 1, 0, 0),
    gsSP2Triangles(6, 4, 3, 0, 7, 8, 3, 0),
    gsSP2Triangles(3, 9, 6, 0, 3, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 8, 0),
    gsSP1Triangle(15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 100, 100, 80, 255),
    gsDPSetEnvColor(50, 50, 40, 255),
    gsSPVertex(&object_gi_ticketstoneVtx_000540[50], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(0, 2, 4, 0, 5, 4, 6, 0),
    gsSP2Triangles(0, 4, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(5, 9, 8, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 10, 6, 0, 9, 6, 10, 0),
    gsSP2Triangles(5, 6, 9, 0, 13, 9, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 9, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 18, 19, 16, 0),
    gsSP2Triangles(20, 21, 17, 0, 17, 16, 20, 0),
    gsSP2Triangles(22, 21, 20, 0, 20, 23, 22, 0),
    gsSP2Triangles(19, 18, 24, 0, 24, 25, 19, 0),
    gsSP2Triangles(26, 27, 25, 0, 25, 24, 26, 0),
    gsSP2Triangles(28, 29, 27, 0, 27, 26, 28, 0),
    gsSP2Triangles(29, 28, 30, 0, 30, 31, 29, 0),
    gsSPVertex(&object_gi_ticketstoneVtx_000540[82], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 3, 0, 3, 2, 4, 0),
    gsSP2Triangles(6, 5, 4, 0, 4, 7, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 6, 7, 0),
    gsSP2Triangles(8, 10, 11, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 11, 10, 0, 10, 13, 12, 0),
    gsSP2Triangles(14, 15, 16, 0, 16, 12, 14, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 20, 17, 0),
    gsSP2Triangles(21, 22, 23, 0, 23, 24, 21, 0),
    gsSP2Triangles(25, 26, 27, 0, 27, 28, 25, 0),
    gsSP2Triangles(29, 28, 27, 0, 28, 29, 30, 0),
    gsSP1Triangle(31, 30, 29, 0),
    gsSPVertex(&object_gi_ticketstoneVtx_000540[114], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(1, 0, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 5, 7, 0, 8, 7, 9, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 9, 11, 0),
    gsSP2Triangles(11, 12, 10, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 11, 13, 0, 15, 16, 13, 0),
    gsSP2Triangles(15, 17, 18, 0, 18, 16, 15, 0),
    gsSP2Triangles(17, 19, 18, 0, 19, 20, 18, 0),
    gsSP2Triangles(19, 21, 20, 0, 22, 20, 21, 0),
    gsSP1Triangle(21, 23, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gGiClaimCheckWritingDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_DECAL2),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, TEXEL0, COMBINED, 0, SHADE, 0, 0, 0, 0,
                       COMBINED),
    gsDPSetPrimColor(0, 0, 10, 10, 0, 255),
    gsDPSetEnvColor(40, 30, 0, 255),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_gi_ticketstoneTex_000240, G_IM_FMT_I, G_IM_SIZ_8b, 32, 24, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPVertex(&object_gi_ticketstoneVtx_000540[138], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 5, 4, 0),
    gsSP2Triangles(3, 6, 7, 0, 6, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_gi_ticketstoneTex_000000, G_IM_FMT_I, 48, 24, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_gi_ticketstoneVtx_000540[146], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 7, 0, 5, 1, 6, 0),
    gsSP2Triangles(5, 4, 8, 0, 5, 8, 9, 0),
    gsSP2Triangles(9, 2, 5, 0, 1, 5, 2, 0),
    gsSPEndDisplayList(),
};

