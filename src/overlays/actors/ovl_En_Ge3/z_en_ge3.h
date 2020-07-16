#ifndef _Z_EN_GE3_H_
#define _Z_EN_GE3_H_

#include <ultra64.h>
#include <global.h>

struct EnGe3;

typedef void (*EnGe3ActionFunc)(struct EnGe3*, GlobalContext*);

typedef struct EnGe3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s limbDrawTable;
    /* 0x01E2 */ char unk_1E2[0x8A];
    /* 0x026C */ Vec3s unk_26C;
    /* 0x0272 */ char unk_272[0x8A];
    /* 0x02FC */ s16 unk_2FC;
    /* 0x02FE */ s16 unk_2FE;
    /* 0x0300 */ Vec3s unk_300;
    /* 0x0306 */ Vec3s unk_306;
    ///* 0x0302 */ s16 unk_302;
    /* 0x030C */ u16 unk_30C;
    /* 0x030E */ char unk_30E[0x2];
    /* 0x0310 */ EnGe3ActionFunc actionFunc;
} EnGe3; // size = 0x0314

extern const ActorInit En_Ge3_InitVars;

#endif
