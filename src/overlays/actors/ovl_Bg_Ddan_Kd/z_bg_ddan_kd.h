#ifndef _Z_BG_DDAN_KD_H_
#define _Z_BG_DDAN_KD_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x7C];
} BgDdanKd; // size = 0x01C8

extern const ActorInit Bg_Ddan_Kd_InitVars;

#endif
