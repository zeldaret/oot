#ifndef _Z_BG_HAKA_TRAP_H_
#define _Z_BG_HAKA_TRAP_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x150];
} BgHakaTrap; // size = 0x029C

extern const ActorInit Bg_Haka_Trap_InitVars;

#endif
