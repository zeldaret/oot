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
    /* 0x0190 */ Vec3s jointTable[17];
    /* 0x01F6 */ Vec3s morphTable[17];
    /* 0x025C */ s16 eyeIdx; // segment idx
    /* 0x025E */ s16 blinkTimer; // eye related
    /* 0x0260 */ s32 action;
    /* 0x0264 */ s32 drawMode;
    /* 0x0268 */ f32 timer;
    /* 0x026C */ s32 unk_26C; // prev custscene command action?
    /* 0x0270 */ s32 unk_270; // some sort of flag
    /* 0x0274 */ s32 unk_274;
    /* 0x0278 */ s32 triforcePrimColor[4];
    /* 0x0288 */ s32 triforceEnvColor[4];
    /* 0x0298 */ f32 triforceScale[3]; // some sort of scale
    /* 0x02A4 */ s16 unk_2A4; // some sort of angle
    /* 0x02A8 */ s32 unk_2A8; // sound related
    /* 0x02AC */ s32 unk_2AC; // sound related
    /* 0x02B0 */ Vec3f vec_2B0; // hand pos?
    /* 0x02BC */ s32 unk_2BC; // hand pos related
    /* 0x02C0 */ ColliderCylinder collider;
    /* 0x030C */ s32 unk_30C;
    /* 0x0310 */ Actor* attached;
    /* 0x0314 */ struct_80034A14_arg1 struct_314;
} EnXc; // size = 0x033C

extern const ActorInit En_Xc_InitVars;

#endif
