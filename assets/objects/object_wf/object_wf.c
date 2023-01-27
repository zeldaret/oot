#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_wf.h"

u64 gWolfosWhiteFurTex[] = {
#include "assets/objects/object_wf/wolfos_white_fur.rgba16.inc.c"
};

u64 gWolfosWhiteToothClawTex[] = {
#include "assets/objects/object_wf/wolfos_white_tooth_claw.rgba16.inc.c"
};

u64 gWolfosWhiteMouthTex[] = {
#include "assets/objects/object_wf/wolfos_white_mouth.rgba16.inc.c"
};

u64 gWolfosWhiteTongueTex[] = {
#include "assets/objects/object_wf/wolfos_white_tongue.rgba16.inc.c"
};

u64 gWolfosWhiteNostrilTex[] = {
#include "assets/objects/object_wf/wolfos_white_nostril.rgba16.inc.c"
};

u64 gWolfosWhiteEyeOpenTex[] = {
#include "assets/objects/object_wf/wolfos_white_eye_open.rgba16.inc.c"
};

Vtx object_wfVtx_000500[] = {
#include "assets/objects/object_wf/object_wfVtx_000500.vtx.inc"
};

Gfx gWolfosWhiteAbdomenDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[312], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(0, 2, 3, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 2, 1, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 7, 12, 11, 0),
    gsSP2Triangles(7, 11, 8, 0, 16, 20, 21, 0),
    gsSP2Triangles(15, 22, 13, 0, 23, 24, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteBackRightThighDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[127], 5, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[132], 15, 5),
    gsSP2Triangles(5, 6, 0, 0, 0, 7, 8, 0),
    gsSP2Triangles(1, 9, 10, 0, 11, 2, 1, 0),
    gsSP2Triangles(3, 12, 1, 0, 13, 14, 4, 0),
    gsSP2Triangles(3, 15, 16, 0, 17, 3, 0, 0),
    gsSP2Triangles(0, 4, 18, 0, 4, 2, 19, 0),
    gsSPVertex(&object_wfVtx_000500[147], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteBackRightShinDL[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[106], 4, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[110], 12, 4),
    gsSP2Triangles(4, 5, 0, 0, 0, 1, 6, 0),
    gsSP2Triangles(7, 1, 8, 0, 9, 10, 0, 0),
    gsSP2Triangles(11, 2, 3, 0, 3, 12, 13, 0),
    gsSP2Triangles(2, 14, 1, 0, 0, 15, 3, 0),
    gsSPVertex(&object_wfVtx_000500[122], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP1Triangle(1, 0, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteBackRightPasternDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[94], 3, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[97], 9, 3),
    gsSP2Triangles(3, 4, 0, 0, 0, 1, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 2, 0, 8, 0),
    gsSP2Triangles(2, 9, 10, 0, 11, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteBackRightPawDL[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[75], 3, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[78], 9, 3),
    gsSP2Triangles(3, 4, 0, 0, 0, 1, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 2, 0, 8, 0),
    gsSP2Triangles(1, 2, 9, 0, 10, 11, 1, 0),
    gsSPVertex(&object_wfVtx_000500[87], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 0, 4, 0),
    gsSP2Triangles(2, 6, 5, 0, 5, 3, 2, 0),
    gsSP2Triangles(1, 0, 5, 0, 1, 5, 6, 0),
    gsSP1Triangle(5, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteBackLeftThighDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[52], 5, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[57], 15, 5),
    gsSP2Triangles(0, 5, 6, 0, 7, 8, 0, 0),
    gsSP2Triangles(9, 10, 1, 0, 1, 2, 11, 0),
    gsSP2Triangles(1, 12, 3, 0, 4, 13, 14, 0),
    gsSP2Triangles(15, 16, 3, 0, 0, 3, 17, 0),
    gsSP2Triangles(18, 4, 0, 0, 19, 2, 4, 0),
    gsSPVertex(&object_wfVtx_000500[72], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteBackLeftShinDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[31], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[35], 12, 4),
    gsSP2Triangles(0, 4, 5, 0, 6, 1, 0, 0),
    gsSP2Triangles(7, 1, 8, 0, 0, 9, 10, 0),
    gsSP2Triangles(2, 3, 11, 0, 12, 13, 2, 0),
    gsSP2Triangles(1, 14, 3, 0, 2, 15, 0, 0),
    gsSPVertex(&object_wfVtx_000500[47], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP1Triangle(4, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteBackLeftPasternDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[19], 3, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[22], 9, 3),
    gsSP2Triangles(0, 3, 4, 0, 5, 1, 0, 0),
    gsSP2Triangles(2, 6, 7, 0, 8, 0, 2, 0),
    gsSP2Triangles(9, 10, 2, 0, 2, 1, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteBackLeftPawDL[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_wfVtx_000500, 3, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[3], 9, 3),
    gsSP2Triangles(0, 3, 4, 0, 5, 1, 0, 0),
    gsSP2Triangles(2, 6, 7, 0, 8, 0, 2, 0),
    gsSP2Triangles(9, 2, 1, 0, 1, 10, 11, 0),
    gsSPVertex(&object_wfVtx_000500[12], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 2, 5, 0),
    gsSP2Triangles(5, 6, 0, 0, 0, 3, 5, 0),
    gsSP2Triangles(6, 5, 2, 0, 6, 2, 1, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteThoraxDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[278], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[282], 16, 4),
    gsSP2Triangles(4, 0, 5, 0, 2, 6, 7, 0),
    gsSP2Triangles(8, 0, 2, 0, 0, 9, 10, 0),
    gsSP2Triangles(11, 12, 1, 0, 2, 1, 13, 0),
    gsSP2Triangles(14, 15, 2, 0, 16, 1, 17, 0),
    gsSP2Triangles(1, 3, 18, 0, 19, 3, 0, 0),
    gsSPVertex(&object_wfVtx_000500[298], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(2, 8, 7, 0, 8, 4, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 9, 0, 7, 9, 11, 0),
    gsSP2Triangles(0, 7, 11, 0, 6, 3, 10, 0),
    gsSP2Triangles(12, 10, 3, 0, 11, 13, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteFrontLeftUpperLegDL[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[243], 6, 0),
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[249], 13, 6),
    gsSP2Triangles(6, 7, 0, 0, 1, 8, 9, 0),
    gsSP2Triangles(1, 4, 10, 0, 4, 11, 12, 0),
    gsSP2Triangles(13, 5, 2, 0, 2, 14, 15, 0),
    gsSP2Triangles(16, 3, 1, 0, 0, 3, 17, 0),
    gsSP1Triangle(2, 0, 18, 0),
    gsSPVertex(&object_wfVtx_000500[262], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 3, 4, 7, 0),
    gsSP2Triangles(4, 8, 9, 0, 10, 8, 4, 0),
    gsSP2Triangles(11, 6, 12, 0, 6, 5, 12, 0),
    gsSP2Triangles(10, 13, 14, 0, 10, 3, 13, 0),
    gsSP2Triangles(4, 3, 10, 0, 14, 15, 9, 0),
    gsSP2Triangles(15, 5, 9, 0, 7, 1, 3, 0),
    gsSP2Triangles(6, 7, 4, 0, 9, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteFrontLeftLowerLegDL[] = {
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[214], 4, 0),
    gsSPMatrix(0x0D000440, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[218], 16, 4),
    gsSP2Triangles(4, 0, 1, 0, 2, 0, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 2, 8, 9, 0),
    gsSP2Triangles(3, 10, 1, 0, 2, 11, 3, 0),
    gsSP2Triangles(2, 12, 13, 0, 14, 15, 2, 0),
    gsSP2Triangles(1, 16, 17, 0, 1, 18, 19, 0),
    gsSPVertex(&object_wfVtx_000500[234], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(4, 2, 5, 0, 2, 4, 0, 0),
    gsSP2Triangles(5, 2, 1, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 4, 6, 0, 4, 5, 6, 0),
    gsSP2Triangles(7, 6, 5, 0, 8, 3, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteFrontRightUpperLegDL[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[179], 6, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[185], 13, 6),
    gsSP2Triangles(0, 6, 7, 0, 8, 9, 1, 0),
    gsSP2Triangles(10, 4, 1, 0, 11, 12, 4, 0),
    gsSP2Triangles(2, 5, 13, 0, 14, 15, 2, 0),
    gsSP2Triangles(1, 3, 16, 0, 17, 3, 0, 0),
    gsSP1Triangle(18, 0, 2, 0),
    gsSPVertex(&object_wfVtx_000500[198], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 3, 0),
    gsSP2Triangles(8, 9, 6, 0, 6, 9, 10, 0),
    gsSP2Triangles(11, 4, 12, 0, 11, 5, 4, 0),
    gsSP2Triangles(13, 14, 10, 0, 14, 3, 10, 0),
    gsSP2Triangles(10, 3, 6, 0, 8, 15, 13, 0),
    gsSP2Triangles(8, 5, 15, 0, 3, 1, 7, 0),
    gsSP2Triangles(6, 7, 4, 0, 6, 5, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteFrontRightLowerLegDL[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_000500[150], 4, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_000500[154], 16, 4),
    gsSP2Triangles(0, 1, 4, 0, 5, 1, 2, 0),
    gsSP2Triangles(2, 6, 7, 0, 8, 9, 2, 0),
    gsSP2Triangles(0, 10, 3, 0, 3, 11, 2, 0),
    gsSP2Triangles(12, 13, 2, 0, 2, 14, 15, 0),
    gsSP2Triangles(16, 17, 0, 0, 18, 19, 0, 0),
    gsSPVertex(&object_wfVtx_000500[170], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 0, 3, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 0, 5, 0, 2, 1, 4, 0),
    gsSP2Triangles(6, 3, 4, 0, 6, 5, 3, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 4, 8, 0),
    gsSPEndDisplayList(),
};

u64 gWolfosWhiteEyeHalfTex[] = {
#include "assets/objects/object_wf/wolfos_white_eye_half.rgba16.inc.c"
};

u64 gWolfosWhiteEyeNarrowTex[] = {
#include "assets/objects/object_wf/wolfos_white_eye_narrow.rgba16.inc.c"
};

Vtx object_wfVtx_002BD8[] = {
#include "assets/objects/object_wf/object_wfVtx_002BD8.vtx.inc"
};

Gfx gWolfosWhiteTailDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_wfVtx_002BD8, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 0, 2, 0, 0, 4, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteFrontLeftClawDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWolfosWhiteToothClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_wfVtx_002BD8[5], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 5, 0),
    gsSP2Triangles(2, 1, 3, 0, 8, 6, 5, 0),
    gsSP2Triangles(2, 9, 0, 0, 10, 11, 12, 0),
    gsSP2Triangles(11, 13, 12, 0, 6, 7, 4, 0),
    gsSP2Triangles(11, 10, 13, 0, 14, 15, 16, 0),
    gsSP2Triangles(16, 15, 17, 0, 0, 9, 3, 0),
    gsSP2Triangles(5, 4, 7, 0, 14, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteFrontRightClawDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWolfosWhiteToothClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_wfVtx_002BD8[23], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 9, 1, 0),
    gsSP2Triangles(1, 9, 2, 0, 10, 11, 12, 0),
    gsSP2Triangles(4, 3, 13, 0, 14, 10, 12, 0),
    gsSP2Triangles(14, 12, 11, 0, 8, 7, 15, 0),
    gsSP2Triangles(5, 13, 16, 0, 6, 17, 15, 0),
    gsSP2Triangles(5, 16, 3, 0, 13, 5, 4, 0),
    gsSP2Triangles(8, 17, 6, 0, 15, 17, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteHeadDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWolfosWhiteNostrilTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_wfVtx_002BD8[41], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(3, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWolfosWhiteToothClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_002BD8[45], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWolfosWhiteTongueTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_002BD8[63], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 5, 1, 0),
    gsSP2Triangles(0, 3, 6, 0, 3, 2, 6, 0),
    gsSP1Triangle(2, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWolfosWhiteMouthTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_wfVtx_002BD8[70], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 8, 4, 0, 4, 8, 9, 0),
    gsSP1Triangle(7, 10, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWolfosWhiteFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_wfVtx_002BD8[81], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(3, 4, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 7, 0, 7, 6, 8, 0),
    gsSP2Triangles(8, 5, 9, 0, 7, 9, 5, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 15, 0, 16, 12, 18, 0),
    gsSP2Triangles(13, 19, 20, 0, 12, 14, 10, 0),
    gsSP2Triangles(20, 10, 14, 0, 12, 11, 18, 0),
    gsSP2Triangles(15, 12, 16, 0, 15, 19, 13, 0),
    gsSP2Triangles(14, 12, 15, 0, 21, 22, 23, 0),
    gsSP2Triangles(20, 14, 13, 0, 23, 24, 21, 0),
    gsSP2Triangles(18, 17, 16, 0, 24, 25, 21, 0),
    gsSP2Triangles(26, 22, 21, 0, 26, 25, 27, 0),
    gsSP2Triangles(28, 22, 29, 0, 29, 22, 26, 0),
    gsSP2Triangles(27, 25, 30, 0, 24, 11, 10, 0),
    gsSP2Triangles(23, 11, 24, 0, 21, 25, 26, 0),
    gsSP2Triangles(27, 29, 26, 0, 20, 25, 24, 0),
    gsSP2Triangles(22, 18, 23, 0, 22, 17, 18, 0),
    gsSP2Triangles(28, 17, 22, 0, 25, 19, 30, 0),
    gsSP1Triangle(25, 20, 19, 0),
    gsSPVertex(&object_wfVtx_002BD8[112], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 3, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 10, 7, 0),
    gsSP2Triangles(9, 11, 10, 0, 12, 13, 7, 0),
    gsSP2Triangles(13, 14, 7, 0, 7, 14, 8, 0),
    gsSP2Triangles(15, 16, 10, 0, 17, 15, 10, 0),
    gsSP2Triangles(17, 10, 11, 0, 10, 16, 18, 0),
    gsSP1Triangle(18, 12, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosWhiteEyesDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_wfVtx_002BD8[131], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSPEndDisplayList(),
};

StandardLimb gWolfosWhiteRootLimb = { 
    { 0, 2660, -793 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gWolfosWhiteBackLeftThighLimb = { 
    { 554, 0, -115 }, 0x02, 0x05,
    gWolfosWhiteBackLeftThighDL
};

StandardLimb gWolfosWhiteBackLeftShinLimb = { 
    { 1318, 0, 0 }, 0x03, LIMB_DONE,
    gWolfosWhiteBackLeftShinDL
};

StandardLimb gWolfosWhiteBackLeftPasternLimb = { 
    { 1628, 0, 0 }, 0x04, LIMB_DONE,
    gWolfosWhiteBackLeftPasternDL
};

StandardLimb gWolfosWhiteBackLeftPawLimb = { 
    { 1134, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosWhiteBackLeftPawDL
};

StandardLimb gWolfosWhiteTailLimb = { 
    { 0, 256, -684 }, LIMB_DONE, 0x06,
    gWolfosWhiteTailDL
};

StandardLimb gWolfosWhiteAbdomenLimb = { 
    { 0, 704, 196 }, LIMB_DONE, 0x07,
    gWolfosWhiteAbdomenDL
};

StandardLimb gWolfosWhiteBackRightThighLimb = { 
    { -554, 0, -115 }, 0x08, 0x0B,
    gWolfosWhiteBackRightThighDL
};

StandardLimb gWolfosWhiteBackRightShinLimb = { 
    { 1318, 0, 0 }, 0x09, LIMB_DONE,
    gWolfosWhiteBackRightShinDL
};

StandardLimb gWolfosWhiteBackRightPasternLimb = { 
    { 1628, 0, 0 }, 0x0A, LIMB_DONE,
    gWolfosWhiteBackRightPasternDL
};

StandardLimb gWolfosWhiteBackRightPawLimb = { 
    { 1134, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosWhiteBackRightPawDL
};

StandardLimb gWolfosWhiteThoraxLimb = { 
    { 0, 1524, 208 }, 0x0C, LIMB_DONE,
    gWolfosWhiteThoraxDL
};

StandardLimb gWolfosWhiteFrontRightUpperLegLimb = { 
    { 2078, -538, -1158 }, 0x0D, 0x0F,
    gWolfosWhiteFrontRightUpperLegDL
};

StandardLimb gWolfosWhiteFrontRightLowerLegLimb = { 
    { 2645, 0, 0 }, 0x0E, LIMB_DONE,
    gWolfosWhiteFrontRightLowerLegDL
};

StandardLimb gWolfosWhiteFrontRightClawLimb = { 
    { 2152, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosWhiteFrontRightClawDL
};

StandardLimb gWolfosWhiteHeadRootLimb = { 
    { 3051, 192, 0 }, 0x10, 0x12,
    NULL
};

StandardLimb gWolfosWhiteHeadLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x11,
    gWolfosWhiteHeadDL
};

StandardLimb gWolfosWhiteEyesLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosWhiteEyesDL
};

StandardLimb gWolfosWhiteFrontLeftUpperLegLimb = { 
    { 2078, -538, 1158 }, 0x13, LIMB_DONE,
    gWolfosWhiteFrontLeftUpperLegDL
};

StandardLimb gWolfosWhiteFrontLeftLowerLegLimb = { 
    { 2645, 0, 0 }, 0x14, LIMB_DONE,
    gWolfosWhiteFrontLeftLowerLegDL
};

StandardLimb gWolfosWhiteFrontLeftClawLimb = { 
    { 2152, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosWhiteFrontLeftClawDL
};

void* gWolfosWhiteSkelLimbs[] = {
    &gWolfosWhiteRootLimb,
    &gWolfosWhiteBackLeftThighLimb,
    &gWolfosWhiteBackLeftShinLimb,
    &gWolfosWhiteBackLeftPasternLimb,
    &gWolfosWhiteBackLeftPawLimb,
    &gWolfosWhiteTailLimb,
    &gWolfosWhiteAbdomenLimb,
    &gWolfosWhiteBackRightThighLimb,
    &gWolfosWhiteBackRightShinLimb,
    &gWolfosWhiteBackRightPasternLimb,
    &gWolfosWhiteBackRightPawLimb,
    &gWolfosWhiteThoraxLimb,
    &gWolfosWhiteFrontRightUpperLegLimb,
    &gWolfosWhiteFrontRightLowerLegLimb,
    &gWolfosWhiteFrontRightClawLimb,
    &gWolfosWhiteHeadRootLimb,
    &gWolfosWhiteHeadLimb,
    &gWolfosWhiteEyesLimb,
    &gWolfosWhiteFrontLeftUpperLegLimb,
    &gWolfosWhiteFrontLeftLowerLegLimb,
    &gWolfosWhiteFrontLeftClawLimb,
};

FlexSkeletonHeader gWolfosWhiteSkel = { 
    { gWolfosWhiteSkelLimbs, ARRAY_COUNT(gWolfosWhiteSkelLimbs) }, 19
};

u8 object_wf_possiblePadding_003BCC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sWolfosSlashingAnimFrameData[] = {
    0x0001, 0x0A42, 0xFCDD, 0x0000, 0xFA4C, 0x0001, 0x0015, 0x0036, 0x005C, 0x007B, 0x009D, 0x00C4, 0x00DC, 0x00D3, 
    0x0097, 0x0034, 0xFFCE, 0xFF85, 0xFF68, 0xFF6D, 0xFF8A, 0xFFC3, 0x0010, 0x0061, 0x00A2, 0x00C2, 0x00C2, 0x00B4, 
    0x009B, 0x007B, 0x0059, 0x0038, 0x001B, 0x0007, 0x0000, 0x0A42, 0x0AB3, 0x0B66, 0x0C06, 0x0C43, 0x0BEA, 0x0B2E, 
    0x0A57, 0x09AD, 0x093D, 0x08E4, 0x089C, 0x0865, 0x084B, 0x084E, 0x0855, 0x0851, 0x084A, 0x0846, 0x084D, 0x0865, 
    0x0890, 0x08CA, 0x090C, 0x0952, 0x0998, 0x09D6, 0x0A09, 0x0A2C, 0x0A38, 0xFCDD, 0xFC43, 0xFB3D, 0xFA25, 0xF956, 
    0xF8B3, 0xF81A, 0xF7DE, 0xF84E, 0xF9D2, 0xFC25, 0xFE91, 0x0064, 0x0135, 0x015F, 0x0153, 0x0147, 0x0126, 0x00F2, 
    0x00B1, 0x0064, 0x0006, 0xFF92, 0xFF11, 0xFE8D, 0xFE0D, 0xFD9A, 0xFD3D, 0xFCFF, 0xFCE9, 0x8C03, 0x8DB4, 0x922B, 
    0x97CD, 0x9AAD, 0x97EB, 0x8F72, 0x813A, 0x73AF, 0x6EDC, 0x75CC, 0x88D9, 0x9B83, 0xA317, 0xA470, 0xA3D6, 0xA2E4, 
    0xA0FD, 0x9E6D, 0x9B8F, 0x98D2, 0x9612, 0x930E, 0x9036, 0x8E13, 0x8CAD, 0x8BEA, 0x8BC6, 0x8BD8, 0x8BE6, 0xD1CF, 
    0xD1BC, 0xD1EF, 0xD2A5, 0xD2E7, 0xD116, 0xCE37, 0xCC6E, 0xCD0E, 0xCF4F, 0xD0EF, 0xD1F7, 0xD50B, 0xD78B, 0xD82F, 
    0xD802, 0xD7B0, 0xD704, 0xD626, 0xD53B, 0xD465, 0xD3A0, 0xD2E7, 0xD257, 0xD1FF, 0xD1D2, 0xD1C0, 0xD1C3, 0xD1CC, 
    0xD1D1, 0xF3FF, 0xF12C, 0xEAF3, 0xE3AE, 0xDFDF, 0xE270, 0xEB16, 0xF9C9, 0x0820, 0x0E92, 0x0AA2, 0xFB6C, 0xEB8D, 
    0xE4F5, 0xE384, 0xE374, 0xE33F, 0xE387, 0xE452, 0xE5A8, 0xE784, 0xE9F6, 0xECDF, 0xEFBB, 0xF1EA, 0xF35E, 0xF42C, 
    0xF453, 0xF443, 0xF435, 0x582F, 0x5358, 0x4A8D, 0x40DF, 0x3AD5, 0x3A84, 0x3D41, 0x4252, 0x49C1, 0x54BE, 0x6044, 
    0x673E, 0x6906, 0x68CF, 0x6885, 0x6894, 0x6910, 0x69C9, 0x6A66, 0x6A9C, 0x6A31, 0x6917, 0x6769, 0x6548, 0x62AB, 
    0x5FDE, 0x5D33, 0x5AD2, 0x592D, 0x5890, 0xCD55, 0xCFCD, 0xD41F, 0xD8C7, 0xDBB3, 0xDBDB, 0xDA87, 0xD814, 0xD483, 
    0xCF16, 0xC92A, 0xC568, 0xC45F, 0xC47E, 0xC4A7, 0xC49E, 0xC459, 0xC3F1, 0xC399, 0xC37B, 0xC3B7, 0xC455, 0xC550, 
    0xC683, 0xC7E7, 0xC95F, 0xCAC7, 0xCBFD, 0xCCD4, 0xCD23, 0xFFB8, 0x0019, 0x0081, 0x00F4, 0x0176, 0x026B, 0x03B3, 
    0x0485, 0x041A, 0x01C7, 0xFE1E, 0xFA30, 0xF712, 0xF5DD, 0xF5F3, 0xF668, 0xF737, 0xF839, 0xF980, 0xFB01, 0xFC65, 
    0xFD57, 0xFDE9, 0xFE62, 0xFEC6, 0xFF15, 0xFF50, 0xFF79, 0xFF90, 0xFF98, 0x0003, 0x000C, 0x0017, 0x0020, 0x0025, 
    0x0024, 0x001D, 0x0016, 0x0015, 0x0023, 0x003B, 0x004A, 0x003F, 0xFFD4, 0xFF5E, 0xFF3F, 0xFF3B, 0xFF3E, 0xFF41, 
    0xFF48, 0xFF53, 0xFF61, 0xFF74, 0xFF8C, 0xFFA6, 0xFFC1, 0xFFD9, 0xFFED, 0xFFFB, 0x0000, 0xD5F0, 0xD742, 0xD8AB, 
    0xDA34, 0xDBE9, 0xDEB8, 0xE252, 0xE4E1, 0xE496, 0xE00F, 0xD891, 0xD040, 0xC93E, 0xC4D7, 0xC2C1, 0xC282, 0xC342, 
    0xC443, 0xC537, 0xC650, 0xC78D, 0xC8EC, 0xCA90, 0xCC82, 0xCE97, 0xD0A7, 0xD28A, 0xD415, 0xD521, 0xD583, 0xC000, 
    0xC003, 0xC00D, 0xC01D, 0xC032, 0xC048, 0xC055, 0xC045, 0xC000, 0xBFBA, 0xBFA7, 0xBF9E, 0xBF78, 0xBF1F, 0xBE87, 
    0xBDA9, 0xBC7A, 0xBA5C, 0xB790, 0x3500, 0x3330, 0x325F, 0x32AD, 0xB432, 0xB68E, 0xB93F, 0xBBD7, 0xBDFF, 0xBF75, 
    0xC000, 0x1E96, 0x21DC, 0x255D, 0x28EF, 0x2C68, 0x2F9E, 0x3265, 0x3494, 0x3601, 0x3690, 0x365F, 0x3596, 0x345F, 
    0x32E1, 0x3147, 0x2FB5, 0x2E54, 0x2CE3, 0x2B15, 0x56F8, 0x590F, 0x5AEC, 0x5C4E, 0x22BA, 0x21E0, 0x2109, 0x2030, 
    0x1F67, 0x1ED1, 0x1E96, 0xC000, 0xC004, 0xC010, 0xC022, 0xC038, 0xC04E, 0xC05A, 0xC048, 0xC000, 0xBFB8, 0xBFA4, 
    0xBF9B, 0xBF72, 0xBF12, 0xBE6D, 0xBD76, 0xBC1E, 0xB9B0, 0xB65C, 0x331B, 0x308F, 0x2F1B, 0x2F10, 0xB0A4, 0xB367, 
    0xB6C2, 0xBA2A, 0xBD20, 0xBF36, 0xC000, 0xC93C, 0xC8E7, 0xC917, 0xC933, 0xC925, 0xC98A, 0xCAA2, 0xCB52, 0xC96A, 
    0xC4A6, 0xC109, 0xBF7F, 0xBEF2, 0xBED5, 0xBEE1, 0xBECC, 0xBE63, 0xBDC0, 0xBD12, 0xBC95, 0xBC88, 0xBCF3, 0xBDB5, 
    0xBECC, 0xC084, 0xC335, 0xC64A, 0xC868, 0xC969, 0xC9A1, 0xD8F9, 0xDA36, 0xDAD4, 0xDB81, 0xDBF3, 0xDA76, 0xD746, 
    0xD4F4, 0xD61B, 0xDDC4, 0xEAA4, 0xF80C, 0x01A0, 0x04D1, 0x03DD, 0x01B0, 0xFFBC, 0xFDBB, 0xFC06, 0xFAA9, 0xF965, 
    0xF7AB, 0xF505, 0xF14C, 0xEADF, 0xE29E, 0xDC27, 0xD934, 0xD847, 0xD836, 0xB56A, 0xB5B5, 0xB5BD, 0xB5D2, 0xB5B6, 
    0xB4A5, 0xB285, 0xB09F, 0xB169, 0xB580, 0xB925, 0xBB2A, 0xBC11, 0xBC5A, 0xBC52, 0xBC0F, 0xBB90, 0xBAE2, 0xBA2A, 
    0xB98D, 0xB932, 0xB90F, 0xB8F9, 0xB8DD, 0xB875, 0xB764, 0xB5F9, 0xB52E, 0xB50D, 0xB522, 0x5E48, 0x5AC0, 0x5590, 
    0x5080, 0x4E47, 0x50E6, 0x56AA, 0x5CD1, 0x60E0, 0x6083, 0x5A62, 0x4FD7, 0x465A, 0x430C, 0x4447, 0x46DD, 0x493D, 
    0x4B90, 0x4D51, 0x4E55, 0x4EFD, 0x4FDF, 0x517B, 0x53F1, 0x58DC, 0x5E84, 0x617E, 0x612F, 0x5FB2, 0x5ED7, 0xCA3E, 
    0xCC1E, 0xCECA, 0xD154, 0xD270, 0xD120, 0xCE38, 0xCB05, 0xC8DD, 0xC90F, 0xCC50, 0xD1A8, 0xD63E, 0xD7D7, 0xD73F, 
    0xD5FE, 0xD4D7, 0xD3B5, 0xD2DC, 0xD269, 0xD215, 0xD1A4, 0xD0D6, 0xCF98, 0xCD15, 0xCA1E, 0xC889, 0xC8B3, 0xC97E, 
    0xC9F2, 0x02DA, 0x02DB, 0x02DC, 0x02DE, 0x02DF, 0x02E0, 0x02DF, 0x02DE, 0x02DA, 0x02AE, 0x0264, 0x02FA, 0x039E, 
    0x0413, 0x0495, 0x051D, 0x05A8, 0x062F, 0x06AE, 0x071F, 0x077D, 0x07C4, 0x07ED, 0x07F5, 0x078C, 0x0698, 0x055F, 
    0x0428, 0x0339, 0x02DA, 0x000E, 0x000C, 0x0008, 0x0004, 0x0000, 0xFFFE, 0xFFFF, 0x0004, 0x000F, 0x008E, 0x013B, 
    0x01CE, 0x0220, 0x0222, 0x021F, 0x0218, 0x020E, 0x01FF, 0x01EE, 0x01D9, 0x01C2, 0x01A8, 0x018C, 0x016D, 0x013E, 
    0x00F7, 0x00A7, 0x005C, 0x0024, 0x000F, 0xC2C8, 0xC2EB, 0xC329, 0xC36F, 0xC3AB, 0xC3CA, 0xC3BB, 0xC36A, 0xC2C5, 
    0xBB06, 0xB03C, 0xA7B7, 0xA30B, 0xA2DC, 0xA2E6, 0xA328, 0xA3A0, 0xA44D, 0xA52E, 0xA63F, 0xA781, 0xA8F2, 0xAA8F, 
    0xAC58, 0xAF4D, 0xB3D1, 0xB8F5, 0xBDC9, 0xC15E, 0xC2C5, 0x6277, 0x656B, 0x6CFE, 0x7724, 0x81C5, 0x8AF4, 0x912E, 
    0x9374, 0x910F, 0x7E70, 0x5414, 0x1CF2, 0xFDED, 0xF715, 0xF110, 0xEF9B, 0xF714, 0x1D7A, 0x540A, 0x7D44, 0x8FE2, 
    0x8EC0, 0x8AA9, 0x8429, 0x7BFF, 0x732F, 0x6B07, 0x6515, 0x6296, 0x6277, 0xC891, 0xCAF5, 0xD13B, 0xD9EE, 0xE37F, 
    0xEC64, 0xF35C, 0xF7CC, 0xF9B7, 0xF4B8, 0xE70F, 0xDF34, 0xEEF5, 0xEEEF, 0xED03, 0xEA10, 0xE6C3, 0xE1CB, 0xE384, 
    0xF15D, 0xF950, 0xF646, 0xF16A, 0xEB0C, 0xE3A6, 0xDBDF, 0xD47B, 0xCE4B, 0xCA18, 0xC891, 0x1E65, 0x1E5D, 0x1E12, 
    0x1D1F, 0x1B49, 0x1898, 0x158D, 0x133B, 0x130C, 0x1BC7, 0x2E2F, 0x47F5, 0x582A, 0x5B5B, 0x5DB6, 0x5E5E, 0x5BFD, 
    0x4D85, 0x37CD, 0x2A33, 0x2383, 0x23C4, 0x24B5, 0x25CA, 0x2690, 0x26B2, 0x25E0, 0x23C6, 0x207B, 0x1E65, 0xB2EB, 
    0xB2DC, 0xB34E, 0xB408, 0xB4C5, 0xB53A, 0xB515, 0xB402, 0xB1B8, 0xA851, 0x9BD2, 0x1827, 0x24DD, 0x3987, 0x373B, 
    0xB508, 0xB6FB, 0xB6BC, 0xB7D2, 0xC358, 0xB9BD, 0xB914, 0xB848, 0xB766, 0xB689, 0xB5CC, 0xB53F, 0xB4DA, 0xB47C, 
    0xB2EB, 0x0706, 0x04D7, 0x023F, 0xFF8D, 0xFD0C, 0xFAFF, 0xF9A7, 0xF944, 0xFA1D, 0x009E, 0x0DDB, 0x646A, 0x56B2, 
    0x4912, 0x4318, 0x3797, 0x2CD0, 0x21AB, 0x1AE0, 0x2A08, 0x066E, 0x04C8, 0x0404, 0x03F5, 0x0479, 0x056D, 0x06A2, 
    0x07D6, 0x08BC, 0x0706, 0x4A3D, 0x494F, 0x4868, 0x4789, 0x46BA, 0x4611, 0x45AC, 0x45AD, 0x462C, 0x48B5, 0x4BE3, 
    0xCD7C, 0xCEA3, 0xCED9, 0xBDD6, 0x38A1, 0x3B60, 0x3B72, 0x3ABC, 0x43AD, 0x37BA, 0x3889, 0x3A3E, 0x3CB4, 0x3FB6, 
    0x430C, 0x467C, 0x49D0, 0x4CD0, 0x4A3D, 0x17B9, 0x19A9, 0x1B79, 0x1D45, 0x1F2D, 0x214E, 0x23C6, 0x26B4, 0x2A35, 
    0x32CD, 0x3E19, 0x41DE, 0x3CE1, 0x3553, 0x2C1D, 0x2225, 0x1852, 0x0F8A, 0x08B4, 0x04B8, 0x034A, 0x0359, 0x049F, 
    0x06D8, 0x09C0, 0x0D13, 0x108C, 0x13E6, 0x16DE, 0x17B9, 0xF9C0, 0xF9AE, 0xF98C, 0xF95D, 0xF925, 0xF8E8, 0xF8AB, 
    0xF872, 0xF840, 0xF81A, 0xF805, 0xF804, 0xF81B, 0xF84F, 0xF8A4, 0xF91E, 0xF9C1, 0xFF77, 0x06FE, 0x06CB, 0x0574, 
    0x03E6, 0x0235, 0x0079, 0xFEC5, 0xFD30, 0xFBD0, 0xFABA, 0xFA03, 0xF9C1, 0x037C, 0x0382, 0x038F, 0x03A1, 0x03B6, 
    0x03CD, 0x03E4, 0x03F9, 0x040C, 0x041A, 0x0422, 0x0422, 0x0419, 0x0406, 0x03E6, 0x03B8, 0x037B, 0x012D, 0xFE85, 
    0x0098, 0x010A, 0x0179, 0x01E2, 0x0243, 0x029A, 0x02E6, 0x0324, 0x0353, 0x0371, 0x037B, 0xAA17, 0xA980, 0xA854, 
    0xA6B6, 0xA4CC, 0xA2B9, 0xA0A2, 0x9EAB, 0x9CF9, 0x9BB0, 0x9AF5, 0x9AEC, 0x9BB8, 0x9D80, 0xA066, 0xA490, 0xAA22, 
    0xDD2E, 0x1DFC, 0x0FA2, 0x0443, 0xF799, 0xEA3A, 0xDCBD, 0xCFB8, 0xC3C0, 0xB96C, 0xB152, 0xAC07, 0xAA22, 0xFFB1, 
    0xFE86, 0xFD42, 0xFC3E, 0xFBD3, 0xFB48, 0xFABA, 0xFBC3, 0x0000, 0x1BB0, 0xFDEC, 0xE1FB, 0xE514, 0xF22E, 0xFBED, 
    0xFC3B, 0xF92E, 0xF7B1, 0xFFA0, 0x10E9, 0xF5AF, 0xF346, 0xF453, 0xF6DC, 0xF8E9, 0xFA61, 0xFC3B, 0xFE0E, 0xFF72, 
    0x0000, 0x007D, 0x05A3, 0x0E3E, 0x17A9, 0x1F40, 0x24B4, 0x296B, 0x2D50, 0x304F, 0x2BE1, 0x0621, 0xE395, 0xD537, 
    0xCE64, 0xCC02, 0xCBF8, 0xD05F, 0xDC6A, 0x0FBF, 0x2BCC, 0x3978, 0x359C, 0x2F4D, 0x27F2, 0x20ED, 0x195B, 0x1091, 
    0x0845, 0x022D, 0x0000, 0x1A03, 0x18F2, 0x1742, 0x15B1, 0x1501, 0x1489, 0x142E, 0x1582, 0x1A19, 0x36B9, 0x3F63, 
    0x3F09, 0x332A, 0x22E6, 0x1A19, 0x1F72, 0x2C40, 0x384B, 0x3DC2, 0x3464, 0x0E23, 0x09A5, 0x09C9, 0x0C28, 0x0E5E, 
    0x1070, 0x1374, 0x169B, 0x1917, 0x1A19, 0x3B00, 0x3A7A, 0xB96F, 0xB71C, 0xB24C, 0xA94A, 0x1B00, 0x0A11, 0xFA68, 
    0xE0B4, 0xA50A, 0x1024, 0x0708, 0x013A, 0xFEDA, 0x00F2, 0x06C3, 0x1323, 0xC38B, 0xEC72, 0xF619, 0xFE13, 0x0AFE, 
    0x1D2C, 0xACFF, 0xB5CA, 0xB999, 0x3ADA, 0x3B0A, 0x3B00, 0xED5D, 0xE673, 0xA09A, 0xA761, 0xAD71, 0xB244, 0xCAB0, 
    0xC96B, 0xC8DE, 0xC616, 0xC873, 0xAD1E, 0xA25E, 0x9A98, 0x97F5, 0x9BE9, 0xA54C, 0xB168, 0xC6D7, 0xCCA7, 0xD0B1, 
    0xD04C, 0xCEF6, 0xCF5B, 0xACBE, 0xA655, 0x9F3A, 0xE725, 0xEBAA, 0xED5D, 0x66AD, 0x6A5E, 0xEEBD, 0xF482, 0xFCD1, 
    0x0949, 0x9ADC, 0xAEB6, 0xC09E, 0xDB6A, 0x1647, 0xA7E4, 0xAB9E, 0xABCD, 0xAB81, 0xABC1, 0xAAAE, 0xA22F, 0xF33D, 
    0xC985, 0xBE16, 0xB43F, 0xA555, 0x9104, 0xFED4, 0xF379, 0xED07, 0x6958, 0x6759, 0x66AD, 0xF2AC, 0xF522, 0xF794, 
    0xF9E8, 0xFC01, 0xFDC6, 0xFF19, 0xFFE0, 0x0000, 0xFFAE, 0xFF34, 0xFE96, 0xFDD7, 0xFCFC, 0xFC08, 0xFAFE, 0xF9E3, 
    0xF8BA, 0xF786, 0xF64C, 0xF50E, 0xF3D2, 0xF299, 0xF169, 0xF045, 0xEF30, 0xEE2E, 0xED42, 0xEC72, 0xF2AC, 0x06D7, 
    0x0654, 0x05E7, 0x055C, 0x047D, 0x0314, 0xFFA1, 0xFB12, 0xF8E3, 0xF91F, 0xF980, 0xFA01, 0xFAA0, 0xFB56, 0xFC22, 
    0xFCFE, 0xFDE6, 0xFED7, 0xFFCC, 0x00C1, 0x01B2, 0x029B, 0x0377, 0x0444, 0x04FC, 0x059C, 0x0620, 0x0683, 0x06C1, 
    0x06D7, 0xFD8C, 0xFD75, 0xFD54, 0xFD37, 0xFD28, 0xFD36, 0xFD9A, 0xFE35, 0xFE87, 0xFE88, 0xFE86, 0xFE81, 0xFE78, 
    0xFE6D, 0xFE60, 0xFE51, 0xFE40, 0xFE2F, 0xFE1C, 0xFE09, 0xFDF7, 0xFDE4, 0xFDD3, 0xFDC2, 0xFDB3, 0xFDA6, 0xFD9B, 
    0xFD93, 0xFD8E, 0xFD8C, 0xA863, 0xA639, 0xA1EE, 0x9EB3, 0x9FB7, 0xA82A, 0xC98C, 0xF9AE, 0x123F, 0x118F, 0x0F91, 
    0x0C67, 0x0836, 0x0321, 0xFD4A, 0xF6D5, 0xEFE4, 0xE89C, 0xE11F, 0xD990, 0xD212, 0xCACA, 0xC3D9, 0xBD62, 0xB78A, 
    0xB273, 0xAE41, 0xAB16, 0xA915, 0xA863, 0x0000, 
};

JointIndex sWolfosSlashingAnimJointIndices[] = {
    { 0x0005, 0x0023, 0x0041 },
    { 0x0003, 0x0004, 0x0003 },
    { 0x005F, 0x007D, 0x009B },
    { 0x0003, 0x0003, 0x00B9 },
    { 0x0003, 0x0003, 0x00D7 },
    { 0x00F5, 0x0113, 0x0131 },
    { 0x014F, 0x016D, 0x018B },
    { 0x0003, 0x0003, 0x0003 },
    { 0x01A9, 0x01C7, 0x01E5 },
    { 0x0003, 0x0003, 0x0203 },
    { 0x0003, 0x0003, 0x0221 },
    { 0x023F, 0x025D, 0x027B },
    { 0x0299, 0x02B7, 0x02D5 },
    { 0x02F3, 0x0311, 0x032F },
    { 0x0003, 0x034D, 0x0003 },
    { 0x036B, 0x0389, 0x03A7 },
    { 0x03C5, 0x03E3, 0x0401 },
    { 0x0003, 0x0003, 0x0003 },
    { 0x0003, 0x0003, 0x0003 },
    { 0x041F, 0x043D, 0x045B },
    { 0x0003, 0x0479, 0x0003 },
    { 0x0497, 0x04B5, 0x04D3 },
};

AnimationHeader gWolfosSlashingAnim = { 
    { 30 }, sWolfosSlashingAnimFrameData,
    sWolfosSlashingAnimJointIndices, 5
};

u8 object_wf_zeroes_Blob_004648[] = {
#include "assets/objects/object_wf/object_wf_zeroes_Blob_004648.bin.inc.c"
};

s16 sWolfosBackflippingAnimFrameData[] = {
    0x0000, 0x0A7D, 0xFD38, 0xFA4C, 0xF9C1, 0x037B, 0xAA22, 0x06D7, 0xFD8C, 0xA863, 0x0A7D, 0x0DA4, 0x120F, 0x173E, 
    0x1CCC, 0x1FFD, 0x1D7E, 0x1785, 0x0FDE, 0x0889, 0x07E0, 0x0954, 0x0A76, 0xFD38, 0x0063, 0x0322, 0x034F, 0x0292, 
    0x01C2, 0x010F, 0x0045, 0xFF53, 0xFEB9, 0x0004, 0xFE59, 0xFCF9, 0xE221, 0xDCB1, 0xCDC0, 0xB758, 0x9B84, 0x7C51, 
    0x5BCA, 0x3BF9, 0x1EEB, 0x06AA, 0xF918, 0xFC2D, 0x00D8, 0xB177, 0xB7D4, 0xBCD8, 0xC3E9, 0xBBAE, 0xABC5, 0x54BC, 
    0x77E4, 0x927E, 0x9CB8, 0x9E68, 0x9816, 0x92C7, 0xE543, 0xF68C, 0xEFFD, 0x0F6D, 0xF085, 0xE327, 0xCEAF, 0xC66A, 
    0xD104, 0xD30B, 0xD48A, 0xD3E5, 0xD27E, 0xD54A, 0xCE24, 0xCEFB, 0xCA9D, 0xD243, 0xD53A, 0x23B9, 0x00DD, 0xE95B, 
    0xEA35, 0xE83F, 0xEB23, 0xED86, 0x57D6, 0x45A7, 0x5D81, 0x3C0D, 0x53D3, 0x4AE8, 0x5458, 0x3728, 0x54D4, 0x7576, 
    0x6D92, 0x6260, 0x5849, 0xCD83, 0xD678, 0xCA9F, 0xDB1C, 0xCF8E, 0xD3F3, 0xCF4A, 0xDD7F, 0xCF0B, 0xBD18, 0xC1C8, 
    0xC80E, 0xCD48, 0xFF98, 0xFFA0, 0xFFA8, 0xFF9F, 0xFF95, 0xFF9D, 0xFF9B, 0xFF98, 0xFF9B, 0xF873, 0xF97D, 0xFC8C, 
    0xFF9B, 0x0000, 0x001A, 0x0036, 0x0023, 0x000C, 0x002C, 0x001D, 0x000A, 0x0018, 0xFFF4, 0xFFE7, 0xFFED, 0xFFF5, 
    0xD583, 0xE076, 0xEC13, 0xE433, 0xDACF, 0xE6F4, 0xE0D6, 0xD996, 0xDEE8, 0xCD3C, 0xCC05, 0xCE18, 0xD103, 0xC000, 
    0xC000, 0xC000, 0xC000, 0xC000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0xC000, 0xC000, 0xC000, 0x1ED8, 0x218D, 
    0x2860, 0x3160, 0x3A9D, 0x3DDA, 0x35F2, 0x2D39, 0x280F, 0x2AD6, 0x2E57, 0x26D2, 0x1F2F, 0xC000, 0xC000, 0xC000, 
    0xC000, 0xC000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0xC000, 0xC000, 0xC000, 0xC4CB, 0xC636, 0xC9DC, 0xC6C6, 
    0xC4C5, 0xF466, 0xFD30, 0xC4F1, 0xCA47, 0xC3B1, 0xBD25, 0xC260, 0xC725, 0xE5E7, 0xE5A4, 0xD6C7, 0xE9C3, 0x03F3, 
    0xC49E, 0xC38E, 0xDA54, 0xD4E1, 0xDA0A, 0xEC85, 0xE042, 0xD8A0, 0xBC94, 0xBDEC, 0xBBF3, 0xC01B, 0xC3A0, 0x8A60, 
    0x7E13, 0xBAF5, 0xB509, 0xB823, 0xBD9B, 0xBA25, 0xB785, 0x578B, 0x49FE, 0x5A19, 0x4B3F, 0x537C, 0x46F5, 0x0000, 
    0x0000, 0x42DF, 0x69A0, 0x6BA6, 0x65C8, 0x5D00, 0xCDC4, 0xD479, 0xCC77, 0xD3DD, 0xCFD3, 0xD5F3, 0x0000, 0x0000, 
    0xD7E1, 0xC417, 0xC2F5, 0xC635, 0xCAEC, 0xFFCF, 0x01F8, 0x008D, 0x014C, 0x023A, 0x01F0, 0x01C1, 0x02AE, 0x0275, 
    0x0743, 0x03CF, 0x0354, 0x02D9, 0xFEF8, 0xFE07, 0xFD01, 0xFD9B, 0xFE4F, 0xFDF0, 0xFDC9, 0xFF06, 0xFEA5, 0x00D1, 
    0x00BD, 0x006A, 0x0016, 0xD2A0, 0xE3D2, 0xFF8F, 0xF10B, 0xDEE6, 0xE4D6, 0xE87F, 0xD1D0, 0xD818, 0xBB0E, 0xB5C8, 
    0xBC04, 0xC255, 0x4B70, 0x47E5, 0x46D9, 0x46BF, 0x46A6, 0x469B, 0x46B4, 0x4708, 0x4881, 0x4E44, 0x8FBB, 0x75D4, 
    0x619C, 0xD868, 0xE428, 0xF11C, 0xF1D8, 0xF08C, 0xEDB9, 0xE9E0, 0xE584, 0xDE03, 0xD265, 0xC716, 0xC6A4, 0xC8B5, 
    0x36E2, 0x3B60, 0x3DF1, 0x3E16, 0x3DEB, 0x3D7E, 0x3CD8, 0x3BFA, 0x39D9, 0x3356, 0xF091, 0x0ABF, 0x1F42, 0xB2DF, 
    0xB32A, 0xB36A, 0xB28A, 0xAF1C, 0xA9DA, 0xA59E, 0xA9B9, 0xAEA5, 0xB24A, 0xB375, 0xB357, 0xB309, 0x06E8, 0x06B0, 
    0x068C, 0x0727, 0x08EA, 0x0A92, 0x0B4F, 0x0B67, 0x09E5, 0x078A, 0x06C5, 0x0780, 0x0818, 0x49F0, 0x48C3, 0x45ED, 
    0x4272, 0x3DBC, 0x382C, 0x346B, 0x3AF9, 0x4286, 0x48FD, 0x4B34, 0x4A81, 0x49A6, 0x17A2, 0x0939, 0x0794, 0x0643, 
    0x0552, 0x04C8, 0x04B0, 0x0512, 0x05F8, 0x076C, 0x2D8D, 0x22A3, 0x17B9, 0x0052, 0x002A, 0xFFF3, 0xFFDC, 0xFFD5, 
    0xFFD9, 0xFFE0, 0xFFEA, 0xFFF4, 0xFFFD, 0x0001, 0x0001, 0x0000, 0x0039, 0x0048, 0x0057, 0x004B, 0x0039, 0x002D, 
    0x0022, 0x0018, 0x000D, 0x0003, 0xFFFD, 0xFFFF, 0x0000, 0x4136, 0x2C80, 0x0F5E, 0x0202, 0xFDCE, 0x006C, 0x04F3, 
    0x0AC9, 0x1153, 0x17F7, 0x238C, 0x1EBF, 0x19F9, 0x399A, 0x3E32, 0x4495, 0x4620, 0x4424, 0x4083, 0x3C92, 0x3850, 
    0x3D23, 0x41C5, 0x40D3, 0x3CF1, 0x3A6D, 0xED10, 0xF094, 0xF8A3, 0xFF5C, 0x0246, 0x02E4, 0x01FF, 0xFE2B, 0xFBF7, 
    0xFA1C, 0xF50D, 0xEF66, 0xECCC, 0x6847, 0x6336, 0x58E5, 0x4E3E, 0x42E8, 0x369F, 0x2D33, 0x32B9, 0x42FA, 0x520C, 
    0x5AD0, 0x614C, 0x63F9, 0xF317, 0xF314, 0xF30D, 0xF302, 0xF2F5, 0xF2E7, 0xF2D7, 0xF2C8, 0xF2BB, 0xF2AF, 0xF2A9, 
    0xF2AA, 0xF2AC, 
};

JointIndex sWolfosBackflippingAnimJointIndices[] = {
    { 0x0000, 0x000A, 0x0017 },
    { 0x0024, 0x0003, 0x0000 },
    { 0x0031, 0x003E, 0x004B },
    { 0x0000, 0x0000, 0x0058 },
    { 0x0000, 0x0000, 0x0065 },
    { 0x0072, 0x007F, 0x008C },
    { 0x0099, 0x00A6, 0x00B3 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x00C0, 0x00CD, 0x00DA },
    { 0x0000, 0x0000, 0x00E7 },
    { 0x0000, 0x0000, 0x00F4 },
    { 0x0101, 0x010E, 0x011B },
    { 0x0128, 0x0135, 0x0142 },
    { 0x014F, 0x015C, 0x0169 },
    { 0x0000, 0x0176, 0x0000 },
    { 0x0004, 0x0005, 0x0006 },
    { 0x0183, 0x0190, 0x019D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x01AA, 0x01B7, 0x01C4 },
    { 0x0000, 0x01D1, 0x0000 },
    { 0x0007, 0x0008, 0x0009 },
};

AnimationHeader gWolfosBackflippingAnim = { 
    { 13 }, sWolfosBackflippingAnimFrameData,
    sWolfosBackflippingAnimJointIndices, 10
};

u8 object_wf_zeroes_Blob_004AE0[] = {
#include "assets/objects/object_wf/object_wf_zeroes_Blob_004AE0.bin.inc.c"
};

s16 sWolfosBlockingAnimFrameData[] = {
    0x0000, 0x06BE, 0xFB63, 0xFA4C, 0xC000, 0xF9C1, 0x037B, 0xAA22, 0x06D7, 0xFD8C, 0xA863, 0x06BE, 0x07A5, 0x0952, 
    0x0A38, 0xFB63, 0xFBC8, 0xFC84, 0xFCE9, 0x5E61, 0x66FD, 0x7E51, 0x8BE6, 0xD8A1, 0xD489, 0xD0F3, 0xD1D1, 0x2519, 
    0x1BA0, 0x02B3, 0xF435, 0x6ABD, 0x66F9, 0x5E43, 0x5890, 0xC368, 0xC58E, 0xCA3C, 0xCD23, 0x0140, 0x00D2, 0x0006, 
    0xFF98, 0x0026, 0x001C, 0x000A, 0x0000, 0xE496, 0xE0AD, 0xD96B, 0xD583, 0x2BA0, 0x28BE, 0x2237, 0x1E96, 0xE613, 
    0xD621, 0xCC03, 0xC9A1, 0xC75B, 0xCB3A, 0xD389, 0xD836, 0x98AC, 0xA87F, 0xB2A3, 0xB522, 0x797A, 0x72EA, 0x6623, 
    0x5ED7, 0xBA80, 0xBE92, 0xC603, 0xC9F2, 0x0197, 0x01EB, 0x0286, 0x02DA, 0xFF85, 0xFFA8, 0xFFEB, 0x000F, 0xCA7E, 
    0xC87E, 0xC4C6, 0xC2C5, 0x826E, 0x79AF, 0x6A05, 0x6277, 0xC667, 0xC657, 0xC72E, 0xC891, 0xFDF3, 0x06D6, 0x16C2, 
    0x1E65, 0xA148, 0xB7FD, 0xD97D, 0xB2EB, 0x043D, 0x146F, 0x155A, 0x0706, 0x0976, 0x1EAC, 0x6689, 0x4A3D, 0x43BA, 
    0x3851, 0x2321, 0x17B9, 0x000F, 0x000B, 0x0004, 0x0000, 0x000C, 0xFFE3, 0xFFB7, 0x0000, 0x3DF3, 0x34A8, 0x2364, 
    0x1A19, 0x61A3, 0x62AA, 0x33AB, 0x3B00, 0xF40D, 0xDFA6, 0xD836, 0xED5D, 0x0F6E, 0x0D51, 0x55ED, 0x66AD, 0xAEA1, 
    0xC132, 0xE17E, 0xF2AC, 0x0000, 
};

JointIndex sWolfosBlockingAnimJointIndices[] = {
    { 0x0000, 0x000B, 0x000F },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0013, 0x0017, 0x001B },
    { 0x0000, 0x0000, 0x001F },
    { 0x0000, 0x0000, 0x0023 },
    { 0x0027, 0x002B, 0x002F },
    { 0x0004, 0x0033, 0x0004 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0037, 0x003B, 0x003F },
    { 0x0000, 0x0000, 0x0043 },
    { 0x0000, 0x0000, 0x0047 },
    { 0x004B, 0x004F, 0x0053 },
    { 0x0057, 0x005B, 0x005F },
    { 0x0063, 0x0067, 0x006B },
    { 0x0000, 0x006F, 0x0000 },
    { 0x0005, 0x0006, 0x0007 },
    { 0x0073, 0x0077, 0x007B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x007F, 0x0083, 0x0087 },
    { 0x0000, 0x008B, 0x0000 },
    { 0x0008, 0x0009, 0x000A },
};

AnimationHeader gWolfosBlockingAnim = { 
    { 4 }, sWolfosBlockingAnimFrameData,
    sWolfosBlockingAnimJointIndices, 11
};

u8 object_wf_possiblePadding_004CB4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sWolfosRearingUpFallingOverAnimFrameData[] = {
    0x0000, 0x0BE1, 0x042F, 0xFA4C, 0xF9C1, 0x037B, 0xAA22, 0x06D7, 0xFD8C, 0xA863, 0x0BE1, 0x0CBE, 0x0DF1, 0x0F25, 
    0x1005, 0x103C, 0x0FEF, 0x0F80, 0x0EF2, 0x0E4D, 0x0D96, 0x0CD1, 0x0C05, 0x0B37, 0x0A6D, 0x09AB, 0x08F8, 0x0858, 
    0x07D2, 0x0776, 0x0749, 0x073D, 0x0745, 0x0754, 0x075C, 0x042F, 0x0453, 0x03E9, 0x033A, 0x0290, 0x0234, 0x021C, 
    0x020C, 0x0202, 0x01FE, 0x01FF, 0x0203, 0x020A, 0x0213, 0x021C, 0x0225, 0x022D, 0x0232, 0x0234, 0x0234, 0x0234, 
    0x0234, 0x0234, 0x0234, 0x0234, 0xBC68, 0xBE6C, 0xBEC2, 0xBE16, 0xBD0C, 0xBC55, 0xBB7E, 0xB999, 0xB6B9, 0xB30C, 
    0xAEE6, 0xAACF, 0xA749, 0xA4C7, 0xA3AE, 0xA384, 0xA3AB, 0xA43A, 0xA4F2, 0xA5A4, 0xA615, 0xA636, 0xA620, 0xA5F8, 
    0xA5E4, 0xEBA4, 0xEF25, 0xF21A, 0xF583, 0xF8FB, 0xF955, 0xF640, 0xF2BA, 0xEF29, 0xEBF3, 0xE935, 0xE70F, 0xE544, 
    0xE38F, 0xE1A5, 0xDF87, 0xDD9D, 0xDC06, 0xDAA9, 0xD9BB, 0xD947, 0xD928, 0xD93D, 0xD963, 0xD977, 0xC4D8, 0xC2D7, 
    0xC27D, 0xC2CA, 0xC30E, 0xC34A, 0xC3F2, 0xC549, 0xC783, 0xCAB0, 0xCEB0, 0xD318, 0xD76D, 0xDB26, 0xDDAE, 0xDF49, 
    0xE06E, 0xE0F6, 0xE124, 0xE10B, 0xE0E4, 0xE0D6, 0xE0DF, 0xE0EF, 0xE0F7, 0x473D, 0x3F52, 0x3514, 0x2914, 0x1DDA, 
    0x1B14, 0x20EF, 0x27FA, 0x2F97, 0x3734, 0x3ED1, 0x461D, 0x4D28, 0x53D6, 0x59EF, 0x5F99, 0x64AF, 0x68F5, 0x6C89, 
    0x6EF4, 0x7020, 0x706F, 0x7039, 0x6FD8, 0x6FA4, 0xD5B4, 0xD987, 0xDE87, 0xE4B3, 0xEAF1, 0xEC96, 0xE92E, 0xE54B, 
    0xE149, 0xDD79, 0xD9C5, 0xD63E, 0xD2D8, 0xCF8C, 0xCC71, 0xC983, 0xC6D5, 0xC469, 0xC261, 0xC0FB, 0xC04B, 0xC01D, 
    0xC03D, 0xC076, 0xC094, 0xFCDB, 0xFCD3, 0xFD0E, 0xFD56, 0xFD78, 0xFD40, 0xFCA4, 0xFBCF, 0xFAD5, 0xF9C9, 0xF8C0, 
    0xF7CF, 0xF709, 0xF683, 0xF652, 0xF652, 0xF652, 0xF652, 0xF652, 0xF652, 0xF652, 0xF652, 0xF652, 0xF652, 0xF652, 
    0xFF87, 0xFF9F, 0xFFCE, 0x0006, 0x0037, 0x0055, 0x0061, 0x0067, 0x0069, 0x0067, 0x0064, 0x005F, 0x005A, 0x0057, 
    0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0x0055, 0xB75F, 0xB6D2, 0xB891, 
    0xBB72, 0xBE46, 0xBFE2, 0xC05D, 0xC09F, 0xC0B2, 0xC0A2, 0xC07C, 0xC04A, 0xC018, 0xBFF2, 0xBFE2, 0xBFE2, 0xBFE2, 
    0xBFE2, 0xBFE2, 0xBFE2, 0xBFE2, 0xBFE2, 0xBFE2, 0xBFE2, 0xBFE2, 0x4ABE, 0x4A81, 0x4A81, 0x4AC8, 0x4B70, 0xCCB8, 
    0xCF44, 0xD4FC, 0xE549, 0x0ED2, 0x2874, 0x3093, 0x33B3, 0xB502, 0xB57C, 0xB559, 0xB4C1, 0xB3DE, 0xB2DC, 0xB223, 
    0xB1DC, 0xB1C5, 0xB1CC, 0xB1DD, 0xB1E6, 0x1C98, 0x1CFA, 0x1EB3, 0x2192, 0x2567, 0x5600, 0x50DD, 0x4B80, 0x46AD, 
    0x4573, 0x4959, 0x4E6E, 0x535B, 0x2847, 0x24B9, 0x22FC, 0x234F, 0x24BE, 0x2657, 0x272F, 0x2737, 0x270B, 0x26CA, 
    0x268E, 0x2673, 0x4AC1, 0x4AED, 0x4B3A, 0x4BBC, 0x4C97, 0xCE17, 0xD0E8, 0xD6F7, 0xE7B2, 0x11BF, 0x2BF6, 0x34B7, 
    0x387E, 0xBA70, 0xBB7E, 0xBBB2, 0xBB25, 0xBA24, 0xB900, 0xB83C, 0xB7FE, 0xB7F2, 0xB802, 0xB81A, 0xB827, 0xB0FA, 
    0xB049, 0xB20B, 0xB674, 0xBC10, 0xC033, 0xC2A3, 0xC54C, 0xC834, 0xCB33, 0xCDEF, 0xD008, 0xD12E, 0xD13E, 0xD013, 
    0xCDFD, 0xCB7B, 0xC8B9, 0xC604, 0xC3F2, 0xC2DA, 0xC28F, 0xC2C3, 0xC31F, 0xC350, 0x070C, 0x086D, 0x0705, 0x0643, 
    0x07DB, 0x0713, 0x0237, 0xFDD4, 0xF9F3, 0xF68A, 0xF3B7, 0xF141, 0xEF19, 0xED01, 0xEAF2, 0xE90B, 0xE789, 0xE670, 
    0xE5B6, 0xE573, 0xE55F, 0xE55C, 0xE55E, 0xE563, 0xE566, 0xC5B1, 0xC49E, 0xC2A1, 0xC017, 0xBE55, 0xBDE9, 0xBD3B, 
    0xBBE1, 0xB9D6, 0xB72A, 0xB42D, 0xB13E, 0xAED8, 0xAD4F, 0xAD07, 0xADE7, 0xAF86, 0xB1BD, 0xB436, 0xB646, 0xB768, 
    0xB7B8, 0xB781, 0xB720, 0xB6ED, 0x30C5, 0x298B, 0x22A2, 0x1952, 0x0DC7, 0x0C0C, 0x1619, 0x1F67, 0x281B, 0x3089, 
    0x386B, 0x3FF8, 0x46EC, 0x4D6F, 0x534B, 0x5894, 0x5D2D, 0x611A, 0x645B, 0x6670, 0x6777, 0x67BC, 0x678D, 0x6738, 
    0x670A, 0xE0C3, 0xE483, 0xE842, 0xEDB6, 0xF54E, 0xF688, 0xEFBC, 0xEA0E, 0xE546, 0xE0E1, 0xDCF5, 0xD94F, 0xD5F7, 
    0xD2CD, 0xCFEC, 0xCD3B, 0xCAD4, 0xC8BF, 0xC704, 0xC5DA, 0xC549, 0xC523, 0xC53D, 0xC56B, 0xC585, 0xF975, 0xFA25, 
    0xFBEA, 0xFE40, 0x009E, 0x027F, 0x03D5, 0x04F0, 0x05D9, 0x0698, 0x073E, 0x07CC, 0x083B, 0x0883, 0x089D, 0x089D, 
    0x089D, 0x089D, 0x089D, 0x089D, 0x089D, 0x089D, 0x089D, 0x089D, 0x089D, 0x013F, 0x0172, 0x01A5, 0x01D3, 0x01FB, 
    0x0218, 0x0220, 0x0214, 0x020A, 0x0214, 0x0240, 0x0281, 0x02C5, 0x02FA, 0x0310, 0x0310, 0x0310, 0x0310, 0x0310, 
    0x0310, 0x0310, 0x0310, 0x0310, 0x0310, 0x0310, 0xACD3, 0xAD11, 0xAF43, 0xB26F, 0xB59B, 0xB7CA, 0xB8E6, 0xB97F, 
    0xB992, 0xB91F, 0xB7DA, 0xB5DD, 0xB3BB, 0xB207, 0xB156, 0xB156, 0xB156, 0xB156, 0xB156, 0xB156, 0xB156, 0xB156, 
    0xB156, 0xB156, 0xB156, 0x47B7, 0x46FA, 0x4659, 0x45CC, 0x4557, 0x450A, 0x44FB, 0x4535, 0x4627, 0x4693, 0x4698, 
    0x4732, 0x489C, 0x4923, 0x493F, 0x49FD, 0x4B4B, 0x4B51, 0x4B47, 0x4C1F, 0xCD42, 0xCD49, 0xCDA4, 0xD027, 0xD274, 
    0xE7E3, 0xED97, 0xF2DE, 0xF7F5, 0xFD1A, 0x028B, 0x0885, 0x11A9, 0x1A9A, 0x1C4D, 0x1A94, 0x1D0D, 0x217C, 0x216F, 
    0x20AD, 0x2434, 0x27EB, 0x27AD, 0x273C, 0x296B, 0x5471, 0x5482, 0x5408, 0x50DE, 0x4EE0, 0x3C12, 0x3D1C, 0x3DF7, 
    0x3EBB, 0x3F76, 0x4034, 0x4102, 0x4266, 0x43FC, 0x43B9, 0x4337, 0x44C4, 0x46FA, 0x4721, 0x46F3, 0x489F, 0x4AA6, 
    0x49D3, 0x48DB, 0x4A1F, 0xCBE8, 0xCBFF, 0xCC56, 0xCF34, 0xD1CB, 0x0523, 0x0C16, 0x18E4, 0x2967, 0x3B46, 0xCC3F, 
    0xDA79, 0xD961, 0x50F6, 0xD930, 0xDCB0, 0xD848, 0xD5CF, 0xDE5C, 0xDF39, 0xD72F, 0xD0D1, 0xD343, 0xD4AC, 0xCF55, 
    0xC980, 0xC74B, 0xC59D, 0xC466, 0xC3EA, 0x6C4D, 0x6C99, 0x693F, 0x6368, 0x5C62, 0x2A76, 0x2FBD, 0x3366, 0x4AF3, 
    0x337B, 0x3048, 0x304A, 0x306C, 0x2D0F, 0x29C2, 0x2A0F, 0x29C1, 0x26ED, 0x22A4, 0x2120, 0x208D, 0x1ED0, 0x1CB0, 
    0x1AD2, 0x1A03, 0x180F, 0x1A7C, 0x1BA2, 0x1C6C, 0x1D2F, 0x9E4A, 0xA09D, 0x9CD0, 0x1761, 0xA459, 0xAD0D, 0xAB70, 
    0xAB90, 0xB7F5, 0xBD34, 0xB8F1, 0xB653, 0xBD54, 0xC318, 0xC0DF, 0xBDE8, 0xBEF4, 0xC0C9, 0xC263, 0xC30F, 0x467D, 
    0x4523, 0x3FA6, 0x37F0, 0x2FEE, 0x298B, 0x26B5, 0x2685, 0x26C7, 0x276C, 0x2868, 0x29AC, 0x2B2C, 0x2CDB, 0x2EAA, 
    0x308D, 0x3275, 0x3457, 0x3623, 0x37CE, 0x3948, 0x3A86, 0x3B7A, 0x3C16, 0x3C4D, 0x0070, 0x004D, 0x0013, 0xFFCD, 
    0xFF83, 0xFF40, 0xFF0E, 0xFEF1, 0xFEE6, 0xFEE5, 0xFEE6, 0xFEE6, 0xFEE7, 0xFEE9, 0xFEEC, 0xFEEF, 0xFEF3, 0xFEF7, 
    0xFEFA, 0xFEFE, 0xFF01, 0xFF04, 0xFF07, 0xFF08, 0xFF09, 0x00E3, 0x00DE, 0x00C9, 0x00A9, 0x0085, 0x0062, 0x0049, 
    0x0038, 0x002C, 0x0024, 0x0021, 0x0020, 0x0020, 0x0021, 0x0023, 0x0024, 0x0027, 0x0029, 0x002B, 0x002E, 0x0030, 
    0x0032, 0x0034, 0x0035, 0x0035, 0x2CD8, 0x2588, 0x1A00, 0x0C10, 0xFD89, 0xF039, 0xE5F1, 0xDFB4, 0xDC95, 0xDB73, 
    0xDB34, 0xDB28, 0xDB5A, 0xDBC0, 0xDC51, 0xDD02, 0xDDCB, 0xDEA0, 0xDF79, 0xE04B, 0xE10D, 0xE1B5, 0xE239, 0xE290, 
    0xE2AF, 0xE0B7, 0xE3AB, 0xE352, 0xE027, 0x5AC1, 0x5435, 0x4E9E, 0x4F77, 0x4FE6, 0x49AA, 0x4476, 0x4550, 0x45F3, 
    0x40C4, 0x3C2E, 0x3C77, 0x3D48, 0x3AD6, 0x38BF, 0x387D, 0x387D, 0x38A1, 0x38CF, 0x38F4, 0x3904, 0x8A79, 0x8A6C, 
    0x8D50, 0x923B, 0xE7C6, 0xE21B, 0xDE74, 0xDE99, 0xDF97, 0xDF72, 0xE05E, 0xE0E7, 0xE192, 0xE289, 0xE3F5, 0xE3FE, 
    0xE418, 0xE535, 0xE65A, 0xE6EB, 0xE785, 0xE82C, 0xE8D0, 0xE951, 0xE985, 0x2638, 0x2855, 0x2C71, 0x31D8, 0xB7C9, 
    0xBDCF, 0xC331, 0xC070, 0xBDBB, 0xC44F, 0xC9C0, 0xC66B, 0xC353, 0xC8B2, 0xCDA1, 0xCAD4, 0xC746, 0xC8DA, 0xCA1E, 
    0xC845, 0xC5AD, 0xC2DA, 0xC04A, 0xBE71, 0xBDBB, 0xB4A0, 0xB5A5, 0xBBBC, 0xC4A4, 0xCE1E, 0xD5EB, 0xD9CA, 0xDABD, 
    0xDB4C, 0xDB82, 0xDB69, 0xDB0B, 0xDA73, 0xD9AB, 0xD8BE, 0xD7B7, 0xD69E, 0xD580, 0xD466, 0xD35A, 0xD268, 0xD19A, 
    0xD0FA, 0xD092, 0xD06D, 0x0000, 
};

JointIndex sWolfosRearingUpFallingOverAnimJointIndices[] = {
    { 0x0000, 0x000A, 0x0023 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x003C, 0x0055, 0x006E },
    { 0x0000, 0x0000, 0x0087 },
    { 0x0000, 0x0000, 0x00A0 },
    { 0x00B9, 0x00D2, 0x00EB },
    { 0x0104, 0x011D, 0x0136 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x014F, 0x0168, 0x0181 },
    { 0x0000, 0x0000, 0x019A },
    { 0x0000, 0x0000, 0x01B3 },
    { 0x01CC, 0x01E5, 0x01FE },
    { 0x0217, 0x0230, 0x0249 },
    { 0x0262, 0x027B, 0x0294 },
    { 0x0000, 0x02AD, 0x0000 },
    { 0x0004, 0x0005, 0x0006 },
    { 0x02C6, 0x02DF, 0x02F8 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0311, 0x032A, 0x0343 },
    { 0x0000, 0x035C, 0x0000 },
    { 0x0007, 0x0008, 0x0009 },
};

AnimationHeader gWolfosRearingUpFallingOverAnim = { 
    { 25 }, sWolfosRearingUpFallingOverAnimFrameData,
    sWolfosRearingUpFallingOverAnimJointIndices, 10
};

u8 object_wf_zeroes_Blob_005440[] = {
#include "assets/objects/object_wf/object_wf_zeroes_Blob_005440.bin.inc.c"
};

s16 sWolfosRunningAnimFrameData[] = {
    0x0000, 0x0A64, 0xFCE7, 0xC000, 0xF9C1, 0x037B, 0xAA22, 0x06D7, 0xFD8C, 0xA863, 0x0A64, 0x0C61, 0x0F0D, 0x1071, 
    0x0F3C, 0x0CB8, 0x0AD8, 0x0A44, 0x0A25, 0xFCE7, 0xFCD2, 0xFCB7, 0xFCA9, 0xFCB8, 0xFCD4, 0xFCE9, 0xFCED, 0xFCEC, 
    0x0000, 0x0CA2, 0x1A9B, 0x2134, 0x1FA4, 0x1B7C, 0x158A, 0x0E9B, 0x077B, 0xFA4C, 0xFAF9, 0xFBB8, 0xFC13, 0xFBFD, 
    0xFBC5, 0xFB73, 0xFB14, 0xFAB2, 0x0000, 0xFE6C, 0xFCAE, 0xFBDB, 0xFC0D, 0xFC92, 0xFD50, 0xFE2D, 0xFF11, 0x8A59, 
    0x8919, 0x90E3, 0x9300, 0x87B2, 0x6F92, 0x66D1, 0x6C1D, 0x7813, 0xDA93, 0xDD87, 0xE43C, 0xE781, 0xE2D1, 0xE3A0, 
    0xE559, 0xE193, 0xDDB3, 0xF9CD, 0xF287, 0xE64B, 0xE139, 0xF3B7, 0x149A, 0x1F8C, 0x192B, 0x0CD3, 0x54AA, 0x5BC2, 
    0x4C9B, 0x40D9, 0x5127, 0x5F41, 0x5A00, 0x5622, 0x5677, 0xCF20, 0xCB83, 0xD31D, 0xD8CA, 0xD0E0, 0xC9B1, 0xCC68, 
    0xCE61, 0xCE35, 0xFB1D, 0xFC27, 0xFE54, 0xFF98, 0x0035, 0x0014, 0xFEA9, 0xFCBD, 0xFB1F, 0x0007, 0x005E, 0x0097, 
    0x0007, 0xFFF8, 0x0003, 0x0008, 0x0010, 0x0014, 0xD85D, 0xDA27, 0xDAED, 0xD85D, 0xD055, 0xCB66, 0xCFD8, 0xD7A1, 
    0xDD78, 0x33C6, 0x329A, 0x2C2C, 0x2817, 0x323A, 0x3A35, 0x3EE9, 0x3CBF, 0x3804, 0xE56D, 0xDE70, 0xDA53, 0xDBF8, 
    0xE9B4, 0x14DA, 0x1F3D, 0x13C7, 0xFEF1, 0xE3BC, 0xEA8E, 0xF2FD, 0xF5CE, 0xE1F4, 0xDA58, 0xD905, 0xD93C, 0xDD40, 
    0x9391, 0xA510, 0xB0FD, 0xB4C7, 0x9E9C, 0x700E, 0x65B0, 0x70AD, 0x800B, 0x5958, 0x522D, 0x33D6, 0x22DF, 0x4587, 
    0x55E1, 0x48DD, 0x4C01, 0x5756, 0xCCDD, 0xD07C, 0xDF37, 0xE820, 0xD6A4, 0xCEA0, 0xD506, 0xD381, 0xCDE0, 0x04E8, 
    0x03E6, 0x0283, 0x024A, 0x0180, 0x01C8, 0x02B1, 0x0500, 0x0840, 0xFFE5, 0xFF64, 0xFED4, 0xFE4C, 0x0805, 0x0391, 
    0xFFDD, 0xFED7, 0xFED1, 0xC52E, 0xCCAA, 0xD527, 0xDD9D, 0xCD0D, 0xC7B4, 0xC5B3, 0xCD1B, 0xD543, 0x6277, 0x5804, 
    0x4F2E, 0x4CDE, 0x4D5C, 0x4EE0, 0x51BD, 0x5668, 0x5CAB, 0xC891, 0xCB80, 0xD200, 0xD5B7, 0xD4C5, 0xD266, 0xCF4F, 
    0xCC3E, 0xC9E2, 0x1E65, 0x291B, 0x3278, 0x3516, 0x3484, 0x32CE, 0x2FB1, 0x2AC7, 0x2451, 0xB1AB, 0xBB0F, 0xC72C, 
    0xC11E, 0xB851, 0xB14D, 0xAB3F, 0xABC9, 0xAE98, 0xFB46, 0xF783, 0xF9D0, 0xF9CD, 0xFBE9, 0xFB80, 0xFABD, 0xF9C9, 
    0xF99A, 0x4A01, 0x3285, 0x231E, 0x27A1, 0x34DB, 0x472E, 0x55C3, 0x5545, 0x4F53, 0x17B9, 0x1EC5, 0x120D, 0x06D0, 
    0x16BC, 0x2101, 0x1FE6, 0x1D1F, 0x1A05, 0xFFFA, 0xFFE0, 0xFFC6, 0xFFBA, 0xFFBF, 0xFFCC, 0xFFDC, 0xFFEC, 0xFFF9, 
    0x001C, 0x005B, 0x007C, 0x0086, 0x007C, 0x0065, 0x0046, 0x0026, 0x000D, 0x198C, 0x1336, 0x0AC3, 0x068A, 0x07EA, 
    0x0B60, 0x0FEC, 0x148D, 0x1843, 0x4FB0, 0x4467, 0x3AB2, 0x3EAF, 0x46A4, 0x4DD7, 0x5316, 0x5307, 0x5124, 0x02AF, 
    0x0570, 0x0359, 0x0333, 0x037E, 0x0434, 0x0404, 0x0369, 0x02EE, 0x4E0B, 0x3A9A, 0x2A9C, 0x2CC9, 0x36E2, 0x466A, 
    0x533A, 0x542B, 0x50E4, 0xEBBF, 0xE5A8, 0xEEFE, 0xF790, 0xECDE, 0xE10A, 0xE250, 0xE585, 0xE918, 
};

JointIndex sWolfosRunningAnimJointIndices[] = {
    { 0x0000, 0x000A, 0x0013 },
    { 0x001C, 0x0025, 0x002E },
    { 0x0037, 0x0040, 0x0049 },
    { 0x0000, 0x0000, 0x0052 },
    { 0x0000, 0x0000, 0x005B },
    { 0x0064, 0x006D, 0x0076 },
    { 0x0003, 0x007F, 0x0003 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0088, 0x0091, 0x009A },
    { 0x0000, 0x0000, 0x00A3 },
    { 0x0000, 0x0000, 0x00AC },
    { 0x00B5, 0x00BE, 0x00C7 },
    { 0x00D0, 0x00D9, 0x00E2 },
    { 0x00EB, 0x00F4, 0x00FD },
    { 0x0000, 0x0106, 0x0000 },
    { 0x0004, 0x0005, 0x0006 },
    { 0x010F, 0x0118, 0x0121 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x012A, 0x0133, 0x013C },
    { 0x0000, 0x0145, 0x0000 },
    { 0x0007, 0x0008, 0x0009 },
};

AnimationHeader gWolfosRunningAnim = { 
    { 9 }, sWolfosRunningAnimFrameData,
    sWolfosRunningAnimJointIndices, 10
};

u8 object_wf_zeroes_Blob_0057B0[] = {
#include "assets/objects/object_wf/object_wf_zeroes_Blob_0057B0.bin.inc.c"
};

Vtx object_wfVtx_0057D0[] = {
#include "assets/objects/object_wf/object_wfVtx_0057D0.vtx.inc"
};

Gfx gWolfosNormalAbdomenDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[326], 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(0, 2, 3, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 2, 1, 16, 0),
    gsSP2Triangles(17, 18, 19, 0, 7, 12, 11, 0),
    gsSP2Triangles(7, 11, 8, 0, 16, 20, 21, 0),
    gsSP2Triangles(15, 22, 13, 0, 23, 24, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalBackRightThighDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[134], 8, 0),
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[142], 15, 8),
    gsSP2Triangles(8, 9, 2, 0, 2, 10, 11, 0),
    gsSP2Triangles(0, 12, 13, 0, 14, 4, 0, 0),
    gsSP2Triangles(1, 15, 0, 0, 16, 17, 6, 0),
    gsSP2Triangles(1, 18, 19, 0, 20, 1, 2, 0),
    gsSP2Triangles(3, 6, 21, 0, 7, 5, 22, 0),
    gsSPVertex(&object_wfVtx_0057D0[157], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalBackRightShinDL[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[111], 6, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[117], 12, 6),
    gsSP2Triangles(6, 7, 2, 0, 2, 4, 8, 0),
    gsSP2Triangles(9, 5, 10, 0, 11, 12, 3, 0),
    gsSP2Triangles(13, 0, 1, 0, 1, 14, 15, 0),
    gsSP2Triangles(0, 16, 5, 0, 3, 17, 1, 0),
    gsSPVertex(&object_wfVtx_0057D0[129], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP1Triangle(1, 0, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalBackRightPasternDL[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[99], 3, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[102], 9, 3),
    gsSP2Triangles(3, 4, 0, 0, 0, 1, 5, 0),
    gsSP2Triangles(6, 7, 2, 0, 2, 0, 8, 0),
    gsSP2Triangles(2, 9, 10, 0, 11, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalBackRightPawDL[] = {
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[80], 3, 0),
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[83], 9, 3),
    gsSP2Triangles(3, 0, 1, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 2, 0, 0, 0, 7, 8, 0),
    gsSP2Triangles(2, 9, 10, 0, 11, 1, 2, 0),
    gsSPVertex(&object_wfVtx_0057D0[92], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(3, 4, 0, 0, 5, 0, 4, 0),
    gsSP2Triangles(2, 6, 5, 0, 5, 3, 2, 0),
    gsSP2Triangles(1, 0, 5, 0, 1, 5, 6, 0),
    gsSP1Triangle(5, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalBackLeftThighDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[54], 8, 0),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[62], 15, 8),
    gsSP2Triangles(2, 8, 9, 0, 10, 11, 2, 0),
    gsSP2Triangles(12, 13, 0, 0, 0, 4, 14, 0),
    gsSP2Triangles(0, 15, 1, 0, 6, 16, 17, 0),
    gsSP2Triangles(18, 19, 1, 0, 2, 1, 20, 0),
    gsSP2Triangles(21, 6, 3, 0, 22, 5, 7, 0),
    gsSPVertex(&object_wfVtx_0057D0[77], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalBackLeftShinDL[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[31], 6, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[37], 12, 6),
    gsSP2Triangles(2, 6, 7, 0, 8, 4, 2, 0),
    gsSP2Triangles(9, 5, 10, 0, 3, 11, 12, 0),
    gsSP2Triangles(0, 1, 13, 0, 14, 15, 0, 0),
    gsSP2Triangles(5, 16, 1, 0, 0, 17, 3, 0),
    gsSPVertex(&object_wfVtx_0057D0[49], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP1Triangle(4, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalBackLeftPasternDL[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[19], 3, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[22], 9, 3),
    gsSP2Triangles(0, 3, 4, 0, 5, 1, 0, 0),
    gsSP2Triangles(2, 6, 7, 0, 8, 0, 2, 0),
    gsSP2Triangles(9, 10, 2, 0, 2, 1, 11, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalBackLeftPawDL[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_wfVtx_0057D0, 3, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[3], 9, 3),
    gsSP2Triangles(0, 3, 4, 0, 5, 1, 0, 0),
    gsSP2Triangles(2, 6, 7, 0, 8, 0, 2, 0),
    gsSP2Triangles(9, 2, 1, 0, 1, 10, 11, 0),
    gsSPVertex(&object_wfVtx_0057D0[12], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(2, 4, 3, 0, 4, 2, 5, 0),
    gsSP2Triangles(5, 6, 0, 0, 0, 3, 5, 0),
    gsSP2Triangles(6, 5, 2, 0, 6, 2, 1, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalThoraxDL[] = {
    gsSPMatrix(0x0D000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[292], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[296], 16, 4),
    gsSP2Triangles(4, 0, 5, 0, 2, 6, 7, 0),
    gsSP2Triangles(8, 0, 2, 0, 9, 10, 3, 0),
    gsSP2Triangles(3, 0, 11, 0, 12, 1, 3, 0),
    gsSP2Triangles(3, 13, 14, 0, 2, 1, 15, 0),
    gsSP2Triangles(16, 17, 2, 0, 18, 1, 19, 0),
    gsSPVertex(&object_wfVtx_0057D0[312], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(4, 3, 6, 0, 2, 7, 0, 0),
    gsSP2Triangles(2, 8, 7, 0, 8, 4, 6, 0),
    gsSP2Triangles(7, 8, 6, 0, 6, 9, 7, 0),
    gsSP2Triangles(6, 10, 9, 0, 7, 9, 11, 0),
    gsSP2Triangles(0, 7, 11, 0, 6, 3, 10, 0),
    gsSP2Triangles(12, 10, 3, 0, 11, 13, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalFrontLeftUpperLegDL[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[266], 5, 0),
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[271], 11, 5),
    gsSP2Triangles(5, 6, 0, 0, 1, 7, 8, 0),
    gsSP2Triangles(9, 2, 3, 0, 3, 10, 11, 0),
    gsSP2Triangles(12, 4, 1, 0, 0, 4, 13, 0),
    gsSP2Triangles(1, 2, 14, 0, 3, 0, 15, 0),
    gsSPVertex(&object_wfVtx_0057D0[282], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(1, 3, 5, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 6, 3, 0, 2, 4, 0, 0),
    gsSP2Triangles(8, 1, 9, 0, 3, 1, 8, 0),
    gsSP2Triangles(0, 9, 1, 0, 9, 0, 7, 0),
    gsSP2Triangles(5, 2, 1, 0, 4, 5, 3, 0),
    gsSP1Triangle(7, 0, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalFrontLeftLowerLegDL[] = {
    gsSPMatrix(0x0D000400, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[226], 6, 0),
    gsSPMatrix(0x0D000440, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[232], 18, 6),
    gsSP2Triangles(6, 0, 3, 0, 1, 0, 7, 0),
    gsSP2Triangles(8, 9, 1, 0, 1, 10, 11, 0),
    gsSP2Triangles(2, 12, 4, 0, 1, 13, 2, 0),
    gsSP2Triangles(1, 14, 15, 0, 16, 17, 1, 0),
    gsSP2Triangles(5, 18, 19, 0, 5, 20, 21, 0),
    gsSP1Triangle(5, 22, 23, 0),
    gsSPVertex(&object_wfVtx_0057D0[250], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 13, 15, 0),
    gsSP1Triangle(3, 5, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalFrontRightUpperLegDL[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[200], 5, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[205], 11, 5),
    gsSP2Triangles(0, 5, 6, 0, 7, 8, 1, 0),
    gsSP2Triangles(2, 3, 9, 0, 10, 11, 2, 0),
    gsSP2Triangles(1, 4, 12, 0, 13, 4, 0, 0),
    gsSP2Triangles(14, 3, 1, 0, 15, 0, 2, 0),
    gsSPVertex(&object_wfVtx_0057D0[216], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(5, 4, 1, 0, 6, 7, 4, 0),
    gsSP2Triangles(4, 7, 8, 0, 2, 3, 0, 0),
    gsSP2Triangles(9, 1, 8, 0, 8, 1, 4, 0),
    gsSP2Triangles(1, 9, 2, 0, 6, 2, 9, 0),
    gsSP2Triangles(1, 0, 5, 0, 4, 5, 3, 0),
    gsSP1Triangle(4, 2, 6, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalFrontRightLowerLegDL[] = {
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_wfVtx_0057D0[160], 6, 0),
    gsSPMatrix(0x0D000300, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_0057D0[166], 18, 6),
    gsSP2Triangles(3, 0, 6, 0, 7, 0, 1, 0),
    gsSP2Triangles(1, 8, 9, 0, 10, 11, 1, 0),
    gsSP2Triangles(4, 12, 2, 0, 2, 13, 1, 0),
    gsSP2Triangles(14, 15, 1, 0, 1, 16, 17, 0),
    gsSP2Triangles(18, 19, 5, 0, 20, 21, 5, 0),
    gsSP1Triangle(22, 23, 5, 0),
    gsSPVertex(&object_wfVtx_0057D0[184], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 3, 0, 8, 9, 10, 0),
    gsSP2Triangles(11, 12, 13, 0, 14, 11, 15, 0),
    gsSP1Triangle(6, 3, 5, 0),
    gsSPEndDisplayList(),
};

u64 gWolfosNormalEyeOpenTex[] = {
#include "assets/objects/object_wf/wolfos_normal_eye_open.rgba16.inc.c"
};

u64 gWolfosNormalFurTex[] = {
#include "assets/objects/object_wf/wolfos_normal_fur.rgba16.inc.c"
};

u64 gWolfosNormalMouthTex[] = {
#include "assets/objects/object_wf/wolfos_normal_mouth.rgba16.inc.c"
};

u64 gWolfosNormalTongueTex[] = {
#include "assets/objects/object_wf/wolfos_normal_tongue.rgba16.inc.c"
};

u64 gWolfosNormalToothClawTex[] = {
#include "assets/objects/object_wf/wolfos_normal_tooth_claw.rgba16.inc.c"
};

u64 gWolfosNormalNostrilTex[] = {
#include "assets/objects/object_wf/wolfos_normal_nostril.rgba16.inc.c"
};

u64 gWolfosNormalEyeHalfTex[] = {
#include "assets/objects/object_wf/wolfos_normal_eye_half.rgba16.inc.c"
};

u64 gWolfosNormalEyeNarrowTex[] = {
#include "assets/objects/object_wf/wolfos_normal_eye_narrow.rgba16.inc.c"
};

Vtx object_wfVtx_008768[] = {
#include "assets/objects/object_wf/object_wfVtx_008768.vtx.inc"
};

Gfx gWolfosNormalTailDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_wfVtx_008768, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 0, 2, 0, 0, 4, 3, 0),
    gsSP2Triangles(1, 4, 2, 0, 4, 1, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalFrontLeftClawDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWolfosNormalToothClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_wfVtx_008768[5], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 5, 0),
    gsSP2Triangles(2, 1, 3, 0, 8, 6, 5, 0),
    gsSP2Triangles(2, 9, 0, 0, 7, 10, 8, 0),
    gsSP2Triangles(10, 6, 8, 0, 6, 7, 4, 0),
    gsSP2Triangles(10, 7, 6, 0, 3, 9, 11, 0),
    gsSP2Triangles(11, 9, 2, 0, 0, 9, 3, 0),
    gsSP2Triangles(5, 4, 7, 0, 3, 11, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalFrontRightClawDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWolfosNormalToothClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_wfVtx_008768[17], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 8, 0),
    gsSP2Triangles(3, 1, 0, 0, 5, 4, 7, 0),
    gsSP2Triangles(2, 9, 0, 0, 7, 10, 8, 0),
    gsSP2Triangles(7, 4, 10, 0, 6, 8, 4, 0),
    gsSP2Triangles(4, 8, 10, 0, 11, 9, 3, 0),
    gsSP2Triangles(0, 9, 11, 0, 3, 9, 2, 0),
    gsSP2Triangles(8, 6, 5, 0, 0, 11, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalHeadDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gWolfosNormalFurTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_wfVtx_008768[29], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 1, 3, 0, 3, 0, 4, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 13, 0, 14, 10, 16, 0),
    gsSP2Triangles(11, 17, 18, 0, 10, 12, 8, 0),
    gsSP2Triangles(18, 8, 12, 0, 10, 9, 16, 0),
    gsSP2Triangles(13, 10, 14, 0, 13, 17, 11, 0),
    gsSP2Triangles(12, 10, 13, 0, 19, 20, 21, 0),
    gsSP2Triangles(18, 12, 11, 0, 21, 22, 19, 0),
    gsSP2Triangles(16, 15, 14, 0, 22, 23, 19, 0),
    gsSP2Triangles(24, 20, 19, 0, 24, 23, 25, 0),
    gsSP2Triangles(26, 20, 27, 0, 27, 20, 24, 0),
    gsSP2Triangles(25, 23, 28, 0, 22, 9, 8, 0),
    gsSP2Triangles(21, 9, 22, 0, 19, 23, 24, 0),
    gsSP2Triangles(6, 5, 29, 0, 29, 30, 7, 0),
    gsSP2Triangles(7, 6, 29, 0, 7, 30, 5, 0),
    gsSP2Triangles(25, 27, 24, 0, 18, 23, 22, 0),
    gsSP2Triangles(20, 16, 21, 0, 20, 15, 16, 0),
    gsSP2Triangles(26, 15, 20, 0, 23, 17, 28, 0),
    gsSP1Triangle(23, 18, 17, 0),
    gsSPVertex(&object_wfVtx_008768[60], 19, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 6, 3, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 3, 0, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 10, 7, 0),
    gsSP2Triangles(9, 11, 10, 0, 12, 13, 7, 0),
    gsSP2Triangles(13, 14, 7, 0, 7, 14, 8, 0),
    gsSP2Triangles(15, 16, 10, 0, 17, 15, 10, 0),
    gsSP2Triangles(17, 10, 11, 0, 10, 16, 18, 0),
    gsSP1Triangle(18, 12, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWolfosNormalMouthTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_wfVtx_008768[79], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 4, 0),
    gsSP2Triangles(6, 7, 4, 0, 4, 8, 9, 0),
    gsSP1Triangle(7, 10, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWolfosNormalTongueTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_wfVtx_008768[90], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 1, 5, 4, 0),
    gsSP2Triangles(6, 1, 0, 0, 6, 5, 1, 0),
    gsSP2Triangles(0, 3, 6, 0, 3, 2, 6, 0),
    gsSP1Triangle(2, 4, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWolfosNormalToothClawTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_008768[97], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gWolfosNormalNostrilTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_wfVtx_008768[115], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP1Triangle(3, 2, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gWolfosNormalEyesDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineMode(G_CC_MODULATEIDECALA_PRIM, G_CC_PASS2),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_wfVtx_008768[119], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSPEndDisplayList(),
};

StandardLimb gWolfosNormalRootLimb = { 
    { 0, 2660, -793 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gWolfosNormalBackLeftThighLimb = { 
    { 554, 0, -115 }, 0x02, 0x05,
    gWolfosNormalBackLeftThighDL
};

StandardLimb gWolfosNormalBackLeftShinLimb = { 
    { 1318, 0, 0 }, 0x03, LIMB_DONE,
    gWolfosNormalBackLeftShinDL
};

StandardLimb gWolfosNormalBackLeftPasternLimb = { 
    { 1628, 0, 0 }, 0x04, LIMB_DONE,
    gWolfosNormalBackLeftPasternDL
};

StandardLimb gWolfosNormalBackLeftPawLimb = { 
    { 1134, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosNormalBackLeftPawDL
};

StandardLimb gWolfosNormalTailLimb = { 
    { 0, 256, -684 }, LIMB_DONE, 0x06,
    gWolfosNormalTailDL
};

StandardLimb gWolfosNormalAbdomenLimb = { 
    { 0, 704, 196 }, LIMB_DONE, 0x07,
    gWolfosNormalAbdomenDL
};

StandardLimb gWolfosNormalBackRightThighLimb = { 
    { -554, 0, -115 }, 0x08, 0x0B,
    gWolfosNormalBackRightThighDL
};

StandardLimb gWolfosNormalBackRightShinLimb = { 
    { 1318, 0, 0 }, 0x09, LIMB_DONE,
    gWolfosNormalBackRightShinDL
};

StandardLimb gWolfosNormalBackRightPasternLimb = { 
    { 1628, 0, 0 }, 0x0A, LIMB_DONE,
    gWolfosNormalBackRightPasternDL
};

StandardLimb gWolfosNormalBackRightPawLimb = { 
    { 1134, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosNormalBackRightPawDL
};

StandardLimb gWolfosNormalThoraxLimb = { 
    { 0, 1524, 208 }, 0x0C, LIMB_DONE,
    gWolfosNormalThoraxDL
};

StandardLimb gWolfosNormalFrontRightUpperLegLimb = { 
    { 2078, -538, -1158 }, 0x0D, 0x0F,
    gWolfosNormalFrontRightUpperLegDL
};

StandardLimb gWolfosNormalFrontRightLowerLegLimb = { 
    { 2645, 0, 0 }, 0x0E, LIMB_DONE,
    gWolfosNormalFrontRightLowerLegDL
};

StandardLimb gWolfosNormalFrontRightClawLimb = { 
    { 2152, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosNormalFrontRightClawDL
};

StandardLimb gWolfosNormalHeadRootLimb = { 
    { 3051, 192, 0 }, 0x10, 0x12,
    NULL
};

StandardLimb gWolfosNormalHeadLimb = { 
    { 0, 0, 0 }, LIMB_DONE, 0x11,
    gWolfosNormalHeadDL
};

StandardLimb gWolfosNormalEyesLimb = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosNormalEyesDL
};

StandardLimb gWolfosNormalFrontLeftUpperLegLimb = { 
    { 2078, -538, 1158 }, 0x13, LIMB_DONE,
    gWolfosNormalFrontLeftUpperLegDL
};

StandardLimb gWolfosNormalFrontLeftLowerLegLimb = { 
    { 2645, 0, 0 }, 0x14, LIMB_DONE,
    gWolfosNormalFrontLeftLowerLegDL
};

StandardLimb gWolfosNormalFrontLeftClawLimb = { 
    { 2152, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gWolfosNormalFrontLeftClawDL
};

void* gWolfosNormalSkelLimbs[] = {
    &gWolfosNormalRootLimb,
    &gWolfosNormalBackLeftThighLimb,
    &gWolfosNormalBackLeftShinLimb,
    &gWolfosNormalBackLeftPasternLimb,
    &gWolfosNormalBackLeftPawLimb,
    &gWolfosNormalTailLimb,
    &gWolfosNormalAbdomenLimb,
    &gWolfosNormalBackRightThighLimb,
    &gWolfosNormalBackRightShinLimb,
    &gWolfosNormalBackRightPasternLimb,
    &gWolfosNormalBackRightPawLimb,
    &gWolfosNormalThoraxLimb,
    &gWolfosNormalFrontRightUpperLegLimb,
    &gWolfosNormalFrontRightLowerLegLimb,
    &gWolfosNormalFrontRightClawLimb,
    &gWolfosNormalHeadRootLimb,
    &gWolfosNormalHeadLimb,
    &gWolfosNormalEyesLimb,
    &gWolfosNormalFrontLeftUpperLegLimb,
    &gWolfosNormalFrontLeftLowerLegLimb,
    &gWolfosNormalFrontLeftClawLimb,
};

FlexSkeletonHeader gWolfosNormalSkel = { 
    { gWolfosNormalSkelLimbs, ARRAY_COUNT(gWolfosNormalSkelLimbs) }, 19
};

u8 object_wf_possiblePadding_00969C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 sWolfosSidesteppingAnimFrameData[] = {
    0x0000, 0x0A3F, 0xFCE9, 0xFA4C, 0xC891, 0x1E65, 0x17B9, 0xF9C1, 0x037B, 0xAA22, 0xF2AC, 0x06D7, 0xFD8C, 0xA863, 
    0x0A3F, 0x0A89, 0x0AEC, 0x0B1E, 0x0AE2, 0x0A74, 0x0A38, 0x8B16, 0x8D04, 0x14CB, 0x1974, 0x8098, 0x856B, 0x8BE6, 
    0xD10D, 0xCF0B, 0xB150, 0xB08E, 0xCDBF, 0xD01B, 0xD1D1, 0xF31A, 0xE9B8, 0x5B27, 0x5435, 0xF628, 0xF7FD, 0xF435, 
    0x5911, 0x57AD, 0x52F4, 0x4FC7, 0x5E16, 0x5C6F, 0x5890, 0xCCE2, 0xCD97, 0xCFF9, 0xD18F, 0xCA53, 0xCB2B, 0xCD23, 
    0x0142, 0x0748, 0x0D6D, 0x1245, 0x0A99, 0x01C2, 0xFF98, 0x0015, 0x0065, 0x00AD, 0x00BA, 0x0063, 0x0009, 0x0000, 
    0xD536, 0xD412, 0xD329, 0xD3B4, 0xD563, 0xD6C6, 0xD583, 0xC000, 0xBFFC, 0xBFFA, 0xC00E, 0xBFDB, 0xBFFE, 0xC000, 
    0x1E96, 0x1CF5, 0x1BEE, 0x212C, 0x25D6, 0x2261, 0x1E96, 0xC000, 0xC051, 0xC071, 0xBFBB, 0xBEE1, 0xBF77, 0xC000, 
    0xCA23, 0xCD44, 0xCFD7, 0xD0DC, 0xCCC1, 0xC94D, 0xC9A1, 0xD865, 0xDBE3, 0xE289, 0xE800, 0xE6AF, 0xDC97, 0xD836, 
    0xB68E, 0xBBF1, 0xC142, 0xC531, 0xC396, 0xB919, 0xB522, 0x60FC, 0x644B, 0x5E4B, 0x564D, 0x4F71, 0x5A77, 0x5ED7, 
    0xC8CE, 0xC70D, 0xCA3C, 0xCE68, 0xD1DB, 0xCC45, 0xC9F2, 0x0117, 0xFA67, 0xF508, 0xF30E, 0xF4C7, 0x017C, 0x02DA, 
    0xFFF7, 0xFFA5, 0xFF40, 0xFE86, 0xFE26, 0x000A, 0x000F, 0xC24E, 0xC0AF, 0xBEC7, 0xBBEE, 0xBA05, 0xBE5B, 0xC2C5, 
    0x6277, 0x6425, 0x65B9, 0x63D7, 0x61A6, 0x61DA, 0x6277, 0xB691, 0xB62B, 0xB5CA, 0xB5D8, 0xB63B, 0xB672, 0xB691, 
    0x1E48, 0x1F54, 0x2009, 0x1D7D, 0x1BB8, 0x1D0D, 0x1E5A, 0x4CA2, 0x4D2C, 0x4D97, 0x4C79, 0x4BBF, 0x4C2C, 0x4CA9, 
    0x1A45, 0x1C3F, 0x1EE3, 0x2035, 0x1EA0, 0x1BAE, 0x1A19, 0x3744, 0x39AE, 0x3BF7, 0x3B2D, 0x390E, 0x37A6, 0x3736, 
    0xEBDD, 0xED0C, 0xEE6E, 0xEDB0, 0xEC48, 0xEBDA, 0xEBD5, 0x69DC, 0x6765, 0x64F4, 0x65CB, 0x6854, 0x69A9, 0x69F3, 
    
};

JointIndex sWolfosSidesteppingAnimJointIndices[] = {
    { 0x0000, 0x000E, 0x0002 },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0015, 0x001C, 0x0023 },
    { 0x0000, 0x0000, 0x002A },
    { 0x0000, 0x0000, 0x0031 },
    { 0x0038, 0x003F, 0x0046 },
    { 0x004D, 0x0054, 0x005B },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0062, 0x0069, 0x0070 },
    { 0x0000, 0x0000, 0x0077 },
    { 0x0000, 0x0000, 0x007E },
    { 0x0085, 0x008C, 0x0093 },
    { 0x009A, 0x0004, 0x0005 },
    { 0x00A1, 0x00A8, 0x00AF },
    { 0x0000, 0x0006, 0x0000 },
    { 0x0007, 0x0008, 0x0009 },
    { 0x0000, 0x0000, 0x00B6 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x00BD, 0x00C4, 0x00CB },
    { 0x0000, 0x000A, 0x0000 },
    { 0x000B, 0x000C, 0x000D },
};

AnimationHeader gWolfosSidesteppingAnim = { 
    { 7 }, sWolfosSidesteppingAnimFrameData,
    sWolfosSidesteppingAnimJointIndices, 14
};

u8 object_wf_zeroes_Blob_0098D8[] = {
#include "assets/objects/object_wf/object_wf_zeroes_Blob_0098D8.bin.inc.c"
};

s16 sWolfosDamagedAnimFrameData[] = {
    0x0000, 0x0BE1, 0x042F, 0xFA4C, 0x4ABE, 0x1C98, 0x4AC1, 0x0523, 0x6C4D, 0x180F, 0x467D, 0xF9C1, 0x037B, 0xAA22, 
    0xE0B7, 0x8A79, 0x2638, 0xB4A0, 0x06D7, 0xFD8C, 0xA863, 0x0BE1, 0x0C3E, 0x0C92, 0x0CA5, 0x0BEC, 0x0B39, 0x0C55, 
    0x0C2A, 0x042F, 0x0369, 0x0175, 0x001A, 0x008B, 0x01C7, 0x0466, 0x0480, 0xB0A5, 0xAF42, 0xAB54, 0xA827, 0xA791, 
    0xAA2F, 0xB10D, 0xB136, 0xEDB7, 0xEB6F, 0xE4DC, 0xE09D, 0xDF43, 0xE14E, 0xF039, 0xF026, 0xCEA5, 0xCF9F, 0xD317, 
    0xD5F0, 0xD7B2, 0xD64E, 0xCD74, 0xCD87, 0x473D, 0x4682, 0x4789, 0x47DE, 0x4E13, 0x52A7, 0x4278, 0x4395, 0xD5B4, 
    0xD60F, 0xD590, 0xD566, 0xD264, 0xD020, 0xD802, 0xD778, 0xFA62, 0xFA05, 0xFA0F, 0xFA20, 0xFA3A, 0xFA44, 0xFA4D, 
    0xFA5A, 0xFFBF, 0x0024, 0x00C9, 0x0165, 0x01AF, 0x00BF, 0xFFC8, 0xFFA6, 0xBA37, 0xBACF, 0xBEEB, 0xC304, 0xC579, 
    0xBF87, 0xB976, 0xB928, 0xC047, 0xC10A, 0xC2BB, 0xC405, 0xC358, 0xC1C3, 0xC06A, 0xC03E, 0x0500, 0x012E, 0xF6CF, 
    0xEFC8, 0xEFD3, 0xF4D1, 0x0805, 0x0821, 0xBA72, 0xBA77, 0xBA37, 0xB9D4, 0xB9B6, 0xBA08, 0xBA7F, 0xBA77, 0x30C5, 
    0x336F, 0x3CAA, 0x426E, 0x46B2, 0x4639, 0x2A53, 0x2B1E, 0xE0C3, 0xDF6A, 0xDAE3, 0xD823, 0xD613, 0xD64E, 0xE419, 
    0xE3AE, 0x04E8, 0x051E, 0x0535, 0x0548, 0x0549, 0x0521, 0x04F7, 0x04EA, 0x0171, 0x013F, 0x00CA, 0x005B, 0x0032, 
    0x00C5, 0x015C, 0x017A, 0xAE08, 0xAEB6, 0xB22C, 0xB584, 0xB6FD, 0xB2B0, 0xAE3F, 0xAD99, 0x46FD, 0x4889, 0x48DC, 
    0x489A, 0x47E0, 0x4715, 0x46C7, 0x46CD, 0x10E1, 0x1869, 0x1AA4, 0x1A34, 0x163F, 0x0F7C, 0x0AF1, 0x0D7B, 0x433F, 
    0x44C7, 0x4562, 0x4547, 0x4444, 0x42E4, 0x4221, 0x4298, 0xFFCE, 0xFFB7, 0xFF99, 0xFF82, 0xFF72, 0xFF66, 0xFF68, 
    0xFF9F, 0x00F8, 0x0103, 0x00F8, 0x00EB, 0x00E0, 0x00D3, 0x00CE, 0x00E3, 0x11F2, 0x0E3C, 0x0986, 0x05B1, 0x0288, 
    0xFFFE, 0x002F, 0x09A1, 0x0000, 
};

JointIndex sWolfosDamagedAnimJointIndices[] = {
    { 0x0000, 0x0015, 0x001D },
    { 0x0000, 0x0003, 0x0000 },
    { 0x0025, 0x002D, 0x0035 },
    { 0x0000, 0x0000, 0x003D },
    { 0x0000, 0x0000, 0x0045 },
    { 0x004D, 0x0055, 0x005D },
    { 0x0004, 0x0005, 0x0006 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0065, 0x006D, 0x0075 },
    { 0x0000, 0x0000, 0x007D },
    { 0x0000, 0x0000, 0x0085 },
    { 0x008D, 0x0095, 0x009D },
    { 0x00A5, 0x00AD, 0x00B5 },
    { 0x0007, 0x0008, 0x0009 },
    { 0x0000, 0x000A, 0x0000 },
    { 0x000B, 0x000C, 0x000D },
    { 0x00BD, 0x00C5, 0x00CD },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x000E, 0x000F, 0x0010 },
    { 0x0000, 0x0011, 0x0000 },
    { 0x0012, 0x0013, 0x0014 },
};

AnimationHeader gWolfosDamagedAnim = { 
    { 8 }, sWolfosDamagedAnimFrameData,
    sWolfosDamagedAnimJointIndices, 21
};

u8 object_wf_unaccounted_009B30[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 sWolfosWaitingAnimFrameData[] = {
    0x0001, 0x0A37, 0xFCE9, 0x0000, 0xFA4C, 0xF9C1, 0x037B, 0xAA22, 0x0001, 0x000F, 0x002A, 0x004C, 0x0070, 0x0090, 
    0x00A7, 0x00B0, 0x00A9, 0x0096, 0x007C, 0x005C, 0x003A, 0x001B, 0x0000, 0xFFE7, 0xFFCC, 0xFFB1, 0xFF96, 0xFF7E, 
    0xFF6B, 0xFF5F, 0xFF5A, 0xFF63, 0xFF7B, 0xFF9B, 0xFFBF, 0xFFDF, 0xFFF7, 0x0A37, 0x0A26, 0x0A06, 0x09DE, 0x09B3, 
    0x098D, 0x0972, 0x0967, 0x0973, 0x0991, 0x09BA, 0x09E6, 0x0A0F, 0x0A2E, 0x0A39, 0x0A30, 0x0A19, 0x09F7, 0x09D1, 
    0x09AB, 0x098A, 0x0972, 0x0969, 0x0974, 0x0992, 0x09BB, 0x09E7, 0x0A0F, 0x0A2D, 0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 
    0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 0xFCEA, 
    0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 0xFCE9, 0x8BD7, 0x8B03, 0x896C, 
    0x8752, 0x8502, 0x82DA, 0x8164, 0x80C8, 0x8170, 0x8300, 0x8544, 0x87A7, 0x89C6, 0x8B4D, 0x8BF5, 0x8BB6, 0x8ADA, 
    0x8996, 0x881C, 0x869E, 0x8550, 0x8463, 0x8408, 0x8471, 0x8585, 0x8708, 0x88B8, 0x8A4A, 0x8B73, 0xD1CE, 0xD19F, 
    0xD14D, 0xD0ED, 0xD093, 0xD04C, 0xD020, 0xD010, 0xD01D, 0xD044, 0xD087, 0xD0DF, 0xD141, 0xD19A, 0xD1D3, 0xD1EC, 
    0xD1F6, 0xD1F9, 0xD1FD, 0xD206, 0xD212, 0xD21E, 0xD223, 0xD217, 0xD1FD, 0xD1E2, 0xD1D0, 0xD1CB, 0xD1CE, 0xF442, 
    0xF4F3, 0xF649, 0xF80A, 0xF9F6, 0xFBC0, 0xFCEC, 0xFD6A, 0xFCD6, 0xFB7B, 0xF97D, 0xF76C, 0xF5A4, 0xF475, 0xF426, 
    0xF4CF, 0xF631, 0xF80E, 0xFA27, 0xFC3B, 0xFE09, 0xFF4F, 0xFFCB, 0xFF2B, 0xFD89, 0xFB48, 0xF8CE, 0xF685, 0xF4DA, 
    0x589B, 0x5929, 0x5A31, 0x5B7D, 0x5CD7, 0x5E0A, 0x5ECD, 0x5F1E, 0x5EC6, 0x5DF3, 0x5CAF, 0x5B49, 0x59FA, 0x58FD, 
    0x588D, 0x58B8, 0x594E, 0x5A2A, 0x5B29, 0x5C27, 0x5D05, 0x5DA2, 0x5DDD, 0x5D96, 0x5CDC, 0x5BD8, 0x5AB7, 0x59A8, 
    0x58DF, 0xCD1E, 0xCCD6, 0xCC4F, 0xCBA6, 0xCAF6, 0xCA59, 0xC9EE, 0xC9C3, 0xC9F1, 0xCA65, 0xCB0A, 0xCBC0, 0xCC6B, 
    0xCCEC, 0xCD25, 0xCD0F, 0xCCC3, 0xCC52, 0xCBD1, 0xCB4F, 0xCADE, 0xCA8E, 0xCA70, 0xCA94, 0xCAF3, 0xCB77, 0xCC0B, 
    0xCC95, 0xCCFB, 0xFFA6, 0xFFDA, 0x0017, 0x0056, 0x008F, 0x00BB, 0x00D4, 0x00D1, 0x00AF, 0x0076, 0x002C, 0xFFD6, 
    0xFF7C, 0xFF23, 0xFED1, 0xFE8E, 0xFE5F, 0xFE41, 0xFE2C, 0xFE20, 0xFE1C, 0xFE1E, 0xFE27, 0xFE35, 0xFE48, 0xFE5F, 
    0xFE9E, 0xFF08, 0xFF6B, 0x0000, 0x0000, 0x0001, 0x0001, 0x0001, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 
    0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0003, 0x0004, 0x0005, 0x0006, 0x0008, 0x0009, 0x000A, 0x000A, 
    0x000A, 0x0009, 0x0005, 0x0002, 0xD58C, 0xD5AA, 0xD5CA, 0xD5EC, 0xD60D, 0xD62A, 0xD642, 0xD653, 0xD65C, 0xD65F, 
    0xD65D, 0xD658, 0xD652, 0xD64C, 0xD64A, 0xD64B, 0xD653, 0xD665, 0xD681, 0xD6A4, 0xD6C9, 0xD6ED, 0xD70B, 0xD721, 
    0xD72B, 0xD724, 0xD6D9, 0xD64B, 0xD5C1, 0xC000, 0xBF86, 0xBF00, 0xBE6E, 0xBDCC, 0xBD14, 0xBC3D, 0xBB13, 0xB981, 
    0xB7AA, 0xB5BC, 0x33EE, 0x3280, 0x31B1, 0x31C2, 0x3300, 0xB557, 0xB862, 0xBBB3, 0xBEDE, 0xC189, 0xC37A, 0xC48F, 
    0xC4B6, 0xC42A, 0xC334, 0xC218, 0xC10E, 0xC04C, 0x1E96, 0x1F89, 0x202F, 0x20A3, 0x2100, 0x215D, 0x21D5, 0x226F, 
    0x2315, 0x23B3, 0x243B, 0x5B58, 0x5B06, 0x5AC6, 0x5A94, 0x5A6C, 0x25A4, 0x257E, 0x250F, 0x2458, 0x2372, 0x2284, 
    0x21BB, 0x2115, 0x207A, 0x1FEC, 0x1F6B, 0x1EFF, 0x1EB3, 0xC000, 0xBF44, 0xBE7C, 0xBDA6, 0xBCBC, 0xBBB9, 0xBA92, 
    0xB906, 0xB6FE, 0xB4AE, 0xB24F, 0x3025, 0x2E76, 0x2D8A, 0x2DA9, 0x2F2E, 0xB207, 0xB5C3, 0xB9E6, 0xBDF4, 0xC180, 
    0xC434, 0xC5CE, 0xC62C, 0xC591, 0xC45D, 0xC2E6, 0xC17C, 0xC06B, 0xC9A1, 0xC99D, 0xC994, 0xC986, 0xC974, 0xC95F, 
    0xC94E, 0xC947, 0xC94A, 0xC953, 0xC95F, 0xC96B, 0xC977, 0xC987, 0xC99E, 0xC9C3, 0xC9FA, 0xCA3D, 0xCA88, 0xCAD4, 
    0xCB17, 0xCB47, 0xCB5A, 0xCB3D, 0xCAF6, 0xCA99, 0xCA3C, 0xC9EC, 0xC9B6, 0xD831, 0xD7F4, 0xD781, 0xD6F2, 0xD65E, 
    0xD5DB, 0xD57E, 0xD55B, 0xD581, 0xD5E3, 0xD66C, 0xD704, 0xD795, 0xD806, 0xD83D, 0xD836, 0xD808, 0xD7C0, 0xD76C, 
    0xD719, 0xD6D3, 0xD6A1, 0xD68E, 0xD6A2, 0xD6D7, 0xD724, 0xD77F, 0xD7D7, 0xD81B, 0xB51D, 0xB4D4, 0xB44C, 0xB39D, 
    0xB2E2, 0xB239, 0xB1BD, 0xB18E, 0xB1B8, 0xB227, 0xB2C3, 0xB374, 0xB422, 0xB4BA, 0xB525, 0xB56D, 0xB5AA, 0xB5DB, 
    0xB602, 0xB61E, 0xB631, 0xB63B, 0xB63E, 0xB62F, 0xB607, 0xB5D0, 0xB594, 0xB55B, 0xB532, 0x5EE0, 0x5F5E, 0x6048, 
    0x616D, 0x629B, 0x63A7, 0x6465, 0x64AD, 0x645B, 0x6388, 0x6266, 0x6126, 0x5FFE, 0x5F24, 0x5ECF, 0x5F12, 0x5FC2, 
    0x60B8, 0x61D0, 0x62E6, 0x63D8, 0x6482, 0x64C3, 0x6472, 0x63A0, 0x627C, 0x6139, 0x600C, 0x5F2D, 0xC9ED, 0xC9AA, 
    0xC92E, 0xC893, 0xC7F2, 0xC764, 0xC6FF, 0xC6D9, 0xC704, 0xC774, 0xC80E, 0xC8B8, 0xC955, 0xC9C9, 0xC9F6, 0xC9D2, 
    0xC975, 0xC8F3, 0xC85E, 0xC7CA, 0xC74A, 0xC6F0, 0xC6CD, 0xC6F8, 0xC768, 0xC803, 0xC8AE, 0xC94E, 0xC9C4, 0x02F7, 
    0x035C, 0x03CF, 0x0448, 0x04C2, 0x0534, 0x0597, 0x05E3, 0x0612, 0x061C, 0x05FF, 0x05C1, 0x0568, 0x04FA, 0x047D, 
    0x03F8, 0x0371, 0x02ED, 0x0273, 0x0209, 0x01A0, 0x0139, 0x00EE, 0x00DD, 0x0111, 0x0174, 0x01EB, 0x025F, 0x02B7, 
    0x000F, 0x000F, 0x000E, 0x000E, 0x000E, 0x000E, 0x000E, 0x000E, 0x000E, 0x000F, 0x000F, 0x0010, 0x0011, 0x0012, 
    0x0013, 0x0014, 0x0015, 0x0017, 0x0018, 0x0019, 0x001B, 0x001E, 0x0020, 0x0020, 0x001E, 0x001B, 0x0017, 0x0013, 
    0x0010, 0xC2C5, 0xC2C7, 0xC2CA, 0xC2CE, 0xC2D1, 0xC2D3, 0xC2D4, 0xC2D3, 0xC2CE, 0xC2C5, 0xC2B9, 0xC2AA, 0xC298, 
    0xC284, 0xC26E, 0xC257, 0xC23F, 0xC227, 0xC20E, 0xC1F5, 0xC1CE, 0xC19B, 0xC173, 0xC16E, 0xC196, 0xC1D9, 0xC229, 
    0xC276, 0xC2AF, 0x6277, 0x5F32, 0x5D70, 0x5CEF, 0x5DB3, 0x5FFB, 0x63C8, 0x68EF, 0x6EF0, 0x74CF, 0x793F, 0x7AEE, 
    0x77F1, 0x703C, 0x6645, 0x5D56, 0x574F, 0x5480, 0x53E4, 0x5448, 0x559E, 0x57EF, 0x5B3B, 0x5F49, 0x636D, 0x6693, 
    0x6775, 0x664F, 0x645F, 0xC891, 0xC9A5, 0xCA7F, 0xCAFF, 0xCB09, 0xCA9F, 0xC9F4, 0xC93C, 0xC8A4, 0xC83E, 0xC7FF, 
    0xC7CB, 0xC782, 0xC751, 0xC78B, 0xC839, 0xC900, 0xC965, 0xC943, 0xC8D2, 0xC82D, 0xC770, 0xC6BB, 0xC62B, 0xC5D6, 
    0xC5C8, 0xC614, 0xC6B6, 0xC794, 0x1E65, 0x218A, 0x232F, 0x2393, 0x22B7, 0x205A, 0x1C76, 0x173D, 0x112D, 0x0B43, 
    0x06CD, 0x051C, 0x0820, 0x0FEB, 0x1A04, 0x231E, 0x294D, 0x2C34, 0x2CD3, 0x2C65, 0x2AFD, 0x2895, 0x2531, 0x210F, 
    0x1CDE, 0x19B4, 0x18F2, 0x1A53, 0x1C76, 0xB2EB, 0xB2B9, 0xB242, 0xB1BB, 0xB15B, 0xB12F, 0xB11B, 0xB11A, 0xB121, 
    0xB11C, 0xB0F8, 0xB0A2, 0xB033, 0xAFD3, 0xAF97, 0xAF7D, 0xAF78, 0xAF76, 0xAF75, 0xAF7B, 0xAF91, 0xAFBA, 0xAFF8, 
    0xB047, 0xB0A0, 0xB0F8, 0xB16C, 0xB20A, 0xB2A3, 0x0706, 0x071F, 0x0761, 0x07BC, 0x0824, 0x08B3, 0x0974, 0x0A40, 
    0x0AEF, 0x0B57, 0x0B50, 0x0A9B, 0x094F, 0x07C5, 0x0654, 0x0545, 0x04DC, 0x050D, 0x0591, 0x0656, 0x0747, 0x084D, 
    0x0952, 0x0A3C, 0x0AEF, 0x0B50, 0x0ABC, 0x093C, 0x07B7, 0x4A3D, 0x49FF, 0x497B, 0x4905, 0x48F1, 0x4965, 0x4A2C, 
    0x4B12, 0x4BE4, 0x4C6D, 0x4C76, 0x4BC3, 0x4A71, 0x48D4, 0x4742, 0x460F, 0x4595, 0x45C9, 0x4656, 0x4725, 0x481D, 
    0x492A, 0x4A35, 0x4B2A, 0x4BF1, 0x4C76, 0x4C53, 0x4B8B, 0x4AA9, 0x17B9, 0x15CB, 0x11B3, 0x0DF5, 0x0D19, 0x0FF8, 
    0x14F1, 0x1AD2, 0x206A, 0x2485, 0x25F4, 0x23AE, 0x1E75, 0x17C0, 0x1107, 0x0BC4, 0x096F, 0x09CE, 0x0B79, 0x0E1B, 
    0x1164, 0x1500, 0x189D, 0x1BE8, 0x1E8F, 0x2040, 0x1F89, 0x1C89, 0x1943, 0xFFF1, 0xFF29, 0xFDBF, 0xFC0B, 0xFA66, 
    0xF928, 0xF8AB, 0xF8F0, 0xF9AB, 0xFABD, 0xFC08, 0xFD6B, 0xFEC8, 0x0000, 0x0144, 0x02BE, 0x044A, 0x05C1, 0x06FC, 
    0x07D5, 0x0826, 0x0772, 0x05B7, 0x0385, 0x016D, 0x0000, 0xFF7E, 0xFF8C, 0xFFD5, 0x0010, 0xFFA5, 0xFE94, 0xFD30, 
    0xFBCC, 0xFABA, 0xFA4C, 0xFA7E, 0xFB06, 0xFBD0, 0xFCC9, 0xFDDC, 0xFEF5, 0x0000, 0x012E, 0x02A0, 0x042D, 0x05AB, 
    0x06F0, 0x07D2, 0x0826, 0x0772, 0x05B7, 0x0385, 0x016D, 0x0000, 0xFF5E, 0xFF37, 0xFF75, 0x1A13, 0x19C8, 0x1948, 
    0x18BC, 0x184F, 0x182A, 0x1877, 0x196F, 0x1AFD, 0x1CDA, 0x1EBF, 0x2065, 0x2185, 0x21D6, 0x2113, 0x1F63, 0x1D24, 
    0x1AB6, 0x1877, 0x16C8, 0x1606, 0x16DC, 0x1920, 0x1BF3, 0x1E77, 0x1FCD, 0x1F2A, 0x1D2D, 0x1B13, 0x3B00, 0x38AA, 
    0x36D8, 0x3582, 0x349D, 0x3419, 0x33E1, 0x33E4, 0x340D, 0x3449, 0x3484, 0x34AC, 0x34FF, 0x35B9, 0x36C4, 0x3807, 
    0x3968, 0x3AC8, 0x3C06, 0x3D01, 0x3D9A, 0x3DCB, 0x3DB1, 0x3D5F, 0x3CE9, 0x3C63, 0x3BDF, 0x3B6D, 0x3B1E, 0xED5D, 
    0xED0F, 0xECFB, 0xED0F, 0xED3A, 0xED72, 0xEDAC, 0xEDE3, 0xEE10, 0xEE2E, 0xEE38, 0xEE2A, 0xEDF7, 0xEDA3, 0xED3E, 
    0xECDC, 0xEC89, 0xEC4D, 0xEC2B, 0xEC1F, 0xEC21, 0xEC30, 0xEC4A, 0xEC6D, 0xEC99, 0xECCB, 0xECFF, 0xED2E, 0xED50, 
    0x66AD, 0x69AA, 0x6C1C, 0x6E0A, 0x6F81, 0x708E, 0x713E, 0x71A0, 0x71C1, 0x71AF, 0x7177, 0x7125, 0x7054, 0x6EB7, 
    0x6C82, 0x69ED, 0x672E, 0x6481, 0x6222, 0x604D, 0x5F3E, 0x5F08, 0x5F7A, 0x6067, 0x61A4, 0x6305, 0x6461, 0x658C, 
    0x665E, 0xF2AC, 0xF575, 0xF832, 0xFABC, 0xFCEF, 0xFEA4, 0xFFB7, 0x0000, 0xFF44, 0xFD90, 0xFB2D, 0xF864, 0xF57F, 
    0xF2C7, 0xF084, 0xEE74, 0xEC30, 0xE9D4, 0xE779, 0xE53A, 0xE32F, 0xE174, 0xE022, 0xDF53, 0xDF20, 0xE140, 0xE61C, 
    0xEBDC, 0xF0A9, 0x06D7, 0x0789, 0x085D, 0x093A, 0x0A05, 0x0AA5, 0x0B00, 0x0B2D, 0x0B51, 0x0B6E, 0x0B84, 0x0B92, 
    0x0B9A, 0x0B9B, 0x0B95, 0x0B89, 0x0B78, 0x0B60, 0x0B44, 0x0B21, 0x0AFA, 0x0ACE, 0x0A7F, 0x09FC, 0x0957, 0x08A4, 
    0x07F8, 0x0764, 0x06FE, 0xFD8C, 0xF9AE, 0xF4F3, 0xF00B, 0xEBA4, 0xE86D, 0xE715, 0xE71A, 0xE77F, 0xE836, 0xE936, 
    0xEA72, 0xEBDE, 0xED70, 0xEF1B, 0xF0D4, 0xF28F, 0xF441, 0xF5DF, 0xF75C, 0xF8AD, 0xF9C7, 0xFAB0, 0xFB77, 0xFC1D, 
    0xFCA3, 0xFD0A, 0xFD53, 0xFD7E, 0xA863, 0xAB12, 0xAE6A, 0xB1E0, 0xB4ED, 0xB706, 0xB7A3, 0xB722, 0xB645, 0xB51B, 
    0xB3AF, 0xB20F, 0xB048, 0xAE67, 0xAC7A, 0xAA8D, 0xA8AE, 0xA6EA, 0xA54E, 0xA3E6, 0xA2C1, 0xA1EB, 0xA1B1, 0xA22F, 
    0xA330, 0xA47D, 0xA5E0, 0xA721, 0xA809, 0x0000, 
};

JointIndex sWolfosWaitingAnimJointIndices[] = {
    { 0x0008, 0x0025, 0x0042 },
    { 0x0003, 0x0004, 0x0003 },
    { 0x005F, 0x007C, 0x0099 },
    { 0x0003, 0x0003, 0x00B6 },
    { 0x0003, 0x0003, 0x00D3 },
    { 0x00F0, 0x010D, 0x012A },
    { 0x0147, 0x0164, 0x0181 },
    { 0x0003, 0x0003, 0x0003 },
    { 0x019E, 0x01BB, 0x01D8 },
    { 0x0003, 0x0003, 0x01F5 },
    { 0x0003, 0x0003, 0x0212 },
    { 0x022F, 0x024C, 0x0269 },
    { 0x0286, 0x02A3, 0x02C0 },
    { 0x02DD, 0x02FA, 0x0317 },
    { 0x0003, 0x0334, 0x0003 },
    { 0x0005, 0x0006, 0x0007 },
    { 0x0351, 0x036E, 0x038B },
    { 0x0003, 0x0003, 0x0003 },
    { 0x0003, 0x0003, 0x0003 },
    { 0x03A8, 0x03C5, 0x03E2 },
    { 0x0003, 0x03FF, 0x0003 },
    { 0x041C, 0x0439, 0x0456 },
};

AnimationHeader gWolfosWaitingAnim = { 
    { 29 }, sWolfosWaitingAnimFrameData,
    sWolfosWaitingAnimJointIndices, 8
};

u8 object_wf_zeroes_Blob_00A4BC[] = {
#include "assets/objects/object_wf/object_wf_zeroes_Blob_00A4BC.bin.inc.c"
};

