#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_fish.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

s16 sFishingFishAnimFrameData[] = {
    0x0702, 0x0138, 0x0000, 0x8B71, 0xF44C, 0xFDF0, 0xFC6A, 0x73F6, 0xDE8A, 0xDA70, 0x1168, 0xA2C3, 0x24F4, 0x1278, 
    
};

JointIndex sFishingFishAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0002, 0x0002, 0x0003 },
    { 0x0002, 0x0002, 0x0004 },
    { 0x0002, 0x0002, 0x0005 },
    { 0x0002, 0x0002, 0x0006 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0007 },
    { 0x0008, 0x0009, 0x000A },
    { 0x000B, 0x000C, 0x000D },
};

AnimationHeader gFishingFishAnim = { 
    { 2 }, sFishingFishAnimFrameData,
    sFishingFishAnimJointIndices, 14
};

Vtx object_fishVtx_000090[] = {
#include "assets/objects/object_fish/object_fishVtx_000090.vtx.inc"
};

Gfx gFishingFishDL_000940[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0014D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 233, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fishVtx_000090, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP1Triangle(2, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_0009E8[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[5], 7, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0016D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_000090[12], 4, 7),
    gsSP2Triangles(6, 2, 7, 0, 8, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0018D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsSP2Triangles(0, 4, 9, 0, 10, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_000B00[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0022D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 253, 255, 253, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[50], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_000BA0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0022D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[53], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_000C40[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[16], 8, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0016D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_000090[24], 20, 8),
    gsSP2Triangles(8, 0, 4, 0, 9, 4, 10, 0),
    gsSP2Triangles(11, 3, 1, 0, 12, 1, 13, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0018D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsSP2Triangles(14, 5, 6, 0, 15, 6, 16, 0),
    gsSP2Triangles(17, 7, 2, 0, 18, 2, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0016D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0018D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsSPVertex(&object_fishVtx_000090[44], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_000E30[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0026D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[82], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_000ED0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0022D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[85], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_000F70[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[56], 8, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0016D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_000090[64], 18, 8),
    gsSP2Triangles(8, 2, 0, 0, 0, 9, 10, 0),
    gsSP2Triangles(11, 12, 1, 0, 1, 5, 13, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0018D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsSP2Triangles(6, 3, 14, 0, 15, 4, 7, 0),
    gsSP2Triangles(16, 6, 17, 0, 18, 7, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_0010A0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0016D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[88], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0018D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_001AD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0016D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_001260[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0022D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[136], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_001300[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0022D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[133], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingFishDL_0013A0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_000090[118], 8, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_001AD0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_000090[126], 3, 8),
    gsSP2Triangles(2, 6, 8, 0, 2, 9, 0, 0),
    gsSP1Triangle(1, 10, 4, 0),
    gsSPVertex(&object_fishVtx_000090[129], 4, 8),
    gsSP1Triangle(1, 4, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingFishTex_0016D0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(8, 9, 7, 0, 5, 10, 11, 0),
    gsSPEndDisplayList(),
};

u64 gFishingFishTex_0014D0[] = {
#include "assets/objects/object_fish/fishing_fish_0014D0.rgba16.inc.c"
};

u64 gFishingFishTex_0016D0[] = {
#include "assets/objects/object_fish/fishing_fish_0016D0.rgba16.inc.c"
};

u64 gFishingFishTex_0018D0[] = {
#include "assets/objects/object_fish/fishing_fish_0018D0.rgba16.inc.c"
};

u64 gFishingFishTex_001AD0[] = {
#include "assets/objects/object_fish/fishing_fish_001AD0.rgba16.inc.c"
};

u64 gFishingFishTex_0022D0[] = {
#include "assets/objects/object_fish/fishing_fish_0022D0.rgba16.inc.c"
};

u64 gFishingFishTex_0024D0[] = {
#include "assets/objects/object_fish/fishing_fish_0024D0.rgba16.inc.c"
};

u64 gFishingFishTex_0026D0[] = {
#include "assets/objects/object_fish/fishing_fish_0026D0.rgba16.inc.c"
};

StandardLimb gFishingFishLimb_0028D0 = { 
    { 1794, 312, 0 }, 0x01, LIMB_DONE,
    gFishingFishDL_0010A0
};

StandardLimb gFishingFishLimb_0028DC = { 
    { 1141, 0, 0 }, 0x02, 0x0C,
    NULL
};

StandardLimb gFishingFishLimb_0028E8 = { 
    { 1530, 0, 0 }, 0x03, 0x09,
    NULL
};

StandardLimb gFishingFishLimb_0028F4 = { 
    { 692, 0, 0 }, 0x04, 0x06,
    NULL
};

StandardLimb gFishingFishLimb_002900 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x05,
    gFishingFishDL_000940
};

StandardLimb gFishingFishLimb_00290C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingFishDL_0009E8
};

StandardLimb gFishingFishLimb_002918 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x07,
    gFishingFishDL_000C40
};

StandardLimb gFishingFishLimb_002924 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x08,
    gFishingFishDL_000B00
};

StandardLimb gFishingFishLimb_002930 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingFishDL_000BA0
};

StandardLimb gFishingFishLimb_00293C = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0A,
    gFishingFishDL_000F70
};

StandardLimb gFishingFishLimb_002948 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0B,
    gFishingFishDL_000E30
};

StandardLimb gFishingFishLimb_002954 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingFishDL_000ED0
};

StandardLimb gFishingFishLimb_002960 = { 
    { 666, 528, 0 }, LIMB_DONE, 0x0D,
    gFishingFishDL_0013A0
};

StandardLimb gFishingFishLimb_00296C = { 
    { 1069, 380, 222 }, LIMB_DONE, 0x0E,
    gFishingFishDL_001300
};

StandardLimb gFishingFishLimb_002978 = { 
    { 1072, 389, -231 }, LIMB_DONE, LIMB_DONE,
    gFishingFishDL_001260
};

void* gFishingFishSkelLimbs[] = {
    &gFishingFishLimb_0028D0,
    &gFishingFishLimb_0028DC,
    &gFishingFishLimb_0028E8,
    &gFishingFishLimb_0028F4,
    &gFishingFishLimb_002900,
    &gFishingFishLimb_00290C,
    &gFishingFishLimb_002918,
    &gFishingFishLimb_002924,
    &gFishingFishLimb_002930,
    &gFishingFishLimb_00293C,
    &gFishingFishLimb_002948,
    &gFishingFishLimb_002954,
    &gFishingFishLimb_002960,
    &gFishingFishLimb_00296C,
    &gFishingFishLimb_002978,
};

FlexSkeletonHeader gFishingFishSkel = { 
    { gFishingFishSkelLimbs, ARRAY_COUNT(gFishingFishSkelLimbs) }, 12
};

u8 object_fish_possiblePadding_0029CC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingOldLureHookTex[] = {
#include "assets/objects/object_fish/fishing_old_lure_hook.rgba16.inc.c"
};

u64 gFishingOldLureFloatTex[] = {
#include "assets/objects/object_fish/fishing_old_lure_float.rgba16.inc.c"
};

Vtx object_fishVtx_002B50[] = {
#include "assets/objects/object_fish/object_fishVtx_002B50.vtx.inc"
};

Gfx gFishingOldLureDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingOldLureFloatTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fishVtx_002B50, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 3, 0, 3, 2, 4, 0),
    gsSP2Triangles(1, 3, 4, 0, 2, 1, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFishingOldLureHookTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_002B50[5], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_fish_possiblePadding_002CD8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingStreamSplashTile1Tex[] = {
#include "assets/objects/object_fish/fishing_stream_splash_tile_1.i4.inc.c"
};

u64 gFishingStreamSplashTile2Tex[] = {
#include "assets/objects/object_fish/fishing_stream_splash_tile_2.i4.inc.c"
};

Vtx object_fishVtx_003160[] = {
#include "assets/objects/object_fish/object_fishVtx_003160.vtx.inc"
};

Gfx gFishingStreamSplashDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gFishingStreamSplashTile1Tex, G_IM_FMT_I, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, 14),
    gsDPLoadMultiBlock_4b(gFishingStreamSplashTile2Tex, 0x0100, 1, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 15, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENV_ALPHA, TEXEL1, TEXEL0, 1, ENVIRONMENT, TEXEL1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetEnvColor(255, 255, 255, 128),
    gsSPDisplayList(0x09000000),
    gsSPVertex(object_fishVtx_003160, 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 2, 0, 2, 1, 7, 0),
    gsSP2Triangles(2, 6, 8, 0, 2, 4, 9, 0),
    gsSP2Triangles(2, 10, 11, 0, 12, 10, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_fish_possiblePadding_003318[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingBubbleTex[] = {
#include "assets/objects/object_fish/fishing_bubble.ia8.inc.c"
};

Vtx object_fishVtx_003420[] = {
#include "assets/objects/object_fish/object_fishVtx_003420.vtx.inc"
};

Gfx gFishingBubbleMaterialDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsDPLoadTextureBlock(gFishingBubbleTex, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPEndDisplayList(),
};

Gfx gFishingBubbleModelDL[] = {
    gsSPVertex(object_fishVtx_003420, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_fish_possiblePadding_0034D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingDustSplashTex[] = {
#include "assets/objects/object_fish/fishing_dust_splash.i8.inc.c"
};

Vtx object_fishVtx_0035E0[] = {
#include "assets/objects/object_fish/object_fishVtx_0035E0.vtx.inc"
};

Gfx gFishingDustSplashMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingDustSplashTex, G_IM_FMT_I, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0,
                       0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gFishingDustSplashModelDL[] = {
    gsSPVertex(object_fishVtx_0035E0, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_fish_possiblePadding_003698[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_fishVtx_0036A0[] = {
#include "assets/objects/object_fish/object_fishVtx_0036A0.vtx.inc"
};

Gfx gFishingUnusedMaterialDL[] = {
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gFishingLineModelDL[] = {
    gsSPVertex(object_fishVtx_0036A0, 4, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_fishVtx_003730[] = {
#include "assets/objects/object_fish/object_fishVtx_003730.vtx.inc"
};

Gfx gFishingRainDropModelDL[] = {
    gsSPVertex(object_fishVtx_003730, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gFishingRainSplashTex[] = {
#include "assets/objects/object_fish/fishing_rain_splash.rgba16.inc.c"
};

Vtx object_fishVtx_003978[] = {
#include "assets/objects/object_fish/object_fishVtx_003978.vtx.inc"
};

Gfx gFishingRainSplashMaterialDL[] = {
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFishingRainSplashTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineMode(G_CC_MODULATEIA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPEndDisplayList(),
};

Gfx gFishingRainSplashModelDL[] = {
    gsSPVertex(object_fishVtx_003978, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

s16 sFishingOwnerAnimFrameData[] = {
    0x0000, 0x0E10, 0xFF9C, 0xF9F5, 0xFEEB, 0x400E, 0x4009, 0x4000, 0x3FFB, 0x4004, 0x400E, 0x4009, 0x4000, 0x3FFB, 
    0x4004, 0x400E, 0x4009, 0x4000, 0x3FFB, 0x4004, 0x400E, 0x4009, 0x4000, 0x3FFB, 0x4004, 0x400E, 0x4009, 0x4000, 
    0x3FFB, 0x4002, 0x400E, 0x4018, 0x4022, 0x402C, 0x4034, 0x4039, 0x403B, 0x403D, 0x403E, 0x4040, 0x4042, 0x4044, 
    0x4045, 0x4047, 0x4049, 0x404A, 0x404C, 0x404E, 0x4050, 0x4052, 0x4055, 0x4057, 0x405A, 0x405C, 0x405E, 0x4060, 
    0x4062, 0x4064, 0x4065, 0x4067, 0x406A, 0x406C, 0x406E, 0x406F, 0x406E, 0x406B, 0x4065, 0x404F, 0x402B, 0x400E, 
    0x4001, 0x3FFC, 0x3FFB, 0x4004, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 
    0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 0x0277, 
    0x0277, 0x0277, 0x0278, 0x0278, 0x0279, 0x0279, 0x0279, 0x0278, 0x0278, 0x0277, 0x0277, 0x0276, 0x0275, 0x0275, 
    0x0274, 0x0274, 0x0273, 0x0273, 0x0272, 0x0272, 0x0271, 0x0271, 0x0271, 0x0270, 0x0270, 0x0270, 0x026F, 0x026F, 
    0x026F, 0x026F, 0x026E, 0x026E, 0x026D, 0x026D, 0x026D, 0x026D, 0x026E, 0x026F, 0x0272, 0x0276, 0x0277, 0x0277, 
    0x0277, 0x0277, 0x0277, 0x3B26, 0x3AD5, 0x3A3E, 0x39ED, 0x3A89, 0x3B26, 0x3AD5, 0x3A3E, 0x39ED, 0x3A89, 0x3B26, 
    0x3AD5, 0x3A3E, 0x39ED, 0x3A89, 0x3B26, 0x3AD5, 0x3A3E, 0x39ED, 0x3A89, 0x3B26, 0x3AD5, 0x3A3E, 0x39ED, 0x3A64, 
    0x3B26, 0x3BC5, 0x3C6F, 0x3D11, 0x3D99, 0x3DF6, 0x3E12, 0x3E2E, 0x3E4A, 0x3E66, 0x3E82, 0x3E9E, 0x3EBA, 0x3ED6, 
    0x3EF2, 0x3F0E, 0x3F2B, 0x3F4C, 0x3F70, 0x3F96, 0x3FBE, 0x3FE6, 0x400E, 0x4035, 0x405A, 0x407E, 0x409E, 0x40BA, 
    0x40D1, 0x40F0, 0x411B, 0x4147, 0x416A, 0x417B, 0x416E, 0x4139, 0x40D1, 0x3F60, 0x3D04, 0x3B26, 0x3A52, 0x39FD, 
    0x39ED, 0x3A89, 0x3326, 0x34E4, 0x37E9, 0x396F, 0x36A8, 0x3360, 0x358C, 0x3903, 0x3AEA, 0x3851, 0x351D, 0x3783, 
    0x3B26, 0x3D13, 0x3A46, 0x36C7, 0x38DD, 0x3C0C, 0x3D5D, 0x39D9, 0x359A, 0x36F1, 0x3965, 0x3990, 0x2ED8, 0x286E, 
    0x2512, 0x216A, 0x1AE8, 0x0FC5, 0x05F2, 0x0647, 0x0664, 0x0681, 0x069E, 0x06BC, 0x06DA, 0x06F8, 0x0717, 0x0737, 
    0x0756, 0x0777, 0x079D, 0x07C8, 0x07F5, 0x0825, 0x0857, 0x088A, 0x08BC, 0x08EE, 0x091E, 0x094C, 0x0975, 0x0998, 
    0x09C6, 0x0A07, 0x0A4D, 0x0A88, 0x0AA5, 0x0A93, 0x0A42, 0x09AD, 0x16BE, 0x2D67, 0x3326, 0x3952, 0x3D0C, 0x3D41, 
    0x37B3, 0x0414, 0x0544, 0x07D8, 0x0976, 0x066F, 0x03FE, 0x0510, 0x07A2, 0x0942, 0x060E, 0x0362, 0x048A, 0x0750, 
    0x090E, 0x05B4, 0x02E5, 0x043E, 0x0737, 0x0909, 0x05C5, 0x033B, 0x0490, 0x0738, 0x0971, 0x0A83, 0x0876, 0x08E0, 
    0x089B, 0x0347, 0xF7B0, 0xEED1, 0xEAAC, 0xEAB1, 0xEAB6, 0xEABB, 0xEAC0, 0xEAC6, 0xEACC, 0xEAD3, 0xEADA, 0xEAE1, 
    0xEAE9, 0xEAF3, 0xEAFE, 0xEB0B, 0xEB19, 0xEB29, 0xEB39, 0xEB4A, 0xEB5C, 0xEB6D, 0xEB7E, 0xEB8D, 0xEB9B, 0xEBAD, 
    0xEBC9, 0xEBE8, 0xEC04, 0xEC10, 0xEC05, 0xEBDC, 0xEB96, 0xE668, 0xDE9E, 0x0414, 0x0C34, 0x0B23, 0x090B, 0x062F, 
    0x6222, 0x6241, 0x6283, 0x62B2, 0x6221, 0x61DE, 0x6181, 0x615C, 0x613D, 0x6050, 0x5FD1, 0x5F45, 0x5F20, 0x5F1D, 
    0x5E2C, 0x5DDC, 0x5DBC, 0x5E31, 0x5ED4, 0x5EA3, 0x5F3D, 0x6060, 0x61E6, 0x6291, 0x5DA0, 0x614A, 0x62EA, 0x6480, 
    0x67FA, 0x72E2, 0x7777, 0x742C, 0x7406, 0x73DF, 0x73B8, 0x7390, 0x7367, 0x733D, 0x7313, 0x72E7, 0x72BB, 0x728E, 
    0x7257, 0x7219, 0x71D7, 0x718F, 0x7145, 0x70F8, 0x70AA, 0x705D, 0x7012, 0x6FCB, 0x6F8B, 0x6F54, 0x6F0A, 0x6E9F, 
    0x6E29, 0x6DC5, 0x6D95, 0x6DBB, 0x6E4F, 0x6F52, 0x7015, 0x6B5C, 0x6222, 0x5C9B, 0x5CEB, 0x5EEF, 0x60FC, 0xBE01, 
    0xC10C, 0xC74E, 0xCB0F, 0xC412, 0xBE01, 0xC10C, 0xC74E, 0xCB0F, 0xC412, 0xBE01, 0xC10C, 0xC74E, 0xCB0F, 0xC412, 
    0xBE01, 0xC10C, 0xC74E, 0xCB0F, 0xC412, 0xBE01, 0xC020, 0xC564, 0xCB0F, 0xD33C, 0xC9C0, 0xCB24, 0xCDC6, 0xCE11, 
    0xC82F, 0xD266, 0xE045, 0xE0A2, 0xE100, 0xE15F, 0xE1BF, 0xE220, 0xE283, 0xE2E7, 0xE34D, 0xE3B4, 0xE41D, 0xE49C, 
    0xE529, 0xE5C1, 0xE663, 0xE70A, 0xE7B6, 0xE863, 0xE90D, 0xE9B1, 0xEA4B, 0xEAD6, 0xEB4D, 0xEBEC, 0xECD2, 0xEDCC, 
    0xEE9F, 0xEF04, 0xEEB3, 0xED7A, 0xEB4D, 0xE4E9, 0xB855, 0xBE01, 0xC8AC, 0xCB3B, 0xCB0F, 0xC412, 0xDA29, 0xE073, 
    0xEC21, 0xF26B, 0xE64A, 0xDA29, 0xE073, 0xEC21, 0xF26B, 0xE64A, 0xDA29, 0xE073, 0xEC21, 0xF26B, 0xE64A, 0xDA29, 
    0xE073, 0xEC21, 0xF26B, 0xE64A, 0xDA29, 0xE073, 0xEC21, 0xF26B, 0xE546, 0xDA29, 0xEC21, 0x02AA, 0x0FEA, 0x1C05, 
    0x251C, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 
    0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 0x2951, 
    0x2951, 0x2951, 0x2951, 0x2951, 0x15C3, 0xF237, 0xDA29, 0xDC62, 0xEA18, 0xF26B, 0xE64A, 0x1685, 0x18CF, 0x1D0E, 
    0x1F58, 0x1AEF, 0x1685, 0x18CF, 0x1D0E, 0x1F58, 0x1AEF, 0x1685, 0x18CF, 0x1D0E, 0x1F58, 0x1AEF, 0x1685, 0x18CF, 
    0x1D0E, 0x1F58, 0x1AEF, 0x1685, 0x18CF, 0x1D0E, 0x1F58, 0x1AE1, 0x1685, 0x1CD6, 0x202A, 0x163C, 0x07C6, 0xFA6E, 
    0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 
    0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 0xF3DB, 
    0xF3DB, 0xF3DB, 0xF3DB, 0xFBB3, 0x0A8C, 0x1685, 0x1C07, 0x1EAB, 0x1F58, 0x1AEF, 0xF43A, 0xF8FF, 0x01DB, 0x06A0, 
    0xFD6D, 0xF43A, 0xF8FF, 0x01DB, 0x06A0, 0xFD6D, 0xF43A, 0xF8FF, 0x01DB, 0x06A0, 0xFD6D, 0xF43A, 0xF8FF, 0x01DB, 
    0x06A0, 0xFD6D, 0xF43A, 0xF8FF, 0x01DB, 0x06A0, 0xFD7D, 0xF43A, 0xFD69, 0x05A8, 0xFFEC, 0xF5F9, 0xEC55, 0xE786, 
    0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 
    0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 0xE786, 
    0xE786, 0xE786, 0xE9D6, 0xEEB7, 0xF43A, 0xFB4D, 0x0302, 0x06A0, 0xFD6D, 0xEFD4, 0xEDD5, 0xEB17, 0xEA08, 0xEC6D, 
    0xEFE5, 0xEDFF, 0xEB5F, 0xEA5D, 0xECAC, 0xEFED, 0xEE20, 0xEB9A, 0xEA98, 0xECC9, 0xEFE6, 0xEE25, 0xEBA2, 0xEA93, 
    0xECBC, 0xEFEE, 0xEE4C, 0xEB9E, 0xE9F1, 0xE548, 0xD9FD, 0xC58C, 0xABF2, 0xF593, 0xDA9E, 0xD846, 0xD898, 0xD89A, 
    0xD89B, 0xD89C, 0xD89D, 0xD89E, 0xD89E, 0xD89E, 0xD89E, 0xD89E, 0xD89E, 0xD89D, 0xD89B, 0xD89A, 0xD897, 0xD895, 
    0xD892, 0xD88E, 0xD88B, 0xD887, 0xD883, 0xD880, 0xD87D, 0xD879, 0xD872, 0xD86B, 0xD866, 0xD863, 0xD865, 0xD86E, 
    0xDE0B, 0xDB6F, 0xBA3A, 0xEFD4, 0xE717, 0xE8E7, 0xEAE6, 0xECA3, 0x3490, 0x33BC, 0x322B, 0x3143, 0x32AB, 0x340B, 
    0x330F, 0x3163, 0x3068, 0x31BA, 0x330E, 0x3218, 0x307E, 0x2F9A, 0x3103, 0x3279, 0x31B4, 0x3053, 0x2FAE, 0x3160, 
    0x332B, 0x32ED, 0x3212, 0x3176, 0x3255, 0x34E9, 0x37AD, 0x395E, 0x45C8, 0x4FEF, 0x5BBC, 0x6227, 0x620A, 0x61ED, 
    0x61D1, 0x61B5, 0x6199, 0x617E, 0x6162, 0x6147, 0x612D, 0x6112, 0x60F3, 0x60D2, 0x60B0, 0x608D, 0x6069, 0x6047, 
    0x6026, 0x6006, 0x5FE9, 0x5FCE, 0x5FB7, 0x5FA4, 0x5F8B, 0x5F69, 0x5F46, 0x5F2B, 0x5F1E, 0x5F28, 0x5F52, 0x6116, 
    0x618B, 0x4D25, 0x3490, 0x33EB, 0x2FEF, 0x2CEA, 0x2D38, 0x1C9C, 0x1A67, 0x1725, 0x15CF, 0x1921, 0x1D61, 0x1B75, 
    0x186B, 0x1734, 0x1A98, 0x1EC0, 0x1CDD, 0x19C8, 0x186E, 0x1BA2, 0x1F82, 0x1D67, 0x1A07, 0x1851, 0x1B1D, 0x1E98, 
    0x1BC5, 0x1777, 0x1579, 0x10A6, 0x03BF, 0xECA6, 0xD032, 0x170A, 0xF7E6, 0xF087, 0xED9D, 0xEDA3, 0xEDA8, 0xEDAE, 
    0xEDB3, 0xEDB8, 0xEDBD, 0xEDC1, 0xEDC5, 0xEDC9, 0xEDCD, 0xEDD0, 0xEDD3, 0xEDD6, 0xEDD9, 0xEDDB, 0xEDDC, 0xEDDD, 
    0xEDDE, 0xEDDE, 0xEDDD, 0xEDDC, 0xEDDC, 0xEDDA, 0xEDD8, 0xEDD5, 0xEDD2, 0xEDD0, 0xEDD1, 0xEDD6, 0xF06B, 0xEF0E, 
    0xDC79, 0x1C9C, 0x1306, 0x17BB, 0x1C17, 0x2074, 0x3748, 0x396A, 0x3D2B, 0x3F17, 0x3B53, 0x3748, 0x396A, 0x3D2B, 
    0x3F17, 0x3B53, 0x3748, 0x396A, 0x3D2B, 0x3F17, 0x3B53, 0x3748, 0x396A, 0x3D2B, 0x3F17, 0x3B53, 0x3748, 0x3900, 
    0x3C5C, 0x3F17, 0x41B5, 0x441B, 0x4515, 0x4520, 0x422F, 0x39CB, 0x2DC9, 0x25A1, 0x25E7, 0x262D, 0x2673, 0x26B8, 
    0x26FC, 0x2740, 0x2784, 0x27C6, 0x2808, 0x284A, 0x2897, 0x28EA, 0x2940, 0x2998, 0x29F1, 0x2A48, 0x2A9D, 0x2AED, 
    0x2B38, 0x2B7B, 0x2BB6, 0x2BE8, 0x2C27, 0x2C7F, 0x2CD9, 0x2D21, 0x2D42, 0x2D28, 0x2CBC, 0x2BE8, 0x28C5, 0x3526, 
    0x3748, 0x38A7, 0x3CDD, 0x3F17, 0x3B53, 0x058A, 0x0B0A, 0x1542, 0x1AC2, 0x1026, 0x058A, 0x0B0A, 0x1542, 0x1AC2, 
    0x1026, 0x058A, 0x0B0A, 0x1542, 0x1AC2, 0x1026, 0x058A, 0x0B0A, 0x1542, 0x1AC2, 0x1026, 0x058A, 0x0B0A, 0x1542, 
    0x1AC2, 0x11A1, 0x058A, 0xFF97, 0xF9D3, 0xF494, 0xF032, 0xED04, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 
    0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 
    0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xEB62, 0xF4DF, 0xFD7D, 0x058A, 
    0x0E68, 0x16F1, 0x1AC2, 0x1026, 0x0612, 0x0030, 0xF543, 0xEF61, 0xFAB9, 0x0612, 0x0030, 0xF543, 0xEF61, 0xFAB9, 
    0x0612, 0x0030, 0xF543, 0xEF61, 0xFAB9, 0x0612, 0x0030, 0xF543, 0xEF61, 0xFAB9, 0x0612, 0x0030, 0xF543, 0xEF61, 
    0xFAB4, 0x0612, 0x0492, 0x00B0, 0xFB8D, 0xF64C, 0xF210, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 
    0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 
    0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xEFFA, 0xF1F6, 0xFDFC, 0x0612, 0xFFF5, 
    0xF525, 0xEF61, 0xFAB9, 0x1A78, 0x19A3, 0x1817, 0x1742, 0x18DD, 0x1A78, 0x19A3, 0x1817, 0x1742, 0x18DD, 0x1A78, 
    0x19A3, 0x1817, 0x1742, 0x18DD, 0x1A78, 0x19A3, 0x1817, 0x1742, 0x18DD, 0x1A78, 0x19A3, 0x1817, 0x1742, 0x1933, 
    0x1A78, 0x188F, 0x15D7, 0x12CA, 0x0FE6, 0x0DA6, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 
    0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 
    0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x0C87, 0x1593, 0x1919, 0x1A78, 0x19C9, 0x182A, 
    0x1742, 0x18DD, 0x0097, 0x0097, 0x0097, 0x0097, 0x0097, 0x0098, 0x0097, 0x0097, 0x0097, 0x0097, 0x0098, 0x0097, 
    0x0097, 0x0097, 0x0097, 0x0098, 0x0097, 0x0097, 0x0097, 0x0097, 0x0098, 0x0097, 0x0097, 0x0097, 0x0097, 0x0097, 
    0x0097, 0x0096, 0x0096, 0x0096, 0x0096, 0x0096, 0x0096, 0x0097, 0x0097, 0x0098, 0x0098, 0x0099, 0x009A, 0x009B, 
    0x009D, 0x009E, 0x009F, 0x00A0, 0x00A1, 0x00A3, 0x00A4, 0x00A5, 0x00A6, 0x00A7, 0x00A8, 0x00A9, 0x00AB, 0x00AC, 
    0x00AE, 0x00AF, 0x00B0, 0x00B0, 0x00B0, 0x00B0, 0x00B0, 0x00AC, 0x00A5, 0x009D, 0x0097, 0x0095, 0x0096, 0x0097, 
    0x0097, 0x0121, 0x01AA, 0x0278, 0x025A, 0xFF0D, 0xFC3D, 0xFDD3, 0x00C4, 0x025A, 0xFF4C, 0xFC3D, 0xFDD3, 0x00C4, 
    0x025A, 0xFF4C, 0xFC3D, 0xFDD3, 0x00C4, 0x025A, 0xFF55, 0xFC3D, 0xFC28, 0xFC32, 0xFC57, 0xFC93, 0xFCE1, 0xFD3D, 
    0xFDA2, 0xFE0C, 0xFE76, 0xFEDB, 0xFF37, 0xFF86, 0xFFC3, 0xFFEA, 0xFFFE, 0x0008, 0x0009, 0x0002, 0xFFF4, 0xFFE1, 
    0xFFC9, 0xFFAE, 0xFF92, 0xFF74, 0xFF57, 0xFF3B, 0xFF22, 0xFF0D, 0xFEF6, 0xFED7, 0xFEB2, 0xFE8B, 0xFE63, 0xFE3C, 
    0xFE1A, 0xFDFF, 0xFDED, 0xFDE7, 0xFDEE, 0xFE07, 0xFE78, 0xFF55, 0x0052, 0x0121, 0x01B8, 0x022C, 0x025A, 0x01BD, 
    0x05D3, 0x05D5, 0x05D8, 0x05D8, 0x05CC, 0x05C1, 0x05C7, 0x05D2, 0x05D8, 0x05CD, 0x05C1, 0x05C7, 0x05D2, 0x05D8, 
    0x05CD, 0x05C1, 0x05C7, 0x05D2, 0x05D8, 0x05CE, 0x05C1, 0x05BB, 0x05B8, 0x05B6, 0x05B5, 0x05B4, 0x05B4, 0x05B2, 
    0x05B0, 0x05AB, 0x05A5, 0x059B, 0x058E, 0x057D, 0x0567, 0x054A, 0x0527, 0x04FD, 0x04CF, 0x049E, 0x046A, 0x0435, 
    0x0401, 0x03CF, 0x039F, 0x0373, 0x034D, 0x032D, 0x0315, 0x0303, 0x02F4, 0x02E9, 0x02E1, 0x02DE, 0x02E0, 0x02E8, 
    0x02F4, 0x0308, 0x0321, 0x0342, 0x036A, 0x03D2, 0x0488, 0x0549, 0x05D3, 0x05FC, 0x05EB, 0x05D8, 0x05D6, 0x0000, 
    
};

JointIndex sFishingOwnerAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0005, 0x004A, 0x008F },
    { 0x00D4, 0x0119, 0x015E },
    { 0x0003, 0x0000, 0x01A3 },
    { 0x01E8, 0x022D, 0x0272 },
    { 0x02B7, 0x02FC, 0x0341 },
    { 0x0004, 0x0000, 0x0386 },
    { 0x03CB, 0x0410, 0x0455 },
    { 0x049A, 0x04DF, 0x0524 },
};

AnimationHeader gFishingOwnerAnim = { 
    { 69 }, sFishingOwnerAnimFrameData,
    sFishingOwnerAnimJointIndices, 5
};

Vtx object_fishVtx_004550[] = {
#include "assets/objects/object_fish/object_fishVtx_004550.vtx.inc"
};

Gfx gFishingOwnerDL_006F60[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[592], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(3, 4, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(8, 9, 6, 0, 2, 3, 0, 0),
    gsSP2Triangles(10, 1, 0, 0, 9, 5, 6, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 10, 11, 0),
    gsSP2Triangles(7, 11, 8, 0, 11, 10, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 12, 0),
    gsSP2Triangles(14, 17, 12, 0, 12, 17, 15, 0),
    gsSP2Triangles(18, 19, 14, 0, 14, 13, 18, 0),
    gsSP2Triangles(15, 19, 18, 0, 18, 16, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_fishVtx_004550[612], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 3, 5, 0),
    gsSP2Triangles(3, 6, 5, 0, 7, 8, 9, 0),
    gsSP2Triangles(8, 10, 9, 0, 1, 4, 10, 0),
    gsSP2Triangles(10, 8, 11, 0, 11, 1, 10, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 19, 17, 0, 20, 17, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 23, 22, 25, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerCollarTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSPVertex(&object_fishVtx_004550[638], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 6, 7, 0),
    gsSP1Triangle(5, 8, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerVestTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_fishVtx_004550[647], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(2, 3, 5, 0, 2, 5, 0, 0),
    gsSP2Triangles(4, 6, 3, 0, 4, 7, 6, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 9, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 0, 0, 0, 5, 9, 0),
    gsSP2Triangles(10, 8, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 11, 13, 0, 11, 10, 13, 0),
    gsSP2Triangles(12, 13, 10, 0, 13, 12, 16, 0),
    gsSP2Triangles(12, 17, 16, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 18, 20, 0, 20, 22, 21, 0),
    gsSP2Triangles(23, 21, 22, 0, 22, 24, 25, 0),
    gsSP1Triangle(25, 23, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerHairDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerHairFullTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[199], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 10, 26, 0),
    gsSP2Triangles(27, 28, 0, 0, 29, 0, 30, 0),
    gsSPVertex(&object_fishVtx_004550[230], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 12, 21, 22, 0),
    gsSP2Triangles(23, 15, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(26, 28, 27, 0, 29, 30, 31, 0),
    gsSPVertex(&object_fishVtx_004550[262], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSP1Triangle(30, 31, 24, 0),
    gsSPVertex(&object_fishVtx_004550[294], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerHatDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerHatTex, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[159], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 7, 0, 7, 6, 13, 0),
    gsSP2Triangles(7, 15, 16, 0, 16, 4, 7, 0),
    gsSP2Triangles(17, 18, 12, 0, 8, 18, 17, 0),
    gsSP2Triangles(8, 19, 20, 0, 17, 19, 8, 0),
    gsSP2Triangles(12, 21, 17, 0, 9, 8, 20, 0),
    gsSP2Triangles(10, 18, 8, 0, 12, 18, 10, 0),
    gsSP2Triangles(22, 9, 20, 0, 7, 14, 15, 0),
    gsSP2Triangles(13, 23, 14, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 24, 1, 0, 20, 28, 22, 0),
    gsSP2Triangles(29, 17, 21, 0, 19, 17, 29, 0),
    gsSP2Triangles(20, 19, 28, 0, 1, 0, 30, 0),
    gsSP2Triangles(30, 27, 1, 0, 26, 2, 1, 0),
    gsSP2Triangles(1, 24, 26, 0, 21, 31, 29, 0),
    gsSP1Triangle(29, 28, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_fishVtx_004550[191], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 2, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerDL_0076B8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fishVtx_004550, 9, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_004550[9], 22, 9),
    gsSP2Triangles(0, 1, 9, 0, 0, 10, 11, 0),
    gsSP2Triangles(12, 13, 1, 0, 14, 15, 0, 0),
    gsSP2Triangles(0, 16, 17, 0, 4, 18, 19, 0),
    gsSP2Triangles(20, 21, 0, 0, 22, 4, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerHairPartialTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(2, 7, 23, 0, 8, 24, 25, 0),
    gsSP2Triangles(3, 26, 27, 0, 28, 29, 5, 0),
    gsSP1Triangle(30, 7, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_fishVtx_004550[31], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 6, 5, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 13, 0),
    gsSP2Triangles(13, 16, 15, 0, 17, 1, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerHairFullTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_fishVtx_004550[49], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 26, 27, 28, 0),
    gsSP1Triangle(29, 30, 31, 0),
    gsSPVertex(&object_fishVtx_004550[81], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerHairPartialTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_fishVtx_004550[99], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 9, 6, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(15, 16, 13, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 20, 17, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsSP2Triangles(28, 4, 3, 0, 2, 29, 30, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerHearTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_fishVtx_004550[130], 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerMouthTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsSP2Triangles(11, 9, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 13, 12, 0, 14, 12, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerNostrilTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(16, 17, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(19, 20, 21, 0, 21, 22, 19, 0),
    gsSP2Triangles(22, 23, 19, 0, 19, 23, 24, 0),
    gsSP2Triangles(24, 25, 19, 0, 19, 25, 26, 0),
    gsSP2Triangles(19, 26, 27, 0, 27, 28, 19, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerDL_007CF8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[552], 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_004550[556], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 2, 5, 6, 0),
    gsSP2Triangles(2, 3, 7, 0, 8, 0, 9, 0),
    gsSP2Triangles(10, 3, 0, 0, 11, 0, 12, 0),
    gsSP2Triangles(13, 14, 2, 0, 15, 1, 2, 0),
    gsSPVertex(&object_fishVtx_004550[568], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 1, 0, 0),
    gsSP2Triangles(4, 7, 3, 0, 0, 6, 5, 0),
    gsSP2Triangles(6, 7, 4, 0, 2, 3, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 18, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 22, 21, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerDL_007E48[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[528], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_004550[532], 12, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 1, 2, 0),
    gsSP2Triangles(2, 3, 6, 0, 7, 3, 0, 0),
    gsSP2Triangles(0, 8, 9, 0, 10, 11, 2, 0),
    gsSP2Triangles(12, 13, 0, 0, 2, 14, 15, 0),
    gsSPVertex(&object_fishVtx_004550[544], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(3, 5, 6, 0, 6, 5, 1, 0),
    gsSP2Triangles(2, 7, 0, 0, 4, 7, 2, 0),
    gsSP2Triangles(1, 0, 6, 0, 6, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerDL_007F78[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[449], 4, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerFingersTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_004550[453], 20, 4),
    gsSP2Triangles(0, 1, 4, 0, 2, 5, 6, 0),
    gsSP2Triangles(7, 8, 3, 0, 1, 9, 10, 0),
    gsSP2Triangles(11, 12, 0, 0, 3, 13, 14, 0),
    gsSP2Triangles(15, 16, 1, 0, 1, 2, 17, 0),
    gsSP2Triangles(18, 2, 3, 0, 19, 20, 0, 0),
    gsSP2Triangles(21, 3, 0, 0, 22, 0, 23, 0),
    gsSPVertex(&object_fishVtx_004550[473], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(11, 10, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(10, 9, 18, 0, 18, 17, 10, 0),
    gsSP2Triangles(20, 11, 16, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 24, 21, 0, 21, 24, 25, 0),
    gsSP2Triangles(22, 21, 3, 0, 22, 26, 27, 0),
    gsSP2Triangles(24, 23, 27, 0, 28, 15, 29, 0),
    gsSP2Triangles(2, 29, 30, 0, 17, 16, 10, 0),
    gsSP2Triangles(2, 31, 0, 0, 19, 20, 17, 0),
    gsSPVertex(&object_fishVtx_004550[505], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 4, 3, 0, 2, 7, 4, 0),
    gsSP2Triangles(2, 6, 0, 0, 0, 6, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 9, 13, 0),
    gsSP2Triangles(14, 12, 15, 0, 14, 16, 11, 0),
    gsSP2Triangles(14, 10, 17, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 10, 9, 0, 17, 10, 21, 0),
    gsSP1Triangle(21, 22, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerDL_008138[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[409], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerShirtTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_004550[413], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 6, 2, 0),
    gsSP2Triangles(7, 3, 2, 0, 8, 1, 9, 0),
    gsSP2Triangles(1, 3, 10, 0, 11, 1, 12, 0),
    gsSP2Triangles(2, 13, 14, 0, 2, 0, 15, 0),
    gsSPVertex(&object_fishVtx_004550[425], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 3, 0, 2, 1, 6, 0),
    gsSP2Triangles(4, 7, 3, 0, 6, 5, 2, 0),
    gsSP2Triangles(3, 7, 5, 0, 2, 4, 0, 0),
    gsSP2Triangles(8, 9, 10, 0, 10, 11, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 16, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 20, 23, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerDL_008288[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[385], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerSkinTex, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_004550[389], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 2, 0, 5, 0),
    gsSP2Triangles(6, 3, 2, 0, 1, 3, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 2, 10, 11, 0),
    gsSP2Triangles(1, 12, 13, 0, 14, 15, 2, 0),
    gsSPVertex(&object_fishVtx_004550[401], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 4, 0, 1, 6, 5, 0),
    gsSP2Triangles(2, 7, 0, 0, 0, 7, 3, 0),
    gsSP2Triangles(5, 2, 1, 0, 4, 3, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingOwnerDL_0083B8[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_004550[306], 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gFishingOwnerTLUT),
    gsDPLoadTextureBlock(gFishingOwnerFingersTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_004550[310], 20, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 6, 2, 0),
    gsSP2Triangles(3, 7, 8, 0, 9, 10, 0, 0),
    gsSP2Triangles(1, 11, 12, 0, 13, 14, 3, 0),
    gsSP2Triangles(0, 15, 16, 0, 17, 2, 0, 0),
    gsSP2Triangles(3, 2, 18, 0, 1, 19, 20, 0),
    gsSP2Triangles(1, 3, 21, 0, 22, 1, 23, 0),
    gsSPVertex(&object_fishVtx_004550[330], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 12, 9, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 10, 9, 0, 17, 18, 19, 0),
    gsSP2Triangles(18, 11, 10, 0, 10, 19, 18, 0),
    gsSP2Triangles(16, 9, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 24, 21, 0, 25, 24, 23, 0),
    gsSP2Triangles(5, 23, 22, 0, 26, 27, 22, 0),
    gsSP2Triangles(26, 21, 24, 0, 28, 13, 29, 0),
    gsSP2Triangles(30, 28, 0, 0, 10, 16, 19, 0),
    gsSP2Triangles(2, 31, 0, 0, 19, 20, 17, 0),
    gsSPVertex(&object_fishVtx_004550[362], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 4, 7, 0, 0),
    gsSP2Triangles(2, 6, 0, 0, 8, 6, 2, 0),
    gsSP2Triangles(9, 10, 11, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 13, 15, 0, 9, 16, 15, 0),
    gsSP2Triangles(17, 10, 15, 0, 18, 19, 20, 0),
    gsSP2Triangles(11, 10, 21, 0, 21, 10, 17, 0),
    gsSP1Triangle(17, 22, 21, 0),
    gsSPEndDisplayList(),
};

StandardLimb gFishingOwnerLimb_008578 = { 
    { 0, 3600, -100 }, 0x01, LIMB_DONE,
    gFishingOwnerDL_006F60
};

StandardLimb gFishingOwnerLimb_008584 = { 
    { 1850, 0, 700 }, 0x02, 0x04,
    gFishingOwnerDL_008138
};

StandardLimb gFishingOwnerLimb_008590 = { 
    { 950, 0, 0 }, 0x03, LIMB_DONE,
    gFishingOwnerDL_008288
};

StandardLimb gFishingOwnerLimb_00859C = { 
    { 1000, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingOwnerDL_0083B8
};

StandardLimb gFishingOwnerLimb_0085A8 = { 
    { 1850, 0, -700 }, 0x05, 0x07,
    gFishingOwnerDL_007CF8
};

StandardLimb gFishingOwnerLimb_0085B4 = { 
    { 950, 0, 0 }, 0x06, LIMB_DONE,
    gFishingOwnerDL_007E48
};

StandardLimb gFishingOwnerLimb_0085C0 = { 
    { 1000, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingOwnerDL_007F78
};

StandardLimb gFishingOwnerLimb_0085CC = { 
    { 2450, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingOwnerDL_0076B8
};

void* gFishingOwnerSkelLimbs[] = {
    &gFishingOwnerLimb_008578,
    &gFishingOwnerLimb_008584,
    &gFishingOwnerLimb_008590,
    &gFishingOwnerLimb_00859C,
    &gFishingOwnerLimb_0085A8,
    &gFishingOwnerLimb_0085B4,
    &gFishingOwnerLimb_0085C0,
    &gFishingOwnerLimb_0085CC,
};

FlexSkeletonHeader gFishingOwnerSkel = { 
    { gFishingOwnerSkelLimbs, ARRAY_COUNT(gFishingOwnerSkelLimbs) }, 8
};

u8 object_fish_possiblePadding_008604[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx gFishingRippleMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                       COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_CLD_SURF2),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gEffShockwaveTex, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx gFishingRippleModelDL[] = {
    gsSPVertex(gGameplayKeepVtx_01A120, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSPEndDisplayList(),
};

u64 gFishingWaterDustTex[] = {
#include "assets/objects/object_fish/fishing_water_dust.i4.inc.c"
};

Vtx object_fishVtx_008890[] = {
#include "assets/objects/object_fish/object_fishVtx_008890.vtx.inc"
};

Gfx gFishingWaterDustMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gDecorativeFlameMaskTex, G_IM_FMT_I, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                            G_TX_WRAP, 5, 6, G_TX_NOLOD, 15),
    gsDPLoadMultiBlock_4b(gFishingWaterDustTex, 0x0100, 1, G_IM_FMT_I, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                          G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, ENV_ALPHA, TEXEL1, TEXEL0, 1, ENVIRONMENT, TEXEL1, PRIMITIVE, ENVIRONMENT, COMBINED,
                       ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_ZB_CLD_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsSPEndDisplayList(),
};

Gfx gFishingWaterDustModelDL[] = {
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_fishVtx_008890, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u64 gFishingOwnerTLUT[] = {
#include "assets/objects/object_fish/fishing_owner_tlut.rgba16.inc.c"
};

u64 gFishingOwnerSkinTex[] = {
#include "assets/objects/object_fish/fishing_owner_skin.ci8.inc.c"
};

u64 gFishingOwnerHairFullTex[] = {
#include "assets/objects/object_fish/fishing_owner_hair_full.ci8.inc.c"
};

u64 gFishingOwnerHairPartialTex[] = {
#include "assets/objects/object_fish/fishing_owner_hair_partial.ci8.inc.c"
};

u64 gFishingOwnerHearTex[] = {
#include "assets/objects/object_fish/fishing_owner_hear.ci8.inc.c"
};

u64 gFishingOwnerMouthTex[] = {
#include "assets/objects/object_fish/fishing_owner_mouth.ci8.inc.c"
};

u64 gFishingOwnerNostrilTex[] = {
#include "assets/objects/object_fish/fishing_owner_nostril.ci8.inc.c"
};

u64 gFishingOwnerEyeOpenTex[] = {
#include "assets/objects/object_fish/fishing_owner_eye_open.ci8.inc.c"
};

u64 gFishingOwnerEyeHalfTex[] = {
#include "assets/objects/object_fish/fishing_owner_eye_half.ci8.inc.c"
};

u64 gFishingOwnerEyeClosedTex[] = {
#include "assets/objects/object_fish/fishing_owner_eye_closed.ci8.inc.c"
};

u64 gFishingOwnerHatTex[] = {
#include "assets/objects/object_fish/fishing_owner_hat.ci8.inc.c"
};

u64 gFishingOwnerShirtTex[] = {
#include "assets/objects/object_fish/fishing_owner_shirt.ci8.inc.c"
};

u64 gFishingOwnerFingersTex[] = {
#include "assets/objects/object_fish/fishing_owner_fingers.ci8.inc.c"
};

u64 gFishingOwnerCollarTex[] = {
#include "assets/objects/object_fish/fishing_owner_collar.ci8.inc.c"
};

u64 gFishingOwnerVestTex[] = {
#include "assets/objects/object_fish/fishing_owner_vest.ci8.inc.c"
};

u64 gFishingSinkingLureSegmentTex[] = {
#include "assets/objects/object_fish/fishing_sinking_lure_segment.ia8.inc.c"
};

Vtx object_fishVtx_00B910[] = {
#include "assets/objects/object_fish/object_fishVtx_00B910.vtx.inc"
};

Gfx gFishingSinkingLureSegmentMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(1, SHADE, TEXEL0, SHADE, 0, 0, 0, TEXEL0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(gFishingSinkingLureSegmentTex, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx gFishingSinkingLureSegmentModelDL[] = {
    gsSPVertex(object_fishVtx_00B910, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_fish_possiblePadding_00B9D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingGroupFishTex[] = {
#include "assets/objects/object_fish/fishing_group_fish.rgba16.inc.c"
};

Vtx object_fishVtx_00C1E0[] = {
#include "assets/objects/object_fish/object_fishVtx_00C1E0.vtx.inc"
};

Gfx gFishingGroupFishMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingGroupFishTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 6, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx gFishingGroupFishModelDL[] = {
    gsSPVertex(object_fishVtx_00C1E0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Vtx object_fishVtx_00C2B0[] = {
#include "assets/objects/object_fish/object_fishVtx_00C2B0.vtx.inc"
};

Gfx gFishingUnusedRockDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingUnusedRockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fishVtx_00C2B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 9, 1, 0, 5, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 16, 17, 0),
    gsSP2Triangles(2, 1, 9, 0, 18, 19, 20, 0),
    gsSP2Triangles(21, 22, 23, 0, 24, 12, 25, 0),
    gsSP2Triangles(9, 5, 2, 0, 26, 3, 24, 0),
    gsSP2Triangles(23, 27, 21, 0, 28, 16, 29, 0),
    gsSP2Triangles(29, 30, 28, 0, 1, 0, 4, 0),
    gsSP2Triangles(24, 25, 26, 0, 2, 12, 0, 0),
    gsSP1Triangle(2, 5, 12, 0),
    gsSPVertex(&object_fishVtx_00C2B0[31], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 3, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 11, 0),
    gsSP2Triangles(15, 11, 16, 0, 17, 18, 12, 0),
    gsSP2Triangles(17, 6, 8, 0, 17, 8, 19, 0),
    gsSP2Triangles(20, 9, 3, 0, 18, 21, 22, 0),
    gsSP2Triangles(18, 17, 21, 0, 9, 23, 24, 0),
    gsSP2Triangles(25, 16, 26, 0, 15, 17, 12, 0),
    gsSP1Triangle(12, 11, 15, 0),
    gsSPEndDisplayList(),
};

u64 gFishingUnusedRockTex[] = {
#include "assets/objects/object_fish/fishing_unused_rock.rgba16.inc.c"
};

s16 sFishingLoachAnimFrameData[] = {
    0x15A2, 0xFEDB, 0x0000, 0x7FAF, 0xFFF3, 0x005F, 0xFFCF, 0xFF59, 0x4000, 0x13A1, 0xEC5D, 0x8EEF, 
};

JointIndex sFishingLoachAnimJointIndices[] = {
    { 0x0000, 0x0001, 0x0002 },
    { 0x0002, 0x0002, 0x0003 },
    { 0x0002, 0x0002, 0x0004 },
    { 0x0002, 0x0002, 0x0005 },
    { 0x0002, 0x0002, 0x0006 },
    { 0x0002, 0x0002, 0x0007 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0002, 0x0002, 0x0002 },
    { 0x0008, 0x0009, 0x0005 },
    { 0x0008, 0x000A, 0x0005 },
    { 0x0002, 0x0002, 0x000B },
};

AnimationHeader gFishingLoachAnim = { 
    { 2 }, sFishingLoachAnimFrameData,
    sFishingLoachAnimJointIndices, 12
};

Vtx object_fishVtx_00CFF0[] = {
#include "assets/objects/object_fish/object_fishVtx_00CFF0.vtx.inc"
};

Gfx gFishingLoachDL_00DED0[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010528, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 252, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[220], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 7, 8, 9, 0),
    gsSP2Triangles(5, 10, 2, 0, 4, 3, 9, 0),
    gsSP2Triangles(11, 6, 2, 0, 7, 12, 5, 0),
    gsSP2Triangles(2, 6, 5, 0, 4, 8, 11, 0),
    gsSP2Triangles(2, 10, 0, 0, 4, 1, 0, 0),
    gsSP2Triangles(11, 1, 4, 0, 9, 12, 7, 0),
    gsSP2Triangles(9, 8, 4, 0, 2, 1, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00DFA8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010DA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[217], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00E048[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[175], 6, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00FD28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_00CFF0[181], 18, 6),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 4, 0),
    gsSP2Triangles(10, 1, 0, 0, 0, 11, 12, 0),
    gsSP2Triangles(13, 3, 4, 0, 14, 15, 0, 0),
    gsSP2Triangles(16, 17, 5, 0, 4, 18, 19, 0),
    gsSP2Triangles(0, 3, 20, 0, 5, 1, 21, 0),
    gsSP2Triangles(22, 2, 5, 0, 4, 2, 23, 0),
    gsSPVertex(&object_fishVtx_00CFF0[199], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(5, 6, 2, 0, 5, 7, 8, 0),
    gsSP2Triangles(8, 7, 9, 0, 2, 1, 5, 0),
    gsSP2Triangles(9, 4, 3, 0, 8, 6, 5, 0),
    gsSP2Triangles(3, 10, 9, 0, 0, 11, 3, 0),
    gsSP2Triangles(2, 11, 0, 0, 9, 10, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00E168[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[118], 9, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00F528, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_00CFF0[127], 22, 9),
    gsSP2Triangles(9, 10, 0, 0, 0, 11, 12, 0),
    gsSP2Triangles(0, 3, 13, 0, 14, 2, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00ED28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsSP2Triangles(5, 15, 16, 0, 17, 18, 6, 0),
    gsSP2Triangles(6, 1, 19, 0, 20, 7, 6, 0),
    gsSP2Triangles(5, 7, 21, 0, 22, 23, 5, 0),
    gsSP2Triangles(6, 24, 25, 0, 26, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010D28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x045C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 253, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(27, 8, 28, 0, 29, 8, 30, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00F528, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_00CFF0[149], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(0, 5, 3, 0, 2, 5, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00ED28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 8, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 15, 11, 0),
    gsSP2Triangles(8, 16, 6, 0, 13, 17, 11, 0),
    gsSP2Triangles(8, 7, 9, 0, 11, 17, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010D28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x045C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 253, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(23, 24, 21, 0, 20, 25, 18, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00E460[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010DA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[115], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00E500[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[52], 13, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00F528, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_00CFF0[65], 18, 13),
    gsSP2Triangles(0, 13, 14, 0, 0, 1, 15, 0),
    gsSP2Triangles(16, 3, 0, 0, 17, 18, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00ED28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsSP2Triangles(5, 19, 20, 0, 21, 22, 6, 0),
    gsSP2Triangles(5, 8, 23, 0, 24, 7, 6, 0),
    gsSP2Triangles(6, 25, 26, 0, 27, 28, 5, 0),
    gsSP2Triangles(6, 4, 29, 0, 30, 2, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010D28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x045C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 253, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_00CFF0[83], 12, 13),
    gsSP2Triangles(12, 9, 13, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 11, 10, 0, 10, 17, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00F528, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(19, 20, 21, 0, 22, 23, 19, 0),
    gsSP2Triangles(21, 24, 19, 0, 19, 24, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00ED28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsSPVertex(&object_fishVtx_00CFF0[95], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 8, 0, 0),
    gsSP2Triangles(9, 10, 5, 0, 0, 11, 7, 0),
    gsSP2Triangles(5, 4, 9, 0, 2, 11, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010D28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x045C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 253, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(17, 18, 15, 0, 14, 19, 12, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00E808[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010DA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[47], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP1Triangle(2, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00E8B0[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_fishVtx_00CFF0, 13, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00F528, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_00CFF0[13], 18, 13),
    gsSP2Triangles(13, 0, 2, 0, 2, 14, 15, 0),
    gsSP2Triangles(2, 3, 16, 0, 17, 18, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00ED28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsSP2Triangles(19, 20, 5, 0, 21, 7, 6, 0),
    gsSP2Triangles(22, 23, 6, 0, 5, 8, 24, 0),
    gsSP2Triangles(6, 1, 25, 0, 26, 4, 5, 0),
    gsSP2Triangles(5, 27, 28, 0, 6, 29, 30, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010D28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x045C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 253, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_00CFF0[31], 16, 13),
    gsSP2Triangles(13, 12, 9, 0, 14, 15, 11, 0),
    gsSP2Triangles(9, 16, 17, 0, 11, 10, 18, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00F528, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP2Triangles(19, 20, 21, 0, 21, 20, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_00ED28, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_CLAMP,
                         G_TX_MIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x02FC, 0x007C),
    gsSP2Triangles(23, 24, 25, 0, 25, 24, 26, 0),
    gsSP2Triangles(23, 27, 24, 0, 24, 28, 26, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00EB28[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010DA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[214], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00EBC8[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010DA8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[211], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLoachDL_00EC68[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_fishVtx_00CFF0[233], 3, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gFishingLoachTex_010528, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 252, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_fishVtx_00CFF0[236], 2, 3),
    gsSP2Triangles(2, 0, 3, 0, 4, 0, 1, 0),
    gsSPEndDisplayList(),
};

u64 gFishingLoachTex_00ED28[] = {
#include "assets/objects/object_fish/fishing_loach_00ED28.rgba16.inc.c"
};

u64 gFishingLoachTex_00F528[] = {
#include "assets/objects/object_fish/fishing_loach_00F528.rgba16.inc.c"
};

u64 gFishingLoachTex_00FD28[] = {
#include "assets/objects/object_fish/fishing_loach_00FD28.rgba16.inc.c"
};

u64 gFishingLoachTex_010528[] = {
#include "assets/objects/object_fish/fishing_loach_010528.rgba16.inc.c"
};

u64 gFishingLoachTex_010D28[] = {
#include "assets/objects/object_fish/fishing_loach_010D28.rgba16.inc.c"
};

u64 gFishingLoachTex_010DA8[] = {
#include "assets/objects/object_fish/fishing_loach_010DA8.rgba16.inc.c"
};

StandardLimb gFishingLoachLimb_010FA8 = { 
    { 5538, -293, 0 }, 0x01, LIMB_DONE,
    gFishingLoachDL_00DED0
};

StandardLimb gFishingLoachLimb_010FB4 = { 
    { 2010, 0, 0 }, 0x02, 0x0A,
    gFishingLoachDL_00DFA8
};

StandardLimb gFishingLoachLimb_010FC0 = { 
    { 1727, 0, 0 }, 0x03, 0x07,
    gFishingLoachDL_00E168
};

StandardLimb gFishingLoachLimb_010FCC = { 
    { 2873, 0, 0 }, 0x04, LIMB_DONE,
    gFishingLoachDL_00E460
};

StandardLimb gFishingLoachLimb_010FD8 = { 
    { 3375, 0, 0 }, 0x05, 0x06,
    gFishingLoachDL_00E808
};

StandardLimb gFishingLoachLimb_010FE4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingLoachDL_00E8B0
};

StandardLimb gFishingLoachLimb_010FF0 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingLoachDL_00E500
};

StandardLimb gFishingLoachLimb_010FFC = { 
    { 0, 0, 0 }, LIMB_DONE, 0x08,
    gFishingLoachDL_00E048
};

StandardLimb gFishingLoachLimb_011008 = { 
    { 1428, -142, -741 }, LIMB_DONE, 0x09,
    gFishingLoachDL_00EBC8
};

StandardLimb gFishingLoachLimb_011014 = { 
    { 1428, -142, 740 }, LIMB_DONE, LIMB_DONE,
    gFishingLoachDL_00EB28
};

StandardLimb gFishingLoachLimb_011020 = { 
    { 889, 445, 0 }, LIMB_DONE, LIMB_DONE,
    gFishingLoachDL_00EC68
};

void* gFishingLoachSkelLimbs[] = {
    &gFishingLoachLimb_010FA8,
    &gFishingLoachLimb_010FB4,
    &gFishingLoachLimb_010FC0,
    &gFishingLoachLimb_010FCC,
    &gFishingLoachLimb_010FD8,
    &gFishingLoachLimb_010FE4,
    &gFishingLoachLimb_010FF0,
    &gFishingLoachLimb_010FFC,
    &gFishingLoachLimb_011008,
    &gFishingLoachLimb_011014,
    &gFishingLoachLimb_011020,
};

FlexSkeletonHeader gFishingLoachSkel = { 
    { gFishingLoachSkelLimbs, ARRAY_COUNT(gFishingLoachSkelLimbs) }, 11
};

u8 object_fish_possiblePadding_011064[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingRodSegmentStripTex[] = {
#include "assets/objects/object_fish/fishing_rod_segment_strip.rgba16.inc.c"
};

u64 gFishingRodSegmentBlackTex[] = {
#include "assets/objects/object_fish/fishing_rod_segment_black.rgba16.inc.c"
};

u64 gFishingRodSegmentWhiteTex[] = {
#include "assets/objects/object_fish/fishing_rod_segment_white.rgba16.inc.c"
};

Vtx object_fishVtx_011370[] = {
#include "assets/objects/object_fish/object_fishVtx_011370.vtx.inc"
};

Gfx gFishingRodMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPEndDisplayList(),
};

Gfx gFishingRodSegmentDL[] = {
    gsSPVertex(object_fishVtx_011370, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 1, 0, 5, 1, 0, 0),
    gsSPEndDisplayList(),
};

u8 object_fish_possiblePadding_011438[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingLureHookTex[] = {
#include "assets/objects/object_fish/fishing_lure_hook.rgba16.inc.c"
};

u64 gFishingLureFloatTex[] = {
#include "assets/objects/object_fish/fishing_lure_float.rgba16.inc.c"
};

Vtx object_fishVtx_012040[] = {
#include "assets/objects/object_fish/object_fishVtx_012040.vtx.inc"
};

Gfx gFishingLureHookDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingLureHookTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fishVtx_012040, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingLureFloatDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingLureFloatTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_fishVtx_012040[4], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(1, 4, 2, 0, 3, 1, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 1, 0, 5, 0),
    gsSP2Triangles(7, 8, 2, 0, 7, 2, 4, 0),
    gsSP2Triangles(8, 0, 2, 0, 0, 8, 5, 0),
    gsSP2Triangles(8, 7, 6, 0, 8, 6, 5, 0),
    gsSP2Triangles(3, 9, 4, 0, 9, 10, 4, 0),
    gsSP2Triangles(9, 11, 10, 0, 11, 9, 12, 0),
    gsSP2Triangles(9, 6, 12, 0, 9, 3, 6, 0),
    gsSP2Triangles(11, 13, 10, 0, 13, 4, 10, 0),
    gsSP2Triangles(13, 7, 4, 0, 7, 13, 6, 0),
    gsSP2Triangles(13, 12, 6, 0, 13, 11, 12, 0),
    gsSPEndDisplayList(),
};

u8 object_fish_possiblePadding_0122D8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingLilyPadTex[] = {
#include "assets/objects/object_fish/fishing_lily_pad.rgba16.inc.c"
};

u64 gFishingRockTex[] = {
#include "assets/objects/object_fish/fishing_rock.rgba16.inc.c"
};

Vtx object_fishVtx_0132E0[] = {
#include "assets/objects/object_fish/object_fishVtx_0132E0.vtx.inc"
};

Gfx gFishingLilyPadMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingLilyPadTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gFishingLilyPadModelDL[] = {
    gsSPVertex(object_fishVtx_0132E0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(0, 3, 4, 0),
    gsSPEndDisplayList(),
};

Vtx object_fishVtx_0133D0[] = {
#include "assets/objects/object_fish/object_fishVtx_0133D0.vtx.inc"
};

Gfx gFishingRockMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingRockTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gFishingRockModelDL[] = {
    gsSPVertex(object_fishVtx_0133D0, 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 1, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(15, 14, 20, 0, 21, 16, 19, 0),
    gsSP2Triangles(21, 19, 22, 0, 20, 14, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSPEndDisplayList(),
};

u64 gFishingWoodPostTex[] = {
#include "assets/objects/object_fish/fishing_wood_post.rgba16.inc.c"
};

Vtx object_fishVtx_013E60[] = {
#include "assets/objects/object_fish/object_fishVtx_013E60.vtx.inc"
};

Gfx gFishingWoodPostMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingWoodPostTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gFishingWoodPostModelDL[] = {
    gsSPVertex(object_fishVtx_013E60, 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 12, 13, 0),
    gsSP1Triangle(11, 13, 14, 0),
    gsSPEndDisplayList(),
};

Vtx object_fishVtx_014000[] = {
#include "assets/objects/object_fish/object_fishVtx_014000.vtx.inc"
};

Gfx gFishingReedMaterialDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingLilyPadTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPEndDisplayList(),
};

Gfx gFishingReedModelDL[] = {
    gsSPVertex(object_fishVtx_014000, 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_fish_possiblePadding_0140C8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFishingAquariumBottomTex[] = {
#include "assets/objects/object_fish/fishing_aquarium_bottom.rgba16.inc.c"
};

u64 gFishingAquariumWaterTex[] = {
#include "assets/objects/object_fish/fishing_aquarium_water.rgba16.inc.c"
};

u64 gFishingAquariumGlassTex[] = {
#include "assets/objects/object_fish/fishing_aquarium_glass.i8.inc.c"
};

Vtx object_fishVtx_014ED0[] = {
#include "assets/objects/object_fish/object_fishVtx_014ED0.vtx.inc"
};

Gfx gFishingAquariumBottomDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingAquariumBottomTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_fishVtx_014ED0, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gFishingAquariumContainerDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFishingAquariumWaterTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 102),
    gsSPVertex(&object_fishVtx_014ED0[8], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gFishingAquariumGlassTex, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(&object_fishVtx_014ED0[16], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_fishVtx_014ED0[48], 32, 0),
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

