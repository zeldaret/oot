#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_sb.h"
#include "assets/misc/link_animetion/link_animetion.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

s16 object_sb_Anim_00004CFrameData[] = {
    0x0000, 0x4000, 0x0000, 0xFF4A, 0xFE94, 0x0000, 0x638E, 0x71C7, 0x8000, 0x8000, 
};

JointIndex object_sb_Anim_00004CJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0006 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_sb_Anim_00004C = { 
    { 4 }, object_sb_Anim_00004CFrameData,
    object_sb_Anim_00004CJointIndices, 2
};

u8 object_sb_possiblePadding_00005C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 object_sb_Anim_0000B4FrameData[] = {
    0x0000, 0x4000, 0x1BB5, 0x10D6, 0xFCA6, 0xF1C7, 0xF8E4, 0x0000, 0x8000, 0x7D0B, 0x75FD, 0x6D91, 0x6684, 0x638E, 
    
};

JointIndex object_sb_Anim_0000B4JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0008 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_sb_Anim_0000B4 = { 
    { 6 }, object_sb_Anim_0000B4FrameData,
    object_sb_Anim_0000B4JointIndices, 2
};

u8 object_sb_possiblePadding_0000C4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_sb_Anim_000124FrameData[] = {
    0x0000, 0x4000, 0x0000, 0x1555, 0x193E, 0x1B1C, 0x1BAF, 0x1BB5, 0x638E, 0x71C7, 0x8000, 0x8000, 0x8000, 0x8000, 
    
};

JointIndex object_sb_Anim_000124JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0008 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_sb_Anim_000124 = { 
    { 6 }, object_sb_Anim_000124FrameData,
    object_sb_Anim_000124JointIndices, 2
};

u8 object_sb_possiblePadding_000134[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

s16 object_sb_Anim_000194FrameData[] = {
    0x0000, 0x4000, 0x0000, 0x005E, 0x010E, 0x016C, 0x00B6, 0x0000, 0x8000, 0x7A02, 0x6DB2, 0x638E, 0x671C, 0x638E, 
    
};

JointIndex object_sb_Anim_000194JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0008 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_sb_Anim_000194 = { 
    { 6 }, object_sb_Anim_000194FrameData,
    object_sb_Anim_000194JointIndices, 2
};

u8 object_sb_Blob_0001A4[] = {
#include "assets/objects/object_sb/object_sb_Blob_0001A4.bin.inc.c"
};

Vtx object_sbVtx_000640[] = {
#include "assets/objects/object_sb/object_sbVtx_000640.vtx.inc"
};

u8 object_sb_Blob_000840[] = {
#include "assets/objects/object_sb/object_sb_Blob_000840.bin.inc.c"
};

Vtx object_sbVtx_000C00[] = {
#include "assets/objects/object_sb/object_sbVtx_000C00.vtx.inc"
};

Gfx object_sb_DL_000D80[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(object_sb_Tex_002AF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(object_sbVtx_000C00, 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 2, 3, 0, 2, 5, 0, 0),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x005C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsSP1Triangle(8, 10, 6, 0),
    gsSP2Triangles(11, 12, 13, 0, 13, 14, 15, 0),
    gsSP1Triangle(13, 15, 11, 0),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x001C),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSPEndDisplayList(),
};

Gfx object_sb_DL_000E70[] = {
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPVertex(object_sbVtx_000640, 5, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(object_sb_Tex_002AF0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_sbVtx_000640[5], 1, 5),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00FD0000),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x03020000),
    gsSP1Triangle(1, 0, 5, 0),
    gsSPVertex(&object_sbVtx_000640[6], 26, 5),
    gsSP1Triangle(5, 6, 1, 0),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x005C, 0x001C),
    gsSPModifyVertex(0, G_MWO_POINT_ST, 0x00FF0000),
    gsSP1Triangle(7, 8, 0, 0),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x01FBFFBB),
    gsSP1Triangle(0, 2, 9, 0),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x01FBFFBB),
    gsSPModifyVertex(1, G_MWO_POINT_ST, 0x00FF0000),
    gsSP2Triangles(10, 3, 1, 0, 1, 11, 12, 0),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x001C),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPModifyVertex(2, G_MWO_POINT_ST, 0x01050000),
    gsSPModifyVertex(4, G_MWO_POINT_ST, 0x0303FFD2),
    gsSP1Triangle(2, 4, 13, 0),
    gsSP1Triangle(14, 15, 2, 0),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPModifyVertex(3, G_MWO_POINT_ST, 0x00FCFFFF),
    gsSP1Triangle(3, 16, 17, 0),
    gsSPModifyVertex(4, G_MWO_POINT_ST, 0x02FAFFD1),
    gsSP1Triangle(18, 4, 3, 0),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSP1Triangle(19, 20, 21, 0),
    gsSP1Triangle(22, 23, 24, 0),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x005C, 0x001C),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSP1Triangle(25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPEndDisplayList(),
};

u64 object_sb_Tex_001020[] = {
#include "assets/objects/object_sb/tex_00001020.rgba16.inc.c"
};

u64 object_sb_Tex_001820[] = {
#include "assets/objects/object_sb/tex_00001820.rgba16.inc.c"
};

u64 object_sb_Tex_001920[] = {
#include "assets/objects/object_sb/tex_00001920.rgba16.inc.c"
};

u64 object_sb_Tex_0019A0[] = {
#include "assets/objects/object_sb/tex_000019A0.rgba16.inc.c"
};

