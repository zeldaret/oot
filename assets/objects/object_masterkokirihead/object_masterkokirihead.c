#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_masterkokirihead.h"

u64 gKokiriShopkeeperTLUT[] = {
#include "assets/objects/object_masterkokirihead/tlut.rgba16.inc.c"
};

u64 gKokiriShopkeeperEyeHalfTex[] = {
#include "assets/objects/object_masterkokirihead/eye_half.rgba16.inc.c"
};

u64 object_masterkokiriheadTex_0009F0[] = {
#include "assets/objects/object_masterkokirihead/object_masterkokiriheadTex_0009F0.ci8.inc.c"
};

u64 object_masterkokiriheadTex_000A30[] = {
#include "assets/objects/object_masterkokirihead/object_masterkokiriheadTex_000A30.ci8.inc.c"
};

u64 gKokiriShopkeeperEyeOpenTex[] = {
#include "assets/objects/object_masterkokirihead/eye_open.rgba16.inc.c"
};

u64 gKokiriShopkeeperHairTex[] = {
#include "assets/objects/object_masterkokirihead/hair.ci8.inc.c"
};

u64 gKokiriShopkeeperNoseTex[] = {
#include "assets/objects/object_masterkokirihead/nose.ci8.inc.c"
};

u64 gKokiriShopkeeperEarTex[] = {
#include "assets/objects/object_masterkokirihead/ear.ci8.inc.c"
};

u64 gKokiriShopkeeperEyeDefaultTex[] = {
#include "assets/objects/object_masterkokirihead/eye_default.rgba16.inc.c"
};

u64 gKokiriShopkeeperHatTex[] = {
#include "assets/objects/object_masterkokirihead/hat.ci8.inc.c"
};

u64 gKokiriShopkeeperMouthAndNoseTex[] = {
#include "assets/objects/object_masterkokirihead/mouth_and_nose.ci8.inc.c"
};

Vtx object_masterkokiriheadVtx_0021B0[] = {
#include "assets/objects/object_masterkokirihead/object_masterkokiriheadVtx_0021B0.vtx.inc"
};

Gfx gKokiriShopkeeperHeadDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKokiriShopkeeperEyeDefaultTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_masterkokiriheadVtx_0021B0, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_masterkokiriheadTex_0009F0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gKokiriShopkeeperTLUT),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[6], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKokiriShopkeeperEarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[12], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_masterkokiriheadTex_0009F0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[18], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 5, 2, 0, 6, 7, 8, 0),
    gsSP2Triangles(2, 5, 0, 0, 9, 10, 11, 0),
    gsSP2Triangles(6, 12, 0, 0, 0, 7, 6, 0),
    gsSP2Triangles(0, 5, 7, 0, 11, 13, 9, 0),
    gsSP1Triangle(14, 6, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_masterkokiriheadTex_000A30, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[33], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 4, 9, 10, 0),
    gsSP2Triangles(11, 12, 0, 0, 9, 4, 13, 0),
    gsSP2Triangles(14, 11, 0, 0, 15, 16, 17, 0),
    gsSP2Triangles(16, 15, 18, 0, 0, 12, 1, 0),
    gsSP2Triangles(10, 5, 4, 0, 19, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKokiriShopkeeperHairTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[53], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(2, 3, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 8, 5, 0, 5, 9, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKokiriShopkeeperNoseTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[63], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKokiriShopkeeperHatTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[66], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 7, 0, 8, 9, 6, 0),
    gsSP2Triangles(3, 10, 0, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(2, 18, 0, 0, 1, 0, 10, 0),
    gsSP2Triangles(0, 4, 3, 0, 6, 9, 1, 0),
    gsSP2Triangles(4, 0, 18, 0, 19, 1, 9, 0),
    gsSP2Triangles(17, 10, 3, 0, 20, 6, 7, 0),
    gsSP2Triangles(12, 6, 20, 0, 3, 14, 17, 0),
    gsSP2Triangles(12, 8, 6, 0, 14, 3, 5, 0),
    gsSP1Triangle(1, 19, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKokiriShopkeeperMouthAndNoseTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[87], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_masterkokiriheadVtx_0021B0[93], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 1, 4, 0, 0, 5, 1, 0),
    gsSP2Triangles(6, 5, 0, 0, 7, 6, 0, 0),
    gsSP2Triangles(0, 8, 7, 0, 9, 6, 7, 0),
    gsSPEndDisplayList(),
};

