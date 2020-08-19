#ifndef _Z_BG_JYA_BIGMIRROR_H_
#define _Z_BG_JYA_BIGMIRROR_H_

#include "ultra64.h"
#include "global.h"

#include "overlays/actors/ovl_Mir_Ray/z_mir_ray.h"

struct BgJyaBigmirror;

typedef struct BgJyaBigmirror {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x10];
    /* 0x015C */ u8 unk_15C;
    /* 0x015D */ char unk_15D[0x07];
    /* 0x0164 */ MirRay* unk_164;
    /* 0x0168 */ MirRay* unk_168;
    /* 0x016C */ char unk_16C[0x08];
} BgJyaBigmirror; // size = 0x0174

extern const ActorInit Bg_Jya_Bigmirror_InitVars;

#endif
