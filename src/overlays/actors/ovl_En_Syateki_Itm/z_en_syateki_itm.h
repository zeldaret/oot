#ifndef _Z_EN_SYATEKI_ITM_H_
#define _Z_EN_SYATEKI_ITM_H_

#include <ultra64.h>
#include <global.h>

struct EnSyatekiItm;

typedef struct EnSyatekiItm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8C];
} EnSyatekiItm; // size = 0x01D8

extern const ActorInit En_Syateki_Itm_InitVars;

#endif
