#ifndef _Z_EN_GELDB_H_
#define _Z_EN_GELDB_H_

#include "ultra64.h"
#include "global.h"

struct EnGeldB;
typedef void (*EnGeldBActionFunc)(struct EnGeldB, GlobalContext*);

typedef struct EnGeldB {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3s unk_14C[9];
    /* 0x0182 */ char unk_182[6];
    /* 0x0188 */ SkelAnime skelAnime;
    /* 0x01CC */ Vec3s limbDrawTbl[24];
    /* 0x025C */ Vec3s limbTransitionTable[24];
    /* 0x02EC */ s32 unk_2EC;
    /* 0x02F0 */ char unk_2F0[4];
    /* 0x02F4 */ EnGeldBActionFunc actionFunc;
    /* 0x02F8 */ s16 unk_2F8;
    /* 0x02FA */ s16 unk_2FA;
    /* 0x02FC */ s16 unk_2FC;
    /* 0x02FE */ s16 unk_2FE;
    /* 0x0300 */ s32 unk_300;
    /* 0x0304 */ f32 unk_304;
    /* 0x0308 */ char unk_308[4];
    /* 0x030C */ f32 unk_30C;
    /* 0x0310 */ u16 unk_310;
    /* 0x0312 */ u16 unk_312;
    /* 0x0314 */ s16 unk_314;
    /* 0x0316 */ char unk_316[2];
    /* 0x0318 */ s16 unk_318;
    /* 0x031A */ u8 unk_31A;
    /* 0x031C */ s32 blureIdx;
    /* 0x0320 */ ColliderCylinder colliderBody;
    /* 0x036C */ ColliderQuad colliderSword;
    /* 0x03EC */ ColliderTris colliderBlock;
    /* 0x040C */ ColliderTrisItem blockElements[2];
    /* 0x04C4 */ Vec3f unk_4C4;
    /* 0x04D0 */ Vec3f unk_4D0;
    /* 0x04DC */ Vec3s unk_4DC;
    /* 0x04E0 */ char unk_4E2[2];
} EnGeldB; // size = 0x04E4

extern const ActorInit En_Geldb_InitVars;

#endif
