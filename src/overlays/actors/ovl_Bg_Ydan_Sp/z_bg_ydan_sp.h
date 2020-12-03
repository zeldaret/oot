#ifndef _Z_BG_YDAN_SP_H_
#define _Z_BG_YDAN_SP_H_

#include "ultra64.h"
#include "global.h"

struct BgYdanSp;

typedef struct BgYdanSp {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xFC];
} BgYdanSp; // size = 0x0248

extern const ActorInit Bg_Ydan_Sp_InitVars;

#endif
