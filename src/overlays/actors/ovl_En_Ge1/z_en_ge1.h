#ifndef _Z_EN_GE1_H_
#define _Z_EN_GE1_H_

#include "ultra64.h"
#include "global.h"

struct EnGe1;

typedef void (*EnGe1UnkFunc)(struct EnGe1*);
typedef void (*EnGe1ActionFunc)(struct EnGe1*, GlobalContext*);

typedef struct EnGe1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s jointTable[16];
    /* 0x023C */ Vec3s morphTable[16];
    /* 0x029C */ Vec3s headRot;
    /* 0x02A2 */ Vec3s unk_2A2;
    /* 0x02A8 */ s16 eyeIndex;
    /* 0x02AA */ s16 blinkTimer;
    /* 0x02AC */ u16 flags;
    /* 0x02AE */ u8 hairstyle;
    /* 0x02AF */ u8 cutsceneTimer;
    /* 0x02B0 */ AnimationHeader* animation;
    /* 0x02B4 */ EnGe1ActionFunc actionFunc;
    /* 0x02B8 */ EnGe1UnkFunc unk_func;
} EnGe1; // size = 0x02BC

extern const ActorInit En_Ge1_InitVars;

#endif
