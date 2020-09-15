#ifndef _Z_BG_JYA_GOROIWA_H_
#define _Z_BG_JYA_GOROIWA_H_

#include "ultra64.h"
#include "global.h"

struct BgJyaGoroiwa;

typedef void (*BgJyaGoroiwaFunc)(struct BgJyaGoroiwa*, GlobalContext*);

typedef struct BgJyaGoroiwa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgJyaGoroiwaFunc actionFunc;
    /* 0x0150 */ ColliderJntSph collider;
    /* 0x0170 */ ColliderJntSphItem colliderItem;
    /* 0x01B0 */ f32 unk_1B0;
    /* 0x01B4 */ s16 unk_1B4;
    /* 0x01B6 */ s16 unk_1B6;
    /* 0x01B8 */ f32 unk_1B8;    
} BgJyaGoroiwa; // size = 0x01BC

extern const ActorInit Bg_Jya_Goroiwa_InitVars;

#endif
