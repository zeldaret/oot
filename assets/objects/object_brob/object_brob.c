#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_brob.h"

s16 object_brob_Anim_000290FrameData[] = {
    0x0000, 0x4000, 0x3F33, 0x3E94, 0x4017, 0x416C, 0x4000, 0x3E94, 0x4000, 0x416C, 0x40AF, 0x3F51, 0x3E94, 0x3F41, 
    0x408F, 0x416C, 0x40C8, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 
    0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0x4000, 0x0000, 0x0655, 0x0E39, 0x0E55, 0x0C72, 0x0CAB, 0x0AAB, 0x0072, 
    0xF71C, 0xF5CB, 0xF73E, 0xF8E4, 0xF9E4, 0xFB17, 0xFC72, 0xFE94, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xF81C, 0xF1C7, 
    0xFE55, 0x0C72, 0x0D55, 0x0AAB, 0x0A72, 0x08E4, 0x039F, 0xFD2B, 0xF8E4, 0xF893, 0xFA6E, 0xFC72, 0xFE94, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 
    0x0000, 0x0000, 0x0000, 0x0655, 0x0E39, 0x0E55, 0x0C72, 0x0CAB, 0x0AAB, 0x0072, 0xF71C, 0xF5CB, 0xF73E, 0xF8E4, 
    0xF9E4, 0xFB17, 0xFC72, 0xFE57, 0x0000, 0x00E5, 0x019D, 0x020F, 0x0222, 0x01CB, 0x0128, 0x005E, 0xFF94, 0xFEEE, 
    0xFE94, 0xFF02, 0x0004, 0x00B6, 0x00A2, 0x003D, 0x0000, 0x0000, 0xF81C, 0xF1C7, 0xFE55, 0x0C72, 0x0D55, 0x0AAB, 
    0x0A72, 0x08E4, 0x039F, 0xFD2B, 0xF8E4, 0xF893, 0xFA6E, 0xFC72, 0xFE57, 0x0000, 0x00E5, 0x019D, 0x020F, 0x0222, 
    0x01CB, 0x0128, 0x005E, 0xFF94, 0xFEEE, 0xFE94, 0xFF02, 0x0004, 0x00B6, 0x00A2, 0x003D, 0x0000, 0x0000, 0x0328, 
    0x071C, 0x073F, 0x0666, 0x06AB, 0x05B0, 0x001B, 0xFB06, 0xFA73, 0xFB6E, 0xFC72, 0xFCFC, 0xFD90, 0xFE39, 0xFF20, 
    0x0000, 0x00BA, 0x0177, 0x0201, 0x0222, 0x01CB, 0x0128, 0x005E, 0xFF94, 0xFEEE, 0xFE94, 0xFF02, 0x0004, 0x00B6, 
    0x00A2, 0x003D, 0x0000, 0x0000, 0xFC0B, 0xF8E4, 0xFF3F, 0x0666, 0x06EF, 0x05B0, 0x05B5, 0x04FA, 0x0232, 0xFEBF, 
    0xFC72, 0xFC3F, 0xFD32, 0xFE39, 0xFF20, 0x0000, 0x00BA, 0x0177, 0x0201, 0x0222, 0x01CB, 0x0128, 0x005E, 0xFF94, 
    0xFEEE, 0xFE94, 0xFF02, 0x0004, 0x00B6, 0x00A2, 0x003D, 0x0000, 0x0000, 0x0328, 0x071C, 0x073F, 0x0666, 0x06AB, 
    0x05B0, 0x001B, 0xFB06, 0xFA73, 0xFB6E, 0xFC72, 0xFCFC, 0xFD90, 0xFE39, 0xFF20, 0x0000, 0x00BA, 0x0177, 0x0201, 
    0x0222, 0x01CB, 0x0128, 0x005E, 0xFF94, 0xFEEE, 0xFE94, 0xFF02, 0x0004, 0x00B6, 0x00A2, 0x003D, 0x0000, 0x0000, 
    0xFC0B, 0xF8E4, 0xFF3F, 0x0666, 0x06EF, 0x05B0, 0x05B5, 0x04FA, 0x0232, 0xFEBF, 0xFC72, 0xFC3F, 0xFD32, 0xFE39, 
    0xFF20, 0x0000, 0x00BA, 0x0177, 0x0201, 0x0222, 0x01CB, 0x0128, 0x005E, 0xFF94, 0xFEEE, 0xFE94, 0xFF02, 0x0004, 
    0x00B6, 0x00A2, 0x003D, 0x0000, 
};

