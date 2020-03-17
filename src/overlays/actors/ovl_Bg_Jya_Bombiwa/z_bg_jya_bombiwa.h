#ifndef _Z_BG_JYA_BOMBIWA_H_
#define _Z_BG_JYA_BOMBIWA_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x7C];
} BgJyaBombiwa; // size = 0x01C8

extern const ActorInit Bg_Jya_Bombiwa_InitVars;

#endif
