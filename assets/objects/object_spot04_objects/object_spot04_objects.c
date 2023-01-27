#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_spot04_objects.h"

u64 gDekuTreeMouthTex_0000[] = {
#include "assets/objects/object_spot04_objects/tex_0000.rgba16.inc.c"
};

u64 gDekuTreeMouthTex_0400[] = {
#include "assets/objects/object_spot04_objects/tex_0400.rgba16.inc.c"
};

Vtx object_spot04_objectsVtx_000800[] = {
#include "assets/objects/object_spot04_objects/object_spot04_objectsVtx_000800.vtx.inc"
};

Gfx gDekuTreeMouthDL[] = {
    gsDPPipeSync(),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(gDekuTreeMouthTex_0400, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, 1),
    gsDPLoadMultiBlock(gDekuTreeMouthTex_0000, 0x0100, 1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_NOMIRROR |
                       G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, ENV_ALPHA, TEXEL0, 0, 0, 0, 1, COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsSPSetGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(object_spot04_objectsVtx_000800, 29, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(0, 3, 4, 0, 4, 3, 5, 0),
    gsSP2Triangles(6, 7, 8, 0, 9, 10, 6, 0),
    gsSP2Triangles(10, 7, 6, 0, 9, 6, 11, 0),
    gsSP2Triangles(11, 6, 8, 0, 12, 11, 13, 0),
    gsSP2Triangles(14, 12, 13, 0, 14, 15, 12, 0),
    gsSP2Triangles(16, 7, 1, 0, 7, 16, 17, 0),
    gsSP2Triangles(8, 7, 17, 0, 14, 13, 18, 0),
    gsSP2Triangles(19, 14, 18, 0, 5, 14, 19, 0),
    gsSP2Triangles(20, 19, 18, 0, 20, 18, 21, 0),
    gsSP2Triangles(19, 20, 5, 0, 18, 17, 22, 0),
    gsSP2Triangles(18, 22, 21, 0, 17, 23, 22, 0),
    gsSP2Triangles(17, 16, 23, 0, 23, 16, 1, 0),
    gsSP2Triangles(24, 23, 1, 0, 0, 22, 23, 0),
    gsSP2Triangles(25, 20, 21, 0, 20, 4, 5, 0),
    gsSP2Triangles(9, 11, 26, 0, 26, 12, 15, 0),
    gsSP2Triangles(26, 27, 28, 0, 26, 28, 9, 0),
    gsSP2Triangles(9, 28, 10, 0, 27, 26, 15, 0),
    gsSP2Triangles(13, 11, 8, 0, 8, 17, 18, 0),
    gsSP2Triangles(8, 18, 13, 0, 21, 22, 0, 0),
    gsSP2Triangles(21, 0, 25, 0, 26, 11, 12, 0),
    gsSPEndDisplayList(),
};

u8 object_spot04_objects_possiblePadding_000B38[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

CamData gDekuTreeMouthColCamDataList[] = {
    { 0x0000, 0, NULL },
};

SurfaceType gDekuTreeMouthColSurfaceType[] = {
    { 0x00000000, 0x000007CA },
};

CollisionPoly gDekuTreeMouthColPolygons[] = {
    {0x0000, 0x0000, 0x0001, 0x0002, 0x1241, 0x7E1A, 0x0C30, 0xFF75},
    {0x0000, 0x0000, 0x0002, 0x0003, 0x15E2, 0x7D7B, 0xF366, 0xFF7B},
    {0x0000, 0x0000, 0x0003, 0x0004, 0x15A8, 0x7D86, 0xF36B, 0xFF7B},
    {0x0000, 0x0004, 0x0003, 0x0005, 0xFDB5, 0x7E20, 0xEA4F, 0xFF75},
    {0x0000, 0x0006, 0x0007, 0x0008, 0xBE64, 0x03BF, 0x6DD7, 0xFFE8},
    {0x0000, 0x0009, 0x000A, 0x0006, 0x9080, 0x284E, 0x303B, 0x0009},
    {0x0000, 0x000A, 0x0007, 0x0006, 0xAFBE, 0x4A08, 0x42CB, 0xFFF1},
    {0x0000, 0x0009, 0x0006, 0x000B, 0x987B, 0x2B0A, 0x3DC2, 0x0000},
    {0x0000, 0x000B, 0x0006, 0x0008, 0xA2C8, 0xE849, 0x5472, 0x0000},
    {0x0000, 0x000C, 0x000B, 0x000D, 0x894F, 0xEB57, 0x2B3A, 0x0000},
    {0x0000, 0x000E, 0x000C, 0x000D, 0x8044, 0x0792, 0xFCD9, 0xFFE5},
    {0x0000, 0x000E, 0x000F, 0x000C, 0xA051, 0x4F4A, 0x1EAC, 0xFFF2},
    {0x0000, 0x0010, 0x0007, 0x0001, 0xCE70, 0xF36B, 0x7556, 0xFFDD},
    {0x0000, 0x0007, 0x0010, 0x0011, 0xC2A3, 0xDCA5, 0x6A9E, 0xFFF9},
    {0x0000, 0x0008, 0x0007, 0x0011, 0xC1F9, 0xD3F0, 0x66EE, 0x0000},
    {0x0000, 0x000E, 0x000D, 0x0012, 0x87E2, 0xD3D5, 0x01EB, 0x0000},
    {0x0000, 0x0013, 0x000E, 0x0012, 0x856E, 0xDB22, 0xFF5F, 0xFFFA},
    {0x0000, 0x0005, 0x000E, 0x0013, 0x8227, 0xEF63, 0xEF94, 0xFFE0},
    {0x0000, 0x0014, 0x0013, 0x0012, 0x9A61, 0x4B7C, 0x12EC, 0xFFB0},
    {0x0000, 0x0014, 0x0012, 0x0015, 0xA486, 0x55C7, 0x19A3, 0xFFAC},
    {0x0000, 0x0013, 0x0014, 0x0005, 0x9B21, 0x4E3C, 0xF6A7, 0xFF9F},
    {0x0000, 0x0012, 0x0011, 0x0016, 0xB1D0, 0x5A93, 0x2D75, 0xFFAD},
    {0x0000, 0x0012, 0x0016, 0x0015, 0xB1FA, 0x5B0E, 0x2CC5, 0xFFAD},
    {0x0000, 0x0011, 0x0017, 0x0016, 0xBB4A, 0x5556, 0x422E, 0xFFAC},
    {0x0000, 0x0011, 0x0010, 0x0017, 0xBC31, 0x48CD, 0x5088, 0xFFB2},
    {0x0000, 0x0017, 0x0010, 0x0001, 0xD4A8, 0x4C18, 0x5D5A, 0xFFA0},
    {0x0000, 0x0000, 0x0017, 0x0001, 0xF31D, 0x7646, 0x2F35, 0xFF81},
    {0x0000, 0x0000, 0x0016, 0x0017, 0xE52C, 0x7735, 0x261C, 0xFF8A},
    {0x0000, 0x0004, 0x0014, 0x0015, 0xCFEC, 0x7689, 0x0492, 0xFF8A},
    {0x0000, 0x0014, 0x0004, 0x0005, 0xCECD, 0x7584, 0xF3A2, 0xFF82},
    {0x0000, 0x0009, 0x000B, 0x0018, 0x9739, 0x29D6, 0x3C73, 0x0000},
    {0x0000, 0x0018, 0x000C, 0x000F, 0xA173, 0x2913, 0x4BDE, 0x000D},
    {0x0000, 0x0018, 0x0019, 0x001A, 0x9B85, 0x35D4, 0x3A38, 0x000D},
    {0x0000, 0x0018, 0x001A, 0x0009, 0x9B51, 0x3597, 0x3A16, 0x000C},
    {0x0000, 0x0009, 0x001A, 0x000A, 0x8E1D, 0x2EA2, 0x2330, 0x0019},
    {0x0000, 0x0019, 0x0018, 0x000F, 0xAA16, 0x2E06, 0x52F8, 0x001A},
    {0x0000, 0x000D, 0x000B, 0x0008, 0x9149, 0xF9E4, 0x3FEF, 0x0000},
    {0x0000, 0x0008, 0x0011, 0x0012, 0xA588, 0xB64C, 0x3499, 0x0021},
    {0x0000, 0x0008, 0x0012, 0x000D, 0xA5A5, 0xB5DC, 0x342D, 0x0021},
    {0x0000, 0x0015, 0x0016, 0x0000, 0xEAF1, 0x7DAC, 0x0C15, 0xFF88},
    {0x0000, 0x0015, 0x0000, 0x0004, 0xEA98, 0x7D94, 0x0C70, 0xFF88},
    {0x0000, 0x0018, 0x000B, 0x000C, 0x95D6, 0x2D3A, 0x3760, 0x0000},
};

Vec3s gDekuTreeMouthColVertices[] = {
    {     59,    129,     36 },
    {    152,    108,    114 },
    {    172,    111,     53 },
    {     39,    111,   -178 },
    {     -2,    129,    -69 },
    {    -22,    108,   -189 },
    {     41,     24,     52 },
    {    105,     60,     89 },
    {     18,     61,     37 },
    {     10,   -118,     99 },
    {     55,    -33,    132 },
    {      0,      0,      0 },
    {    -25,     16,    -61 },
    {    -23,     61,    -34 },
    {    -21,     51,   -139 },
    {    -85,    -39,   -106 },
    {     42,    103,     67 },
    {     -9,     92,     34 },
    {    -34,     92,     -9 },
    {    -37,    103,    -69 },
    {    -24,    120,    -67 },
    {    -11,    124,    -34 },
    {     24,    124,     27 },
    {     46,    120,     55 },
    {    -80,   -118,    -57 },
    {   -170,   -286,    -57 },
    {    -35,   -286,    176 },
};

CollisionHeader gDekuTreeMouthCol = { 
    { -170, -286, -189 },
    { 172, 129, 176 },
    27, gDekuTreeMouthColVertices,
    42, gDekuTreeMouthColPolygons,
    gDekuTreeMouthColSurfaceType,
    gDekuTreeMouthColCamDataList,
    0, NULL
};

u64 gDekuTreeUnusedMouthTex_0EC0[] = {
#include "assets/objects/object_spot04_objects/tex_0EC0.rgba16.inc.c"
};

u64 gDekuTreeUnusedMouthTex_12C0[] = {
#include "assets/objects/object_spot04_objects/tex_12C0.rgba16.inc.c"
};

