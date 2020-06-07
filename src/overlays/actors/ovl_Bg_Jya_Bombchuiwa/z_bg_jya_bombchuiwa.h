#ifndef _Z_BG_JYA_BOMBCHUIWA_H_
#define _Z_BG_JYA_BOMBCHUIWA_H_

#include <ultra64.h>
#include <global.h>

struct BgJyaBombchuiwa;

typedef struct BgJyaBombchuiwa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x6C];
} BgJyaBombchuiwa; // size = 0x01B8

extern const ActorInit Bg_Jya_Bombchuiwa_InitVars;

#endif
