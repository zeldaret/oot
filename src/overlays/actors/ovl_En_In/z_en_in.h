#ifndef _Z_EN_IN_H_
#define _Z_EN_IN_H_

#include "ultra64.h"
#include "global.h"

struct EnIn;

typedef void (*EnInActionFunc)(struct EnIn*, GlobalContext*);

typedef struct EnIn {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnInActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ f32 unk_1E0;
    /* 0x01E4 */ s8 ingoObjBankIndex;
    /* 0x01E6 */ s16 animationIdx;
    /* 0x01E8 */ s16 unk_1E8;
    /* 0x01EA */ s16 unk_1EA;
    /* 0x01EC */ s16 unk_1EC;
    /* 0x01EE */ s16 unk_1EE;
    /* 0x01F0 */ s16 camId;
    /* 0x01F2 */ s16 activeCamId;
    /* 0x01F4 */ char unk_1F4[0x4];
    /* 0x01F8 */ s16 unk_1F8;
    /* 0x01FA */ s16 unk_1FA;
    /* 0x01FC */ s16 unk_1FC;
    /* 0x01FE */ Vec3s jointTable[20];
    /* 0x0276 */ Vec3s morphTable[20];
    /* 0x02F0 */ f32 unk_2F0;
    /* 0x02F4 */ f32 unk_2F4;
    /* 0x02F8 */ f32 unk_2F8;
    /* 0x02FC */ f32 unk_2FC;
    /* 0x0300 */ f32 unk_300;
    /* 0x0304 */ f32 unk_304;
    /* 0x0308 */ struct_80034A14_arg1 unk_308;
    /* 0x0330 */ Vec3s unk_330[20];
} EnIn; // size = 0x03A8

#endif
