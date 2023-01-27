#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_zl2.h"

u64 gZelda2_0TLUT[] = {
#include "assets/objects/object_zl2/zelda_2_0_tlut.rgba16.inc.c"
};

u64 gZelda2_1TLUT[] = {
#include "assets/objects/object_zl2/zelda_2_1_tlut.rgba16.inc.c"
};

u64 gZelda2_2TLUT[] = {
#include "assets/objects/object_zl2/zelda_2_2_tlut.rgba16.inc.c"
};

u64 gZelda2EyeUnusedTex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_unused.rgba16.inc.c"
};

u64 object_zl2Tex_000E00[] = {
#include "assets/objects/object_zl2/object_zl2Tex_000E00.ci8.inc.c"
};

u64 object_zl2Tex_000F00[] = {
#include "assets/objects/object_zl2/object_zl2Tex_000F00.ci8.inc.c"
};

u64 object_zl2Tex_000F40[] = {
#include "assets/objects/object_zl2/object_zl2Tex_000F40.ci8.inc.c"
};

u64 object_zl2Tex_001140[] = {
#include "assets/objects/object_zl2/object_zl2Tex_001140.ci8.inc.c"
};

u64 object_zl2Tex_001180[] = {
#include "assets/objects/object_zl2/object_zl2Tex_001180.ci8.inc.c"
};

u64 object_zl2Tex_001280[] = {
#include "assets/objects/object_zl2/object_zl2Tex_001280.ci8.inc.c"
};

u64 object_zl2Tex_0012C0[] = {
#include "assets/objects/object_zl2/object_zl2Tex_0012C0.ci8.inc.c"
};

u64 object_zl2Tex_0016C0[] = {
#include "assets/objects/object_zl2/object_zl2Tex_0016C0.ci8.inc.c"
};

u64 object_zl2Tex_001AC0[] = {
#include "assets/objects/object_zl2/object_zl2Tex_001AC0.ci8.inc.c"
};

u64 object_zl2Tex_001CC0[] = {
#include "assets/objects/object_zl2/object_zl2Tex_001CC0.ci8.inc.c"
};

u64 object_zl2Tex_0024C0[] = {
#include "assets/objects/object_zl2/object_zl2Tex_0024C0.ci8.inc.c"
};

u64 object_zl2Tex_002500[] = {
#include "assets/objects/object_zl2/object_zl2Tex_002500.ci8.inc.c"
};

u64 object_zl2Tex_002600[] = {
#include "assets/objects/object_zl2/object_zl2Tex_002600.ci8.inc.c"
};

u64 object_zl2Tex_002700[] = {
#include "assets/objects/object_zl2/object_zl2Tex_002700.ci8.inc.c"
};

u64 object_zl2Tex_002740[] = {
#include "assets/objects/object_zl2/object_zl2Tex_002740.ci8.inc.c"
};

u64 object_zl2Tex_002780[] = {
#include "assets/objects/object_zl2/object_zl2Tex_002780.ci8.inc.c"
};

u64 object_zl2Tex_002880[] = {
#include "assets/objects/object_zl2/object_zl2Tex_002880.ci8.inc.c"
};

u64 gZelda2TriforceTex[] = {
#include "assets/objects/object_zl2/zelda_2_triforce.rgba16.inc.c"
};

u64 gZelda2EyesTLUT[] = {
#include "assets/objects/object_zl2/zelda_2_eyes_tlut.rgba16.inc.c"
};

u64 gZelda2_3TLUT[] = {
#include "assets/objects/object_zl2/zelda_2_3_tlut.rgba16.inc.c"
};

u64 gZelda2MouthTLUT[] = {
#include "assets/objects/object_zl2/zelda_2_mouth_tlut.rgba16.inc.c"
};

u64 gZelda2_4TLUT[] = {
#include "assets/objects/object_zl2/zelda_2_4_tlut.rgba16.inc.c"
};

u64 gZelda2EyeOpenTex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_open.ci8.inc.c"
};

u64 object_zl2Tex_0034C8[] = {
#include "assets/objects/object_zl2/object_zl2Tex_0034C8.ci8.inc.c"
};

u64 gZelda2MouthSeriousTex[] = {
#include "assets/objects/object_zl2/zelda_2_mouth_serious.ci8.inc.c"
};

u64 object_zl2Tex_003908[] = {
#include "assets/objects/object_zl2/object_zl2Tex_003908.ci8.inc.c"
};

u64 object_zl2Tex_003A08[] = {
#include "assets/objects/object_zl2/object_zl2Tex_003A08.ci8.inc.c"
};

u64 object_zl2Tex_003A48[] = {
#include "assets/objects/object_zl2/object_zl2Tex_003A48.ci8.inc.c"
};

u64 object_zl2Tex_003AC8[] = {
#include "assets/objects/object_zl2/object_zl2Tex_003AC8.ci8.inc.c"
};

u64 object_zl2Tex_003B48[] = {
#include "assets/objects/object_zl2/object_zl2Tex_003B48.ci8.inc.c"
};