JointIndex object_brob_Anim_000290JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0001 },
    { 0x0000, 0x0022, 0x0043 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0064, 0x0085 },
    { 0x0000, 0x00A6, 0x00C7 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x00E8, 0x0109 },
};

AnimationHeader object_brob_Anim_000290 = { 
    { 33 }, object_brob_Anim_000290FrameData,
    object_brob_Anim_000290JointIndices, 1
};

Vtx object_brobVtx_0002A0[] = {
#include "assets/objects/object_brob/object_brobVtx_0002A0.vtx.inc"
};

Gfx object_brob_DL_0007E0[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(object_brob_Tex_000D48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_brobVtx_0002A0[68], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx object_brob_DL_000898[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_brobVtx_0002A0[52], 4, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(object_brob_Tex_000D48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_brobVtx_0002A0[56], 12, 4),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x000007FF),
    gsSP1Triangle(0, 4, 5, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00000000),
    gsSP1Triangle(0, 6, 1, 0),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x000007FF),
    gsSP1Triangle(3, 7, 8, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x00000000),
    gsSP1Triangle(3, 9, 2, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x000007FF),
    gsSP1Triangle(1, 10, 11, 0),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x00000000),
    gsSP1Triangle(1, 12, 3, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x000007FF),
    gsSP1Triangle(2, 13, 14, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00000000),
    gsSP1Triangle(2, 15, 0, 0),
    gsSPEndDisplayList(),
};

Gfx object_brob_DL_0009D0[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_brobVtx_0002A0[36], 4, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(object_brob_Tex_000D48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_brobVtx_0002A0[40], 12, 4),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00000000),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x000007FF),
    gsSP2Triangles(4, 1, 3, 0, 5, 3, 6, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00000000),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x000007FF),
    gsSP2Triangles(7, 0, 1, 0, 8, 1, 9, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x00000000),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x000007FF),
    gsSP2Triangles(10, 2, 0, 0, 11, 0, 12, 0),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x00000000),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x000007FF),
    gsSP2Triangles(13, 3, 2, 0, 14, 2, 15, 0),
    gsSPEndDisplayList(),
};

Gfx object_brob_DL_000AE8[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(&object_brobVtx_0002A0[20], 4, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(object_brob_Tex_000D48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_brobVtx_0002A0[24], 12, 4),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00000000),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x000007FF),
    gsSP2Triangles(4, 1, 3, 0, 5, 3, 6, 0),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x00000000),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x000007FF),
    gsSP2Triangles(7, 3, 2, 0, 8, 2, 9, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x00000000),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x000007FF),
    gsSP2Triangles(10, 2, 0, 0, 11, 0, 12, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00000000),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x000007FF),
    gsSP2Triangles(13, 0, 1, 0, 14, 1, 15, 0),
    gsSPEndDisplayList(),
};

Gfx object_brob_DL_000C00[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_brobVtx_0002A0, 4, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(object_brob_Tex_000D48, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_brobVtx_0002A0[4], 16, 4),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x022207FF),
    gsSP1Triangle(2, 4, 5, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x02220000),
    gsSP1Triangle(2, 6, 0, 0),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x022207FF),
    gsSP1Triangle(3, 7, 8, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x02220000),
    gsSP1Triangle(3, 9, 2, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x022207FF),
    gsSP1Triangle(1, 10, 11, 0),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x02220000),
    gsSP1Triangle(1, 12, 3, 0),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x022207FF),
    gsSP1Triangle(0, 13, 14, 0),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x02220000),
    gsSP1Triangle(0, 15, 1, 0),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x00FC, 0x00FC),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSPEndDisplayList(),
};

u64 object_brob_Tex_000D48[] = {
#include "assets/objects/object_brob/tex_00000D48.rgba16.inc.c"
};

StandardLimb object_brob_Limb_001548 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_brob_Limb_001554 = { 
    { 0, -12000, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb object_brob_Limb_001560 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    object_brob_DL_0007E0
};

StandardLimb object_brob_Limb_00156C = { 
    { 6000, 0, 0 }, 0x04, LIMB_DONE,
    NULL
};

StandardLimb object_brob_Limb_001578 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x05,
    object_brob_DL_000898
};

StandardLimb object_brob_Limb_001584 = { 
    { 6000, 0, 0 }, 0x06, LIMB_DONE,
    object_brob_DL_0009D0
};

StandardLimb object_brob_Limb_001590 = { 
    { 6000, 0, 0 }, 0x07, LIMB_DONE,
    NULL
};

StandardLimb object_brob_Limb_00159C = { 
    { 0, 0, 0 }, LIMB_DONE, 0x08,
    object_brob_DL_000AE8
};

