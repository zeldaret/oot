#ifndef _Z_BG_SPOT16_BOMBSTONE_H_
#define _Z_BG_SPOT16_BOMBSTONE_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot16Bombstone;

typedef struct BgSpot16Bombstone {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xCC];
} BgSpot16Bombstone; // size = 0x0218

extern const ActorInit Bg_Spot16_Bombstone_InitVars;

#endif
