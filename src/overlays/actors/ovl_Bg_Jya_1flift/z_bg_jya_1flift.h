#ifndef _Z_BG_JYA_1FLIFT_H_
#define _Z_BG_JYA_1FLIFT_H_

#include <ultra64.h>
#include <global.h>

struct BgJya1flift;

typedef struct BgJya1flift {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x70];
} BgJya1flift; // size = 0x01BC

extern const ActorInit Bg_Jya_1flift_InitVars;

#endif