StandardLimb object_brob_Limb_0015A8 = { 
    { 3200, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_brob_DL_000C00
};

void* object_brob_Skel_0015D8Limbs[] = {
    &object_brob_Limb_001548,
    &object_brob_Limb_001554,
    &object_brob_Limb_001560,
    &object_brob_Limb_00156C,
    &object_brob_Limb_001578,
    &object_brob_Limb_001584,
    &object_brob_Limb_001590,
    &object_brob_Limb_00159C,
    &object_brob_Limb_0015A8,
};

FlexSkeletonHeader object_brob_Skel_0015D8 = { 
    { object_brob_Skel_0015D8Limbs, ARRAY_COUNT(object_brob_Skel_0015D8Limbs) }, 5
};

u8 object_brob_possiblePadding_0015E4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_brob_Anim_001678FrameData[] = {
    0x0000, 0x4000, 0x416C, 0x4000, 0x3E94, 0x0000, 0xF8E4, 0x0000, 0x071C, 0x0000, 0xF8E4, 0x0000, 0x071C, 0x0000, 
    0x0E39, 0x0000, 0xF1C7, 0x0000, 0x0E39, 0x0000, 0xF1C7, 0x0000, 0xF8E4, 0x0000, 0x071C, 0x0000, 0xF8E4, 0x0000, 
    0x071C, 0x0000, 0xF555, 0x0000, 0x0AAB, 0x0000, 0xF555, 0x0000, 0x0AAB, 0x0000, 
};

JointIndex object_brob_Anim_001678JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0001 },
    { 0x0000, 0x0005, 0x0009 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x000D, 0x0011 },
    { 0x0000, 0x0015, 0x0019 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x001D, 0x0021 },
};

AnimationHeader object_brob_Anim_001678 = { 
    { 4 }, object_brob_Anim_001678FrameData,
    object_brob_Anim_001678JointIndices, 1
};

u8 object_brob_possiblePadding_001688[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_brob_Anim_001750FrameData[] = {
    0x0000, 0x4000, 0x0000, 0x012F, 0x0329, 0x038E, 0x0199, 0xFE8D, 0xFB1C, 0xF7F8, 0xF5D0, 0xF555, 0xF753, 0xFB64, 
    0x0072, 0x0566, 0x092B, 0x0AAB, 0x0000, 0x01B6, 0x0501, 0x071C, 0x06FB, 0x05AA, 0x038E, 0xFFBD, 0xFB21, 0xF8E4, 
    0xFADD, 0xFF36, 0x038E, 0x07E7, 0x0C3F, 0x0E39, 0x0000, 0x03F3, 0x0B10, 0x0E39, 0x0916, 0x0000, 0xF8E4, 0xF57B, 
    0xF40C, 0xF555, 0xFBEA, 0x0537, 0x0A43, 0x0605, 0xFD86, 0xF8E4, 0x0000, 0xFE6B, 0xFB42, 0xF8E4, 0xF7C8, 0xF777, 
    0xF8E4, 0xFD94, 0x0401, 0x0889, 0x0945, 0x081D, 0x071C, 0x0701, 0x070F, 0x071C, 
};

JointIndex object_brob_Anim_001750JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0001 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0012 },
    { 0x0000, 0x0000, 0x0022 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0032 },
};

AnimationHeader object_brob_Anim_001750 = { 
    { 16 }, object_brob_Anim_001750FrameData,
    object_brob_Anim_001750JointIndices, 2
};

