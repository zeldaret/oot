#ifndef _Z_BG_JYA_ZURERUKABE_H_
#define _Z_BG_JYA_ZURERUKABE_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
} BgJyaZurerukabe; // size = 0x0170

extern const ActorInit Bg_Jya_Zurerukabe_InitVars;

#endif
