#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot01_matoya.h"

u64 gKakarikoShootingGalleryTLUT[] = {
#include "assets/objects/object_spot01_matoya/shooting_gallery_tlut.rgba16.inc.c"
};

u8 object_spot01_matoya_unaccounted_000200[] = {
    0x00, 0x00, 0x00, 0x39, 0x00, 0x1D, 0x00, 0x00, 
};

u64 gKakarikoShootingGalleryRoofEdgeTex[] = {
#include "assets/objects/object_spot01_matoya/shooting_gallery_roof_edge.ci8.inc.c"
};

u64 gKakarikoShootingGalleryRoofTex[] = {
#include "assets/objects/object_spot01_matoya/shooting_gallery_roof.ci8.inc.c"
};

u64 gKakarikoShootingGalleryDoorShadowTex[] = {
#include "assets/objects/object_spot01_matoya/shooting_gallery_door_shadow.ci8.inc.c"
};

u64 gKakarikoShootingGalleryWallTex[] = {
#include "assets/objects/object_spot01_matoya/shooting_gallery_wall.ci8.inc.c"
};

Vtx object_spot01_matoyaVtx_001208[] = {
#include "assets/objects/object_spot01_matoya/object_spot01_matoyaVtx_001208.vtx.inc"
};

Gfx gKakarikoShootingGalleryDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoShootingGalleryRoofEdgeTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 32, 0, G_TX_MIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal256(gKakarikoShootingGalleryTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_matoyaVtx_001208, 10, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 2, 0),
    gsSP2Triangles(5, 6, 7, 0, 8, 9, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoShootingGalleryDoorShadowTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot01_matoyaVtx_001208[10], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(1, 4, 5, 0, 1, 3, 4, 0),
    gsSP2Triangles(6, 4, 7, 0, 6, 5, 4, 0),
    gsSP2Triangles(6, 1, 5, 0, 6, 2, 1, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoShootingGalleryWallTex, G_IM_FMT_CI, G_IM_SIZ_8b, 32, 64, 0, G_TX_MIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(&object_spot01_matoyaVtx_001208[18], 20, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 5, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 1, 11, 2, 0),
    gsSP2Triangles(11, 1, 12, 0, 11, 12, 13, 0),
    gsSP2Triangles(0, 14, 1, 0, 12, 15, 13, 0),
    gsSP2Triangles(12, 16, 15, 0, 13, 17, 18, 0),
    gsSP1Triangle(13, 18, 19, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoShootingGalleryRoofTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetPrimColor(0, 0, 255, 80, 80, 255),
    gsSPVertex(&object_spot01_matoyaVtx_001208[38], 8, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
    gsSP2Triangles(4, 5, 6, 0, 4, 6, 7, 0),
    gsDPPipeSync(),
    gsDPLoadTextureBlock(gKakarikoShootingGalleryDoorShadowTex, G_IM_FMT_CI, G_IM_SIZ_8b, 16, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_DECAL2),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(&object_spot01_matoyaVtx_001208[46], 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_spot01_matoya_possiblePadding_001798[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gKakarikoShootingGalleryColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gKakarikoShootingGalleryColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
    { 0x00000000, 0x000207CA },
};

CollisionPoly gKakarikoShootingGalleryColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x0000, 0x0000, 0x8001, 0xF894},
    {0x0000, 0x0000, 0x0003, 0x0001, 0x0000, 0x0000, 0x8001, 0xF894},
    {0x0000, 0x0004, 0x0005, 0x0006, 0x0000, 0x8001, 0x0000, 0x03E8},
    {0x0000, 0x0004, 0x0006, 0x0007, 0x0000, 0x8001, 0x0000, 0x03E8},
    {0x0000, 0x0008, 0x0005, 0x0004, 0x7FFF, 0x0000, 0x0000, 0x012C},
    {0x0000, 0x0008, 0x0004, 0x0009, 0x7FFF, 0x0000, 0x0000, 0x012C},
    {0x0000, 0x000A, 0x0009, 0x0004, 0x0000, 0x0000, 0x8001, 0xFB50},
    {0x0000, 0x000A, 0x0004, 0x0007, 0x0000, 0x0000, 0x8001, 0xFB50},
    {0x0000, 0x000A, 0x0007, 0x0006, 0x8001, 0x0000, 0x0000, 0x012C},
    {0x0000, 0x000A, 0x0006, 0x000B, 0x8001, 0x0000, 0x0000, 0x012C},
    {0x0001, 0x000C, 0x000D, 0x000E, 0xC6C2, 0x727C, 0x0000, 0xF585},
    {0x0001, 0x000C, 0x000E, 0x000F, 0xC6C2, 0x727C, 0x0000, 0xF585},
    {0x0001, 0x0010, 0x000C, 0x000F, 0x393E, 0x727C, 0x0000, 0xF585},
    {0x0001, 0x0010, 0x0011, 0x000C, 0x393E, 0x727C, 0x0000, 0xF585},
    {0x0000, 0x0006, 0x0012, 0x0011, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0013, 0x0006, 0x0011, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0010, 0x0014, 0x0013, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x0010, 0x0013, 0x0011, 0x7FFF, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x000E, 0x0015, 0x000F, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x0015, 0x0010, 0x000F, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x000E, 0x0016, 0x0014, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x000E, 0x0014, 0x0010, 0x0000, 0x0000, 0x7FFF, 0xF830},
    {0x0000, 0x0011, 0x0012, 0x000C, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0012, 0x000D, 0x000C, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0012, 0x0006, 0x0005, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0012, 0x0005, 0x000D, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0013, 0x000B, 0x0006, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0005, 0x0017, 0x000D, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x0005, 0x0008, 0x0017, 0x0000, 0x0000, 0x8001, 0xF830},
    {0x0000, 0x000D, 0x0017, 0x0016, 0x8001, 0x0000, 0x0000, 0xF830},
    {0x0000, 0x000D, 0x0016, 0x000E, 0x8001, 0x0000, 0x0000, 0xF830},
};

Vec3s gKakarikoShootingGalleryColVertices[] = {
    {    300,      0,  -1900 },
    {   -300,   1000,  -1900 },
    {    300,   1000,  -1900 },
    {   -300,      0,  -1900 },
    {   -300,   1000,  -1200 },
    {   -300,   1000,  -2000 },
    {    300,   1000,  -2000 },
    {    300,   1000,  -1200 },
    {   -300,      0,  -2000 },
    {   -300,      0,  -1200 },
    {    300,      0,  -1200 },
    {    300,      0,  -2000 },
    {      0,   3000,  -2000 },
    {  -2000,   2000,  -2000 },
    {  -2000,   2000,   2000 },
    {      0,   3000,   2000 },
    {   2000,   2000,   2000 },
    {   2000,   2000,  -2000 },
    {      0,   2000,  -2000 },
    {   2000,      0,  -2000 },
    {   2000,      0,   2000 },
    {      0,   2000,   2000 },
    {  -2000,      0,   2000 },
    {  -2000,      0,  -2000 },
};

CollisionHeader gKakarikoShootingGalleryCol = { 
    { -2000, 0, -2000 },
    { 2000, 3000, 2000 },
    24, gKakarikoShootingGalleryColVertices,
    31, gKakarikoShootingGalleryColPolygons,
    gKakarikoShootingGalleryColSurfaceType,
    gKakarikoShootingGalleryColCamDataList,
    0, NULL
};

u8 object_spot01_matoya_possiblePadding_001A64[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gKakarikoPotionShopSignTex[] = {
#include "assets/objects/object_spot01_matoya/potion_shop_sign.rgba16.inc.c"
};

Vtx object_spot01_matoyaVtx_001E70[] = {
#include "assets/objects/object_spot01_matoya/object_spot01_matoyaVtx_001E70.vtx.inc"
};

Gfx gKakarikoPotionShopSignDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoPotionShopSignTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_matoyaVtx_001E70, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
    gsSPEndDisplayList(),
};

u64 gKakarikoShootingGallerySignTex[] = {
#include "assets/objects/object_spot01_matoya/shooting_gallery_sign.rgba16.inc.c"
};

Vtx object_spot01_matoyaVtx_002740[] = {
#include "assets/objects/object_spot01_matoya/object_spot01_matoyaVtx_002740.vtx.inc"
};

Gfx gKakarikoShootingGallerySignDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoShootingGallerySignTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR |
                         G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_matoyaVtx_002740, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u64 gKakarikoBazaarSignTLUT[] = {
#include "assets/objects/object_spot01_matoya/bazaar_sign_tlut.rgba16.inc.c"
};

u8 object_spot01_matoya_possiblePadding_002830[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gKakarikoBazaarSignTex[] = {
#include "assets/objects/object_spot01_matoya/bazaar_sign.ci4.inc.c"
};

Vtx object_spot01_matoyaVtx_003038[] = {
#include "assets/objects/object_spot01_matoya/object_spot01_matoyaVtx_003038.vtx.inc"
};

Gfx gKakarikoBazaarSignDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_RGBA16),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock_4b(gKakarikoBazaarSignTex, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                            G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsDPLoadTLUT_pal16(0, gKakarikoBazaarSignTLUT),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, TEXEL0, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_matoyaVtx_003038, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_spot01_matoya_possiblePadding_003138[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gKakarikoBOTWStoneTex[] = {
#include "assets/objects/object_spot01_matoya/botw_stone.rgba16.inc.c"
};

Vtx object_spot01_matoyaVtx_003940[] = {
#include "assets/objects/object_spot01_matoya/object_spot01_matoyaVtx_003940.vtx.inc"
};

Gfx gKakarikoBOTWStoneDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gKakarikoBOTWStoneTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                         G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, 1, COMBINED, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot01_matoyaVtx_003940, 30, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 1, 4, 0),
    gsSP2Triangles(3, 2, 1, 0, 2, 3, 5, 0),
    gsSP2Triangles(5, 6, 2, 0, 7, 8, 9, 0),
    gsSP2Triangles(10, 11, 12, 0, 13, 14, 15, 0),
    gsSP2Triangles(16, 17, 18, 0, 19, 20, 21, 0),
    gsSP2Triangles(21, 22, 19, 0, 22, 23, 19, 0),
    gsSP2Triangles(24, 25, 26, 0, 27, 25, 28, 0),
    gsSP1Triangle(3, 29, 5, 0),
    gsSPEndDisplayList(),
};

u8 object_spot01_matoya_possiblePadding_003BE8[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gKakarikoBOTWStoneColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gKakarikoBOTWStoneColSurfaceType[] = {
    { 0x00000000, 0x000007C0 },
};

CollisionPoly gKakarikoBOTWStoneColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x8001, 0x0000, 0x0000, 0x010A},
    {0x0000, 0x0002, 0x0003, 0x0000, 0x8001, 0x0000, 0x0000, 0x010A},
    {0x0000, 0x0004, 0x0001, 0x0000, 0x8001, 0x0000, 0x0000, 0x010A},
    {0x0000, 0x0001, 0x0005, 0x0002, 0x8001, 0x0000, 0x0000, 0x010A},
};

Vec3s gKakarikoBOTWStoneColVertices[] = {
    {    266,   1407,     27 },
    {    266,    388,   -604 },
    {    266,      0,    700 },
    {    266,   1413,    356 },
    {    266,   1413,   -359 },
    {    266,      0,   -700 },
};

CollisionHeader gKakarikoBOTWStoneCol = { 
    { -470, 0, -700 },
    { 530, 1413, 700 },
    6, gKakarikoBOTWStoneColVertices,
    4, gKakarikoBOTWStoneColPolygons,
    gKakarikoBOTWStoneColSurfaceType,
    gKakarikoBOTWStoneColCamDataList,
    0, NULL
};

