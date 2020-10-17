#ifndef _Z_BG_JYA_BIGMIRROR_H_
#define _Z_BG_JYA_BIGMIRROR_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaBigmirror;

typedef struct BgJyaBigmirror {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x28];
} BgJyaBigmirror; // size = 0x0174

extern const ActorInit Bg_Jya_Bigmirror_InitVars;

#endif
