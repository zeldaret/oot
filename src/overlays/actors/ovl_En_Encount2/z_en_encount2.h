#ifndef _Z_EN_ENCOUNT2_H_
#define _Z_EN_ENCOUNT2_H_

#include "ultra64.h"
#include "global.h"

struct EnEncount2;

typedef void (*EnEncount2ActionFunc)(struct EnEncount2*, GlobalContext*);

typedef struct EnEncount2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnEncount2ActionFunc* unk14C;
    /* 0x0150 */ char unk150[0x4];
    /* 0x0154 */ s16 unk154;
    /* 0x0156 */ s16 unk156;
    /* 0x0158 */ s16 unk158;
    /* 0x015A */ s16 unk15A;
    /* 0x015C */ s16 unk_15C;
    /* 0x015E */ char unk15E[0x1A];
    /* 0x0178 */ s16 unk178;
    /* 0x017A */ char unk17A[0x6];
    /* 0x0180 */ u64 unk180;
    /* 0x0186 */ char unk186[0x898];
} EnEncount2; // size = 0x0A20

extern const ActorInit En_Encount2_InitVars;

#endif
