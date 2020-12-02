#ifndef _Z_EN_GM_H_
#define _Z_EN_GM_H_

#include "ultra64.h"
#include "global.h"

struct EnGm;

typedef void (*EnGmActionFunc)(struct EnGm*, GlobalContext*);

typedef struct EnGm {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[18];
    /* 0x01FC */ Vec3s transitionDrawTable[18];
    /* 0x0268 */ EnGmActionFunc actionFunc;
    /* 0x026C */ EnGmActionFunc subActionFunc;
    /* 0x0270 */ ColliderCylinder collider;
    /* 0x02BC */ s8 objGmBankIndex;
    /* 0x02BE */ s16 timer;
    /* 0x02C0 */ s16 eyeTimer;
    /* 0x02C2 */ u8 eyeIndex;
    /* 0x02C4 */ Vec3f talkPos;
} EnGm; // size = 0x02D0

extern const ActorInit En_Gm_InitVars;

#endif