u64 gZelda2EyeHalfTex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_half.ci8.inc.c"
};

u64 gZelda2EyeShutTex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_shut.ci8.inc.c"
};

u64 object_zl2Tex_004448[] = {
#include "assets/objects/object_zl2/object_zl2Tex_004448.ci8.inc.c"
};

u64 gZelda2Eye03Tex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_03.ci8.inc.c"
};

u64 gZelda2Eye04Tex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_04.ci8.inc.c"
};

u64 gZelda2Eye05Tex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_05.ci8.inc.c"
};

u64 gZelda2Eye06Tex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_06.ci8.inc.c"
};

u64 gZelda2MouthHappyTex[] = {
#include "assets/objects/object_zl2/zelda_2_mouth_happy.ci8.inc.c"
};

u64 gZelda2MouthOpenTex[] = {
#include "assets/objects/object_zl2/zelda_2_mouth_open.ci8.inc.c"
};

u64 gZelda2Eye07Tex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_07.ci8.inc.c"
};

u64 gZelda2Eye08Tex[] = {
#include "assets/objects/object_zl2/zelda_2_eye_08.ci8.inc.c"
};

u64 object_zl2Tex_006548[] = {
#include "assets/objects/object_zl2/object_zl2Tex_006548.ci8.inc.c"
};

Vtx object_zl2Vtx_006748[] = {
#include "assets/objects/object_zl2/object_zl2Vtx_006748.vtx.inc"
};

