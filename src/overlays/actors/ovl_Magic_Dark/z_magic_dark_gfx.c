#include "z_magic_dark.h"

static u64 sDiamondTexture[] = {
#include "assets/overlays/ovl_Magic_Dark/diamond_texture.i8.inc.c"
};

extern UNK_TYPE D_04032490[];

static Vtx sDiamondVerts[] = {
    VTX(0, 0, 64, 1024, 512, 0x00, 0x00, 0x78, 0xFF),    VTX(55, 0, 32, 1707, 512, 0x67, 0x00, 0x3C, 0xFF),
    VTX(0, 108, 0, 1365, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(55, 0, -32, 2389, 512, 0x67, 0x00, 0xC4, 0xFF),
    VTX(0, 108, 0, 2048, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(0, 0, -64, 3072, 512, 0x00, 0x00, 0x88, 0xFF),
    VTX(0, 108, 0, 2731, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(-55, 0, -32, 3755, 512, 0x99, 0x00, 0xC4, 0xFF),
    VTX(0, 108, 0, 3413, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(-55, 0, 32, 4437, 512, 0x98, 0x00, 0x3C, 0xFF),
    VTX(0, 108, 0, 4096, 0, 0x00, 0x78, 0x00, 0xFF),     VTX(-55, 0, 32, 341, 512, 0x98, 0x00, 0x3C, 0xFF),
    VTX(0, 108, 0, 683, 0, 0x00, 0x78, 0x00, 0xFF),      VTX(0, -108, 0, 683, 1024, 0x00, 0x88, 0x00, 0xFF),
    VTX(0, -108, 0, 3413, 1024, 0x00, 0x88, 0x00, 0xFF), VTX(0, -108, 0, 2731, 1024, 0x00, 0x88, 0x00, 0xFF),
    VTX(0, -108, 0, 2048, 1024, 0x00, 0x88, 0x00, 0xFF), VTX(0, -108, 0, 1365, 1024, 0x00, 0x88, 0x00, 0xFF),
    VTX(-55, 0, 32, 2389, 512, 0x98, 0x00, 0x3C, 0xFF),  VTX(-55, 0, -32, 1707, 512, 0x99, 0x00, 0xC4, 0xFF),
};

static Gfx sDiamondTextureDList[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(D_04032490, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(sDiamondTexture, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_MIRROR | G_TX_WRAP, 5, 6, 13, 13),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, TEXEL1, TEXEL0, ENVIRONMENT, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_LIGHTING),
    gsSPEndDisplayList(),
};

static Gfx sDiamondVertsDList[] = {
    gsSPVertex(sDiamondVerts, 20, 0),           gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 5, 7, 8, 0),     gsSP2Triangles(7, 9, 10, 0, 11, 0, 12, 0),
    gsSP2Triangles(13, 0, 11, 0, 14, 7, 5, 0),  gsSP2Triangles(15, 5, 3, 0, 16, 3, 1, 0),
    gsSP2Triangles(17, 1, 0, 0, 16, 18, 19, 0), gsSPEndDisplayList(),
};
