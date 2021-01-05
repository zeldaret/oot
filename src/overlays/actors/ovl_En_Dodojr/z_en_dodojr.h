#ifndef _Z_EN_DODOJR_H_
#define _Z_EN_DODOJR_H_

#include "ultra64.h"
#include "global.h"

struct EnDodojr;

typedef void (*EnDodojrActionFunc)(struct EnDodojr*, GlobalContext*);

typedef struct EnDodojr {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnDodojrActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ Actor* bombInstance;
    /* 0x01E4 */ Vec3f unk_1E4;
    /* 0x01F0 */ Vec3f unk_1F0;
    /* 0x01FC */ s16 unk_1FC;
    /* 0x01FE */ s16 unk_1FE;
    /* 0x0200 */ s16 unk_200;
    /* 0x0202 */ s16 unk_202;
    /* 0x0204 */ s16 unk_204;
    /* 0x0206 */ s16 unk_206;
    /* 0x0208 */ f32 unk_208;
    /* 0x020C */ Vec3s jointTable[15];
    /* 0x0266 */ Vec3s morphTable[15];
} EnDodojr; // size = 0x02C0

extern const ActorInit En_Dodojr_InitVars;

#endif
