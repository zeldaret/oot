#ifndef _Z_EN_SYATEKI_NIW_H_
#define _Z_EN_SYATEKI_NIW_H_

#include <ultra64.h>
#include <global.h>

struct EnSyatekiNiw;

typedef struct EnSyatekiNiw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x314];
} EnSyatekiNiw; // size = 0x0460

extern const ActorInit En_Syateki_Niw_InitVars;

#endif
