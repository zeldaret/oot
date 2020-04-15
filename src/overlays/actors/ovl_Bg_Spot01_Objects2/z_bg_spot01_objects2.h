#ifndef _Z_BG_SPOT01_OBJECTS2_H_
#define _Z_BG_SPOT01_OBJECTS2_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x18];
    /* 0x0164 */ ActorFunc actionFunc;
    /* 0x0168 */ char unk_168[0x10];
    /* 0x0178 */ s8 objBankIndex;
    /* 0x0179 */ char unk_179[0x7];
} BgSpot01Objects2; // size = 0x0180

extern const ActorInit Bg_Spot01_Objects2_InitVars;

#endif
