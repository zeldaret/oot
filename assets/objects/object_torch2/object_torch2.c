#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_torch2.h"

Vtx object_torch2Vtx_000000[] = {
#include "assets/objects/object_torch2/object_torch2Vtx_000000.vtx.inc"
};

Gfx gDarkLinkSkelLimbsLimb_0045D0FarDL_002BD0[] = {
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[164], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 8, 0, 7, 10, 8, 0),
    gsSP2Triangles(12, 0, 7, 0, 13, 11, 10, 0),
    gsSP2Triangles(13, 10, 3, 0, 1, 0, 12, 0),
    gsSP2Triangles(14, 15, 10, 0, 14, 10, 7, 0),
    gsSP2Triangles(14, 7, 0, 0, 14, 0, 16, 0),
    gsSP2Triangles(3, 10, 15, 0, 3, 15, 17, 0),
    gsSP2Triangles(16, 0, 3, 0, 16, 3, 17, 0),
    gsSP2Triangles(18, 12, 7, 0, 18, 7, 9, 0),
    gsSP2Triangles(6, 18, 9, 0, 6, 9, 4, 0),
    gsSP2Triangles(2, 19, 13, 0, 3, 2, 13, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_0045F0FarDL_002CD0[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[48], 7, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[55], 14, 7),
    gsSP2Triangles(4, 2, 0, 0, 4, 0, 7, 0),
    gsSP2Triangles(8, 9, 6, 0, 6, 10, 3, 0),
    gsSP2Triangles(5, 11, 12, 0, 5, 13, 14, 0),
    gsSP2Triangles(15, 5, 4, 0, 1, 16, 17, 0),
    gsSP2Triangles(18, 0, 1, 0, 4, 19, 20, 0),
    gsSPVertex(&object_torch2Vtx_000000[69], 1, 7),
    gsSP1Triangle(6, 5, 7, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[70], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 7, 1, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[78], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004600FarDL_002E10[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[21], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[25], 12, 4),
    gsSP2Triangles(4, 0, 1, 0, 5, 1, 6, 0),
    gsSP2Triangles(7, 1, 2, 0, 8, 9, 2, 0),
    gsSP2Triangles(10, 2, 3, 0, 3, 0, 11, 0),
    gsSP2Triangles(12, 13, 3, 0, 2, 14, 15, 0),
    gsSPVertex(&object_torch2Vtx_000000[37], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 4, 5, 0, 2, 5, 3, 0),
    gsSP2Triangles(6, 5, 7, 0, 8, 1, 0, 0),
    gsSP2Triangles(8, 0, 7, 0, 8, 7, 5, 0),
    gsSP2Triangles(8, 5, 4, 0, 9, 3, 5, 0),
    gsSP2Triangles(7, 0, 10, 0, 10, 6, 7, 0),
    gsSP2Triangles(5, 6, 9, 0, 10, 0, 3, 0),
    gsSP1Triangle(10, 3, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004610FarDL_002F38[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_torch2Vtx_000000, 3, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[3], 13, 3),
    gsSP2Triangles(3, 4, 2, 0, 5, 6, 2, 0),
    gsSP2Triangles(7, 8, 0, 0, 9, 0, 1, 0),
    gsSP2Triangles(10, 11, 1, 0, 0, 12, 13, 0),
    gsSP2Triangles(14, 1, 2, 0, 2, 0, 15, 0),
    gsSPVertex(&object_torch2Vtx_000000[16], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(3, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004620FarDL_003030[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[130], 7, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[137], 13, 7),
    gsSP2Triangles(7, 0, 1, 0, 8, 1, 2, 0),
    gsSP2Triangles(4, 9, 10, 0, 6, 11, 4, 0),
    gsSP2Triangles(12, 13, 3, 0, 2, 3, 14, 0),
    gsSP2Triangles(15, 16, 5, 0, 5, 0, 17, 0),
    gsSP1Triangle(18, 19, 2, 0),
    gsSPVertex(&object_torch2Vtx_000000[150], 1, 7),
    gsSP1Triangle(7, 3, 4, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[151], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 5, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 7, 1, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[159], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP1Triangle(3, 4, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004630FarDL_003178[] = {
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[103], 4, 0),
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[107], 12, 4),
    gsSP2Triangles(1, 0, 4, 0, 1, 5, 6, 0),
    gsSP2Triangles(2, 1, 7, 0, 8, 9, 3, 0),
    gsSP2Triangles(10, 3, 2, 0, 11, 0, 3, 0),
    gsSP2Triangles(3, 12, 13, 0, 14, 15, 2, 0),
    gsSPVertex(&object_torch2Vtx_000000[119], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsSP2Triangles(6, 5, 7, 0, 6, 0, 3, 0),
    gsSP2Triangles(6, 3, 8, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 6, 8, 0, 5, 1, 9, 0),
    gsSP2Triangles(10, 0, 6, 0, 6, 7, 10, 0),
    gsSP2Triangles(9, 7, 5, 0, 1, 0, 10, 0),
    gsSP1Triangle(1, 10, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004640FarDL_0032A0[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[82], 3, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[85], 13, 3),
    gsSP2Triangles(2, 1, 3, 0, 4, 5, 2, 0),
    gsSP2Triangles(1, 0, 6, 0, 1, 7, 8, 0),
    gsSP2Triangles(1, 9, 10, 0, 11, 12, 0, 0),
    gsSP2Triangles(13, 14, 2, 0, 15, 0, 2, 0),
    gsSPVertex(&object_torch2Vtx_000000[98], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP1Triangle(3, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004670FarDL_003398[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[184], 4, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[188], 12, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 1, 2, 0),
    gsSP2Triangles(7, 2, 8, 0, 1, 9, 10, 0),
    gsSP2Triangles(1, 11, 3, 0, 12, 2, 0, 0),
    gsSP2Triangles(13, 0, 3, 0, 14, 0, 15, 0),
    gsSPVertex(&object_torch2Vtx_000000[200], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(3, 1, 0, 0, 1, 4, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004660FarDL_003490[] = {
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[205], 4, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[209], 14, 4),
    gsSP2Triangles(4, 5, 0, 0, 6, 0, 7, 0),
    gsSP2Triangles(0, 8, 1, 0, 9, 0, 2, 0),
    gsSP2Triangles(3, 10, 2, 0, 11, 3, 12, 0),
    gsSP2Triangles(1, 13, 3, 0, 1, 14, 15, 0),
    gsSP1Triangle(1, 16, 17, 0),
    gsSPVertex(&object_torch2Vtx_000000[223], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 2, 0, 2, 5, 3, 0),
    gsSP2Triangles(4, 2, 6, 0, 6, 2, 1, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 12, 0, 12, 11, 7, 0),
    gsSP2Triangles(9, 8, 15, 0, 12, 7, 9, 0),
    gsSP2Triangles(15, 13, 9, 0, 9, 13, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(19, 18, 15, 0, 20, 21, 22, 0),
    gsSP2Triangles(23, 24, 25, 0, 3, 5, 21, 0),
    gsSP2Triangles(26, 7, 11, 0, 7, 26, 27, 0),
    gsSP2Triangles(27, 26, 6, 0, 5, 4, 28, 0),
    gsSP2Triangles(6, 26, 29, 0, 6, 29, 4, 0),
    gsSP1Triangle(17, 30, 31, 0),
    gsSPVertex(&object_torch2Vtx_000000[255], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(7, 0, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 7, 0, 2, 1, 12, 0),
    gsSP2Triangles(4, 13, 14, 0, 15, 3, 16, 0),
    gsSP2Triangles(10, 9, 17, 0, 17, 9, 3, 0),
    gsSP2Triangles(16, 3, 2, 0, 15, 16, 18, 0),
    gsSP2Triangles(16, 2, 12, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
    gsSP2Triangles(26, 19, 23, 0, 23, 19, 21, 0),
    gsSP2Triangles(22, 25, 6, 0, 6, 25, 27, 0),
    gsSP2Triangles(10, 17, 11, 0, 3, 15, 17, 0),
    gsSP2Triangles(17, 15, 28, 0, 28, 11, 17, 0),
    gsSP2Triangles(14, 13, 29, 0, 13, 30, 29, 0),
    gsSP2Triangles(27, 29, 30, 0, 14, 29, 31, 0),
    gsSP2Triangles(14, 31, 27, 0, 27, 31, 29, 0),
    gsSPVertex(&object_torch2Vtx_000000[287], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 4, 3, 5, 0),
    gsSP2Triangles(5, 6, 4, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 0, 0, 2, 1, 8, 0),
    gsSP2Triangles(3, 2, 8, 0, 8, 1, 9, 0),
    gsSP2Triangles(9, 3, 10, 0, 9, 10, 8, 0),
    gsSP1Triangle(11, 12, 6, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, ENVIRONMENT, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_torch2Tex_0043C0, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 0, 0, 255),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[300], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx sDarkLinkSheathDL[] = {
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[506], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 1, 7, 0, 7, 1, 0, 0),
    gsSP2Triangles(8, 3, 5, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 1, 6, 0, 11, 9, 5, 0),
    gsSP2Triangles(12, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
    gsSP2Triangles(18, 17, 20, 0, 15, 21, 14, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004680FarDL_003820[] = {
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[693], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 5, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004700FarDL_0038D0[] = {
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[672], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 2, 8, 9, 0),
    gsSP2Triangles(2, 1, 10, 0, 11, 8, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 1, 16, 3, 0),
    gsSP2Triangles(17, 2, 10, 0, 11, 12, 18, 0),
    gsSP2Triangles(14, 13, 19, 0, 16, 7, 6, 0),
    gsSP2Triangles(11, 4, 20, 0, 7, 14, 19, 0),
    gsSP2Triangles(7, 19, 5, 0, 16, 1, 15, 0),
    gsSP2Triangles(5, 19, 8, 0, 5, 8, 11, 0),
    gsSP2Triangles(0, 15, 1, 0, 19, 9, 8, 0),
    gsSP2Triangles(5, 11, 20, 0, 1, 4, 10, 0),
    gsSP2Triangles(6, 3, 16, 0, 15, 0, 13, 0),
    gsSP2Triangles(18, 10, 4, 0, 10, 18, 12, 0),
    gsSP2Triangles(12, 8, 17, 0, 8, 2, 17, 0),
    gsSP2Triangles(18, 4, 11, 0, 12, 17, 10, 0),
    gsSP2Triangles(20, 4, 3, 0, 0, 2, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_0046C0FarDL_0039E8[] = {
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[645], 4, 0),
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[649], 12, 4),
    gsSP2Triangles(1, 2, 4, 0, 5, 6, 3, 0),
    gsSP2Triangles(1, 7, 8, 0, 9, 10, 1, 0),
    gsSP2Triangles(11, 3, 0, 0, 12, 0, 1, 0),
    gsSP2Triangles(2, 3, 13, 0, 14, 2, 15, 0),
    gsSPVertex(&object_torch2Vtx_000000[661], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(1, 0, 3, 0, 0, 8, 4, 0),
    gsSP2Triangles(0, 4, 3, 0, 2, 1, 9, 0),
    gsSP2Triangles(7, 6, 2, 0, 2, 6, 5, 0),
    gsSP2Triangles(2, 5, 10, 0, 2, 10, 8, 0),
    gsSP2Triangles(2, 8, 0, 0, 2, 9, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_0046D0FarDL_003B08[] = {
    gsSPMatrix(0x0D000340, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[613], 5, 0),
    gsSPMatrix(0x0D000380, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[618], 21, 5),
    gsSP2Triangles(5, 3, 1, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 8, 9, 0, 0, 3, 10, 0),
    gsSP2Triangles(1, 4, 11, 0, 12, 13, 1, 0),
    gsSP2Triangles(1, 14, 15, 0, 1, 16, 17, 0),
    gsSP2Triangles(18, 19, 0, 0, 20, 21, 0, 0),
    gsSP2Triangles(1, 22, 23, 0, 24, 4, 2, 0),
    gsSP1Triangle(25, 2, 0, 0),
    gsSPVertex(&object_torch2Vtx_000000[639], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_0046E0FarDL_003C10[] = {
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[534], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(6, 7, 5, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 12, 10, 0, 12, 9, 13, 0),
    gsSP2Triangles(14, 10, 12, 0, 12, 13, 14, 0),
    gsSP2Triangles(14, 13, 15, 0, 16, 15, 13, 0),
    gsSP2Triangles(17, 18, 16, 0, 17, 16, 13, 0),
    gsSP2Triangles(18, 17, 9, 0, 13, 9, 17, 0),
    gsSP2Triangles(9, 11, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP2Triangles(27, 26, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_torch2Vtx_000000[566], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 3, 5, 0, 7, 5, 4, 0),
    gsSP2Triangles(6, 8, 3, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(14, 13, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 21, 0, 22, 21, 26, 0),
    gsSP2Triangles(27, 28, 29, 0, 30, 27, 29, 0),
    gsSPVertex(&object_torch2Vtx_000000[597], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(7, 12, 8, 0, 13, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_004690FarDL_003D70[] = {
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[479], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[483], 12, 4),
    gsSP2Triangles(2, 0, 4, 0, 3, 5, 6, 0),
    gsSP2Triangles(7, 8, 2, 0, 2, 9, 10, 0),
    gsSP2Triangles(0, 3, 11, 0, 12, 1, 2, 0),
    gsSP2Triangles(13, 3, 1, 0, 14, 1, 15, 0),
    gsSPVertex(&object_torch2Vtx_000000[495], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 2, 7, 4, 0),
    gsSP2Triangles(2, 4, 3, 0, 8, 3, 6, 0),
    gsSP2Triangles(2, 1, 9, 0, 2, 9, 7, 0),
    gsSP2Triangles(6, 5, 9, 0, 6, 9, 1, 0),
    gsSP2Triangles(6, 1, 0, 0, 2, 8, 10, 0),
    gsSP2Triangles(2, 10, 0, 0, 3, 8, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_0046A0FarDL_003E90[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[448], 5, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_torch2Vtx_000000[453], 20, 5),
    gsSP2Triangles(1, 3, 5, 0, 6, 7, 0, 0),
    gsSP2Triangles(8, 3, 0, 0, 9, 4, 1, 0),
    gsSP2Triangles(1, 10, 11, 0, 1, 12, 13, 0),
    gsSP2Triangles(14, 15, 1, 0, 0, 16, 17, 0),
    gsSP2Triangles(0, 18, 19, 0, 0, 20, 21, 0),
    gsSP2Triangles(22, 23, 1, 0, 0, 2, 4, 0),
    gsSP1Triangle(0, 4, 24, 0),
    gsSPVertex(&object_torch2Vtx_000000[473], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gDarkLinkSkelLimbsLimb_0046B0FarDL_003F98[] = {
    gsSPTexture(0x1F40, 0x1770, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0C000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPLoadTextureBlock(object_torch2Tex_0041C0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, 3, 4),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 250, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_torch2Vtx_000000[306], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 0, 5, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 5, 4, 6, 0),
    gsSP2Triangles(2, 6, 4, 0, 1, 7, 8, 0),
    gsSP2Triangles(9, 10, 11, 0, 9, 6, 2, 0),
    gsSP2Triangles(9, 11, 6, 0, 1, 8, 9, 0),
    gsSP2Triangles(12, 9, 8, 0, 13, 12, 8, 0),
    gsSP2Triangles(7, 1, 3, 0, 9, 2, 1, 0),
    gsSP2Triangles(7, 13, 8, 0, 6, 11, 5, 0),
    gsSP2Triangles(7, 5, 11, 0, 13, 10, 9, 0),
    gsSP2Triangles(5, 7, 3, 0, 13, 9, 12, 0),
    gsSP2Triangles(7, 11, 13, 0, 11, 10, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 29, 30, 31, 0),
    gsSPVertex(&object_torch2Vtx_000000[338], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 0, 0),
    gsSP2Triangles(3, 0, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 0, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(0, 7, 10, 0, 10, 7, 11, 0),
    gsSP2Triangles(11, 7, 6, 0, 12, 13, 14, 0),
    gsSP2Triangles(5, 7, 14, 0, 12, 14, 7, 0),
    gsSP2Triangles(15, 16, 17, 0, 17, 16, 18, 0),
    gsSP2Triangles(0, 10, 19, 0, 1, 0, 19, 0),
    gsSP2Triangles(20, 21, 16, 0, 16, 21, 22, 0),
    gsSP2Triangles(16, 22, 18, 0, 16, 15, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 24, 23, 26, 0),
    gsSP2Triangles(23, 15, 27, 0, 23, 27, 26, 0),
    gsSP2Triangles(28, 23, 25, 0, 21, 20, 29, 0),
    gsSP1Triangle(30, 28, 25, 0),
    gsSPVertex(&object_torch2Vtx_000000[369], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(7, 8, 4, 0, 6, 7, 9, 0),
    gsSP2Triangles(7, 4, 10, 0, 8, 6, 5, 0),
    gsSP2Triangles(5, 4, 8, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 3, 6, 17, 0),
    gsSP2Triangles(4, 3, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_torch2Vtx_000000[400], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 28, 29, 0),
    gsSPVertex(&object_torch2Vtx_000000[430], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSPEndDisplayList(),
};

u64 object_torch2Tex_0041C0[] = {
#include "assets/objects/object_torch2/object_torch2Tex_0041C0.rgba16.inc.c"
};

u64 object_torch2Tex_0043C0[] = {
#include "assets/objects/object_torch2/object_torch2Tex_0043C0.ia16.inc.c"
};

LodLimb gDarkLinkSkelLimbsLimb_0045C0 = { 
    { -57, 3377, 0 }, 0x01, LIMB_DONE,
    { NULL, NULL }
};

LodLimb gDarkLinkSkelLimbsLimb_0045D0 = { 
    { 0, 0, 0 }, 0x02, 0x09,
    { gDarkLinkSkelLimbsLimb_0045D0FarDL_002BD0, gDarkLinkSkelLimbsLimb_0045D0FarDL_002BD0 }
};

LodLimb gDarkLinkSkelLimbsLimb_0045E0 = { 
    { 945, 0, 0 }, 0x03, LIMB_DONE,
    { NULL, NULL }
};

LodLimb gDarkLinkSkelLimbsLimb_0045F0 = { 
    { -399, 69, -249 }, 0x04, 0x06,
    { gDarkLinkSkelLimbsLimb_0045F0FarDL_002CD0, gDarkLinkSkelLimbsLimb_0045F0FarDL_002CD0 }
};

LodLimb gDarkLinkSkelLimbsLimb_004600 = { 
    { 1306, 0, 0 }, 0x05, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_004600FarDL_002E10, gDarkLinkSkelLimbsLimb_004600FarDL_002E10 }
};

LodLimb gDarkLinkSkelLimbsLimb_004610 = { 
    { 1256, 5, 11 }, LIMB_DONE, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_004610FarDL_002F38, gDarkLinkSkelLimbsLimb_004610FarDL_002F38 }
};

LodLimb gDarkLinkSkelLimbsLimb_004620 = { 
    { -396, 76, 264 }, 0x07, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_004620FarDL_003030, gDarkLinkSkelLimbsLimb_004620FarDL_003030 }
};

LodLimb gDarkLinkSkelLimbsLimb_004630 = { 
    { 1304, 0, 0 }, 0x08, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_004630FarDL_003178, gDarkLinkSkelLimbsLimb_004630FarDL_003178 }
};

LodLimb gDarkLinkSkelLimbsLimb_004640 = { 
    { 1257, 6, 3 }, LIMB_DONE, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_004640FarDL_0032A0, gDarkLinkSkelLimbsLimb_004640FarDL_0032A0 }
};

LodLimb gDarkLinkSkelLimbsLimb_004650 = { 
    { 0, 21, -7 }, 0x0A, LIMB_DONE,
    { NULL, NULL }
};

LodLimb gDarkLinkSkelLimbsLimb_004660 = { 
    { 1392, -259, 0 }, 0x0B, 0x0C,
    { gDarkLinkSkelLimbsLimb_004660FarDL_003490, gDarkLinkSkelLimbsLimb_004660FarDL_003490 }
};

LodLimb gDarkLinkSkelLimbsLimb_004670 = { 
    { -298, -700, 0 }, LIMB_DONE, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_004670FarDL_003398, gDarkLinkSkelLimbsLimb_004670FarDL_003398 }
};

LodLimb gDarkLinkSkelLimbsLimb_004680 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x0D,
    { gDarkLinkSkelLimbsLimb_004680FarDL_003820, gDarkLinkSkelLimbsLimb_004680FarDL_003820 }
};

LodLimb gDarkLinkSkelLimbsLimb_004690 = { 
    { 1039, -172, 680 }, 0x0E, 0x10,
    { gDarkLinkSkelLimbsLimb_004690FarDL_003D70, gDarkLinkSkelLimbsLimb_004690FarDL_003D70 }
};

LodLimb gDarkLinkSkelLimbsLimb_0046A0 = { 
    { 919, 0, 0 }, 0x0F, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_0046A0FarDL_003E90, gDarkLinkSkelLimbsLimb_0046A0FarDL_003E90 }
};

LodLimb gDarkLinkSkelLimbsLimb_0046B0 = { 
    { 754, 0, 0 }, LIMB_DONE, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_0046B0FarDL_003F98, gDarkLinkSkelLimbsLimb_0046B0FarDL_003F98 }
};

LodLimb gDarkLinkSkelLimbsLimb_0046C0 = { 
    { 1039, -173, -680 }, 0x11, 0x13,
    { gDarkLinkSkelLimbsLimb_0046C0FarDL_0039E8, gDarkLinkSkelLimbsLimb_0046C0FarDL_0039E8 }
};

LodLimb gDarkLinkSkelLimbsLimb_0046D0 = { 
    { 919, 0, 0 }, 0x12, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_0046D0FarDL_003B08, gDarkLinkSkelLimbsLimb_0046D0FarDL_003B08 }
};

LodLimb gDarkLinkSkelLimbsLimb_0046E0 = { 
    { 754, 0, 0 }, LIMB_DONE, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_0046E0FarDL_003C10, gDarkLinkSkelLimbsLimb_0046E0FarDL_003C10 }
};

LodLimb gDarkLinkSkelLimbsLimb_0046F0 = { 
    { 978, -692, 342 }, LIMB_DONE, 0x14,
    { NULL, NULL }
};

LodLimb gDarkLinkSkelLimbsLimb_004700 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    { gDarkLinkSkelLimbsLimb_004700FarDL_0038D0, gDarkLinkSkelLimbsLimb_004700FarDL_0038D0 }
};

void* gDarkLinkSkelLimbs[] = {
    &gDarkLinkSkelLimbsLimb_0045C0,
    &gDarkLinkSkelLimbsLimb_0045D0,
    &gDarkLinkSkelLimbsLimb_0045E0,
    &gDarkLinkSkelLimbsLimb_0045F0,
    &gDarkLinkSkelLimbsLimb_004600,
    &gDarkLinkSkelLimbsLimb_004610,
    &gDarkLinkSkelLimbsLimb_004620,
    &gDarkLinkSkelLimbsLimb_004630,
    &gDarkLinkSkelLimbsLimb_004640,
    &gDarkLinkSkelLimbsLimb_004650,
    &gDarkLinkSkelLimbsLimb_004660,
    &gDarkLinkSkelLimbsLimb_004670,
    &gDarkLinkSkelLimbsLimb_004680,
    &gDarkLinkSkelLimbsLimb_004690,
    &gDarkLinkSkelLimbsLimb_0046A0,
    &gDarkLinkSkelLimbsLimb_0046B0,
    &gDarkLinkSkelLimbsLimb_0046C0,
    &gDarkLinkSkelLimbsLimb_0046D0,
    &gDarkLinkSkelLimbsLimb_0046E0,
    &gDarkLinkSkelLimbsLimb_0046F0,
    &gDarkLinkSkelLimbsLimb_004700,
};

FlexSkeletonHeader gDarkLinkSkel = { 
    { gDarkLinkSkelLimbs, ARRAY_COUNT(gDarkLinkSkelLimbs) }, 18
};

