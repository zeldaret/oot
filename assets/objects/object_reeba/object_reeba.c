#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_reeba.h"

s16 object_reeba_Anim_0001E4FrameData[] = {
    0x0000, 0x4000, 0xA000, 0xC000, 0x6000, 0x2000, 0xE000, 0x0000, 0x0889, 0x1111, 0x199A, 0x2222, 0x2AAB, 0x3333, 
    0x3BBC, 0x4444, 0x4CCD, 0x5555, 0x5DDE, 0x6666, 0x6EEF, 0x7777, 0x8000, 0x8889, 0x9111, 0x999A, 0xA222, 0xAAAB, 
    0xB333, 0xBBBC, 0xC444, 0xCCCD, 0xD555, 0xDDDE, 0xE666, 0xEEEF, 0xF777, 0xF670, 0xF75E, 0xF9CB, 0xFD2B, 0x00F4, 
    0x049B, 0x0793, 0x0952, 0x0952, 0x0793, 0x049B, 0x00F4, 0xFD2B, 0xF9CB, 0xF75E, 0xF670, 0xF75E, 0xF9CB, 0xFD2B, 
    0x00F4, 0x049B, 0x0793, 0x0952, 0x0952, 0x0793, 0x049B, 0x00F4, 0xFD2B, 0xF9CB, 0xF75E, 0x4000, 0x3D2F, 0x366C, 
    0x2E3B, 0x2721, 0x23A5, 0x252F, 0x2A11, 0x302E, 0x3566, 0x379C, 0x3578, 0x3063, 0x2A61, 0x2576, 0x23A5, 0x2668, 
    0x2C66, 0x336B, 0x3940, 0x3BAF, 0x3940, 0x336B, 0x2C66, 0x2668, 0x23A5, 0x2576, 0x2A61, 0x3063, 0x3578, 0x4000, 
    0x3D2F, 0x366C, 0x2E3B, 0x2721, 0x23A5, 0x252F, 0x2A11, 0x302E, 0x3566, 0x379C, 0x3578, 0x3063, 0x2A61, 0x2576, 
    0x23A5, 0x2668, 0x2C66, 0x336B, 0x3940, 0x3BAF, 0x3940, 0x336B, 0x2C66, 0x2668, 0x23A5, 0x2576, 0x2A61, 0x3063, 
    0x3578, 0x4000, 0x3D2F, 0x366C, 0x2E3B, 0x2721, 0x23A5, 0x252F, 0x2A11, 0x302E, 0x3566, 0x379C, 0x3578, 0x3063, 
    0x2A61, 0x2576, 0x23A5, 0x2668, 0x2C66, 0x336B, 0x3940, 0x3BAF, 0x3940, 0x336B, 0x2C66, 0x2668, 0x23A5, 0x2576, 
    0x2A61, 0x3063, 0x3578, 0x4000, 0x3D2F, 0x366C, 0x2E3B, 0x2721, 0x23A5, 0x252F, 0x2A11, 0x302E, 0x3566, 0x379C, 
    0x3578, 0x3063, 0x2A61, 0x2576, 0x23A5, 0x2668, 0x2C66, 0x336B, 0x3940, 0x3BAF, 0x3940, 0x336B, 0x2C66, 0x2668, 
    0x23A5, 0x2576, 0x2A61, 0x3063, 0x3578, 0x0000, 
};

JointIndex object_reeba_Anim_0001E4JointIndices[] = {
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0001, 0x0000 },
    { 0x0007, 0x0000, 0x0001 },
    { 0x0000, 0x0025, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0002, 0x0003 },
    { 0x0000, 0x0000, 0x0043 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0004, 0x0003 },
    { 0x0000, 0x0000, 0x0061 },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0005, 0x0003 },
    { 0x0000, 0x0000, 0x007F },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0006, 0x0003 },
    { 0x0000, 0x0000, 0x009D },
    { 0x0000, 0x0000, 0x0000 },
    { 0x0000, 0x0000, 0x0000 },
};

AnimationHeader object_reeba_Anim_0001E4 = { 
    { 30 }, object_reeba_Anim_0001E4FrameData,
    object_reeba_Anim_0001E4JointIndices, 7
};

