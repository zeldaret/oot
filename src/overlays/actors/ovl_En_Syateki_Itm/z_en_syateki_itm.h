#ifndef _Z_EN_SYATEKI_ITM_H_
#define _Z_EN_SYATEKI_ITM_H_

#include "ultra64.h"
#include "global.h"

struct EnSyatekiItm;

typedef void (*EnSyatekiItmActionFunc)(struct EnSyatekiItm*, GlobalContext*);

typedef struct EnSyatekiItm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnSyatekiItmActionFunc actionFunc;
    /* 0x0150 */ s16 unk_150;
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ s16 unk_154;
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ s16 unk_158;
    /* 0x015A */ s16 unk_15A[6];
    /* 0x0166 */ s16 unk_166[2];
    /* 0x016A */ s16 unk_16A;
    /* 0x016C */ Vec3f unk_16C[4];
    /* 0x019C */ struct EnExRuppy* rupees[10];
    /* 0x01C4 */ struct EnGSwitch* gSwitch[2];
    /* 0x01CC */ struct EnSyatekiMan* man;
    /* 0x01D0 */ struct EnExRuppy* unk_1D0[2];
} EnSyatekiItm; // size = 0x01D8

extern const ActorInit En_Syateki_Itm_InitVars;

#endif
