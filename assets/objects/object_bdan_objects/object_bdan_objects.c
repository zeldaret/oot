#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bdan_objects.h"

u64 gJabuObjects1TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_1_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_00140[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00000140.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_000540[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_000540.vtx.inc"
};

Gfx gJabuDoorSection1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_00140, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects1TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_000540, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_000658[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjects2TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_2_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_007A0[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_000007A0.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_000BA0[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_000BA0.vtx.inc"
};

Gfx gJabuDoorSection2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_007A0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects2TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_000BA0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_000CB8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjects3TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_3_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_00E00[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00000E00.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_001200[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_001200.vtx.inc"
};

Gfx gJabuDoorSection3DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_00E00, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects3TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_001200, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_001318[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjects4TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_4_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_01460[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00001460.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_001860[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_001860.vtx.inc"
};

Gfx gJabuDoorSection4DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_01460, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects4TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_001860, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 2, 3, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_001978[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjects5TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_5_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_01AC0[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00001AC0.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_001EC0[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_001EC0.vtx.inc"
};

Gfx gJabuDoorSection5DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_01AC0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects5TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_001EC0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 2, 3, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_001FD8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjects6TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_6_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_02120[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00002120.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_002520[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_002520.vtx.inc"
};

Gfx gJabuDoorSection6DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_02120, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects6TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_002520, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_002638[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjects7TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_7_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_02780[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00002780.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_002B80[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_002B80.vtx.inc"
};

Gfx gJabuDoorSection7DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_02780, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects7TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_002B80, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 2, 3, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_002C98[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjects8TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_8_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_02DE0[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00002DE0.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_0031E0[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_0031E0.vtx.inc"
};

Gfx gJabuDoorSection8DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_02DE0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects8TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_0031E0, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 2, 3, 0, 0, 4, 1, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_0032F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjects9TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_9_tlut.rgba16.inc.c"
};

u64 gJabuObjectsTex_03498[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00003498.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_003898[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_003898.vtx.inc"
};

Gfx gJabuWaterDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_03498, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects9TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, PRIMITIVE, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 127),
    gsSPVertex(object_bdan_objectsVtx_003898, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0),
    gsSPEndDisplayList(),
};

u64 gJabuObjects10TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_10_tlut.rgba16.inc.c"
};

u8 object_bdan_objects_unaccounted_003BB0[] = {
    0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x22, 0xBF, 
};

u64 gJabuObjectsTex_03BB8[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00003BB8.ci8.inc.c"
};

u64 gJabuObjectsTex_043B8[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_000043B8.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_0047B8[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_0047B8.vtx.inc"
};

Gfx gJabuElevatorPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_03BB8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects10TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_0047B8, 26, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 5, 6, 7, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 1, 0, 16, 2, 1, 0),
    gsSP2Triangles(17, 4, 2, 0, 18, 6, 4, 0),
    gsSP2Triangles(19, 8, 6, 0, 20, 10, 8, 0),
    gsSP2Triangles(21, 14, 22, 0, 23, 12, 10, 0),
    gsSP2Triangles(1, 0, 24, 0, 1, 24, 14, 0),
    gsSP2Triangles(14, 24, 25, 0, 14, 25, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gJabuObjectsTex_043B8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bdan_objectsVtx_0047B8[26], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 5, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_bdan_objectsVtx_0047B8[35], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(7, 4, 6, 0, 3, 0, 2, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(8, 11, 9, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(16, 17, 18, 0, 17, 19, 18, 0),
    gsSP2Triangles(19, 16, 18, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(31, 28, 30, 0, 29, 31, 30, 0),
    gsSPEndDisplayList(),
};

CamData gJabuElevatorColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gJabuElevatorColSurfaceType[] = {
    { 0x00000000, 0x000007C3 },
};

CollisionPoly gJabuElevatorColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x5A82, 0x0000, 0x5A82, 0xFD84},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x5A82, 0x0000, 0x5A82, 0xFD84},
    {0x0000, 0x0003, 0x0002, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0003, 0x0004, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0005, 0x0004, 0x0006, 0x5A82, 0x0000, 0xA57E, 0xFD84},
    {0x0000, 0x0005, 0x0006, 0x0007, 0x5A82, 0x0000, 0xA57E, 0xFD84},
    {0x0000, 0x0007, 0x0006, 0x0008, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0007, 0x0008, 0x0009, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0009, 0x0008, 0x000A, 0xA57E, 0x0000, 0xA57E, 0xFD84},
    {0x0000, 0x0009, 0x000A, 0x000B, 0xA57E, 0x0000, 0xA57E, 0xFD84},
    {0x0000, 0x000B, 0x000A, 0x000C, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000B, 0x000C, 0x000D, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000E, 0x000F, 0x0001, 0x0000, 0xB334, 0x6666, 0xFD30},
    {0x0000, 0x000F, 0x0002, 0x0001, 0x46D4, 0xB051, 0x46D4, 0xFD15},
    {0x0000, 0x000F, 0x0004, 0x0002, 0x6666, 0xB334, 0x0000, 0xFD30},
    {0x0000, 0x000F, 0x0006, 0x0004, 0x46D4, 0xB051, 0xB92C, 0xFD15},
    {0x0000, 0x000F, 0x0008, 0x0006, 0x0000, 0xB334, 0x999A, 0xFD30},
    {0x0000, 0x000F, 0x000A, 0x0008, 0xB92C, 0xB051, 0xB92C, 0xFD15},
    {0x0000, 0x000F, 0x000E, 0x000C, 0xB92C, 0xB051, 0x46D4, 0xFD15},
    {0x0000, 0x000F, 0x000C, 0x000A, 0x999A, 0xB334, 0x0000, 0xFD30},
    {0x0000, 0x0001, 0x0000, 0x0010, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0001, 0x0010, 0x000E, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x000E, 0x0010, 0x000D, 0xA57E, 0x0000, 0x5A82, 0xFD84},
    {0x0000, 0x000E, 0x000D, 0x000C, 0xA57E, 0x0000, 0x5A82, 0xFD84},
    {0x0000, 0x000D, 0x0010, 0x000B, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0010, 0x0007, 0x000B, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0010, 0x0003, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0007, 0x0009, 0x000B, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0003, 0x0005, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0010, 0x0000, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gJabuElevatorColVertices[] = {
    {    300,      0,    600 },
    {    300,   -400,    600 },
    {    600,   -400,    300 },
    {    600,      0,    300 },
    {    600,   -400,   -300 },
    {    600,      0,   -300 },
    {    300,   -400,   -600 },
    {    300,      0,   -600 },
    {   -300,   -400,   -600 },
    {   -300,      0,   -600 },
    {   -600,   -400,   -300 },
    {   -600,      0,   -300 },
    {   -600,   -400,    300 },
    {   -600,      0,    300 },
    {   -300,   -400,    600 },
    {      0,  -1200,      0 },
    {   -300,      0,    600 },
};

CollisionHeader gJabuElevatorCol = { 
    { -600, -1200, -600 },
    { 600, 0, 600 },
    17, gJabuElevatorColVertices,
    30, gJabuElevatorColPolygons,
    gJabuElevatorColSurfaceType,
    gJabuElevatorColCamDataList,
    0, NULL
};

u8 object_bdan_objects_possiblePadding_005074[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_bdan_objectsVtx_005080[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_005080.vtx.inc"
};

Gfx gJabuFallingPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_0A510, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_005080, 17, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(3, 0, 4, 0, 5, 3, 4, 0),
    gsSP2Triangles(6, 7, 2, 0, 7, 6, 3, 0),
    gsSP2Triangles(8, 7, 3, 0, 5, 8, 3, 0),
    gsSP2Triangles(9, 5, 4, 0, 10, 9, 4, 0),
    gsSP2Triangles(2, 11, 0, 0, 0, 11, 12, 0),
    gsSP2Triangles(13, 5, 9, 0, 14, 13, 9, 0),
    gsSP2Triangles(14, 9, 10, 0, 8, 5, 13, 0),
    gsSP2Triangles(15, 8, 13, 0, 15, 13, 14, 0),
    gsSP2Triangles(16, 7, 8, 0, 16, 8, 15, 0),
    gsSP2Triangles(11, 2, 7, 0, 12, 11, 7, 0),
    gsSP1Triangle(12, 7, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gJabuObjectsTex_09D10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bdan_objectsVtx_005080[17], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 0, 5, 0, 0, 2, 5, 0),
    gsSP1Triangle(4, 5, 6, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_005348[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gJabuLoweringPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gJabuLoweringPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C3 },
};

CollisionPoly gJabuLoweringPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x7653, 0x0000, 0x30CF, 0xFB4E},
    {0x0000, 0x0003, 0x0001, 0x0000, 0x7633, 0x000F, 0x311D, 0xFB52},
    {0x0000, 0x0003, 0x0000, 0x0004, 0x763E, 0x0006, 0x3101, 0xFB50},
    {0x0000, 0x0005, 0x0003, 0x0004, 0x763A, 0x0000, 0x310B, 0xFB50},
    {0x0000, 0x0001, 0x0006, 0x0002, 0x9A8E, 0xBE1D, 0xD628, 0xFF33},
    {0x0000, 0x0006, 0x0001, 0x0003, 0xB813, 0xC590, 0xA7B6, 0xFD23},
    {0x0000, 0x0007, 0x0006, 0x0003, 0x963B, 0xC6BE, 0xD437, 0xFF4D},
    {0x0000, 0x0005, 0x0007, 0x0003, 0x9331, 0xC1F6, 0xE5A6, 0xFF3E},
    {0x0000, 0x0008, 0x0005, 0x0004, 0x3100, 0x0000, 0x763F, 0xFB51},
    {0x0000, 0x0009, 0x0008, 0x0004, 0x3100, 0x0000, 0x763F, 0xFB51},
    {0x0000, 0x0002, 0x000A, 0x0000, 0x764A, 0x0000, 0xCF1B, 0xF7B8},
    {0x0000, 0x0000, 0x000A, 0x000B, 0x764A, 0x0000, 0xCF1B, 0xF7B8},
    {0x0000, 0x000C, 0x0005, 0x0008, 0x9F7C, 0xB60B, 0x27FB, 0xFC2B},
    {0x0000, 0x000D, 0x000C, 0x0008, 0x89C0, 0x0000, 0x30FD, 0xFC69},
    {0x0000, 0x000D, 0x0008, 0x0009, 0x89C0, 0x0000, 0x30FD, 0xFC69},
    {0x0000, 0x0007, 0x0005, 0x000C, 0xD5F6, 0xBE2A, 0x9A9B, 0xFF32},
    {0x0000, 0x000E, 0x0007, 0x000C, 0xCEFA, 0x0000, 0x89C3, 0x0000},
    {0x0000, 0x000E, 0x000C, 0x000D, 0xCEFA, 0x0000, 0x89C3, 0x0000},
    {0x0000, 0x000F, 0x0006, 0x0007, 0x89BD, 0x0000, 0xCF0B, 0x0000},
    {0x0000, 0x000F, 0x0007, 0x000E, 0x89BD, 0x0000, 0xCF0B, 0x0000},
    {0x0000, 0x000A, 0x0002, 0x0006, 0xC399, 0xD8C5, 0x9631, 0xFC8E},
    {0x0000, 0x000B, 0x000A, 0x0006, 0xC08B, 0x0000, 0x90D8, 0xFCE2},
    {0x0000, 0x000B, 0x0006, 0x000F, 0xC08B, 0x0000, 0x90D8, 0xFCE2},
    {0x0000, 0x000E, 0x0009, 0x0004, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000E, 0x000D, 0x0009, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000F, 0x000E, 0x0000, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000E, 0x0004, 0x0000, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000F, 0x0000, 0x000B, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gJabuLoweringPlatformColVertices[] = {
    {   1797,      0,  -1203 },
    {   1632,  -2400,   -803 },
    {   1797,  -2400,  -1203 },
    {   1466,  -2800,   -403 },
    {    918,      0,    918 },
    {    918,  -2400,    918 },
    {    498,   -400,  -1203 },
    {      0,   -400,      0 },
    {   -390,   -400,   1460 },
    {   -390,      0,   1460 },
    {   1549,   -400,  -1803 },
    {   1549,      0,  -1803 },
    {   -849,   -400,    352 },
    {   -849,      0,    352 },
    {      0,      0,      0 },
    {    498,      0,  -1203 },
};

CollisionHeader gJabuLoweringPlatformCol = { 
    { -849, -2800, -1803 },
    { 1797, 0, 1460 },
    16, gJabuLoweringPlatformColVertices,
    28, gJabuLoweringPlatformColPolygons,
    gJabuLoweringPlatformColSurfaceType,
    gJabuLoweringPlatformColCamDataList,
    0, NULL
};

Vtx object_bdan_objectsVtx_0055B0[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_0055B0.vtx.inc"
};

Gfx gJabuBlueFloorSwitchDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_0BD10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_0055B0, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(7, 6, 16, 0, 7, 16, 17, 0),
    gsSP2Triangles(3, 2, 5, 0, 3, 5, 4, 0),
    gsSP2Triangles(15, 14, 1, 0, 15, 1, 0, 0),
    gsSP2Triangles(11, 10, 13, 0, 11, 13, 12, 0),
    gsSP2Triangles(5, 2, 18, 0, 19, 1, 14, 0),
    gsSP2Triangles(16, 6, 20, 0, 13, 10, 21, 0),
    gsSP2Triangles(19, 18, 2, 0, 19, 2, 1, 0),
    gsSP2Triangles(21, 19, 14, 0, 21, 14, 13, 0),
    gsSP2Triangles(22, 21, 10, 0, 22, 10, 9, 0),
    gsSP2Triangles(18, 20, 6, 0, 18, 6, 5, 0),
    gsSP2Triangles(18, 19, 21, 0, 18, 21, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gJabuObjectsTex_0B510, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_bdan_objectsVtx_0055B0[23], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_bdan_objectsVtx_0055B0[55], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_005BD8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gJabuFloorSwitchColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gJabuFloorSwitchColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gJabuFloorSwitchColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFF3D},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFF3D},
    {0x0000, 0x2004, 0x0001, 0x0000, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x2004, 0x0000, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x2006, 0x0002, 0x0001, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x2006, 0x0001, 0x0004, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x2007, 0x0003, 0x0002, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x2007, 0x0002, 0x0006, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x2005, 0x0000, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x2005, 0x0003, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0xE008, 0x0009, 0x000A, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0xE008, 0x000A, 0x000B, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gJabuFloorSwitchColVertices[] = {
    {    200,    195,    200 },
    {    200,    195,   -200 },
    {   -200,    195,   -200 },
    {   -200,    195,    200 },
    {    200,     -5,   -200 },
    {    200,     -5,    200 },
    {   -200,     -5,   -200 },
    {   -200,     -5,    200 },
    {    240,      0,    240 },
    {    240,      0,   -240 },
    {   -240,      0,   -240 },
    {   -240,      0,    240 },
};

CollisionHeader gJabuFloorSwitchCol = { 
    { -320, -5, -320 },
    { 320, 200, 320 },
    12, gJabuFloorSwitchColVertices,
    12, gJabuFloorSwitchColPolygons,
    gJabuFloorSwitchColSurfaceType,
    gJabuFloorSwitchColCamDataList,
    0, NULL
};

u8 object_bdan_objects_possiblePadding_005D24[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_bdan_objectsVtx_005D30[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_005D30.vtx.inc"
};

Gfx gJabuYellowFloorSwitchDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_0C510, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_005D30, 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(7, 6, 16, 0, 7, 16, 17, 0),
    gsSP2Triangles(3, 2, 5, 0, 3, 5, 4, 0),
    gsSP2Triangles(15, 14, 1, 0, 15, 1, 0, 0),
    gsSP2Triangles(11, 10, 13, 0, 11, 13, 12, 0),
    gsSP2Triangles(5, 2, 18, 0, 19, 1, 14, 0),
    gsSP2Triangles(16, 6, 20, 0, 13, 10, 21, 0),
    gsSP2Triangles(19, 18, 2, 0, 19, 2, 1, 0),
    gsSP2Triangles(21, 19, 14, 0, 21, 14, 13, 0),
    gsSP2Triangles(22, 21, 10, 0, 22, 10, 9, 0),
    gsSP2Triangles(18, 20, 6, 0, 18, 6, 5, 0),
    gsSP2Triangles(18, 19, 21, 0, 18, 21, 22, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gJabuObjectsTex_0B510, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_bdan_objectsVtx_005D30[23], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
    gsSPVertex(&object_bdan_objectsVtx_005D30[55], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

u8 object_bdan_objects_possiblePadding_006358[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_bdan_objectsVtx_006360[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_006360.vtx.inc"
};

Gfx gJabuWebDoorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_08D10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_006360, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 6, 0, 12, 6, 5, 0),
    gsSP2Triangles(12, 14, 15, 0, 12, 15, 13, 0),
    gsSP2Triangles(14, 8, 11, 0, 14, 11, 15, 0),
    gsSP2Triangles(4, 7, 2, 0, 4, 2, 1, 0),
    gsSP2Triangles(10, 9, 0, 0, 10, 0, 3, 0),
    gsSP2Triangles(2, 13, 15, 0, 2, 15, 3, 0),
    gsSP2Triangles(15, 11, 10, 0, 15, 10, 3, 0),
    gsSP2Triangles(2, 7, 6, 0, 2, 6, 13, 0),
    gsSPEndDisplayList(),
};

u64 gJabuObjects11TLUT[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_11_tlut.rgba16.inc.c"
};

u8 object_bdan_objects_unaccounted_006740[] = {
    0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x19, 0xD4, 
};

u64 gJabuObjectsTex_06748[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00006748.ci8.inc.c"
};

u64 gJabuObjectsTex_06B48[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00006B48.ci8.inc.c"
};

u64 gJabuObjectsTex_07348[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00007348.ci8.inc.c"
};

Vtx object_bdan_objectsVtx_007B48[] = {
#include "assets/objects/object_bdan_objects/object_bdan_objectsVtx_007B48.vtx.inc"
};

Gfx gJabuObjectsLargeRotatingSpikePlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gJabuObjectsTex_06748, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gJabuObjects11TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_bdan_objectsVtx_007B48, 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 5, 6, 0, 0, 7, 5, 0),
    gsSP2Triangles(0, 8, 7, 0, 6, 3, 0, 0),
    gsSP2Triangles(4, 1, 0, 0, 2, 8, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gJabuObjectsTex_06B48, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bdan_objectsVtx_007B48[9], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 1, 0, 6, 1, 0, 0),
    gsSP2Triangles(8, 6, 0, 0, 8, 0, 4, 0),
    gsSP2Triangles(9, 10, 7, 0, 9, 7, 6, 0),
    gsSP2Triangles(11, 9, 6, 0, 11, 6, 8, 0),
    gsSP2Triangles(12, 13, 10, 0, 12, 10, 9, 0),
    gsSP2Triangles(14, 12, 9, 0, 14, 9, 11, 0),
    gsSP2Triangles(15, 16, 13, 0, 15, 13, 12, 0),
    gsSP2Triangles(17, 15, 12, 0, 17, 12, 14, 0),
    gsSP2Triangles(18, 19, 16, 0, 18, 16, 15, 0),
    gsSP2Triangles(20, 18, 15, 0, 20, 15, 17, 0),
    gsSP2Triangles(21, 22, 19, 0, 21, 19, 18, 0),
    gsSP2Triangles(23, 21, 18, 0, 23, 18, 20, 0),
    gsSP2Triangles(5, 3, 24, 0, 5, 24, 25, 0),
    gsSP2Triangles(26, 24, 3, 0, 26, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gJabuObjectsTex_07348, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_bdan_objectsVtx_007B48[36], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(5, 6, 0, 0, 7, 5, 0, 0),
    gsSP2Triangles(4, 7, 0, 0, 2, 3, 0, 0),
    gsSP2Triangles(8, 1, 0, 0, 0, 6, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(SHADE, 0, PRIMITIVE, 0, 0, 0, 0, 1, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsSPVertex(&object_bdan_objectsVtx_007B48[45], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 3, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0),
    gsSPVertex(&object_bdan_objectsVtx_007B48[77], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 3, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0),
    gsSPVertex(&object_bdan_objectsVtx_007B48[109], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 3, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0),
    gsSPVertex(&object_bdan_objectsVtx_007B48[141], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 3, 0, 4, 5, 6, 0),
    gsSP2Triangles(4, 6, 7, 0, 4, 7, 5, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 11, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 12, 13, 14, 0),
    gsSP2Triangles(12, 15, 13, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(16, 19, 17, 0, 20, 21, 22, 0),
    gsSP2Triangles(20, 22, 23, 0, 20, 23, 21, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 27, 25, 0),
    gsSP2Triangles(24, 26, 27, 0, 28, 29, 30, 0),
    gsSP2Triangles(28, 30, 31, 0, 28, 31, 29, 0),
    gsSPEndDisplayList(),
};

CamData gJabuBigOctoPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gJabuBigOctoPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C3 },
};

CollisionPoly gJabuBigOctoPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xF93E},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xF93E},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x0000, 0x1B1B, 0x7D18, 0xF8BC},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x0000, 0x1B1B, 0x7D18, 0xF8BC},
    {0x0000, 0x0006, 0x0007, 0x0001, 0x5A82, 0x0000, 0x5A82, 0xF94F},
    {0x0000, 0x0006, 0x0001, 0x0000, 0x5A82, 0x0000, 0x5A82, 0xF94F},
    {0x0000, 0x0007, 0x0008, 0x0004, 0x587F, 0x1AD8, 0x587F, 0xF8CE},
    {0x0000, 0x0007, 0x0004, 0x0001, 0x587F, 0x1AD8, 0x587F, 0xF8CE},
    {0x0000, 0x0009, 0x000A, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xF93E},
    {0x0000, 0x0009, 0x0007, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xF93E},
    {0x0000, 0x000A, 0x000B, 0x0008, 0x7D18, 0x1B1B, 0x0000, 0xF8BC},
    {0x0000, 0x000A, 0x0008, 0x0007, 0x7D18, 0x1B1B, 0x0000, 0xF8BC},
    {0x0000, 0x000C, 0x000D, 0x000A, 0x5A82, 0x0000, 0xA57E, 0xF94F},
    {0x0000, 0x000C, 0x000A, 0x0009, 0x5A82, 0x0000, 0xA57E, 0xF94F},
    {0x0000, 0x000D, 0x000E, 0x000B, 0x587F, 0x1AD8, 0xA781, 0xF8CE},
    {0x0000, 0x000D, 0x000B, 0x000A, 0x587F, 0x1AD8, 0xA781, 0xF8CE},
    {0x0000, 0x000F, 0x0010, 0x000D, 0x0000, 0x0000, 0x8001, 0xF93E},
    {0x0000, 0x000F, 0x000D, 0x000C, 0x0000, 0x0000, 0x8001, 0xF93E},
    {0x0000, 0x0010, 0x0011, 0x000E, 0x0000, 0x1B1B, 0x82E8, 0xF8BC},
    {0x0000, 0x0010, 0x000E, 0x000D, 0x0000, 0x1B1B, 0x82E8, 0xF8BC},
    {0x0000, 0x0012, 0x0013, 0x0010, 0xA57E, 0x0000, 0xA57E, 0xF94F},
    {0x0000, 0x0012, 0x0010, 0x000F, 0xA57E, 0x0000, 0xA57E, 0xF94F},
    {0x0000, 0x0013, 0x0014, 0x0011, 0xA781, 0x1AD8, 0xA781, 0xF8CE},
    {0x0000, 0x0013, 0x0011, 0x0010, 0xA781, 0x1AD8, 0xA781, 0xF8CE},
    {0x0000, 0x0015, 0x0016, 0x0013, 0x8001, 0x0000, 0x0000, 0xF93E},
    {0x0000, 0x0015, 0x0013, 0x0012, 0x8001, 0x0000, 0x0000, 0xF93E},
    {0x0000, 0x0016, 0x0017, 0x0014, 0x82E8, 0x1B1B, 0x0000, 0xF8BC},
    {0x0000, 0x0016, 0x0014, 0x0013, 0x82E8, 0x1B1B, 0x0000, 0xF8BC},
    {0x0000, 0x0002, 0x0005, 0x0017, 0xA781, 0x1AD8, 0x587F, 0xF8CE},
    {0x0000, 0x0002, 0x0017, 0x0016, 0xA781, 0x1AD8, 0x587F, 0xF8CE},
    {0x0000, 0x0003, 0x0002, 0x0016, 0xA57E, 0x0000, 0x5A82, 0xF94F},
    {0x0000, 0x0003, 0x0016, 0x0015, 0xA57E, 0x0000, 0x5A82, 0xF94F},
    {0x0000, 0x0011, 0x0014, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0011, 0x000B, 0x000E, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0014, 0x0017, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0014, 0x0008, 0x000B, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0017, 0x0005, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFA88},
    {0x0000, 0x0017, 0x0004, 0x0008, 0x0000, 0x7FFF, 0x0000, 0xFA88},
};

Vec3s gJabuBigOctoPlatformColVertices[] = {
    {    692,   -200,   1730 },
    {    692,    800,   1730 },
    {   -692,    800,   1730 },
    {   -692,   -200,   1730 },
    {    640,   1400,   1600 },
    {   -640,   1400,   1600 },
    {   1730,   -200,    692 },
    {   1730,    800,    692 },
    {   1600,   1400,    640 },
    {   1730,   -200,   -692 },
    {   1730,    800,   -692 },
    {   1600,   1400,   -640 },
    {    692,   -200,  -1730 },
    {    692,    800,  -1730 },
    {    640,   1400,  -1600 },
    {   -692,   -200,  -1730 },
    {   -692,    800,  -1730 },
    {   -640,   1400,  -1600 },
    {  -1730,   -200,   -692 },
    {  -1730,    800,   -692 },
    {  -1600,   1400,   -640 },
    {  -1730,   -200,    692 },
    {  -1730,    800,    692 },
    {  -1600,   1400,    640 },
};

CollisionHeader gJabuBigOctoPlatformCol = { 
    { -1840, -2000, -1840 },
    { 1840, 1400, 1842 },
    24, gJabuBigOctoPlatformColVertices,
    38, gJabuBigOctoPlatformColPolygons,
    gJabuBigOctoPlatformColSurfaceType,
    gJabuBigOctoPlatformColCamDataList,
    0, NULL
};

u8 object_bdan_objects_possiblePadding_008D0C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

u64 gJabuObjectsTex_08D10[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00008D10.rgba16.inc.c"
};

u64 gJabuObjectsTex_09D10[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_00009D10.rgba16.inc.c"
};

u64 gJabuObjectsTex_0A510[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_0000A510.rgba16.inc.c"
};

u64 gJabuObjectsTex_0B510[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_0000B510.rgba16.inc.c"
};

u64 gJabuObjectsTex_0BD10[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_0000BD10.rgba16.inc.c"
};

u64 gJabuObjectsTex_0C510[] = {
#include "assets/objects/object_bdan_objects/jabu_objects_tex_0000C510.rgba16.inc.c"
};

