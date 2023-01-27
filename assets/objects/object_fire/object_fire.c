#include "ultra64.h"
#include "z64.h"
#include "macros.h"
#include "object_fire.h"

Vtx object_fireVtx_000000[] = {
#include "assets/objects/object_fire/object_fireVtx_000000.vtx.inc"
};

Gfx gFireDL[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPLoadTextureBlock(0x08000000, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR |
                         G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
    gsSPVertex(object_fireVtx_000000, 4, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSPEndDisplayList(),
};

u8 object_fire_possiblePadding_000098[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

u64 gFire0Tex[] = {
#include "assets/objects/object_fire/fire_0.ia8.inc.c"
};

u64 gFire1Tex[] = {
#include "assets/objects/object_fire/fire_1.ia8.inc.c"
};

u64 gFire2Tex[] = {
#include "assets/objects/object_fire/fire_2.ia8.inc.c"
};

u64 gFire3Tex[] = {
#include "assets/objects/object_fire/fire_3.ia8.inc.c"
};

u64 gFire4Tex[] = {
#include "assets/objects/object_fire/fire_4.ia8.inc.c"
};

u64 gFire5Tex[] = {
#include "assets/objects/object_fire/fire_5.ia8.inc.c"
};

u64 gFire6Tex[] = {
#include "assets/objects/object_fire/fire_6.ia8.inc.c"
};

u64 gFire7Tex[] = {
#include "assets/objects/object_fire/fire_7.ia8.inc.c"
};