u64 object_sb_Tex_001A20[] = {
#include "assets/objects/object_sb/tex_00001A20.rgba16.inc.c"
};

Vtx object_sbVtx_001AA0[] = {
#include "assets/objects/object_sb/object_sbVtx_001AA0.vtx.inc"
};

Gfx object_sb_DL_0025B0[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_sb_Tex_0019A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsDPSetEnvColor(0, 0, 0, 128),
    gsSPVertex(object_sbVtx_001AA0, 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 0, 7, 1, 0),
    gsSP2Triangles(8, 9, 6, 0, 6, 10, 4, 0),
    gsSP2Triangles(6, 1, 8, 0, 7, 8, 1, 0),
    gsSP2Triangles(9, 11, 6, 0, 11, 10, 6, 0),
    gsSP2Triangles(5, 3, 6, 0, 3, 1, 6, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_sb_Tex_001A20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_sbVtx_001AA0[12], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 6, 20, 7, 0),
    gsSP2Triangles(20, 21, 7, 0, 20, 6, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_sbVtx_001AA0[43], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_sb_Tex_001920, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_sbVtx_001AA0[52], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0x1388, 0x1388, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_sb_Tex_001020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(gUnknownCircle3Tex, 0x01F0, 1, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                          | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, 1, COMBINED, TEXEL0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_sbVtx_001AA0[68], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_sbVtx_001AA0[71], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP1Triangle(11, 12, 13, 0),
    gsSPEndDisplayList(),
};

Gfx object_sb_DL_002858[] = {
    gsDPPipeSync(),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_sb_Tex_001820, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_sbVtx_001AA0[85], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 6, 8, 0, 1, 13, 2, 0),
    gsSP2Triangles(14, 15, 16, 0, 11, 17, 9, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 23, 0),
    gsSP2Triangles(24, 18, 20, 0, 25, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_sbVtx_001AA0[117], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 10, 7, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_sb_Tex_0019A0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_sbVtx_001AA0[135], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(1, 4, 3, 0, 0, 5, 6, 0),
    gsSP2Triangles(2, 7, 0, 0, 1, 8, 4, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 8, 1, 0),
    gsSP2Triangles(0, 7, 9, 0, 0, 10, 5, 0),
    gsSP1Triangle(10, 0, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_sb_Tex_001920, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_sbVtx_001AA0[146], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsSPTexture(0x1388, 0x1388, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_sb_Tex_001020, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(gUnknownCircle3Tex, 0x01F0, 1, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                          | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, 1, COMBINED, TEXEL0, COMBINED, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPSetGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_sbVtx_001AA0[162], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSPVertex(&object_sbVtx_001AA0[165], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSPEndDisplayList(),
};

u64 object_sb_Tex_002AF0[] = {
#include "assets/objects/object_sb/tex_00002AF0.rgba16.inc.c"
};

StandardLimb object_sb_Limb_002B70 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_sb_Limb_002B7C = { 
    { 0, 2000, 4000 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb object_sb_Limb_002B88 = { 
    { 0, 0, 0 }, 0x03, LIMB_DONE,
    NULL
};

StandardLimb object_sb_Limb_002B94 = { 
    { 0, 0, 0 }, LIMB_DONE, 0x04,
    object_sb_DL_0025B0
};

StandardLimb object_sb_Limb_002BA0 = { 
    { 8000, 0, 0 }, 0x05, 0x07,
    NULL
};

StandardLimb object_sb_Limb_002BAC = { 
    { 0, 0, 0 }, LIMB_DONE, 0x06,
    object_sb_DL_002858
};

StandardLimb object_sb_Limb_002BB8 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_sb_DL_000E70
};

StandardLimb object_sb_Limb_002BC4 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_sb_DL_000D80
};

void* object_sb_Skel_002BF0Limbs[] = {
    &object_sb_Limb_002B70,
    &object_sb_Limb_002B7C,
    &object_sb_Limb_002B88,
    &object_sb_Limb_002B94,
    &object_sb_Limb_002BA0,
    &object_sb_Limb_002BAC,
    &object_sb_Limb_002BB8,
    &object_sb_Limb_002BC4,
};

FlexSkeletonHeader object_sb_Skel_002BF0 = { 
    { object_sb_Skel_002BF0Limbs, ARRAY_COUNT(object_sb_Skel_002BF0Limbs) }, 4
};

u8 object_sb_possiblePadding_002BFC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

s16 object_sb_Anim_002C8CFrameData[] = {
    0x0000, 0x4000, 0x0000, 0xFFF6, 0xFFDA, 0xFFB1, 0xFF80, 0xFF4A, 0xFF14, 0xFEE3, 0xFEBA, 0xFE9E, 0xFE94, 0xFE9E, 
    0xFEBA, 0xFEE3, 0xFF14, 0xFF4A, 0xFF80, 0xFFB1, 0xFFDA, 0xFFF6, 0x638E, 0x63C1, 0x6443, 0x64F4, 0x65B6, 0x6668, 
    0x66EA, 0x671C, 0x670D, 0x66E2, 0x66A1, 0x664F, 0x65F0, 0x658A, 0x6521, 0x64BB, 0x645C, 0x6409, 0x63C8, 0x639E, 
    
};

JointIndex object_sb_Anim_002C8CJointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0000, 0x0000, 0x0002 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0016 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_sb_Anim_002C8C = { 
    { 20 }, object_sb_Anim_002C8CFrameData,
    object_sb_Anim_002C8CJointIndices, 2
};

