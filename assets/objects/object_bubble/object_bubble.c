#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_bubble.h"

u64 gBubbleTex[] = {
#include "assets/objects/object_bubble/bubble.ia8.inc.c"
};

Gfx gBubbleDL[] = {
    gsDPPipeSync(),
    gsDPSetRenderMode(G_RM_PASS, G_RM_ZB_CLD_SURF2),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineLERP(1, SHADE, TEXEL0, SHADE, 0, 0, 0, TEXEL0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
    gsDPLoadTextureBlock(gBubbleTex, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR |
                         G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(object_bubbleVtx_001080, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

Vtx object_bubbleVtx_001080[] = {
#include "assets/objects/object_bubble/object_bubbleVtx_001080.vtx.inc"
};

