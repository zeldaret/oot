#ifndef _Z_EN_SYATEKI_ITM_H_
#define _Z_EN_SYATEKI_ITM_H_

#include "ultra64.h"
#include "global.h"

struct EnSyatekiItm;

typedef struct EnSyatekiItm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xA];
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ char unk_158[0xE];
    /* 0x0166 */ s16 unk_166[10];
    /* 0x017A */ char unk_17A[0x5E];
    struct EnSyatekiMan* man;
} EnSyatekiItm; // size = 0x01D8

extern const ActorInit En_Syateki_Itm_InitVars;

#endif
