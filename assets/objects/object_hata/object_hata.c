#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_hata.h"

CamData gFlagpoleColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFlagpoleColSurfaceType[] = {
    { 0x00000000, 0x000207CA },
};

CollisionPoly gFlagpoleColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x2001, 0x0003, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x2002, 0x0003, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFE70},
    {0x0000, 0x2004, 0x0003, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFE70},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x2006, 0x0005, 0x0007, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x2000, 0x0006, 0x0001, 0x0000, 0x0000, 0x8001, 0xFE70},
    {0x0000, 0x2006, 0x0007, 0x0001, 0x0000, 0x0000, 0x8001, 0xFE70},
};

Vec3s gFlagpoleColVertices[] = {
    {    400,      0,   -400 },
    {    400,  20000,   -400 },
    {    400,      0,    400 },
    {    400,  20000,    400 },
    {   -400,      0,    400 },
    {   -400,  20000,    400 },
    {   -400,      0,   -400 },
    {   -400,  20000,   -400 },
};

CollisionHeader gFlagpoleCol = { 
    { -400, 0, -400 },
    { 400, 20000, 400 },
    8, gFlagpoleColVertices,
    8, gFlagpoleColPolygons,
    gFlagpoleColSurfaceType,
    gFlagpoleColCamDataList,
    0, NULL
};