Gfx gZelda2SkelLimbsLimb_010D2CDL_007DC8[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, ENVIRONMENT, 0, LOD_FRACTION,
                       0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_zl2Vtx_006748, 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZelda2EyeOpenTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPVertex(&object_zl2Vtx_006748[6], 7, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP1Triangle(4, 6, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_0034C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_3TLUT),
    gsSPVertex(&object_zl2Vtx_006748[13], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsSPVertex(&object_zl2Vtx_006748[23], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZelda2EyeOpenTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPVertex(&object_zl2Vtx_006748[26], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_0034C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_3TLUT),
    gsSPVertex(&object_zl2Vtx_006748[35], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZelda2EyeOpenTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPVertex(&object_zl2Vtx_006748[38], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_004448, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsSPVertex(&object_zl2Vtx_006748[41], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZelda2EyeOpenTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPVertex(&object_zl2Vtx_006748[44], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsSPVertex(&object_zl2Vtx_006748[50], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003A48, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[53], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_006548, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[56], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZelda2EyeOpenTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPVertex(&object_zl2Vtx_006748[59], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsSPVertex(&object_zl2Vtx_006748[63], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003A48, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[66], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003B48, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[70], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZelda2EyeOpenTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[73], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_0034C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_3TLUT),
    gsSPVertex(&object_zl2Vtx_006748[77], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZelda2EyeOpenTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPVertex(&object_zl2Vtx_006748[81], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 5, 8, 0),
    gsSP2Triangles(8, 9, 6, 0, 7, 3, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003B48, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[92], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003A08, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[96], 23, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 4, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 8, 0, 5, 12, 3, 0),
    gsSP2Triangles(13, 0, 14, 0, 0, 2, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 17, 0),
    gsSP2Triangles(20, 21, 22, 0, 17, 16, 18, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[119], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZelda2TriforceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, ENVIRONMENT, 0, LOD_FRACTION,
                       0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[134], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, ENVIRONMENT, 0, LOD_FRACTION,
                       0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[137], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003A08, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[140], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(2, 1, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[145], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_004448, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[155], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_006548, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[158], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[161], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsSP1Triangle(18, 19, 20, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_0034C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_3TLUT),
    gsSPVertex(&object_zl2Vtx_006748[182], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 5, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003908, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[196], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_0034C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[199], 11, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003908, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[210], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gZelda2EyeOpenTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPVertex(&object_zl2Vtx_006748[213], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(4, 1, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003A48, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsSPVertex(&object_zl2Vtx_006748[218], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_0034C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_3TLUT),
    gsSPVertex(&object_zl2Vtx_006748[224], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(gZelda2TriforceTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, ENVIRONMENT, 0, LOD_FRACTION,
                       0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[227], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock(object_zl2Tex_003A08, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, ENVIRONMENT, 0, LOD_FRACTION,
                       0),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[230], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[234], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 4, 9, 10, 0),
    gsSP1Triangle(11, 12, 13, 0),
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[248], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[252], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 1, 7, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_0034C8, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_3TLUT),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_006748[260], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2EyesTLUT),
    gsSPVertex(&object_zl2Vtx_006748[266], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(0, 2, 5, 0, 0, 5, 6, 0),
    gsSP2Triangles(6, 7, 0, 0, 5, 3, 6, 0),
    gsSP1Triangle(2, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_006748[274], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 4, 0),
    gsSP2Triangles(5, 0, 2, 0, 6, 5, 2, 0),
    gsSP2Triangles(2, 7, 6, 0, 6, 4, 5, 0),
    gsSP1Triangle(5, 4, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(0x0A000000, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2MouthTLUT),
    gsSPVertex(&object_zl2Vtx_006748[282], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(2, 4, 0, 0, 5, 2, 1, 0),
    gsSP2Triangles(6, 2, 5, 0, 2, 6, 3, 0),
    gsSP2Triangles(3, 6, 7, 0, 8, 1, 0, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003A48, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_4TLUT),
    gsSPVertex(&object_zl2Vtx_006748[291], 10, 0),
    gsSPMatrix(0x0C000000, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[301], 10, 16),
    gsSP2Triangles(20, 4, 3, 0, 3, 1, 17, 0),
    gsSP2Triangles(17, 19, 3, 0, 4, 20, 21, 0),
    gsSP2Triangles(3, 19, 20, 0, 21, 5, 4, 0),
    gsSP2Triangles(6, 5, 21, 0, 22, 23, 7, 0),
    gsSP2Triangles(21, 22, 6, 0, 7, 23, 24, 0),
    gsSP2Triangles(7, 6, 22, 0, 24, 8, 7, 0),
    gsSP2Triangles(16, 18, 2, 0, 2, 0, 16, 0),
    gsSP2Triangles(16, 0, 9, 0, 9, 25, 16, 0),
    gsSPMatrix(0x0C000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[311], 10, 0),
    gsSP2Triangles(16, 8, 0, 0, 1, 19, 17, 0),
    gsSP2Triangles(3, 20, 19, 0, 18, 0, 2, 0),
    gsSP2Triangles(19, 1, 3, 0, 3, 4, 21, 0),
    gsSP2Triangles(21, 20, 3, 0, 5, 22, 21, 0),
    gsSP2Triangles(21, 4, 5, 0, 5, 6, 23, 0),
    gsSP2Triangles(7, 9, 25, 0, 23, 22, 5, 0),
    gsSP2Triangles(24, 23, 6, 0, 0, 18, 16, 0),
    gsSP1Triangle(16, 25, 9, 0),
    gsSPMatrix(0x0C000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[321], 11, 16),
    gsSP2Triangles(8, 16, 0, 0, 22, 20, 17, 0),
    gsSP2Triangles(18, 23, 22, 0, 0, 19, 21, 0),
    gsSP2Triangles(20, 22, 3, 0, 3, 22, 23, 0),
    gsSP2Triangles(3, 1, 20, 0, 23, 4, 3, 0),
    gsSP2Triangles(21, 2, 0, 0, 9, 7, 25, 0),
    gsSP2Triangles(5, 4, 23, 0, 26, 6, 5, 0),
    gsSP2Triangles(23, 24, 5, 0, 5, 24, 26, 0),
    gsSP2Triangles(25, 19, 9, 0, 24, 23, 18, 0),
    gsSP1Triangle(17, 26, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003AC8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPPopMatrix(G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[332], 3, 0),
    gsSPMatrix(0x0C0000C0, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[335], 6, 16),
    gsSP2Triangles(2, 1, 18, 0, 18, 1, 0, 0),
    gsSP2Triangles(18, 20, 2, 0, 0, 16, 18, 0),
    gsSPMatrix(0x0C000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[341], 5, 0),
    gsSP2Triangles(3, 0, 4, 0, 19, 17, 1, 0),
    gsSP2Triangles(21, 19, 2, 0, 1, 2, 19, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 3, 0),
    gsSPPopMatrix(G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[346], 3, 0),
    gsSPMatrix(0x0C000140, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[349], 6, 16),
    gsSP2Triangles(18, 16, 0, 0, 2, 20, 18, 0),
    gsSP2Triangles(0, 1, 18, 0, 18, 1, 2, 0),
    gsSPMatrix(0x0C000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPVertex(&object_zl2Vtx_006748[355], 5, 0),
    gsSP2Triangles(3, 1, 4, 0, 1, 2, 4, 0),
    gsSP2Triangles(19, 2, 1, 0, 2, 19, 21, 0),
    gsSP2Triangles(1, 17, 19, 0, 4, 0, 3, 0),
    gsSPEndDisplayList(),
};

u64 gZelda2_5TLUT[] = {
#include "assets/objects/object_zl2/zelda_2_5_tlut.rgba16.inc.c"
};

u64 gZelda2_6TLUT[] = {
#include "assets/objects/object_zl2/zelda_2_6_tlut.rgba16.inc.c"
};

u64 gZelda2_7TLUT[] = {
#include "assets/objects/object_zl2/zelda_2_7_tlut.rgba16.inc.c"
};

u64 object_zl2Tex_009738[] = {
#include "assets/objects/object_zl2/object_zl2Tex_009738.ci8.inc.c"
};

u64 object_zl2Tex_009938[] = {
#include "assets/objects/object_zl2/object_zl2Tex_009938.ci8.inc.c"
};

u64 object_zl2Tex_009A38[] = {
#include "assets/objects/object_zl2/object_zl2Tex_009A38.ci8.inc.c"
};

u64 object_zl2Tex_009A78[] = {
#include "assets/objects/object_zl2/object_zl2Tex_009A78.ci8.inc.c"
};

u64 object_zl2Tex_009E78[] = {
#include "assets/objects/object_zl2/object_zl2Tex_009E78.ci8.inc.c"
};

u64 object_zl2Tex_009F78[] = {
#include "assets/objects/object_zl2/object_zl2Tex_009F78.ci8.inc.c"
};

u64 object_zl2Tex_009FF8[] = {
#include "assets/objects/object_zl2/object_zl2Tex_009FF8.ci8.inc.c"
};

u64 object_zl2Tex_00A0F8[] = {
#include "assets/objects/object_zl2/object_zl2Tex_00A0F8.ci8.inc.c"
};

Vtx object_zl2Vtx_00A4F8[] = {
#include "assets/objects/object_zl2/object_zl2Vtx_00A4F8.vtx.inc"
};

Gfx gZelda2SkelLimbsLimb_010CD8DL_00B068[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_zl2Tex_009A38, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_5TLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(object_zl2Vtx_00A4F8, 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_003A08, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00A4F8[8], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(2, 1, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_009738, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_6TLUT),
    gsSPVertex(&object_zl2Vtx_00A4F8[22], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 6, 3, 0, 7, 2, 1, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 8, 0, 0),
    gsSP2Triangles(5, 11, 12, 0, 12, 13, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_009938, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_5TLUT),
    gsSPVertex(&object_zl2Vtx_00A4F8[36], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(5, 12, 3, 0, 13, 14, 15, 0),
    gsSP2Triangles(13, 15, 16, 0, 17, 18, 19, 0),
    gsSP2Triangles(20, 21, 22, 0, 21, 23, 22, 0),
    gsSP2Triangles(24, 25, 26, 0, 26, 27, 24, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_009A78, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_00A4F8[64], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 3, 9, 4, 0),
    gsSP2Triangles(1, 9, 2, 0, 9, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_009E78, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_6TLUT),
    gsSPVertex(&object_zl2Vtx_00A4F8[74], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 1, 5, 0, 6, 7, 8, 0),
    gsSP2Triangles(6, 9, 7, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 13, 15, 0),
    gsSP2Triangles(17, 18, 19, 0, 1, 4, 2, 0),
    gsSP2Triangles(4, 5, 20, 0, 17, 19, 16, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_009F78, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_00A4F8[95], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 16, 17, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_009FF8, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gZelda2_7TLUT),
    gsSPVertex(&object_zl2Vtx_00A4F8[113], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 11, 15, 9, 0),
    gsSP2Triangles(16, 17, 18, 0, 8, 19, 20, 0),
    gsSP2Triangles(21, 22, 3, 0, 23, 24, 25, 0),
    gsSP2Triangles(2, 26, 27, 0, 26, 28, 29, 0),
    gsSP1Triangle(27, 26, 29, 0),
    gsSPVertex(&object_zl2Vtx_00A4F8[143], 13, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 11, 0),
    gsSP1Triangle(9, 11, 12, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_zl2Tex_00A0F8, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_zl2Vtx_00A4F8[156], 27, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 2, 0),
    gsSP2Triangles(11, 12, 13, 0, 2, 10, 0, 0),
    gsSP2Triangles(14, 10, 9, 0, 15, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 0, 10, 21, 0),
    gsSP2Triangles(8, 7, 22, 0, 23, 24, 25, 0),
    gsSP1Triangle(25, 26, 23, 0),
    gsSPEndDisplayList(),
};

u64 gZelda2OcarinaTex[] = {
#include "assets/objects/object_zl2/zelda_2_ocarina.rgba16.inc.c"
};

Vtx object_zl2Vtx_00B998[] = {
#include "assets/objects/object_zl2/object_zl2Vtx_00B998.vtx.inc"
};

Gfx gZelda2OcarinaDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gZelda2OcarinaTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPDisplayList(0x0B000000),
    gsSPVertex(object_zl2Vtx_00B998, 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 6, 8, 0, 5, 8, 6, 0),
    gsSP2Triangles(11, 9, 0, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 1, 13, 0, 11, 3, 14, 0),
    gsSP2Triangles(11, 0, 3, 0, 0, 9, 1, 0),
    gsSP2Triangles(12, 4, 1, 0, 1, 9, 8, 0),
    gsSP2Triangles(1, 8, 5, 0, 14, 10, 11, 0),
    gsSP2Triangles(1, 5, 13, 0, 15, 13, 5, 0),
    gsSP2Triangles(15, 5, 7, 0, 7, 14, 15, 0),
    gsSP2Triangles(10, 14, 6, 0, 6, 14, 7, 0),
    gsSP2Triangles(12, 13, 16, 0, 12, 16, 17, 0),
    gsSP2Triangles(17, 16, 15, 0, 15, 16, 13, 0),
    gsSP2Triangles(17, 15, 14, 0, 17, 14, 18, 0),
    gsSP2Triangles(14, 19, 20, 0, 14, 20, 18, 0),
    gsSP2Triangles(4, 19, 3, 0, 3, 19, 14, 0),
    gsSP2Triangles(12, 17, 18, 0, 12, 18, 20, 0),
    gsSP2Triangles(12, 20, 4, 0, 20, 19, 4, 0),
    gsSPEndDisplayList(),
};

Vtx object_zl2Vtx_00BC10[] = {
#include "assets/objects/object_zl2/object_zl2Vtx_00BC10.vtx.inc"
};

Gfx gZelda2SkelLimbsLimb_010D08DL_00E590[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001140, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[300], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(3, 1, 4, 0, 1, 5, 4, 0),
    gsSP2Triangles(2, 6, 7, 0, 0, 2, 7, 0),
    gsSP2Triangles(5, 7, 4, 0, 7, 6, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001180, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(8, 9, 10, 0, 9, 8, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 14, 13, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsSP1Triangle(19, 20, 21, 0),
    gsSP1Triangle(22, 23, 24, 0),
    gsSP1Triangle(25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[331], 27, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001280, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(9, 10, 11, 0, 10, 12, 11, 0),
    gsSP2Triangles(13, 14, 15, 0, 16, 13, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001140, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 19, 18, 20, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000F40, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(21, 22, 23, 0, 21, 24, 22, 0),
    gsSP2Triangles(21, 25, 24, 0, 21, 26, 25, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[358], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 3, 0, 0, 5, 4, 0, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010D14DL_00E910[] = {
    gsSPMatrix(0x0D000240, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[272], 4, 0),
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000F00, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00BC10[276], 14, 4),
    gsSP2Triangles(4, 0, 5, 0, 6, 7, 0, 0),
    gsSP2Triangles(8, 1, 0, 0, 1, 9, 10, 0),
    gsSP2Triangles(11, 12, 3, 0, 13, 2, 1, 0),
    gsSP2Triangles(3, 2, 14, 0, 0, 3, 15, 0),
    gsSP1Triangle(16, 0, 17, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[290], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(4, 2, 1, 0, 5, 6, 0, 0),
    gsSP2Triangles(4, 7, 6, 0, 1, 7, 4, 0),
    gsSP2Triangles(0, 8, 1, 0, 6, 8, 0, 0),
    gsSP1Triangle(4, 6, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010D20DL_00EA58[] = {
    gsSPMatrix(0x0D000280, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[182], 6, 0),
    gsSPMatrix(0x0D0002C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000E00, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00BC10[188], 12, 6),
    gsSP2Triangles(0, 2, 6, 0, 1, 4, 7, 0),
    gsSP2Triangles(3, 1, 8, 0, 9, 10, 3, 0),
    gsSP2Triangles(11, 12, 1, 0, 13, 14, 5, 0),
    gsSP2Triangles(5, 0, 15, 0, 16, 17, 0, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[200], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 4, 2, 0),
    gsSP2Triangles(10, 11, 2, 0, 6, 12, 7, 0),
    gsSP2Triangles(13, 14, 1, 0, 12, 0, 7, 0),
    gsSP2Triangles(1, 0, 12, 0, 2, 4, 0, 0),
    gsSP2Triangles(12, 6, 15, 0, 1, 12, 13, 0),
    gsSP2Triangles(2, 1, 10, 0, 2, 16, 9, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 0, 17, 0),
    gsSP2Triangles(17, 0, 4, 0, 5, 20, 21, 0),
    gsSP2Triangles(22, 23, 21, 0, 22, 21, 20, 0),
    gsSP2Triangles(5, 4, 9, 0, 0, 19, 24, 0),
    gsSP2Triangles(17, 25, 18, 0, 8, 26, 6, 0),
    gsSP2Triangles(27, 19, 18, 0, 19, 27, 24, 0),
    gsSP2Triangles(26, 8, 23, 0, 9, 16, 5, 0),
    gsSP2Triangles(18, 24, 27, 0, 4, 3, 17, 0),
    gsSP2Triangles(8, 25, 21, 0, 15, 6, 26, 0),
    gsSP2Triangles(28, 14, 13, 0, 23, 8, 21, 0),
    gsSP2Triangles(11, 10, 29, 0, 5, 21, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000F00, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_zl2Vtx_00BC10[230], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 20, 19, 21, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[261], 11, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000F40, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(3, 4, 5, 0, 6, 4, 3, 0),
    gsSP2Triangles(7, 8, 9, 0, 10, 8, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010CE4DL_00ED60[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001140, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[118], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 1, 3, 0, 4, 5, 1, 0),
    gsSP2Triangles(6, 7, 0, 0, 6, 0, 2, 0),
    gsSP2Triangles(4, 6, 5, 0, 4, 7, 6, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001180, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(8, 9, 10, 0, 11, 10, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 13, 12, 15, 0),
    gsSP1Triangle(16, 17, 18, 0),
    gsSP1Triangle(19, 20, 21, 0),
    gsSP1Triangle(22, 23, 24, 0),
    gsSP1Triangle(25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[149], 27, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001280, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(9, 10, 11, 0, 9, 12, 10, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001140, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 18, 17, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000F40, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(21, 22, 23, 0, 22, 24, 23, 0),
    gsSP2Triangles(24, 25, 23, 0, 25, 26, 23, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[176], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(2, 3, 4, 0, 2, 4, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010CF0DL_00F0E0[] = {
    gsSPMatrix(0x0D000180, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[90], 4, 0),
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000F00, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00BC10[94], 14, 4),
    gsSP2Triangles(4, 0, 5, 0, 0, 6, 7, 0),
    gsSP2Triangles(0, 1, 8, 0, 9, 10, 1, 0),
    gsSP2Triangles(3, 11, 12, 0, 1, 2, 13, 0),
    gsSP2Triangles(14, 2, 3, 0, 15, 3, 0, 0),
    gsSP1Triangle(16, 0, 17, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[108], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP2Triangles(1, 0, 4, 0, 2, 5, 6, 0),
    gsSP2Triangles(5, 7, 4, 0, 4, 7, 1, 0),
    gsSP2Triangles(1, 8, 2, 0, 2, 8, 5, 0),
    gsSP1Triangle(9, 5, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010CFCDL_00F228[] = {
    gsSPMatrix(0x0D0001C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(object_zl2Vtx_00BC10, 6, 0),
    gsSPMatrix(0x0D000200, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000E00, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00BC10[6], 12, 6),
    gsSP2Triangles(6, 2, 0, 0, 7, 4, 1, 0),
    gsSP2Triangles(8, 1, 3, 0, 3, 9, 10, 0),
    gsSP2Triangles(1, 11, 12, 0, 5, 13, 14, 0),
    gsSP2Triangles(15, 0, 5, 0, 0, 16, 17, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[18], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 0, 4, 9, 0),
    gsSP2Triangles(0, 10, 11, 0, 7, 12, 8, 0),
    gsSP2Triangles(1, 13, 14, 0, 7, 2, 12, 0),
    gsSP2Triangles(12, 2, 1, 0, 2, 4, 0, 0),
    gsSP2Triangles(15, 8, 12, 0, 14, 12, 1, 0),
    gsSP2Triangles(11, 1, 0, 0, 9, 16, 0, 0),
    gsSP2Triangles(17, 18, 19, 0, 19, 2, 17, 0),
    gsSP2Triangles(4, 2, 19, 0, 20, 21, 3, 0),
    gsSP2Triangles(20, 22, 23, 0, 21, 20, 23, 0),
    gsSP2Triangles(9, 4, 3, 0, 24, 17, 2, 0),
    gsSP2Triangles(18, 25, 19, 0, 8, 26, 6, 0),
    gsSP2Triangles(18, 17, 27, 0, 24, 27, 17, 0),
    gsSP2Triangles(22, 6, 26, 0, 3, 16, 9, 0),
    gsSP2Triangles(27, 24, 18, 0, 19, 5, 4, 0),
    gsSP2Triangles(20, 25, 6, 0, 26, 8, 15, 0),
    gsSP2Triangles(14, 13, 28, 0, 20, 6, 22, 0),
    gsSP2Triangles(29, 11, 10, 0, 5, 20, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000F00, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSPVertex(&object_zl2Vtx_00BC10[48], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 6, 7, 4, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 17, 14, 16, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 19, 18, 0),
    gsSP2Triangles(22, 23, 24, 0, 25, 26, 27, 0),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[79], 11, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000F40, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C),
    gsSP2Triangles(3, 4, 5, 0, 5, 4, 6, 0),
    gsSP2Triangles(7, 8, 9, 0, 9, 8, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010C9CDL_00F530[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0024C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[543], 31, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000E00, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(3, 4, 5, 0, 3, 5, 6, 0),
    gsSP1Triangle(3, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0024C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(8, 9, 10, 0),
    gsSP1Triangle(11, 12, 13, 0),
    gsSP1Triangle(14, 15, 16, 0),
    gsSP1Triangle(17, 18, 19, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002500, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP1Triangle(23, 24, 25, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000E00, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(26, 27, 28, 0, 26, 29, 27, 0),
    gsSP1Triangle(30, 28, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002600, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x001C),
    gsSPVertex(&object_zl2Vtx_00BC10[574], 31, 0),
    gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
    gsSP1Triangle(0, 4, 1, 0),
    gsSP1Triangle(5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002700, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(8, 9, 10, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002740, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002780, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP1Triangle(14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002700, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(17, 18, 19, 0, 20, 17, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002880, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSP2Triangles(21, 22, 23, 0, 24, 21, 23, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002700, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(25, 26, 27, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002740, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(28, 29, 30, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[605], 31, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002700, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(3, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002880, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x003C),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002700, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002780, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP1Triangle(14, 15, 16, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002740, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(17, 18, 19, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002700, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR
                         | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(20, 21, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002600, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 8, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x001C),
    gsSP1Triangle(23, 24, 25, 0),
    gsSP2Triangles(26, 27, 28, 0, 28, 29, 26, 0),
    gsSP1Triangle(27, 30, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000E00, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSPVertex(&object_zl2Vtx_00BC10[636], 28, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP1Triangle(1, 0, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_002500, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP1Triangle(5, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_1TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0024C0, G_IM_FMT_CI, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 3, 3, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x001C, 0x001C),
    gsSP1Triangle(8, 9, 10, 0),
    gsSP1Triangle(11, 12, 13, 0),
    gsSP1Triangle(14, 15, 16, 0),
    gsSP1Triangle(17, 18, 19, 0),
    gsSP1Triangle(20, 21, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_000E00, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C),
    gsSP2Triangles(23, 24, 25, 0, 26, 23, 25, 0),
    gsSP1Triangle(27, 26, 25, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010CA8DL_0102D8[] = {
    gsSPMatrix(0x0D000000, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[478], 13, 0),
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0012C0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00BC10[491], 17, 13),
    gsSP2Triangles(0, 5, 13, 0, 0, 14, 15, 0),
    gsSP2Triangles(16, 4, 7, 0, 17, 18, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsSP2Triangles(1, 19, 20, 0, 21, 3, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0012C0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x00FC),
    gsSP1Triangle(22, 23, 6, 0),
    gsSP1Triangle(24, 25, 2, 0),
    gsSP1Triangle(11, 26, 27, 0),
    gsSP1Triangle(6, 28, 29, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001CC0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x00FC),
    gsSPVertex(&object_zl2Vtx_00BC10[508], 16, 13),
    gsSP2Triangles(13, 14, 12, 0, 12, 3, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0012C0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x00FC),
    gsSP2Triangles(16, 8, 10, 0, 17, 18, 10, 0),
    gsSP2Triangles(7, 9, 19, 0, 9, 20, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0016C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(22, 23, 24, 0, 24, 25, 22, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001AC0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSP1Triangle(26, 27, 28, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0012C0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x00FC),
    gsSPVertex(&object_zl2Vtx_00BC10[524], 19, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(3, 4, 5, 0),
    gsSP1Triangle(6, 7, 8, 0),
    gsSP1Triangle(9, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_001AC0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x003C),
    gsSP1Triangle(12, 13, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_2TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0016C0, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C),
    gsSP2Triangles(15, 16, 17, 0, 17, 18, 15, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010CB4DL_0108E8[] = {
    gsSPMatrix(0x0D000040, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[440], 14, 0),
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0012C0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00BC10[454], 15, 14),
    gsSP2Triangles(0, 7, 14, 0, 15, 0, 16, 0),
    gsSP2Triangles(2, 17, 18, 0, 19, 6, 2, 0),
    gsSP2Triangles(4, 20, 21, 0, 22, 3, 4, 0),
    gsSP2Triangles(1, 23, 24, 0, 25, 5, 1, 0),
    gsSP2Triangles(26, 27, 11, 0, 11, 12, 28, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[469], 9, 14),
    gsSP2Triangles(14, 15, 13, 0, 13, 8, 16, 0),
    gsSP2Triangles(17, 18, 9, 0, 9, 6, 19, 0),
    gsSP2Triangles(20, 7, 10, 0, 21, 10, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010CC0DL_010A20[] = {
    gsSPMatrix(0x0D000080, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[402], 14, 0),
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0012C0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00BC10[416], 15, 14),
    gsSP2Triangles(0, 14, 1, 0, 15, 16, 1, 0),
    gsSP2Triangles(3, 17, 18, 0, 19, 5, 3, 0),
    gsSP2Triangles(6, 20, 21, 0, 22, 4, 6, 0),
    gsSP2Triangles(2, 23, 24, 0, 25, 7, 2, 0),
    gsSP2Triangles(26, 27, 10, 0, 10, 8, 28, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[431], 9, 14),
    gsSP2Triangles(14, 15, 9, 0, 9, 12, 16, 0),
    gsSP2Triangles(17, 18, 13, 0, 13, 5, 19, 0),
    gsSP2Triangles(11, 20, 0, 0, 11, 21, 22, 0),
    gsSPEndDisplayList(),
};

Gfx gZelda2SkelLimbsLimb_010CCCDL_010B58[] = {
    gsSPMatrix(0x0D0000C0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPSetGeometryMode(G_FOG | G_LIGHTING),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPVertex(&object_zl2Vtx_00BC10[364], 14, 0),
    gsSPMatrix(0x0D000100, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPDisplayList(0x0B000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, PRIMITIVE, 0, COMBINED, 0, COMBINED, 0, ENVIRONMENT, 0),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTLUT_pal256(gZelda2_0TLUT),
    gsDPLoadTextureBlock(object_zl2Tex_0012C0, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, 0x003C, 0x00FC),
    gsDPSetPrimColor(0, 0x80, 255, 255, 255, 255),
    gsSPClearGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_zl2Vtx_00BC10[378], 15, 14),
    gsSP2Triangles(0, 14, 1, 0, 15, 16, 1, 0),
    gsSP2Triangles(3, 17, 18, 0, 19, 5, 3, 0),
    gsSP2Triangles(6, 20, 21, 0, 22, 4, 6, 0),
    gsSP2Triangles(7, 2, 23, 0, 24, 25, 7, 0),
    gsSP2Triangles(26, 10, 8, 0, 8, 27, 28, 0),
    gsSPVertex(&object_zl2Vtx_00BC10[393], 9, 14),
    gsSP2Triangles(14, 15, 9, 0, 9, 12, 16, 0),
    gsSP2Triangles(17, 18, 13, 0, 13, 5, 19, 0),
    gsSP2Triangles(11, 20, 0, 0, 11, 21, 22, 0),
    gsSPEndDisplayList(),
};

StandardLimb gZelda2SkelLimbsLimb_010C90 = { 
    { 0, 3600, 100 }, 0x01, LIMB_DONE,
    NULL
};

StandardLimb gZelda2SkelLimbsLimb_010C9C = { 
    { 0, 0, 0 }, 0x02, 0x06,
    gZelda2SkelLimbsLimb_010C9CDL_00F530
};

StandardLimb gZelda2SkelLimbsLimb_010CA8 = { 
    { 450, 0, 0 }, 0x03, LIMB_DONE,
    gZelda2SkelLimbsLimb_010CA8DL_0102D8
};

StandardLimb gZelda2SkelLimbsLimb_010CB4 = { 
    { 1950, 0, 0 }, 0x04, LIMB_DONE,
    gZelda2SkelLimbsLimb_010CB4DL_0108E8
};

StandardLimb gZelda2SkelLimbsLimb_010CC0 = { 
    { 500, 0, 0 }, 0x05, LIMB_DONE,
    gZelda2SkelLimbsLimb_010CC0DL_010A20
};

StandardLimb gZelda2SkelLimbsLimb_010CCC = { 
    { 450, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gZelda2SkelLimbsLimb_010CCCDL_010B58
};

StandardLimb gZelda2SkelLimbsLimb_010CD8 = { 
    { 0, 0, 0 }, 0x07, LIMB_DONE,
    gZelda2SkelLimbsLimb_010CD8DL_00B068
};

StandardLimb gZelda2SkelLimbsLimb_010CE4 = { 
    { 897, -50, 550 }, 0x08, 0x0A,
    gZelda2SkelLimbsLimb_010CE4DL_00ED60
};

StandardLimb gZelda2SkelLimbsLimb_010CF0 = { 
    { 900, 0, 0 }, 0x09, LIMB_DONE,
    gZelda2SkelLimbsLimb_010CF0DL_00F0E0
};

StandardLimb gZelda2SkelLimbsLimb_010CFC = { 
    { 900, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gZelda2SkelLimbsLimb_010CFCDL_00F228
};

StandardLimb gZelda2SkelLimbsLimb_010D08 = { 
    { 897, -50, -550 }, 0x0B, 0x0D,
    gZelda2SkelLimbsLimb_010D08DL_00E590
};

StandardLimb gZelda2SkelLimbsLimb_010D14 = { 
    { 900, 0, 0 }, 0x0C, LIMB_DONE,
    gZelda2SkelLimbsLimb_010D14DL_00E910
};

StandardLimb gZelda2SkelLimbsLimb_010D20 = { 
    { 901, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gZelda2SkelLimbsLimb_010D20DL_00EA58
};

StandardLimb gZelda2SkelLimbsLimb_010D2C = { 
    { 1405, 0, 0 }, LIMB_DONE, LIMB_DONE,
    gZelda2SkelLimbsLimb_010D2CDL_007DC8
};

void* gZelda2SkelLimbs[] = {
    &gZelda2SkelLimbsLimb_010C90,
    &gZelda2SkelLimbsLimb_010C9C,
    &gZelda2SkelLimbsLimb_010CA8,
    &gZelda2SkelLimbsLimb_010CB4,
    &gZelda2SkelLimbsLimb_010CC0,
    &gZelda2SkelLimbsLimb_010CCC,
    &gZelda2SkelLimbsLimb_010CD8,
    &gZelda2SkelLimbsLimb_010CE4,
    &gZelda2SkelLimbsLimb_010CF0,
    &gZelda2SkelLimbsLimb_010CFC,
    &gZelda2SkelLimbsLimb_010D08,
    &gZelda2SkelLimbsLimb_010D14,
    &gZelda2SkelLimbsLimb_010D20,
    &gZelda2SkelLimbsLimb_010D2C,
};

FlexSkeletonHeader gZelda2Skel = { 
    { gZelda2SkelLimbs, ARRAY_COUNT(gZelda2SkelLimbs) }, 13
};

