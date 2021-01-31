#ifndef _Z_EN_WF_H_
#define _Z_EN_WF_H_

#include "ultra64.h"
#include "global.h"

struct EnWf;

typedef void (*EnWfActionFunc)(struct EnWf*, GlobalContext*);

typedef struct EnWf {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Vec3s bodyPartsPos[10];
    /* 0x0188 */ SkelAnime skelAnime;
    /* 0x01CC */ Vec3s jointTable[22];
    /* 0x0250 */ Vec3s morphTable[22];
    /* 0x02D4 */ s32 unk_2D4;
    /* 0x02D8 */ s32 action;
    /* 0x02DC */ EnWfActionFunc actionFunc;
    /* 0x02E0 */ s16 unk_2E0;
    /* 0x02E2 */ s16 unk_2E2;
    /* 0x02E4 */ s16 fireTimer;
    /* 0x02E6 */ u8 unk_2E6;
    /* 0x02E8 */ s32 actionTimer; // Used to make an action last for a certain amount of time
    /* 0x02EC */ f32 unk_2EC;
    /* 0x02F0 */ f32 unk_2F0;
    /* 0x02F4 */ f32 unk_2F4;
    /* 0x02F8 */ s16 unk_2F8;
    /* 0x02FA */ s16 unk_2FA;
    /* 0x02FC */ s16 unk_2FC;
    /* 0x02FE */ s16 unk_2FE;
    /* 0x0300 */ s16 unk_300;
    /* 0x0302 */ u8 eyeIndex;
    /* 0x0304 */ ColliderJntSph colliderSphere;
    /* 0x0324 */ ColliderJntSphElement colliderSphereElements[4];
    /* 0x0424 */ ColliderCylinder colliderCylinder1;
    /* 0x0470 */ ColliderCylinder colliderCylinder2;
    /* 0x04BC */ Vec3f unk_4BC;
    /* 0x04C8 */ Vec3f unk_4C8;
    /* 0x04D4 */ Vec3s unk_4D4;
} EnWf; // size = 0x04DC

extern const ActorInit En_Wf_InitVars;

#endif
