#ifndef _Z_BG_SPOT01_IDOMIZU_H_
#define _Z_BG_SPOT01_IDOMIZU_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot01Idomizu;

typedef void (*BgSpot01IdomizuActionFunc)(struct BgSpot01Idomizu*, GlobalContext*);

typedef struct BgSpot01Idomizu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ BgSpot01IdomizuActionFunc actionFunc;
    /* 0x0150 */ f32 unk_150;
    /* 0x0154 */ char unk_154[0x4];
} BgSpot01Idomizu; // size = 0x0158

extern const ActorInit Bg_Spot01_Idomizu_InitVars;

#endif