u8 object_hata_possiblePadding_0000EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sFlagpoleFlapAnimFrameData[] = {
    0x0000, 0xC000, 0x0066, 0x00CE, 0x0149, 0x01CB, 0x024C, 0x02C1, 0x0321, 0x0360, 0x0376, 0x0369, 0x034A, 0x031C, 
    0x02E2, 0x029E, 0x0252, 0x0201, 0x01AF, 0x015D, 0x010E, 0x00C5, 0x0084, 0x004F, 0x0027, 0x0016, 0x0020, 0x0041, 
    0x0072, 0x00AF, 0x00F3, 0x0148, 0x01C4, 0x021D, 0x0289, 0x0300, 0x0374, 0x03DE, 0x0430, 0x0461, 0x0466, 0x0446, 
    0x0412, 0x03CD, 0x0379, 0x031B, 0x02B6, 0x024C, 0x01E1, 0x0179, 0x0116, 0x00BB, 0x006D, 0x002D, 0x0000, 0xFFFF, 
    0x0034, 0x008D, 0x00F6, 0x015C, 0x01AC, 0x01F1, 0xF724, 0xF7D1, 0xF8E3, 0xFA33, 0xFB9D, 0xFCFC, 0xFE2A, 0xFF03, 
    0xFF61, 0xFF66, 0xFF4D, 0xFF19, 0xFECD, 0xFE6B, 0xFDF7, 0xFD72, 0xFCDF, 0xFC41, 0xFB9B, 0xFAEF, 0xFA40, 0xF991, 
    0xF8E4, 0xF7C8, 0xF617, 0xF43C, 0xF2A7, 0xF1C4, 0xF202, 0xF374, 0x0461, 0x058D, 0x067C, 0x071C, 0x0716, 0x064D, 
    0x050D, 0x03A5, 0x0260, 0x018C, 0x0134, 0x011C, 0x0128, 0x013B, 0x013A, 0x010A, 0x007F, 0xFFA9, 0xFEBF, 0xFDF8, 
    0xFD8B, 0xFDB1, 0xFEC7, 0x00B2, 0x02F9, 0x051E, 0x06A9, 0x071C, 0x06A8, 0x05D8, 0x026B, 0x03E6, 0x0530, 0x0634, 
    0x06DF, 0x071C, 0x06CB, 0x05EB, 0x049A, 0x02F7, 0x011E, 0xFF2F, 0xFD47, 0xFB83, 0xFA03, 0xF8E4, 0xF8E1, 0xFA0A, 
    0xFB7C, 0xFCE4, 0xFE79, 0x0026, 0x01D7, 0x0376, 0x04EF, 0x062D, 0x071C, 0x075A, 0x06C8, 0x05BA, 0xFA6B, 0xFC86, 
    0x0021, 0x0127, 0xFDC8, 0xF831, 0xF251, 0xEE17, 0xED71, 0xF090, 0xF5D8, 0xFC87, 0x03D9, 0x0B0E, 0x1161, 0x1610, 
    0x1858, 0x105F, 0x0057, 0xF68A, 0xF664, 0xF8FA, 0xFD20, 0x01A7, 0x055F, 0x071C, 0x0645, 0x03A8, 0x0032, 0xFCCE, 
    0x038E, 0x0380, 0x0356, 0x0316, 0x02C3, 0x025F, 0x01F0, 0x0177, 0x00FA, 0x007C, 0x0000, 0xFF53, 0xFE66, 0xFD75, 
    0xFCB9, 0xFC6D, 0xFC81, 0xFCB9, 0xFD0C, 0xFD75, 0xFDEA, 0xFE66, 0xFEE1, 0xFF53, 0xFFB5, 0x0000, 0x0027, 0x002C, 
    0x001D, 0x000A, 0x0000, 0xFFD2, 0xFF8F, 0xFF3E, 0xFEE7, 0xFE92, 0xFE47, 0xFE0E, 0xFDEF, 0xFDF3, 0xFE20, 0xFEE5, 
    0x0059, 0x0203, 0x0368, 0x040F, 0x0412, 0x03E2, 0x0389, 0x0312, 0x0286, 0x01F0, 0x015A, 0x00CF, 0x0058, 0x0000, 
    0xFFD4, 0xFFCE, 0xFFDF, 0xFFF5, 0xFC93, 0xFD99, 0xFEBE, 0xFFF6, 0x0138, 0x0277, 0x03AA, 0x04C6, 0x05BE, 0x0689, 
    0x071C, 0x0728, 0x068F, 0x058E, 0x0466, 0x0353, 0x024E, 0x012C, 0xFFF6, 0xFEB8, 0xFD7C, 0xFC4D, 0xFB35, 0xFA3F, 
    0xF976, 0xF8E4, 0xF8D5, 0xF968, 0xFA61, 0xFB84, 0x049E, 0x05A2, 0x066C, 0x06EE, 0x071C, 0x06F1, 0x0675, 0x05B5, 
    0x04BD, 0x0399, 0x0254, 0x00FB, 0xFF9A, 0xFE3B, 0xFCEC, 0xFBB8, 0xFAAB, 0xF9D0, 0xF935, 0xF8E4, 0xF9C6, 0xFC2C, 
    0xFF3E, 0x0221, 0x03FE, 0x04BC, 0x04F6, 0x04DF, 0x04A7, 0x0480, 0x04E4, 0x045C, 0x02F6, 0x00FF, 0xFEC0, 0xFC86, 
    0xFA9C, 0xF94C, 0xF8E4, 0xF995, 0xFB30, 0xFD67, 0xFFED, 0x0276, 0x04B4, 0x065A, 0x071C, 0x06A0, 0x050A, 0x02CC, 
    0x0056, 0xFE1A, 0xFC88, 0xFC11, 0xFF5F, 0x0580, 0x097D, 0x09BF, 0x0888, 0x06A5, 0xF8E4, 0x01AC, 0x059A, 0x071C, 
    0x05AC, 0x02EE, 0xFF95, 0xFC54, 0xF9DD, 0xF8E4, 0xF9C4, 0xFC03, 0xFF0D, 0x024C, 0x052E, 0x071C, 0x07E5, 0x07EF, 
    0x078D, 0x0712, 0x06D3, 0x06F8, 0x072D, 0x078A, 0x07CF, 0x07C0, 0x071C, 0x051B, 0x0200, 0xFF25, 
};

JointIndex sFlagpoleFlapAnimJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x0002, 0x0020, 0x003E },
    { 0x0000, 0x0000, 0x005C },
    { 0x0000, 0x0000, 0x007A },
    { 0x0000, 0x0000, 0x0098 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0001, 0x0000, 0x0000 },
    { 0x00B6, 0x00D4, 0x00F2 },
    { 0x0000, 0x0000, 0x0110 },
    { 0x0000, 0x0000, 0x012E },
    { 0x0000, 0x0000, 0x014C },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader gFlagpoleFlapAnim = { 
    { 30 }, sFlagpoleFlapAnimFrameData,
    sFlagpoleFlapAnimJointIndices, 2
};