u8 object_reeba_possiblePadding_0001F4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Gfx object_reeba_DL_000200[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(object_reeba_Tex_000DD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_reebaVtx_0002F0, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(3, 2, 6, 0, 5, 3, 7, 0),
    gsSP2Triangles(1, 8, 9, 0, 1, 9, 2, 0),
    gsSP2Triangles(10, 2, 9, 0, 11, 12, 5, 0),
    gsSP2Triangles(13, 4, 5, 0, 13, 5, 12, 0),
    gsSP2Triangles(14, 13, 12, 0, 14, 12, 15, 0),
    gsSP2Triangles(8, 16, 17, 0, 8, 17, 9, 0),
    gsSP2Triangles(9, 17, 18, 0, 15, 12, 19, 0),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_0002D0[] = {
    gsSPDisplayList(object_reeba_DL_000200),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_0002E0[] = {
    gsSPDisplayList(object_reeba_DL_0002D0),
    gsSPEndDisplayList(),
};

Vtx object_reebaVtx_0002F0[] = {
#include "assets/objects/object_reeba/object_reebaVtx_0002F0.vtx.inc"
};

Gfx object_reeba_DL_000430[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(object_reeba_Tex_000DD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_reebaVtx_000590, 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(2, 3, 4, 0, 1, 0, 5, 0),
    gsSP2Triangles(6, 3, 1, 0, 7, 0, 8, 0),
    gsSP2Triangles(9, 0, 2, 0, 9, 8, 0, 0),
    gsSP2Triangles(10, 11, 12, 0, 4, 3, 13, 0),
    gsSP2Triangles(14, 8, 15, 0, 16, 15, 8, 0),
    gsSP2Triangles(16, 8, 9, 0, 15, 17, 18, 0),
    gsSP2Triangles(17, 15, 16, 0, 4, 13, 19, 0),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(object_reeba_Tex_0015D8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_reebaVtx_000590[20], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 4, 0),
    gsSP2Triangles(1, 3, 2, 0, 5, 3, 1, 0),
    gsSP2Triangles(4, 3, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(5, 1, 7, 0, 8, 2, 4, 0),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000570[] = {
    gsSPDisplayList(object_reeba_DL_000430),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000580[] = {
    gsSPDisplayList(object_reeba_DL_000570),
    gsSPEndDisplayList(),
};

Vtx object_reebaVtx_000590[] = {
#include "assets/objects/object_reeba/object_reebaVtx_000590.vtx.inc"
};

Gfx object_reeba_DL_000760[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(object_reeba_Tex_000CD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_reebaVtx_000818, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_0007F8[] = {
    gsSPDisplayList(object_reeba_DL_000760),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000808[] = {
    gsSPDisplayList(object_reeba_DL_0007F8),
    gsSPEndDisplayList(),
};

Vtx object_reebaVtx_000818[] = {
#include "assets/objects/object_reeba/object_reebaVtx_000818.vtx.inc"
};

Gfx object_reeba_DL_0008B8[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(object_reeba_Tex_000CD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_reebaVtx_000970, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000950[] = {
    gsSPDisplayList(object_reeba_DL_0008B8),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000960[] = {
    gsSPDisplayList(object_reeba_DL_000950),
    gsSPEndDisplayList(),
};

Vtx object_reebaVtx_000970[] = {
#include "assets/objects/object_reeba/object_reebaVtx_000970.vtx.inc"
};

Gfx object_reeba_DL_000A10[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(object_reeba_Tex_000CD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_reebaVtx_000AD0, 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(9, 8, 7, 0, 9, 7, 10, 0),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000AB0[] = {
    gsSPDisplayList(object_reeba_DL_000A10),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000AC0[] = {
    gsSPDisplayList(object_reeba_DL_000AB0),
    gsSPEndDisplayList(),
};

Vtx object_reebaVtx_000AD0[] = {
#include "assets/objects/object_reeba/object_reebaVtx_000AD0.vtx.inc"
};

Gfx object_reeba_DL_000B80[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA | ALPHA_CVG_SEL |
                      G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_INTER | CVG_X_ALPHA |
                      ALPHA_CVG_SEL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, COMBINED, 0, SHADE, 0, TEXEL1, 0,
                       PRIM_LOD_FRAC, COMBINED),
    gsDPLoadTextureBlock(object_reeba_Tex_000CD8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPSetGeometryMode(G_SHADING_SMOOTH),
    gsSPVertex(object_reebaVtx_000C38, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 8, 7, 9, 0),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000C18[] = {
    gsSPDisplayList(object_reeba_DL_000B80),
    gsSPEndDisplayList(),
};

Gfx object_reeba_DL_000C28[] = {
    gsSPDisplayList(object_reeba_DL_000C18),
    gsSPEndDisplayList(),
};

Vtx object_reebaVtx_000C38[] = {
#include "assets/objects/object_reeba/object_reebaVtx_000C38.vtx.inc"
};

u64 object_reeba_Tex_000CD8[] = {
#include "assets/objects/object_reeba/tex_00000CD8.rgba16.inc.c"
};

u64 object_reeba_Tex_000DD8[] = {
#include "assets/objects/object_reeba/tex_00000DD8.rgba16.inc.c"
};

u64 object_reeba_Tex_0015D8[] = {
#include "assets/objects/object_reeba/tex_000015D8.rgba16.inc.c"
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001DD8 = { 
    { 0, 0, 0 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001DE4 = { 
    { 0, 0, 0 }, 0x02, LIMB_DONE,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001DF0 = { 
    { 430, 0, 0 }, 0x03, 0x10,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001DFC = { 
    { 0, 0, 0 }, LIMB_DONE, 0x04,
    object_reeba_DL_000580
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E08 = { 
    { 206, 57, 56 }, 0x05, 0x07,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E14 = { 
    { 0, 0, 0 }, 0x06, LIMB_DONE,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E20 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_reeba_DL_000808
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E2C = { 
    { 206, 57, -56 }, 0x08, 0x0A,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E38 = { 
    { 0, 0, 0 }, 0x09, LIMB_DONE,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E44 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_reeba_DL_000960
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E50 = { 
    { 206, -57, -56 }, 0x0B, 0x0D,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E5C = { 
    { 0, 0, 0 }, 0x0C, LIMB_DONE,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E68 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_reeba_DL_000AC0
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E74 = { 
    { 206, -57, 56 }, 0x0E, LIMB_DONE,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E80 = { 
    { 0, 0, 0 }, 0x0F, LIMB_DONE,
    NULL
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E8C = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_reeba_DL_000C28
};

StandardLimb object_reeba_Skel_001EE8LimbsLimb_001E98 = { 
    { 0, 0, 0 }, LIMB_DONE, LIMB_DONE,
    object_reeba_DL_0002E0
};

void* object_reeba_Skel_001EE8Limbs[] = {
    &object_reeba_Skel_001EE8LimbsLimb_001DD8,
    &object_reeba_Skel_001EE8LimbsLimb_001DE4,
    &object_reeba_Skel_001EE8LimbsLimb_001DF0,
    &object_reeba_Skel_001EE8LimbsLimb_001DFC,
    &object_reeba_Skel_001EE8LimbsLimb_001E08,
    &object_reeba_Skel_001EE8LimbsLimb_001E14,
    &object_reeba_Skel_001EE8LimbsLimb_001E20,
    &object_reeba_Skel_001EE8LimbsLimb_001E2C,
    &object_reeba_Skel_001EE8LimbsLimb_001E38,
    &object_reeba_Skel_001EE8LimbsLimb_001E44,
    &object_reeba_Skel_001EE8LimbsLimb_001E50,
    &object_reeba_Skel_001EE8LimbsLimb_001E5C,
    &object_reeba_Skel_001EE8LimbsLimb_001E68,
    &object_reeba_Skel_001EE8LimbsLimb_001E74,
    &object_reeba_Skel_001EE8LimbsLimb_001E80,
    &object_reeba_Skel_001EE8LimbsLimb_001E8C,
    &object_reeba_Skel_001EE8LimbsLimb_001E98,
};

SkeletonHeader object_reeba_Skel_001EE8 = { 
    object_reeba_Skel_001EE8Limbs, ARRAY_COUNT(object_reeba_Skel_001EE8Limbs)
};

