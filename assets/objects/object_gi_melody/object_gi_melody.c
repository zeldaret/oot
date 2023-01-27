#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_gi_melody.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

Vtx object_gi_melodyVtx_000000[] = {
#include "assets/objects/object_gi_melody/object_gi_melodyVtx_000000.vtx.inc"
};

Gfx gGiMinuetColorDL[] = {
    gsDPSetEnvColor(0, 200, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiBoleroColorDL[] = {
    gsDPSetEnvColor(255, 50, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiSerenadeColorDL[] = {
    gsDPSetEnvColor(0, 150, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gGiRequiemColorDL[] = {
    gsDPSetEnvColor(255, 150, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiNocturneColorDL[] = {
    gsDPSetEnvColor(200, 50, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gGiPreludeColorDL[] = {
    gsDPSetEnvColor(200, 255, 0, 255),
    gsSPEndDisplayList(),
};

Gfx gGiSongNoteDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0x09C4, 0x09C4, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffUnknown9Tex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, 0, 0, 0, COMBINED),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG),
    gsSPSetGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_gi_melodyVtx_000000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_gi_melodyVtx_000000[3], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 4, 7, 6, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 6, 8, 0),
    gsSP2Triangles(8, 10, 9, 0, 9, 10, 11, 0),
    gsSP2Triangles(10, 12, 11, 0, 11, 12, 13, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 13, 14, 0),
    gsSP2Triangles(15, 14, 16, 0, 17, 4, 3, 0),
    gsSP2Triangles(18, 4, 17, 0, 19, 18, 17, 0),
    gsSP2Triangles(20, 18, 19, 0, 20, 19, 21, 0),
    gsSP2Triangles(21, 19, 22, 0, 23, 21, 22, 0),
    gsSP2Triangles(23, 22, 24, 0, 24, 22, 25, 0),
    gsSP2Triangles(26, 24, 25, 0, 25, 27, 26, 0),
    gsSP2Triangles(28, 29, 30, 0, 31, 29, 28, 0),
    gsSPVertex(&object_gi_melodyVtx_000000[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 0, 4, 0, 4, 5, 3, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 7, 5, 0),
    gsSP2Triangles(8, 7, 6, 0, 9, 7, 8, 0),
    gsSP2Triangles(9, 8, 10, 0, 11, 9, 10, 0),
    gsSP2Triangles(12, 2, 13, 0, 13, 2, 14, 0),
    gsSP2Triangles(13, 14, 15, 0, 15, 14, 16, 0),
    gsSP2Triangles(17, 15, 16, 0, 18, 15, 17, 0),
    gsSP2Triangles(18, 17, 19, 0, 20, 18, 19, 0),
    gsSP2Triangles(21, 18, 20, 0, 21, 20, 22, 0),
    gsSP2Triangles(22, 23, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(25, 27, 28, 0, 27, 29, 30, 0),
    gsSPVertex(&object_gi_melodyVtx_000000[66], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 19, 21, 22, 0),
    gsSP2Triangles(21, 23, 24, 0, 23, 25, 26, 0),
    gsSP2Triangles(25, 27, 28, 0, 27, 29, 30, 0),
    gsSPVertex(&object_gi_melodyVtx_000000[97], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 18, 0),
    gsSP2Triangles(19, 17, 20, 0, 21, 19, 22, 0),
    gsSP2Triangles(23, 21, 24, 0, 25, 23, 26, 0),
    gsSP2Triangles(27, 25, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_gi_melodyVtx_000000[129], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 3, 6, 0, 7, 5, 8, 0),
    gsSP2Triangles(9, 7, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 11, 15, 0, 16, 17, 18, 0),
    gsSP2Triangles(19, 16, 20, 0, 21, 19, 22, 0),
    gsSP2Triangles(23, 21, 24, 0, 25, 23, 26, 0),
    gsSP2Triangles(27, 25, 28, 0, 29, 27, 30, 0),
    gsSPVertex(&object_gi_melodyVtx_000000[160], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsSPEndDisplayList(),
};