u8 object_hata_possiblePadding_000454[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFlagpolePoleTex[] = {
#include "assets/objects/object_hata/flagpole_pole_tex.rgba16.inc.c"
};

u64 gFlagpoleTopTex[] = {
#include "assets/objects/object_hata/flagpole_top_tex.rgba16.inc.c"
};

u64 gFlagpoleFlagTex[] = {
#include "assets/objects/object_hata/flagpole_flag_tex.ia8.inc.c"
};

Vtx object_hataVtx_002460[] = {
#include "assets/objects/object_hata/object_hataVtx_002460.vtx.inc"
};

Gfx gFlagpolePoleDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpolePoleTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_hataVtx_002460, 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 4, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
    gsSP2Triangles(12, 8, 11, 0, 13, 12, 11, 0),
    gsSP2Triangles(14, 4, 7, 0, 15, 14, 7, 0),
    gsSP2Triangles(16, 0, 3, 0, 17, 16, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFlagpoleTopTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hataVtx_002460[18], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 3, 0, 3, 5, 4, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
    gsSP2Triangles(10, 11, 8, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 16, 18, 0),
    gsSP2Triangles(20, 2, 1, 0, 20, 5, 2, 0),
    gsSP2Triangles(4, 20, 1, 0, 4, 5, 20, 0),
    gsSPEndDisplayList(),
};

Vtx object_hataVtx_002810[] = {
#include "assets/objects/object_hata/object_hataVtx_002810.vtx.inc"
};

Gfx gFlagpoleFlag1HoistEndDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpoleFlagTex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 244, 96, 43, 255),
    gsSPVertex(object_hataVtx_002810, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_hataVtx_0028E0[] = {
#include "assets/objects/object_hata/object_hataVtx_0028E0.vtx.inc"
};

Gfx gFlagpoleFlag1HoistMidDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpoleFlagTex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 244, 96, 43, 255),
    gsSPVertex(object_hataVtx_0028E0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_hataVtx_0029B0[] = {
#include "assets/objects/object_hata/object_hataVtx_0029B0.vtx.inc"
};

Gfx gFlagpoleFlag1FlyMidDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpoleFlagTex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 244, 96, 43, 255),
    gsSPVertex(object_hataVtx_0029B0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_hataVtx_002A80[] = {
#include "assets/objects/object_hata/object_hataVtx_002A80.vtx.inc"
};

Gfx gFlagpoleFlag1FlyEndDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpoleFlagTex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 244, 96, 43, 255),
    gsSPVertex(object_hataVtx_002A80, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_hataVtx_002B50[] = {
#include "assets/objects/object_hata/object_hataVtx_002B50.vtx.inc"
};

Gfx gFlagpoleFlag2HoistEndDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpoleFlagTex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 244, 96, 43, 255),
    gsSPVertex(object_hataVtx_002B50, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_hataVtx_002C20[] = {
#include "assets/objects/object_hata/object_hataVtx_002C20.vtx.inc"
};

Gfx gFlagpoleFlag2HoistMidDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpoleFlagTex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 244, 96, 43, 255),
    gsSPVertex(object_hataVtx_002C20, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_hataVtx_002CF0[] = {
#include "assets/objects/object_hata/object_hataVtx_002CF0.vtx.inc"
};

Gfx gFlagpoleFlag2FlyMidDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpoleFlagTex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 244, 96, 43, 255),
    gsSPVertex(object_hataVtx_002CF0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

Vtx object_hataVtx_002DC0[] = {
#include "assets/objects/object_hata/object_hataVtx_002DC0.vtx.inc"
};

Gfx gFlagpoleFlag2FlyEndDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFlagpoleFlagTex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 7, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 244, 96, 43, 255),
    gsSPVertex(object_hataVtx_002DC0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

StandardLimb gFlagpolePoleBaseLimb = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gFlagpolePoleLimb = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    gFlagpolePoleDL
};

