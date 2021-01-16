#ifndef _Z_EN_ENCOUNT2_H_
#define _Z_EN_ENCOUNT2_H_

#include "ultra64.h"
#include "global.h"

struct EnEncount2;

typedef void (*EnEncount2ActionFunc)(struct EnEncount2*, GlobalContext*);

typedef struct {
    /* 0x0000 */ Vec3f unk0;
    /* 0x000C */ f32 unkC;
    /* 0x0010 */ u8 unk10;
    /* 0x0014 */ Vec3f unk14;
    /* 0x0020 */ Vec3f unk20;
} unkStruct; // size = 0x2C

typedef struct EnEncount2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnEncount2ActionFunc* unk14C;
    /* 0x0150 */ char unk150[0x4];
    /* 0x0154 */ s16 unk154;
    /* 0x0156 */ s16 unk156;
    /* 0x0158 */ s16 unk158;
    /* 0x015A */ s16 unk15A;
    /* 0x015C */ s16 unk_15C;
    /* 0x015E */ s16 unk15E;
    /* 0x0160 */ char unk160[0x18];
    /* 0x0178 */ s16 unk178;
    /* 0x017A */ char unk17A[0x6];
    /* 0x0180 */ u64 unk180;
    /* 0x0188 */ unkStruct unk188[0x32];
} EnEncount2; // size = 0x0A20

extern const ActorInit En_Encount2_InitVars;

#endif
