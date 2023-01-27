#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_hidan_objects.h"

u64 object_hidan_objectsTLUT_000000[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTLUT_000000.rgba16.inc.c"
};

u64 object_hidan_objectsTLUT_000020[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTLUT_000020.rgba16.inc.c"
};

u64 object_hidan_objectsTex_000040[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_000040.ci4.inc.c"
};

u64 object_hidan_objectsTex_000240[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_000240.rgba16.inc.c"
};

u64 object_hidan_objectsTex_000A40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_000A40.rgba16.inc.c"
};

u64 object_hidan_objectsTex_001A40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_001A40.rgba16.inc.c"
};

u64 object_hidan_objectsTex_002A40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_002A40.rgba16.inc.c"
};

u64 object_hidan_objectsTex_003A40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_003A40.rgba16.inc.c"
};

u64 object_hidan_objectsTex_004240[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_004240.rgba16.inc.c"
};

u64 object_hidan_objectsTex_004A40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_004A40.rgba16.inc.c"
};

u64 object_hidan_objectsTex_005240[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_005240.ci4.inc.c"
};

u64 object_hidan_objectsTex_005640[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_005640.ci4.inc.c"
};

u64 object_hidan_objectsTex_005A40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_005A40.ci4.inc.c"
};

u64 object_hidan_objectsTex_005E40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_005E40.rgba16.inc.c"
};

u64 object_hidan_objectsTex_006640[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_006640.ci4.inc.c"
};

u64 object_hidan_objectsTex_006A40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_006A40.ci4.inc.c"
};

u64 object_hidan_objectsTex_006C40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_006C40.ci4.inc.c"
};

u64 object_hidan_objectsTex_006E40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_006E40.rgba16.inc.c"
};

Vtx object_hidan_objectsVtx_007640[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsVtx_007640.vtx.inc"
};