StandardLimb gFlagpoleFlag1BaseLimb = { 
    { 25, 15860, 0 }, 0x03, 0x0B,
    NULL
};

StandardLimb gFlagpoleFlag1HoistEndBaseLimb = { 
    { 0, 0, 0 }, 0x04, LIMB_DONE,
    NULL
};

StandardLimb gFlagpoleFlag1HoistMidBaseLimb = { 
    { 2814, 0, 0 }, 0x05, 0x0A,
    NULL
};

StandardLimb gFlagpoleFlag1FlyMidBaseLimb = { 
    { 2814, 0, 0 }, 0x06, 0x09,
    NULL
};

StandardLimb gFlagpoleFlag1FlyEndBaseLimb = { 
    { 2814, 0, 0 }, 0x07, 0x08,
    NULL
};

StandardLimb gFlagpoleFlag1FlyEndLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFlagpoleFlag1FlyEndDL
};

StandardLimb gFlagpoleFlag1FlyMidLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFlagpoleFlag1FlyMidDL
};

StandardLimb gFlagpoleFlag1HoistMidLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFlagpoleFlag1HoistMidDL
};

StandardLimb gFlagpoleFlag1HoistEndLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFlagpoleFlag1HoistEndDL
};

StandardLimb gFlagpoleFlag2BaseLimb = { 
    { 25, 16509, 0 }, 0x0C, LIMB_DONE,
    NULL
};

StandardLimb gFlagpoleFlag2HoistEndBaseLimb = { 
    { 0, 0, 0 }, 0x0D, LIMB_DONE,
    NULL
};

StandardLimb gFlagpoleFlag2HoistMidBaseLimb = { 
    { 2814, 0, 0 }, 0x0E, 0x13,
    NULL
};

StandardLimb gFlagpoleFlag2FlyMidBaseLimb = { 
    { 2814, 0, 0 }, 0x0F, 0x12,
    NULL
};

StandardLimb gFlagpoleFlag2FlyEndBaseLimb = { 
    { 2814, 0, 0 }, 0x10, 0x11,
    NULL
};

StandardLimb gFlagpoleFlag2FlyEndLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFlagpoleFlag2FlyEndDL
};

StandardLimb gFlagpoleFlag2FlyMidLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFlagpoleFlag2FlyMidDL
};

StandardLimb gFlagpoleFlag2HoistMidLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFlagpoleFlag2HoistMidDL
};

StandardLimb gFlagpoleFlag2HoistEndLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFlagpoleFlag2HoistEndDL
};

void* gFlagpoleSkelLimbs[] = {
    &gFlagpolePoleBaseLimb,
    &gFlagpolePoleLimb,
    &gFlagpoleFlag1BaseLimb,
    &gFlagpoleFlag1HoistEndBaseLimb,
    &gFlagpoleFlag1HoistMidBaseLimb,
    &gFlagpoleFlag1FlyMidBaseLimb,
    &gFlagpoleFlag1FlyEndBaseLimb,
    &gFlagpoleFlag1FlyEndLimb,
    &gFlagpoleFlag1FlyMidLimb,
    &gFlagpoleFlag1HoistMidLimb,
    &gFlagpoleFlag1HoistEndLimb,
    &gFlagpoleFlag2BaseLimb,
    &gFlagpoleFlag2HoistEndBaseLimb,
    &gFlagpoleFlag2HoistMidBaseLimb,
    &gFlagpoleFlag2FlyMidBaseLimb,
    &gFlagpoleFlag2FlyEndBaseLimb,
    &gFlagpoleFlag2FlyEndLimb,
    &gFlagpoleFlag2FlyMidLimb,
    &gFlagpoleFlag2HoistMidLimb,
    &gFlagpoleFlag2HoistEndLimb,
};

SkeletonHeader gFlagpoleSkel = { 
    gFlagpoleSkelLimbs, ARRAY_COUNT(gFlagpoleSkelLimbs)
};

