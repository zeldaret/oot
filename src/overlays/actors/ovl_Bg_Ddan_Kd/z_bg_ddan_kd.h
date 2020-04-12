#ifndef _Z_BG_DDAN_KD_H_
#define _Z_BG_DDAN_KD_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ Actor* unk_164; // pointer to bombflower actor
    /* 0x0168 */ char unk_168[0x5C];
    /* 0x01C4 */ ActorFunc actionFunc;
} BgDdanKd; // size = 0x01C8

extern const ActorInit Bg_Ddan_Kd_InitVars;

#endif
