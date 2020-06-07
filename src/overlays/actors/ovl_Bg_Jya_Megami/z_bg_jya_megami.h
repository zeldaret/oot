#ifndef _Z_BG_JYA_MEGAMI_H_
#define _Z_BG_JYA_MEGAMI_H_

#include <ultra64.h>
#include <global.h>

struct BgJyaMegami;

typedef struct BgJyaMegami {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1F0];
} BgJyaMegami; // size = 0x033C

extern const ActorInit Bg_Jya_Megami_InitVars;

#endif
