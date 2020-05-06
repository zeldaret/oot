#ifndef _Z_BG_JYA_GOROIWA_H_
#define _Z_BG_JYA_GOROIWA_H_

#include <ultra64.h>
#include <global.h>

struct BgJyaGoroiwa;

typedef struct BgJyaGoroiwa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x70];
} BgJyaGoroiwa; // size = 0x01BC

extern const ActorInit Bg_Jya_Goroiwa_InitVars;

#endif
