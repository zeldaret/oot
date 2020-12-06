#ifndef _Z_EN_XC_H_
#define _Z_EN_XC_H_

#include "ultra64.h"
#include "global.h"

struct EnXc;

typedef void (*EnXcActionFunc)(struct EnXc*, GlobalContext*);
typedef void (*EnXcDrawFunc)(struct EnXc*, GlobalContext*);

typedef struct EnXc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ s16 eyeIdx; // segment idx
    /* 0x025E */ s16 unk_25E;
    /* 0x0260 */ s32 action;
    /* 0x0264 */ s32 drawMode;
    /* 0x0268 */ f32 unk_268;
    /* 0x026C */ s32 unk_26C; // related to CsCmdActorAction
    /* 0x0270 */ char unk_270[0x50];
    /* 0x02C0 */ ColliderCylinder collider;
    /* 0x030C */ s32 unk_30C;
    /* 0x0310 */ Actor* attached;
    /* 0x0314 */ struct_80034A14_arg1 struct_314;
} EnXc; // size = 0x033C

extern const ActorInit En_Xc_InitVars;

#endif