s16 object_brob_Anim_001958FrameData[] = {
    0x0000, 0x4000, 0x3FD6, 0x3F74, 0x3F03, 0x3EAA, 0x3E94, 0x3EBA, 0x3EF7, 0x3F46, 0x3FA0, 0x4000, 0x4060, 0x40BA, 
    0x4109, 0x4146, 0x416C, 0x4156, 0x40FD, 0x408C, 0x402A, 0x0555, 0x04F3, 0x03F8, 0x02A5, 0x013D, 0x0000, 0xFEC3, 
    0xFD5B, 0xFC08, 0xFB0D, 0xFAAB, 0xFB0D, 0xFC08, 0xFD5B, 0xFEC3, 0x0000, 0x013D, 0x02A5, 0x03F8, 0x04F3, 0x0AAB, 
    0x09E6, 0x07F0, 0x054A, 0x027A, 0x0000, 0xFD86, 0xFAB6, 0xF810, 0xF61A, 0xF555, 0xF61A, 0xF810, 0xFAB6, 0xFD86, 
    0x0000, 0x027A, 0x054A, 0x07F0, 0x09E6, 0x0000, 0xFF98, 0xFEA2, 0xFD86, 0xFCAA, 0xFC72, 0xFCD0, 0xFD69, 0xFE2E, 
    0xFF10, 0x0000, 0x00F0, 0x01D2, 0x0297, 0x0330, 0x038E, 0x0356, 0x027A, 0x015E, 0x0068, 0x071C, 0x07E3, 0x090F, 
    0x08E4, 0x072D, 0x04FE, 0x0281, 0xFFE2, 0xFD4B, 0xFAE8, 0xF8E4, 0xF752, 0xF68B, 0xF71C, 0xF90B, 0xFBBC, 0xFECD, 
    0x01DC, 0x0485, 0x0666, 0x0E39, 0x115B, 0x12E9, 0x11C7, 0x0E5A, 0x09FC, 0x0502, 0xFFC4, 0xFA97, 0xF5D0, 0xF1C7, 
    0xEEA5, 0xED17, 0xEE39, 0xF1A6, 0xF604, 0xFAFE, 0x003C, 0x0569, 0x0A30, 0xFC72, 0xFC25, 0xFB7A, 0xFAC8, 0xFA65, 
    0xFAAB, 0xFBE0, 0xFDCC, 0x0000, 0x0210, 0x038E, 0x0489, 0x054A, 0x05BB, 0x05C6, 0x0555, 0x03F4, 0x01B1, 0xFF3B, 
    0xFD41, 0xF8E4, 0xF6ED, 0xF56B, 0xF489, 0xF474, 0xF555, 0xF7C0, 0xFB97, 0x0000, 0x0420, 0x071C, 0x0913, 0x0A95, 
    0x0B77, 0x0B8C, 0x0AAB, 0x0840, 0x0469, 0x0000, 0xFBE0, 0x0000, 0x0068, 0x015E, 0x027A, 0x0356, 0x038E, 0x0330, 
    0x0297, 0x01D2, 0x00F0, 0x0000, 0xFF10, 0xFE2E, 0xFD69, 0xFCD0, 0xFC72, 0xFCAA, 0xFD86, 0xFEA2, 0xFF98, 0x038E, 
    0x042D, 0x0530, 0x0555, 0x0473, 0x0348, 0x01EC, 0x0077, 0xFF01, 0xFDA2, 0xFC72, 0xFB5A, 0xFA93, 0xFAAB, 0xFBAE, 
    0xFD28, 0xFEDD, 0x0094, 0x0215, 0x0326, 0x071C, 0x094C, 0x0ADA, 0x0AAB, 0x08E6, 0x0690, 0x03D8, 0x00EE, 0xFE02, 
    0xFB44, 0xF8E4, 0xF6B4, 0xF526, 0xF555, 0xF71A, 0xF970, 0xFC28, 0xFF12, 0x01FE, 0x04BC, 0x0000, 
};

JointIndex object_brob_Anim_001958JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0001 },
    { 0x0000, 0x0015, 0x0029 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x003D, 0x0051, 0x0065 },
    { 0x0000, 0x0079, 0x008D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x00A1, 0x00B5, 0x00C9 },
};

AnimationHeader object_brob_Anim_001958 = { 
    { 20 }, object_brob_Anim_001958FrameData,
    object_brob_Anim_001958JointIndices, 1
};

u8 object_brob_possiblePadding_001968[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData object_brob_Col_001A70CamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType object_brob_Col_001A70SurfaceType[] = {
    { 0x00000000, 0x000007C3 },
};

CollisionPoly object_brob_Col_001A70Polygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0002, 0x0001, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0002, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0006, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0006, 0x0003, 0x0007, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0005, 0x0004, 0x0006, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0005, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0000, 0x0006, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0000, 0x0007, 0x0002, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFB50},
};

Vec3s object_brob_Col_001A70Vertices[] = {
    {  -6000,      0,   6000 },
    {   6000,      0,   6000 },
    {   6000,  12000,   6000 },
    {  -6000,  12000,   6000 },
    {   6000,      0,  -6000 },
    {   6000,  12000,  -6000 },
    {  -6000,      0,  -6000 },
    {  -6000,  12000,  -6000 },
};

CollisionHeader object_brob_Col_001A70 = { 
    { -600, 0, -600 },
    { 600, 1200, 600 },
    8, object_brob_Col_001A70Vertices,
    12, object_brob_Col_001A70Polygons,
    object_brob_Col_001A70SurfaceType,
    object_brob_Col_001A70CamDataList,
    0, NULL
};

