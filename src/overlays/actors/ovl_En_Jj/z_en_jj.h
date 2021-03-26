#ifndef _Z_EN_JJ_H_
#define _Z_EN_JJ_H_

#include "ultra64.h"
#include "global.h"

struct EnJj;

typedef void (*EnJjActionFunc)(struct EnJj*, GlobalContext*);

typedef struct EnJj {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ SkelAnime skelAnime;
    /* 0x01A8 */ Vec3s limbDrawTable[22];
    /* 0x022C */ Vec3s transitionDrawTable[22];
    /* 0x02B0 */ ColliderCylinder collider;
    /* 0x02FC */ EnJjActionFunc actionFunc;
    /* 0x0300 */ DynaPolyActor* childActor;
    /* 0x0304 */ Actor* unk_304;
    /* 0x0308 */ s16 unk_308;
    /* 0x030A */ u16 unk_30A;
    /* 0x030C */ s16 unk_30C;
    /* 0x030E */ u8 eyeIndex;
    /* 0x030F */ u8 unk_30F;
    /* 0x0310 */ u8 unk_310;
    /* 0x0311 */ u8 unk_311;
} EnJj; // size = 0x0314

extern const ActorInit En_Jj_InitVars;

#endif