Gfx gFireTempleTallestPillarAboveRoomBeforeBossDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_hidan_objectsVtx_007640, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(6, 7, 4, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 0, 0, 12, 9, 0, 0),
    gsSP2Triangles(12, 0, 4, 0, 13, 14, 12, 0),
    gsSP2Triangles(14, 13, 7, 0, 12, 4, 13, 0),
    gsSP2Triangles(15, 16, 17, 0, 18, 19, 16, 0),
    gsSP2Triangles(16, 15, 18, 0, 18, 20, 21, 0),
    gsSP2Triangles(18, 21, 19, 0, 20, 22, 23, 0),
    gsSP2Triangles(20, 23, 21, 0, 24, 25, 26, 0),
    gsSP2Triangles(27, 26, 28, 0, 26, 27, 24, 0),
    gsSP2Triangles(24, 29, 30, 0, 24, 30, 25, 0),
    gsSPVertex(&object_hidan_objectsVtx_007640[31], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_006640, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[35], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 2, 4, 0, 2, 3, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[40], 24, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 5, 4, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 6, 0, 10, 6, 9, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSP2Triangles(16, 15, 14, 0, 17, 16, 14, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 23, 18, 0, 22, 18, 21, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_006E40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[64], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[68], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleStoneStep2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_006A40, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[84], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[89], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 1, 4, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleStoneStep1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[94], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(8, 9, 10, 0, 9, 11, 10, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_006640, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[106], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[111], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleFlareDancerPlatformDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[115], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 4, 2, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005A40, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000020),
    gsSPVertex(&object_hidan_objectsVtx_007640[120], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[124], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005A40, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000020),
    gsSPVertex(&object_hidan_objectsVtx_007640[128], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[132], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[144], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 0, 4, 0, 1, 4, 5, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(7, 6, 3, 0, 7, 3, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_006640, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[152], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 0, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005A40, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000020),
    gsSPVertex(&object_hidan_objectsVtx_007640[157], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleStationaryFlamethrowerTallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[165], 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsSP2Triangles(8, 9, 3, 0, 8, 3, 7, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(11, 14, 15, 0, 11, 15, 12, 0),
    gsSP2Triangles(16, 17, 18, 0, 16, 18, 19, 0),
    gsSP2Triangles(17, 20, 21, 0, 17, 21, 18, 0),
    gsSP2Triangles(22, 23, 16, 0, 22, 16, 19, 0),
    gsSP2Triangles(24, 25, 10, 0, 24, 10, 13, 0),
    gsSP2Triangles(2, 26, 27, 0, 2, 27, 6, 0),
    gsSP2Triangles(1, 28, 29, 0, 1, 29, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[195], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleSpinningFlamethrowerDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[199], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[203], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[207], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[211], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_003A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[223], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[227], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSP2Triangles(16, 12, 15, 0, 16, 15, 17, 0),
    gsSP2Triangles(18, 19, 20, 0, 18, 20, 21, 0),
    gsSP2Triangles(22, 18, 21, 0, 22, 21, 23, 0),
    gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
    gsSP2Triangles(28, 24, 27, 0, 28, 27, 29, 0),
    gsSPVertex(&object_hidan_objectsVtx_007640[257], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 6, 9, 0, 10, 9, 11, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[269], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(3, 2, 4, 0, 2, 5, 4, 0),
    gsSP2Triangles(2, 6, 5, 0, 7, 6, 2, 0),
    gsSP2Triangles(8, 7, 2, 0, 1, 8, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[278], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[284], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleStationaryFlamethrowerShortDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[292], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005A40, G_IM_FMT_CI, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000020),
    gsSPVertex(&object_hidan_objectsVtx_007640[300], 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(1, 12, 13, 0, 1, 13, 2, 0),
    gsSP2Triangles(7, 10, 9, 0, 7, 9, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[314], 3, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[317], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[321], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[325], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[333], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[341], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[347], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[355], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(4, 3, 2, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 8, 6, 0, 5, 9, 8, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[365], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleHookshotElevatorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[369], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[374], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[390], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[394], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(1, 3, 4, 0, 3, 5, 4, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[400], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_000040, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[415], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleLargeBombableWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005240, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[419], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleCrackedStoneFloorDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_006A40, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[423], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
    gsSP2Triangles(0, 6, 1, 0, 6, 7, 1, 0),
    gsSP2Triangles(7, 8, 1, 0, 8, 9, 1, 0),
    gsSP2Triangles(7, 10, 8, 0, 10, 11, 9, 0),
    gsSP2Triangles(10, 9, 8, 0, 6, 12, 7, 0),
    gsSP2Triangles(12, 13, 7, 0, 13, 10, 7, 0),
    gsSP2Triangles(13, 11, 10, 0, 12, 2, 13, 0),
    gsSP2Triangles(2, 3, 13, 0, 3, 14, 13, 0),
    gsSP2Triangles(14, 15, 13, 0, 3, 4, 14, 0),
    gsSP2Triangles(4, 5, 15, 0, 4, 15, 14, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_005E40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPVertex(&object_hidan_objectsVtx_007640[439], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsSP2Triangles(3, 2, 11, 0, 3, 11, 10, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleMetalFence2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[451], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleHammerableTotemBodyDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[456], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[462], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 2, 1, 0, 4, 1, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[468], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 0, 0, 4, 0, 3, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[478], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[482], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(4, 7, 8, 0, 4, 8, 9, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleHammerableTotemHeadDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[492], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 4, 5, 0, 0, 5, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[498], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_000A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[504], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 5, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(object_hidan_objectsTex_002A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[510], 18, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 6, 5, 0, 8, 5, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleMetalFenceDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[528], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleBombableWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_006C40, G_IM_FMT_CI, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[532], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(5, 3, 1, 0, 0, 5, 1, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleStoneBlock1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_006640, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[538], 21, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(3, 4, 1, 0, 4, 2, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 5, 7, 8, 0),
    gsSP2Triangles(9, 10, 6, 0, 9, 6, 11, 0),
    gsSP2Triangles(11, 12, 13, 0, 11, 13, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(19, 20, 6, 0, 19, 6, 5, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleStoneBlock2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[559], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_003A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[575], 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 0, 4, 1, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 5, 7, 0),
    gsSP2Triangles(9, 8, 7, 0, 6, 9, 7, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleStonePlatform1DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_003A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[585], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 4, 3, 0, 0, 2, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[590], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleStonePlatform2DL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[606], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(6, 5, 4, 0, 6, 4, 7, 0),
    gsSP2Triangles(0, 6, 7, 0, 0, 7, 1, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_001A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[614], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 1, 0, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[619], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 1, 0, 0, 4, 0, 5, 0),
    gsSP2Triangles(6, 4, 5, 0, 6, 5, 7, 0),
    gsSP2Triangles(3, 2, 6, 0, 3, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_001A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[627], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSP2Triangles(2, 1, 4, 0, 3, 2, 4, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsSPVertex(&object_hidan_objectsVtx_007640[632], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPLoadTextureBlock(object_hidan_objectsTex_003A40, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[640], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(0, 2, 4, 0, 0, 4, 3, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleMetalFenceWithSlantDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_004240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 64, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[645], 9, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsSP1Triangle(4, 7, 8, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTemplePillarInsertedInGroundDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_005640, G_IM_FMT_CI, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, object_hidan_objectsTLUT_000000),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_007640[654], 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 0, 3, 0, 4, 3, 5, 0),
    gsSP2Triangles(4, 5, 6, 0, 7, 6, 8, 0),
    gsSP2Triangles(6, 7, 4, 0, 9, 10, 11, 0),
    gsSP2Triangles(9, 11, 12, 0, 13, 9, 12, 0),
    gsSP2Triangles(13, 12, 14, 0, 15, 16, 13, 0),
    gsSP2Triangles(16, 15, 17, 0, 13, 14, 15, 0),
    gsSP2Triangles(18, 19, 20, 0, 21, 22, 19, 0),
    gsSP2Triangles(19, 18, 21, 0, 21, 23, 24, 0),
    gsSP2Triangles(21, 24, 22, 0, 23, 25, 26, 0),
    gsSP2Triangles(23, 26, 24, 0, 27, 28, 29, 0),
    gsSP2Triangles(30, 29, 31, 0, 29, 30, 27, 0),
    gsSPVertex(&object_hidan_objectsVtx_007640[686], 6, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 5, 2, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock_4b(object_hidan_objectsTex_006640, G_IM_FMT_CI, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_hidan_objectsVtx_007640[692], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(0, 4, 5, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 7, 11, 0),
    gsSPEndDisplayList(),
};

Vtx object_hidan_objectsVtx_00C9D0[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsVtx_00C9D0.vtx.inc"
};

Gfx gFireTempleBigVerticalFlameDL[] = {
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 24, 80, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(object_hidan_objectsVtx_00C9D0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

CamData gFireTempleStoneBlock1ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleStoneBlock1ColSurfaceType[] = {
    { 0x00E00000, 0x000007C0 },
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleStoneBlock1ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0001, 0x0004, 0x0002, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0001, 0x0004, 0x0001, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0001, 0x0005, 0x0006, 0x0007, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0001, 0x0005, 0x0007, 0x0004, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0001, 0x0006, 0x0000, 0x0003, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0001, 0x0006, 0x0003, 0x0007, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0001, 0x0006, 0x0005, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0001, 0x0006, 0x0001, 0x0000, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0002, 0x0003, 0x0002, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFB50},
    {0x0002, 0x0003, 0x0004, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFB50},
};

Vec3s gFireTempleStoneBlock1ColVertices[] = {
    {   -600,      0,    600 },
    {    600,      0,    600 },
    {    600,   1200,    600 },
    {   -600,   1200,    600 },
    {    600,   1200,   -600 },
    {    600,      0,   -600 },
    {   -600,      0,   -600 },
    {   -600,   1200,   -600 },
};

CollisionHeader gFireTempleStoneBlock1Col = { 
    { -600, 0, -600 },
    { 600, 1200, 600 },
    8, gFireTempleStoneBlock1ColVertices,
    12, gFireTempleStoneBlock1ColPolygons,
    gFireTempleStoneBlock1ColSurfaceType,
    gFireTempleStoneBlock1ColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00CBAC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleStationaryFlamethrowerShortColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleStationaryFlamethrowerShortColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleStationaryFlamethrowerShortColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x7FFF, 0x0000, 0x0000, 0xFEE8},
    {0x0000, 0x0004, 0x0000, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFEE8},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x0000, 0x0000, 0x8001, 0xFEC0},
    {0x0000, 0x0006, 0x0001, 0x0004, 0x0000, 0x0000, 0x8001, 0xFEC0},
    {0x0000, 0x0007, 0x0003, 0x0002, 0x8001, 0x0000, 0x0000, 0xFEE8},
    {0x0000, 0x0007, 0x0002, 0x0006, 0x8001, 0x0000, 0x0000, 0xFEE8},
    {0x0000, 0x0005, 0x0000, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFEC0},
    {0x0000, 0x0005, 0x0003, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFEC0},
};

Vec3s gFireTempleStationaryFlamethrowerShortColVertices[] = {
    {    280,   1000,    320 },
    {    280,   1000,   -320 },
    {   -280,   1000,   -320 },
    {   -280,   1000,    320 },
    {    280,      0,   -320 },
    {    280,      0,    320 },
    {   -280,      0,   -320 },
    {   -280,      0,    320 },
};

CollisionHeader gFireTempleStationaryFlamethrowerShortCol = { 
    { -280, 0, -320 },
    { 280, 1000, 320 },
    8, gFireTempleStationaryFlamethrowerShortColVertices,
    10, gFireTempleStationaryFlamethrowerShortColPolygons,
    gFireTempleStationaryFlamethrowerShortColSurfaceType,
    gFireTempleStationaryFlamethrowerShortColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00CCBC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleStationaryFlamethrowerTallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleStationaryFlamethrowerTallColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleStationaryFlamethrowerTallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0xF6A0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xF6A0},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0000, 0x0004, 0x0005, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0001, 0x0000, 0x0005, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0001, 0x0005, 0x0006, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0003, 0x0002, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0003, 0x0007, 0x0004, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0002, 0x0001, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x0002, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFF38},
};

Vec3s gFireTempleStationaryFlamethrowerTallColVertices[] = {
    {   -200,   2400,   -200 },
    {   -200,   2400,    200 },
    {    200,   2400,    200 },
    {    200,   2400,   -200 },
    {    200,      0,   -200 },
    {   -200,      0,   -200 },
    {   -200,      0,    200 },
    {    200,      0,    200 },
};

CollisionHeader gFireTempleStationaryFlamethrowerTallCol = { 
    { -200, 0, -200 },
    { 200, 2400, 200 },
    8, gFireTempleStationaryFlamethrowerTallColVertices,
    10, gFireTempleStationaryFlamethrowerTallColPolygons,
    gFireTempleStationaryFlamethrowerTallColSurfaceType,
    gFireTempleStationaryFlamethrowerTallColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00CDCC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleTallestPillarAboveRoomBeforeBossColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleTallestPillarAboveRoomBeforeBossColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x0000C000, 0x000007C2 },
};

CollisionPoly gFireTempleTallestPillarAboveRoomBeforeBossColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0004, 0x0005, 0x0001, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0006, 0x0007, 0x0005, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0006, 0x0005, 0x0004, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0003, 0x0002, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0003, 0x0007, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0008, 0x0009, 0x000A, 0x0000, 0xC401, 0x7110, 0xD0DF},
    {0x0000, 0x0008, 0x000A, 0x000B, 0x0000, 0xC401, 0x7110, 0xD0DF},
    {0x0000, 0x000C, 0x000D, 0x0006, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x000C, 0x0006, 0x0004, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0004, 0x0000, 0x000E, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0004, 0x000E, 0x000C, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0000, 0x0003, 0x000F, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0000, 0x000F, 0x000E, 0x0000, 0x0000, 0x7FFF, 0xFDA8},
    {0x0000, 0x0003, 0x0006, 0x000D, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x0003, 0x000D, 0x000F, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0001, 0x000F, 0x000D, 0x000C, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x000F, 0x000C, 0x000E, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0002, 0x0010, 0x000A, 0x5A82, 0x0000, 0xA57E, 0x0000},
    {0x0000, 0x0002, 0x000A, 0x0009, 0x7FD9, 0xFB9D, 0x044E, 0xFB2C},
    {0x0000, 0x0002, 0x0009, 0x0007, 0x7FF0, 0xFC18, 0x0000, 0xFB83},
    {0x0000, 0x0009, 0x0008, 0x0005, 0x0000, 0xFC18, 0x8010, 0xFB83},
    {0x0000, 0x0009, 0x0005, 0x0007, 0x0000, 0xFC18, 0x8010, 0xFB83},
    {0x0000, 0x0005, 0x0008, 0x000B, 0x801A, 0xFC32, 0x0335, 0xFBA0},
    {0x0000, 0x0005, 0x000B, 0x0011, 0x8027, 0xFB38, 0xFC10, 0xFAF6},
    {0x0000, 0x0005, 0x0011, 0x0001, 0x800F, 0xFC32, 0x0000, 0xFB91},
    {0x0000, 0x0011, 0x000B, 0x000A, 0x0000, 0xFB10, 0x7FE7, 0xFACC},
    {0x0000, 0x0011, 0x000A, 0x0010, 0x0000, 0xFB10, 0x7FE7, 0xFACC},
    {0x0000, 0x0011, 0x0010, 0x0002, 0x0000, 0xFC32, 0x7FF1, 0xFB91},
    {0x0000, 0x0011, 0x0002, 0x0001, 0x0000, 0xFC32, 0x7FF1, 0xFB91},
};

Vec3s gFireTempleTallestPillarAboveRoomBeforeBossColVertices[] = {
    {   -600,  -2000,    600 },
    {   -600, -18000,    600 },
    {    600, -18000,    600 },
    {    600,  -2000,    600 },
    {   -600,  -2000,   -600 },
    {   -600, -18000,   -600 },
    {    600,  -2000,   -600 },
    {    600, -18000,   -600 },
    {   -344, -26388,   -344 },
    {    344, -26388,   -344 },
    {    366, -25050,    366 },
    {   -366, -25050,    366 },
    {   -600,      0,   -600 },
    {    600,      0,   -600 },
    {   -600,      0,    600 },
    {    600,      0,    600 },
    {    472, -22304,    472 },
    {   -472, -22304,    472 },
};

CollisionHeader gFireTempleTallestPillarAboveRoomBeforeBossCol = { 
    { -600, -26388, -600 },
    { 600, 0, 600 },
    18, gFireTempleTallestPillarAboveRoomBeforeBossColVertices,
    32, gFireTempleTallestPillarAboveRoomBeforeBossColPolygons,
    gFireTempleTallestPillarAboveRoomBeforeBossColSurfaceType,
    gFireTempleTallestPillarAboveRoomBeforeBossColCamDataList,
    0, NULL
};

CamData gFireTemplePillarInsertedInGroundColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTemplePillarInsertedInGroundColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
    { 0x0000C000, 0x000007C2 },
};

CollisionPoly gFireTemplePillarInsertedInGroundColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0xF8F8},
    {0x0000, 0x0003, 0x0002, 0x0001, 0x0000, 0x8001, 0x0000, 0xF8F8},
    {0x0001, 0x0004, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0007, 0x0004, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0000, 0x0006, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0000, 0x0005, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFE70},
    {0x0000, 0x0000, 0x0004, 0x0001, 0x0000, 0x0000, 0x7FFF, 0xFE70},
    {0x0000, 0x0003, 0x0001, 0x0004, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0003, 0x0004, 0x0007, 0x8001, 0x0000, 0x0000, 0xFE70},
    {0x0000, 0x0002, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xFE70},
    {0x0000, 0x0002, 0x0007, 0x0006, 0x0000, 0x0000, 0x8001, 0xFE70},
};

Vec3s gFireTemplePillarInsertedInGroundColVertices[] = {
    {    400,  -1800,    400 },
    {   -400,  -1800,    400 },
    {    400,  -1800,   -400 },
    {   -400,  -1800,   -400 },
    {   -400,      0,    400 },
    {    400,      0,    400 },
    {    400,      0,   -400 },
    {   -400,      0,   -400 },
};

CollisionHeader gFireTemplePillarInsertedInGroundCol = { 
    { -400, -1800, -400 },
    { 400, 0, 400 },
    8, gFireTemplePillarInsertedInGroundColVertices,
    12, gFireTemplePillarInsertedInGroundColPolygons,
    gFireTemplePillarInsertedInGroundColSurfaceType,
    gFireTemplePillarInsertedInGroundColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00D1B4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleSpinningFlamethrowerColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleSpinningFlamethrowerColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleSpinningFlamethrowerColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x393E, 0x727C, 0xFEF4},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x393E, 0x727C, 0xFEF4},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x0000, 0xC6C2, 0x727C, 0xFF4D},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x0000, 0xC6C2, 0x727C, 0xFF4D},
    {0x0000, 0x0005, 0x0004, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0004, 0x0007, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0007, 0x0008, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0006, 0x0008, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0006, 0x0009, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000B, 0x0006, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000B, 0x000C, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000C, 0x0005, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x000D, 0x000E, 0x000F, 0xB00B, 0x3BF8, 0xB00B, 0xFEE7},
    {0x0000, 0x000D, 0x000F, 0x0010, 0xB00B, 0x3BF8, 0xB00B, 0xFEE7},
    {0x0000, 0x000E, 0x000B, 0x000A, 0xB00B, 0xC408, 0xB00B, 0xFF45},
    {0x0000, 0x000E, 0x000A, 0x000F, 0xB00B, 0xC408, 0xB00B, 0xFF45},
    {0x0000, 0x0011, 0x0012, 0x000E, 0x8D84, 0x393E, 0x0000, 0xFEF4},
    {0x0000, 0x0011, 0x000E, 0x000D, 0x8D84, 0x393E, 0x0000, 0xFEF4},
    {0x0000, 0x0012, 0x000C, 0x000B, 0x8D84, 0xC6C2, 0x0000, 0xFF4D},
    {0x0000, 0x0012, 0x000B, 0x000E, 0x8D84, 0xC6C2, 0x0000, 0xFF4D},
    {0x0000, 0x0010, 0x000F, 0x0013, 0x0000, 0x393E, 0x8D84, 0xFEF4},
    {0x0000, 0x0010, 0x0013, 0x0014, 0x0000, 0x393E, 0x8D84, 0xFEF4},
    {0x0000, 0x000F, 0x000A, 0x0009, 0x0000, 0xC6C2, 0x8D84, 0xFF4D},
    {0x0000, 0x000F, 0x0009, 0x0013, 0x0000, 0xC6C2, 0x8D84, 0xFF4D},
    {0x0000, 0x0014, 0x0013, 0x0015, 0x4FF5, 0x3BF8, 0xB00B, 0xFEE7},
    {0x0000, 0x0014, 0x0015, 0x0016, 0x4FF5, 0x3BF8, 0xB00B, 0xFEE7},
    {0x0000, 0x0013, 0x0009, 0x0008, 0x4FF5, 0xC408, 0xB00B, 0xFF45},
    {0x0000, 0x0013, 0x0008, 0x0015, 0x4FF5, 0xC408, 0xB00B, 0xFF45},
    {0x0000, 0x0017, 0x0018, 0x0001, 0x4FF5, 0x3BF8, 0x4FF5, 0xFEE7},
    {0x0000, 0x0017, 0x0001, 0x0000, 0x4FF5, 0x3BF8, 0x4FF5, 0xFEE7},
    {0x0000, 0x0018, 0x0007, 0x0004, 0x4FF5, 0xC408, 0x4FF5, 0xFF45},
    {0x0000, 0x0018, 0x0004, 0x0001, 0x4FF5, 0xC408, 0x4FF5, 0xFF45},
    {0x0000, 0x0016, 0x0015, 0x0018, 0x727C, 0x393E, 0x0000, 0xFEF4},
    {0x0000, 0x0016, 0x0018, 0x0017, 0x727C, 0x393E, 0x0000, 0xFEF4},
    {0x0000, 0x0015, 0x0008, 0x0007, 0x727C, 0xC6C2, 0x0000, 0xFF4D},
    {0x0000, 0x0015, 0x0007, 0x0018, 0x727C, 0xC6C2, 0x0000, 0xFF4D},
    {0x0000, 0x0003, 0x0002, 0x0012, 0xB00B, 0x3BF8, 0x4FF5, 0xFEE7},
    {0x0000, 0x0003, 0x0012, 0x0011, 0xB00B, 0x3BF8, 0x4FF5, 0xFEE7},
    {0x0000, 0x0002, 0x0005, 0x000C, 0xB00B, 0xC408, 0x4FF5, 0xFF45},
    {0x0000, 0x0002, 0x000C, 0x0012, 0xB00B, 0xC408, 0x4FF5, 0xFF45},
    {0x0001, 0x0019, 0x001A, 0x001B, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0001, 0x0019, 0x001B, 0x001C, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0000, 0x001D, 0x001E, 0x001C, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x001D, 0x001C, 0x001B, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x001F, 0x001D, 0x001B, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x001F, 0x001B, 0x001A, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0020, 0x001F, 0x001A, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0020, 0x001A, 0x0019, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x001E, 0x0020, 0x0019, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x001E, 0x0019, 0x001C, 0x0000, 0x0000, 0x7FFF, 0xFF38},
};

Vec3s gFireTempleSpinningFlamethrowerColVertices[] = {
    {    150,      0,    300 },
    {    125,    100,    250 },
    {   -125,    100,    250 },
    {   -150,      0,    300 },
    {    150,    200,    300 },
    {   -150,    200,    300 },
    {      0,    200,      0 },
    {    300,    200,    150 },
    {    300,    200,   -150 },
    {    150,    200,   -300 },
    {   -150,    200,   -300 },
    {   -300,    200,   -150 },
    {   -300,    200,    150 },
    {   -300,      0,   -150 },
    {   -250,    100,   -125 },
    {   -125,    100,   -250 },
    {   -150,      0,   -300 },
    {   -300,      0,    150 },
    {   -250,    100,    125 },
    {    125,    100,   -250 },
    {    150,      0,   -300 },
    {    250,    100,   -125 },
    {    300,      0,   -150 },
    {    300,      0,    150 },
    {    250,    100,    125 },
    {    200,    800,    200 },
    {    200,    800,   -200 },
    {   -200,    800,   -200 },
    {   -200,    800,    200 },
    {   -200,    200,   -200 },
    {   -200,    200,    200 },
    {    200,    200,   -200 },
    {    200,    200,    200 },
};

CollisionHeader gFireTempleSpinningFlamethrowerCol = { 
    { -300, 0, -300 },
    { 300, 800, 300 },
    33, gFireTempleSpinningFlamethrowerColVertices,
    50, gFireTempleSpinningFlamethrowerColPolygons,
    gFireTempleSpinningFlamethrowerColSurfaceType,
    gFireTempleSpinningFlamethrowerColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00D5EC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleCrackedStoneFloorColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleCrackedStoneFloorColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
};

CollisionPoly gFireTempleCrackedStoneFloorColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0000, 0x0003, 0xE891, 0x78D3, 0xDCDA, 0x002B},
    {0x0000, 0x0003, 0x0002, 0x0005, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0003, 0x0005, 0xE857, 0x78FE, 0xDD96, 0x002A},
    {0x0000, 0x0006, 0x0004, 0x0005, 0xF9A0, 0x7CD1, 0x1B9F, 0xFF7B},
    {0x0000, 0x0007, 0x0006, 0x0005, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x0005, 0x0008, 0x0009, 0x2B56, 0x76A8, 0x14A3, 0x0059},
    {0x0000, 0x0005, 0x0009, 0x000A, 0xF08F, 0x7ED9, 0xF8A5, 0xFFE0},
    {0x0000, 0x0007, 0x0005, 0x000A, 0xF99E, 0x7FAD, 0xF99E, 0x0000},
    {0x0000, 0x000B, 0x0007, 0x000A, 0x0CBC, 0x7F5C, 0x0000, 0x0050},
    {0x0000, 0x0009, 0x0008, 0x000C, 0x14A1, 0x7A7A, 0x1EF1, 0x002E},
    {0x0000, 0x0009, 0x000C, 0x000D, 0x14A1, 0x7A7A, 0x1EF1, 0x002E},
    {0x0000, 0x000A, 0x0009, 0x000D, 0xF8DA, 0x7F58, 0xF547, 0xFFF0},
    {0x0000, 0x000D, 0x000C, 0x000E, 0x13E0, 0x7A4D, 0x201B, 0x0030},
    {0x0000, 0x000A, 0x000D, 0x000E, 0xF91A, 0x7F53, 0xF4DC, 0xFFEF},
    {0x0000, 0x000B, 0x000A, 0x000E, 0xFC32, 0x7EDF, 0x107E, 0x004F},
    {0x0000, 0x000F, 0x000B, 0x000E, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000E, 0x0001, 0x0000, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000E, 0x0000, 0x0004, 0xD597, 0x758E, 0xE457, 0x003A},
    {0x0000, 0x000E, 0x0004, 0x0006, 0x14D5, 0x7E33, 0xFB31, 0xFF9C},
    {0x0000, 0x000F, 0x000E, 0x0006, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0000, 0x000E, 0x000C, 0x0001, 0xCA1B, 0x6BCB, 0xD4E2, 0x002A},
    {0x0000, 0x000C, 0x0008, 0x0002, 0xE13D, 0x735C, 0xD1DB, 0x0018},
    {0x0000, 0x000C, 0x0002, 0x0001, 0xE13D, 0x735C, 0xD1DB, 0x0018},
    {0x0000, 0x0008, 0x0005, 0x0002, 0xD370, 0x6F68, 0xD370, 0x0000},
};

Vec3s gFireTempleCrackedStoneFloorColVertices[] = {
    {    125,      0,     75 },
    {    100,      0,      0 },
    {   -200,      0,    200 },
    {   -100,      0,    225 },
    {    200,     80,    300 },
    {   -500,      0,    500 },
    {    800,      0,    800 },
    {   -800,      0,    800 },
    {   -200,    -40,    100 },
    {   -250,      0,    -25 },
    {   -400,    -40,   -400 },
    {   -800,      0,   -800 },
    {    100,    -40,   -100 },
    {    -25,      0,   -175 },
    {    500,      0,   -500 },
    {    800,      0,   -800 },
};

CollisionHeader gFireTempleCrackedStoneFloorCol = { 
    { -800, -40, -800 },
    { 800, 80, 800 },
    16, gFireTempleCrackedStoneFloorColVertices,
    26, gFireTempleCrackedStoneFloorColPolygons,
    gFireTempleCrackedStoneFloorColSurfaceType,
    gFireTempleCrackedStoneFloorColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00D82C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleBombableWallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleBombableWallColSurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gFireTempleBombableWallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gFireTempleBombableWallColVertices[] = {
    {    300,      0,      0 },
    {    300,   1000,      0 },
    {   -300,   1000,      0 },
    {   -300,      0,      0 },
};

CollisionHeader gFireTempleBombableWallCol = { 
    { -300, 0, 0 },
    { 300, 1000, 0 },
    4, gFireTempleBombableWallColVertices,
    2, gFireTempleBombableWallColPolygons,
    gFireTempleBombableWallColSurfaceType,
    gFireTempleBombableWallColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00D8A4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleLargeBombableWallColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleLargeBombableWallColSurfaceType[] = {
    { 0x00000000, 0x000007CB },
};

CollisionPoly gFireTempleLargeBombableWallColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
    {0x0000, 0x0003, 0x0000, 0x0002, 0x0000, 0x0000, 0x7FFF, 0x0000},
};

Vec3s gFireTempleLargeBombableWallColVertices[] = {
    {    800,   1200,      0 },
    {   -800,   1200,      0 },
    {   -800,      0,      0 },
    {    800,      0,      0 },
};

CollisionHeader gFireTempleLargeBombableWallCol = { 
    { -800, 0, 0 },
    { 800, 1200, 0 },
    4, gFireTempleLargeBombableWallColVertices,
    2, gFireTempleLargeBombableWallColPolygons,
    gFireTempleLargeBombableWallColSurfaceType,
    gFireTempleLargeBombableWallColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00D924[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleHammerableTotemColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleHammerableTotemColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleHammerableTotemColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2003, 0x0000, 0x0002, 0x7FFF, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2004, 0x0005, 0x0000, 0x0000, 0x0000, 0x8001, 0xFED4},
    {0x0000, 0x2004, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFED4},
    {0x0000, 0x2002, 0x0001, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFED4},
    {0x0000, 0x2002, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFED4},
    {0x0000, 0x2005, 0x0006, 0x0001, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x2005, 0x0001, 0x0000, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x2006, 0x0005, 0x0004, 0x8001, 0x0000, 0x0000, 0xFED4},
    {0x0000, 0x2007, 0x0006, 0x0004, 0x8001, 0x0000, 0x0000, 0xFED4},
};

Vec3s gFireTempleHammerableTotemColVertices[] = {
    {    300,    600,   -300 },
    {    300,    600,    300 },
    {    300,      0,    300 },
    {    300,      0,   -300 },
    {   -300,      0,   -300 },
    {   -300,    600,   -300 },
    {   -300,    600,    300 },
    {   -300,      0,    300 },
};

CollisionHeader gFireTempleHammerableTotemCol = { 
    { -300, 0, -300 },
    { 300, 600, 300 },
    8, gFireTempleHammerableTotemColVertices,
    10, gFireTempleHammerableTotemColPolygons,
    gFireTempleHammerableTotemColSurfaceType,
    gFireTempleHammerableTotemColCamDataList,
    0, NULL
};

Vtx object_hidan_objectsVtx_00DA40[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsVtx_00DA40.vtx.inc"
};

Gfx gFireTempleFireballUpperHalfDL[] = {
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(object_hidan_objectsVtx_00DA40, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_hidan_objectsVtx_00DAE0[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsVtx_00DAE0.vtx.inc"
};

Gfx gFireTempleBigFireWallDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR |
                         G_TX_CLAMP, 5, 6, 15, G_TX_NOLOD),
    gsDPLoadMultiBlock(0x0A000000, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                       G_TX_NOMIRROR | G_TX_WRAP, 5, 6, 15, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                       ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetRenderMode(G_RM_PASS, G_RM_AA_ZB_XLU_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_LIGHTING),
    gsSPDisplayList(0x08000000),
    gsSPVertex(object_hidan_objectsVtx_00DAE0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_hidan_objects_possiblePadding_00DBE8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

Vtx object_hidan_objectsVtx_00DBF0[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsVtx_00DBF0.vtx.inc"
};

Gfx gFireTempleFireballDL[] = {
    gsSPMatrix(0x01000000, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW),
    gsDPSetCombineLERP(PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, ENVIRONMENT,
                       TEXEL0, ENVIRONMENT, PRIMITIVE, 0, TEXEL0, 0),
    gsDPLoadTextureBlock(0x09000000, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(object_hidan_objectsVtx_00DBF0, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

CamData gFireTempleStoneStep2ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleStoneStep2ColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleStoneStep2ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0001, 0x0004, 0x0000, 0x0003, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0004, 0x0003, 0x0005, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gFireTempleStoneStep2ColVertices[] = {
    {   1000,      0,   -800 },
    {   1000,  -1000,   -800 },
    {  -1000,  -1000,   -800 },
    {  -1000,      0,   -800 },
    {   1000,      0,    800 },
    {  -1000,      0,    800 },
};

CollisionHeader gFireTempleStoneStep2Col = { 
    { -1000, -1000, -800 },
    { 1000, 0, 800 },
    6, gFireTempleStoneStep2ColVertices,
    4, gFireTempleStoneStep2ColPolygons,
    gFireTempleStoneStep2ColSurfaceType,
    gFireTempleStoneStep2ColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00DD48[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleStoneStep1ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleStoneStep1ColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleStoneStep1ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x0000, 0x0000, 0x7FFF, 0xFF38},
    {0x0000, 0x0004, 0x0002, 0x0005, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x8001, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0007, 0x0008, 0x0006, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0007, 0x0006, 0x0005, 0x0000, 0x0000, 0x8001, 0xFF38},
    {0x0000, 0x0008, 0x0007, 0x0001, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0000, 0x0008, 0x0001, 0x0009, 0x7FFF, 0x0000, 0x0000, 0xFF38},
    {0x0001, 0x0005, 0x0002, 0x0001, 0x0000, 0x7FFF, 0x0000, 0x0000},
    {0x0001, 0x0005, 0x0001, 0x0007, 0x0000, 0x7FFF, 0x0000, 0x0000},
};

Vec3s gFireTempleStoneStep1ColVertices[] = {
    {    200,   -200,    200 },
    {    200,      0,    200 },
    {   -200,      0,    200 },
    {   -200,   -200,    200 },
    {   -200,  -1000,    200 },
    {   -200,      0,   -200 },
    {   -200,  -1000,   -200 },
    {    200,      0,   -200 },
    {    200,  -1000,   -200 },
    {    200,  -1000,    200 },
};

CollisionHeader gFireTempleStoneStep1Col = { 
    { -200, -1000, -200 },
    { 200, 0, 200 },
    10, gFireTempleStoneStep1ColVertices,
    10, gFireTempleStoneStep1ColPolygons,
    gFireTempleStoneStep1ColSurfaceType,
    gFireTempleStoneStep1ColCamDataList,
    0, NULL
};

CamData gFireTempleStoneBlock2ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleStoneBlock2ColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleStoneBlock2ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0004, 0x0007, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0006, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0006, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0001, 0x0000, 0x0006, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0001, 0x0006, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0001, 0x0002, 0x0005, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0001, 0x0002, 0x0007, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFC18},
};

Vec3s gFireTempleStoneBlock2ColVertices[] = {
    {   -800,      0,   -800 },
    {   -800,      0,    800 },
    {   -800,   1000,    800 },
    {   -800,   1000,   -800 },
    {    800,      0,    800 },
    {    800,   1000,    800 },
    {    800,      0,   -800 },
    {    800,   1000,   -800 },
};

CollisionHeader gFireTempleStoneBlock2Col = { 
    { -800, 0, -800 },
    { 800, 1000, 800 },
    8, gFireTempleStoneBlock2ColVertices,
    12, gFireTempleStoneBlock2ColPolygons,
    gFireTempleStoneBlock2ColSurfaceType,
    gFireTempleStoneBlock2ColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00DFA4[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleHookshotElevatorColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleHookshotElevatorColSurfaceType[] = {
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleHookshotElevatorColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0003, 0x0000, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0002, 0x0001, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0003, 0x0002, 0x0004, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0xA57E, 0xA57E, 0xFEE5},
    {0x0000, 0x0004, 0x0006, 0x0003, 0x0000, 0xA57E, 0xA57E, 0xFEE5},
    {0x0000, 0x0003, 0x0006, 0x0007, 0x5A82, 0xA57E, 0x0000, 0xFEE5},
    {0x0000, 0x0003, 0x0007, 0x0000, 0x5A82, 0xA57E, 0x0000, 0xFEE5},
    {0x0000, 0x0000, 0x0007, 0x0008, 0x0000, 0xA57E, 0x5A82, 0xFEE5},
    {0x0000, 0x0000, 0x0008, 0x0001, 0x0000, 0xA57E, 0x5A82, 0xFEE5},
    {0x0000, 0x0001, 0x0008, 0x0005, 0xA57E, 0xA57E, 0x0000, 0xFEE5},
    {0x0000, 0x0001, 0x0005, 0x0004, 0xA57E, 0xA57E, 0x0000, 0xFEE5},
    {0x0000, 0x0009, 0x0008, 0x000A, 0x727C, 0x0000, 0x393E, 0x010C},
    {0x0000, 0x0009, 0x000A, 0x000B, 0x727C, 0x0000, 0x393E, 0x010C},
    {0x0000, 0x000B, 0x000C, 0x0009, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x000C, 0x000B, 0x000D, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x000C, 0x000D, 0x000E, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x000D, 0x000F, 0x000E, 0x0000, 0x7FFF, 0x0000, 0xFDA8},
    {0x0000, 0x000C, 0x0005, 0x0008, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000C, 0x0008, 0x0009, 0x8001, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000D, 0x0010, 0x0007, 0x8D84, 0x0000, 0x393E, 0x010C},
    {0x0000, 0x000D, 0x0007, 0x000F, 0x8D84, 0x0000, 0x393E, 0x010C},
    {0x0000, 0x000F, 0x0007, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000F, 0x0006, 0x000E, 0x7FFF, 0x0000, 0x0000, 0xFDA8},
    {0x0000, 0x000E, 0x0006, 0x0005, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x000E, 0x0005, 0x000C, 0x0000, 0x0000, 0x8001, 0xFDA8},
    {0x0000, 0x0008, 0x0007, 0x0010, 0x0000, 0x7FFF, 0x0000, 0xFF38},
    {0x0000, 0x0008, 0x0010, 0x000A, 0x0000, 0x7FFF, 0x0000, 0xFF38},
};

Vec3s gFireTempleHookshotElevatorColVertices[] = {
    {    400,      0,    400 },
    {   -400,      0,    400 },
    {      0,      0,      0 },
    {    400,      0,   -400 },
    {   -400,      0,   -400 },
    {   -600,    200,   -600 },
    {    600,    200,   -600 },
    {    600,    200,    600 },
    {   -600,    200,    600 },
    {   -600,    600,    600 },
    {   -200,    200,   -200 },
    {   -200,    600,   -200 },
    {   -600,    600,   -600 },
    {    200,    600,   -200 },
    {    600,    600,   -600 },
    {    600,    600,    600 },
    {    200,    200,   -200 },
};

CollisionHeader gFireTempleHookshotElevatorCol = { 
    { -600, 0, -600 },
    { 600, 600, 600 },
    17, gFireTempleHookshotElevatorColVertices,
    28, gFireTempleHookshotElevatorColPolygons,
    gFireTempleHookshotElevatorColSurfaceType,
    gFireTempleHookshotElevatorColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00E214[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleMetalFenceWithSlantColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleMetalFenceWithSlantColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gFireTempleMetalFenceWithSlantColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2004, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2005, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
    {0x0000, 0x2008, 0x0005, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
    {0x0000, 0x2008, 0x0007, 0x0009, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
};

Vec3s gFireTempleMetalFenceWithSlantColVertices[] = {
    {    720,      0,    -40 },
    {   -720,      0,    -40 },
    {   -720,    814,    -40 },
    {   -494,   1040,    -40 },
    {    720,   1040,    -40 },
    {   -720,    814,     40 },
    {   -720,      0,     40 },
    {    720,      0,     40 },
    {   -494,   1040,     40 },
    {    720,   1040,     40 },
};

CollisionHeader gFireTempleMetalFenceWithSlantCol = { 
    { -720, 0, -40 },
    { 720, 1040, 40 },
    10, gFireTempleMetalFenceWithSlantColVertices,
    6, gFireTempleMetalFenceWithSlantColPolygons,
    gFireTempleMetalFenceWithSlantColSurfaceType,
    gFireTempleMetalFenceWithSlantColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00E2F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleMetalFenceColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleMetalFenceColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gFireTempleMetalFenceColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
};

Vec3s gFireTempleMetalFenceColVertices[] = {
    {   -800,   1200,    -40 },
    {    800,   1200,    -40 },
    {    800,      0,    -40 },
    {   -800,      0,    -40 },
    {   -800,      0,     40 },
    {    800,      0,     40 },
    {    800,   1200,     40 },
    {   -800,   1200,     40 },
};

CollisionHeader gFireTempleMetalFenceCol = { 
    { -800, 0, -40 },
    { 800, 1200, 40 },
    8, gFireTempleMetalFenceColVertices,
    4, gFireTempleMetalFenceColPolygons,
    gFireTempleMetalFenceColSurfaceType,
    gFireTempleMetalFenceColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00E3AC[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleMetalFence2ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleMetalFence2ColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gFireTempleMetalFence2ColPolygons[] = {
    {0x0000, 0x2000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2000, 0x0002, 0x0003, 0x0000, 0x0000, 0x8001, 0xFFD8},
    {0x0000, 0x2004, 0x0005, 0x0006, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
    {0x0000, 0x2004, 0x0006, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFFD8},
};

Vec3s gFireTempleMetalFence2ColVertices[] = {
    {    800,      0,    -40 },
    {   -800,      0,    -40 },
    {   -800,   1200,    -40 },
    {    800,   1200,    -40 },
    {    800,   1200,     40 },
    {   -800,   1200,     40 },
    {   -800,      0,     40 },
    {    800,      0,     40 },
};

CollisionHeader gFireTempleMetalFence2Col = { 
    { -800, 0, -40 },
    { 800, 1200, 40 },
    8, gFireTempleMetalFence2ColVertices,
    4, gFireTempleMetalFence2ColPolygons,
    gFireTempleMetalFence2ColSurfaceType,
    gFireTempleMetalFence2ColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00E45C[] = {
    0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleFlareDancerPlatformColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleFlareDancerPlatformColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleFlareDancerPlatformColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0007, 0x0006, 0x0001, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0007, 0x0001, 0x0000, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0003, 0x0002, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0003, 0x0005, 0x0004, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0006, 0x0005, 0x0002, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0000, 0x0006, 0x0002, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000},
    {0x0001, 0x0000, 0x0003, 0x0004, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
    {0x0001, 0x0000, 0x0004, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFCE0},
};

Vec3s gFireTempleFlareDancerPlatformColVertices[] = {
    {   -800,    800,   -800 },
    {   -800,      0,   -800 },
    {   -800,      0,    800 },
    {   -800,    800,    800 },
    {    800,    800,    800 },
    {    800,      0,    800 },
    {    800,      0,   -800 },
    {    800,    800,   -800 },
};

CollisionHeader gFireTempleFlareDancerPlatformCol = { 
    { -800, 0, -800 },
    { 800, 800, 800 },
    8, gFireTempleFlareDancerPlatformColVertices,
    12, gFireTempleFlareDancerPlatformColPolygons,
    gFireTempleFlareDancerPlatformColSurfaceType,
    gFireTempleFlareDancerPlatformColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00E594[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFireTempleDoorKillerTex[] = {
#include "assets/objects/object_hidan_objects/fire_temple_door_killer.rgba16.inc.c"
};

Vtx object_hidan_objectsVtx_00F5A0[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsVtx_00F5A0.vtx.inc"
};

Gfx gFireTempleBombableDoorFrameDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gFireTempleDoorKillerTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_MIRROR | G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_hidan_objectsVtx_00F5A0[32], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(3, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleDoorWithHandleBackDL[] = {
    gsSPDisplayList(gFireTempleBombableDoorFrameDL),
    gsSPVertex(object_hidan_objectsVtx_00F5A0, 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 3, 0, 6, 3, 2, 0),
    gsSP2Triangles(8, 9, 5, 0, 8, 5, 4, 0),
    gsSP2Triangles(10, 11, 7, 0, 10, 7, 6, 0),
    gsSP2Triangles(6, 2, 1, 0, 6, 1, 5, 0),
    gsSP2Triangles(6, 5, 9, 0, 6, 9, 10, 0),
    gsSP2Triangles(11, 10, 9, 0, 11, 9, 8, 0),
    gsSP2Triangles(12, 13, 14, 0, 15, 12, 14, 0),
    gsSPEndDisplayList(),
};

Gfx gFireTempleDoorWithHandleFrontDL[] = {
    gsSPDisplayList(gFireTempleBombableDoorFrameDL),
    gsSPVertex(&object_hidan_objectsVtx_00F5A0[16], 16, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 6, 5, 11, 0),
    gsSP2Triangles(6, 11, 12, 0, 10, 9, 13, 0),
    gsSP2Triangles(10, 13, 14, 0, 13, 12, 11, 0),
    gsSP2Triangles(13, 11, 14, 0, 3, 8, 7, 0),
    gsSP2Triangles(3, 7, 4, 0, 10, 14, 11, 0),
    gsSP2Triangles(10, 11, 5, 0, 10, 5, 4, 0),
    gsSP2Triangles(10, 4, 7, 0, 15, 0, 2, 0),
    gsSPEndDisplayList(),
};

u8 object_hidan_objects_possiblePadding_00F9F8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleStonePlatform2ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleStonePlatform2ColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleStonePlatform2ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0006, 0x0001, 0x0000, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0006, 0x0000, 0x0007, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0005, 0x0004, 0x0003, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0005, 0x0003, 0x0002, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0001, 0x0002, 0x0001, 0x0006, 0x0000, 0x7FFF, 0x0000, 0xFC18},
    {0x0001, 0x0002, 0x0006, 0x0005, 0x0000, 0x7FFF, 0x0000, 0xFC18},
};

Vec3s gFireTempleStonePlatform2ColVertices[] = {
    {   -800,      0,    800 },
    {   -800,   1000,    800 },
    {   -800,   1000,   -800 },
    {   -800,      0,   -800 },
    {    800,      0,   -800 },
    {    800,   1000,   -800 },
    {    800,   1000,    800 },
    {    800,      0,    800 },
};

CollisionHeader gFireTempleStonePlatform2Col = { 
    { -800, 0, -800 },
    { 800, 1000, 800 },
    8, gFireTempleStonePlatform2ColVertices,
    10, gFireTempleStonePlatform2ColPolygons,
    gFireTempleStonePlatform2ColSurfaceType,
    gFireTempleStonePlatform2ColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_00FB14[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_hidan_objectsTex_00FB20[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_00FB20.rgba16.inc.c"
};

Vtx object_hidan_objectsVtx_010B20[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsVtx_010B20.vtx.inc"
};

Gfx gFireTempleDoorFrontDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_00FB20, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_hidan_objectsVtx_010B20, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 0, 0, 4, 0, 2, 0),
    gsSPVertex(&object_hidan_objectsVtx_010B20[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 3, 0),
    gsSPVertex(&object_hidan_objectsVtx_010B20[10], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(3, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_hidan_objects_possiblePadding_010D88[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 object_hidan_objectsTex_010D90[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsTex_010D90.rgba16.inc.c"
};

Vtx object_hidan_objectsVtx_011D90[] = {
#include "assets/objects/object_hidan_objects/object_hidan_objectsVtx_011D90.vtx.inc"
};

Gfx gFireTempleDoorBackDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(object_hidan_objectsTex_010D90, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_hidan_objectsVtx_011D90, 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
    gsSP2Triangles(4, 3, 0, 0, 4, 0, 2, 0),
    gsSPVertex(&object_hidan_objectsVtx_011D90[5], 5, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(2, 1, 4, 0, 2, 4, 3, 0),
    gsSPVertex(&object_hidan_objectsVtx_011D90[10], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 7, 6, 0),
    gsSP2Triangles(3, 8, 9, 0, 8, 10, 9, 0),
    gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
    gsSPEndDisplayList(),
};

u8 object_hidan_objects_possiblePadding_011FF8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gFireTempleStonePlatform1ColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gFireTempleStonePlatform1ColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
    { 0x00000000, 0x000007C2 },
};

CollisionPoly gFireTempleStonePlatform1ColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x8001, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0001, 0x0004, 0x0005, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x0000, 0x0000, 0x7FFF, 0xFCE0},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0004, 0x0007, 0x0005, 0x7FFF, 0x0000, 0x0000, 0xFCE0},
    {0x0000, 0x0006, 0x0000, 0x0003, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0000, 0x0006, 0x0003, 0x0007, 0x0000, 0x0000, 0x8001, 0xFCE0},
    {0x0001, 0x0002, 0x0005, 0x0007, 0x0000, 0x7FFF, 0x0000, 0xFC17},
    {0x0001, 0x0002, 0x0007, 0x0003, 0x0000, 0x7FFF, 0x0000, 0xFC17},
};

Vec3s gFireTempleStonePlatform1ColVertices[] = {
    {   -800,      1,   -800 },
    {   -800,      1,    800 },
    {   -800,   1001,    800 },
    {   -800,   1001,   -800 },
    {    800,      1,    800 },
    {    800,   1001,    800 },
    {    800,      1,   -800 },
    {    800,   1001,   -800 },
};

CollisionHeader gFireTempleStonePlatform1Col = { 
    { -800, 1, -800 },
    { 800, 1001, 800 },
    8, gFireTempleStonePlatform1ColVertices,
    10, gFireTempleStonePlatform1ColPolygons,
    gFireTempleStonePlatform1ColSurfaceType,
    gFireTempleStonePlatform1ColCamDataList,
    0, NULL
};

u8 object_hidan_objects_possiblePadding_012114[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFireTempleBigVerticalFlame0Tex[] = {
#include "assets/objects/object_hidan_objects/big_vertical_flame_0.ia8.inc.c"
};

u64 gFireTempleBigVerticalFlame1Tex[] = {
#include "assets/objects/object_hidan_objects/big_vertical_flame_1.ia8.inc.c"
};

u64 gFireTempleBigVerticalFlame2Tex[] = {
#include "assets/objects/object_hidan_objects/big_vertical_flame_2.ia8.inc.c"
};

u64 gFireTempleBigVerticalFlame3Tex[] = {
#include "assets/objects/object_hidan_objects/big_vertical_flame_3.ia8.inc.c"
};

u64 gFireTempleBigVerticalFlame4Tex[] = {
#include "assets/objects/object_hidan_objects/big_vertical_flame_4.ia8.inc.c"
};

u64 gFireTempleBigVerticalFlame5Tex[] = {
#include "assets/objects/object_hidan_objects/big_vertical_flame_5.ia8.inc.c"
};

u64 gFireTempleBigVerticalFlame6Tex[] = {
#include "assets/objects/object_hidan_objects/big_vertical_flame_6.ia8.inc.c"
};

u64 gFireTempleBigVerticalFlame7Tex[] = {
#include "assets/objects/object_hidan_objects/big_vertical_flame_7.ia8.inc.c"
};

u64 gFireTempleFireball0Tex[] = {
#include "assets/objects/object_hidan_objects/fireball_0.ia8.inc.c"
};

u64 gFireTempleFireball1Tex[] = {
#include "assets/objects/object_hidan_objects/fireball_1.ia8.inc.c"
};

u64 gFireTempleFireball2Tex[] = {
#include "assets/objects/object_hidan_objects/fireball_2.ia8.inc.c"
};

u64 gFireTempleFireball3Tex[] = {
#include "assets/objects/object_hidan_objects/fireball_3.ia8.inc.c"
};

u64 gFireTempleFireball4Tex[] = {
#include "assets/objects/object_hidan_objects/fireball_4.ia8.inc.c"
};

u64 gFireTempleFireball5Tex[] = {
#include "assets/objects/object_hidan_objects/fireball_5.ia8.inc.c"
};

u64 gFireTempleFireball6Tex[] = {
#include "assets/objects/object_hidan_objects/fireball_6.ia8.inc.c"
};

u64 gFireTempleFireball7Tex[] = {
#include "assets/objects/object_hidan_objects/fireball_7.ia8.inc.c"
};

