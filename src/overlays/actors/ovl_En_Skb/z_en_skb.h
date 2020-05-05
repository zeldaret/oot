#ifndef _Z_EN_SKB_H_
#define _Z_EN_SKB_H_

#include <ultra64.h>
#include <global.h>

struct EnSkb;

typedef struct EnSkb {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1F8];
} EnSkb; // size = 0x0344

extern const ActorInit En_Skb_InitVars;

#endif
