#ifndef _Z_EN_BA_H_
#define _Z_EN_BA_H_

#include "ultra64.h"
#include "global.h"

struct EnBa;

typedef void (*EnBaActionFunc)(struct EnBa*, GlobalContext*);

typedef struct EnBa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 unk14C; //unk
    /* 0x0150 */ EnBaActionFunc unk150; // unk
    /* 0x0154 */ s16 unk154; 
    /* 0x0156 */ s16 unk156; // unk
    /* 0x0158 */ Vec3f unk158[14];
    /* 0x0200 */ Vec3f unk200[13];
    /* 0x029C */ char unk_29C[0xC];
    /* 0x02A8 */ Vec3s unk2A8[13];
    /* 0x02F6 */ Vec3s unk2F6;
    /* 0x02FC */ Vec3f unk2FC;
    /* 0x0308 */ Vec3f unk308;
    /* 0x0314 */ f32 unk314;
    /* 0x0318 */ s16 unk318;
    /* 0x031A */ s16 unk31A;
    /* 0x031C */ s16 unk31C;
    /* 0x031E */ char unk_31E[0x2];
    /* 0x0320 */ ColliderJntSph unk320;
    /* 0x0340 */ ColliderJntSphElement unk340[2]; // 0x80
} EnBa; // size = 0x03C0

extern const ActorInit En_Ba_InitVars;

#endif
