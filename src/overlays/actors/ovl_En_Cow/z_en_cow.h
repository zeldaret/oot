#ifndef _Z_EN_COW_H_
#define _Z_EN_COW_H_

#include "ultra64.h"
#include "global.h"

struct EnCow;

typedef void (*EnCowActionFunc)(struct EnCow*, GlobalContext*);

typedef struct EnCow {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder colliders[2];
    /* 0x01E4 */ SkelAnime skelAnime;
    /* 0x0228 */ Vec3s jointTbl[6];
    /* 0x024C */ Vec3s morphTbl[6];
    /* 0x0270 */ Vec3s someRot;
    /* 0x0276 */ u16 unk_276;
    /* 0x0278 */ u16 unk_278;
    /* 0x027A */ u16 unk_27A;
    /* 0x027C */ EnCowActionFunc actionFunc;
} EnCow; // size = 0x0280

extern const ActorInit En_Cow_InitVars;

#endif
