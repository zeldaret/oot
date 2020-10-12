
#ifndef _Z_BG_JYA_BOMBCHUIWA_H_
#define _Z_BG_JYA_BOMBCHUIWA_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaBombchuiwa;

typedef void (*BgJyaBombchuiwaActionFunc)(struct BgJyaBombchuiwa*, GlobalContext*);

typedef struct BgJyaBombchuiwa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgJyaBombchuiwaActionFunc actionFunc;
    /* 0x0150 */ ColliderJntSph collider;
    /* 0x0170 */ ColliderJntSphItem colliderItems;
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B4 */ s16 unk_1B4;
    /* 0x01B6 */ u8 unk_1B6;
    /* 0x01B7 */ s8 unk_1B7;
} BgJyaBombchuiwa; // size = 0x01B8

extern const ActorInit Bg_Jya_Bombchuiwa_InitVars;

#endif
