#ifndef _Z_EN_ATTACK_NIW_H_
#define _Z_EN_ATTACK_NIW_H_

#include <ultra64.h>
#include <global.h>

struct EnAttackNiw;

typedef struct EnAttackNiw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x19C];
} EnAttackNiw; // size = 0x02E8

extern const ActorInit En_Attack_Niw_InitVars;

#endif
