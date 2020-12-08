#ifndef _Z_EN_SYATEKI_ITM_H_
#define _Z_EN_SYATEKI_ITM_H_

#include "ultra64.h"
#include "global.h"

struct EnSyatekiItm;

typedef void (*EnSyatekiItmActionFunc)(struct EnSyatekiItm*, GlobalContext*);

typedef struct EnSyatekiItm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnSyatekiItmActionFunc actionFunc;
    /* 0x0150 */ s16 unk_150; // timer for next round
    /* 0x0152 */ s16 unk_152; // unk timer
    /* 0x0154 */ s16 unk_154; //
    /* 0x0156 */ s16 unk_156; // total rupees hit
    /* 0x0158 */ s16 unk_158; // current round
    /* 0x015A */ s16 unk_15A[6]; // flags for each round happening
    /* 0x0166 */ s16 unk_166[2]; // flags for hitting target rupees
    /* 0x016A */ s16 unk_16A; // number of target rupees
    /* 0x016C */ Vec3f unk_16C[2]; // initial position of target rupees
    /* 0x0184 */ Vec3f unk_184[2]; // target position of target rupees
    /* 0x019C */ struct EnExRuppy* rupees[10];
    /* 0x01C4 */ struct EnGSwitch* gSwitch[2];
    /* 0x01CC */ struct EnSyatekiMan* man;
    /* 0x01D0 */ struct EnExRuppy* unk_1D0[2]; // marker rupees for hte current round

} EnSyatekiItm; // size = 0x01D8

extern const ActorInit En_Syateki_Itm_InitVars;

#endif
