#include "ultra64.h"
#include "global.h"

const Vtx D_80830610[] = {
    VTX(-4, 4, 0, 0, 0, 255, 255, 255, 255),
    VTX(-4, -4, 0, 0, 256, 255, 255, 255, 255),
    VTX(4, 4, 0, 256, 0, 255, 255, 255, 255),
    VTX(4, -4, 0, 256, 256, 255, 255, 255, 255),
};

const Vtx D_80830650[] = {
    VTX(-4, 4, 0, 0, 0, 255, 255, 255, 255),
    VTX(-4, -4, 0, 0, 256, 255, 255, 255, 255),
    VTX(4, 4, 0, 256, 0, 255, 255, 255, 255),
    VTX(4, -4, 0, 256, 256, 255, 255, 255, 255),
};

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/z_lmap_mark.data.s")
