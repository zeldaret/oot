#ifndef _Z_EN_GELDB_H_
#define _Z_EN_GELDB_H_

#include "ultra64.h"
#include "global.h"

struct EnGeldB;

typedef void (*EnGeldBActionFunc)(struct EnGeldB*, GlobalContext*);

typedef struct EnGeldB {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3s bodyPartsPos[10];
    /* 0x0188 */ SkelAnime skelAnime;
    /* 0x01CC */ Vec3s jointTable[24];
    /* 0x025C */ Vec3s morphTable[24];
    /* 0x02EC */ s32 actionState;
    /* 0x02F0 */ char unk_2F0[4];
    /* 0x02F4 */ EnGeldBActionFunc actionFunc;
    /* 0x02F8 */ s16 unkTimer;
    /* 0x02FA */ s16 lookTimer;
    /* 0x02FC */ s16 iceTimer;
    /* 0x02FE */ u8 damageEffect;
    /* 0x0300 */ s32 timer;
    /* 0x0304 */ f32 approachRate;
    /* 0x0308 */ char unk_308[4];
    /* 0x030C */ f32 unkFloat;
    /* 0x0310 */ s16 swordState;
    /* 0x0312 */ s16 spinAttackState;
    /* 0x0314 */ s16 keyFlag;
    /* 0x0316 */ char unk_316[2];
    /* 0x0318 */ s16 invisible;
    /* 0x031A */ u8 blinkState;
    /* 0x031C */ s32 blureIdx;
    /* 0x0320 */ ColliderCylinder bodyCollider;
    /* 0x036C */ ColliderQuad swordCollider;
    /* 0x03EC */ ColliderTris blockCollider;
    /* 0x040C */ ColliderTrisElement blockElements[2];
    /* 0x04C4 */ Vec3f leftFootPos;
    /* 0x04D0 */ Vec3f rightFootPos;
    /* 0x04DC */ Vec3s headRot;
} EnGeldB; // size = 0x04E4

extern const ActorInit En_Geldb_InitVars;

#endif
