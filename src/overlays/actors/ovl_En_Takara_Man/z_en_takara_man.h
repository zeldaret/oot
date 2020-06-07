#ifndef _Z_EN_TAKARA_MAN_H_
#define _Z_EN_TAKARA_MAN_H_

#include <ultra64.h>
#include <global.h>

struct EnTakaraMan;

typedef struct EnTakaraMan {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xEC];
} EnTakaraMan; // size = 0x0238

extern const ActorInit En_Takara_Man_InitVars;

#endif
