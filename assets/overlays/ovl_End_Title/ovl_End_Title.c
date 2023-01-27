#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "ovl_End_Title.h"
static u64 sTheLegendOfZeldaTex[360];
static u64 sOcarinaOfTimeTex[224];
static u64 sTheEndTex[240];
static u64 sNintendoLeftTex[384];
static u64 sNintendoRightTex[384];
static u64 sPresentedByTex[192];
static Vtx sTriforceVtx[6];
static Gfx sTriforceDL[12];
static Gfx sPresentedByNintendoDL[37];

static u64 sTheLegendOfZeldaTex[360] = {
#include "assets/overlays/ovl_End_Title/the_legend_of_zelda.ia8.inc.c"
};

static u64 sOcarinaOfTimeTex[224] = {
#include "assets/overlays/ovl_End_Title/ocarina_of_time.ia8.inc.c"
};

static u64 sTheEndTex[240] = {
#include "assets/overlays/ovl_End_Title/the_end.ia8.inc.c"
};

static u64 sNintendoLeftTex[384] = {
#include "assets/overlays/ovl_End_Title/nintendo_left.ia8.inc.c"
};

static u64 sNintendoRightTex[384] = {
#include "assets/overlays/ovl_End_Title/nintendo_right.ia8.inc.c"
};

static u64 sPresentedByTex[192] = {
#include "assets/overlays/ovl_End_Title/presented_by.ia8.inc.c"
};

static Vtx sTriforceVtx[6] = {
#include "assets/overlays/ovl_End_Title/sTriforceVtx.vtx.inc"
};

static Gfx sTriforceDL[12] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, PRIMITIVE, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(sTriforceVtx, 6, 0),
    gsDPSetPrimColor(0, 0x80, 128, 128, 50, 255),
    gsSP2Triangles(0, 1, 3, 0, 3, 4, 5, 0),
    gsDPSetPrimColor(0, 0x80, 255, 255, 150, 255),
    gsSP1Triangle(1, 2, 4, 0),
    gsSPEndDisplayList(),
};

static Gfx sPresentedByNintendoDL[37] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_PASS, G_RM_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetEnvColor(200, 230, 225, 255),
    gsDPLoadTextureTile(sNintendoLeftTex, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 0, 0, 0, 63, 47, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPTextureRectangle(0x0184, 0x0168, 0x0280, 0x0224, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400),
    gsDPLoadTextureTile(sNintendoRightTex, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 0, 0, 0, 63, 47, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPTextureRectangle(0x0280, 0x0168, 0x037C, 0x0224, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400),
    gsDPLoadTextureTile(sPresentedByTex, G_IM_FMT_IA, G_IM_SIZ_8b, 96, 0, 0, 0, 95, 15, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPTextureRectangle(0x01C4, 0x0140, 0x0340, 0x017C, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400),
    gsSPEndDisplayList(),
};

