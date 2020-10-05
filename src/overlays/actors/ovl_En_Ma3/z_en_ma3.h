#ifndef _Z_EN_MA3_H_
#define _Z_EN_MA3_H_

#include "ultra64.h"
#include "global.h"

struct EnMa3;

typedef void (*EnMa3ActionFunc)(struct EnMa3*, GlobalContext*);

typedef struct EnMa3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnMa3ActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ struct_80034A14_arg1 unk_1E0;
    /* 0x0208 */ s16 unk_208;
    /* 0x020A */ s16 unk_20A;
    /* 0x020C */ s16 unk_20C;
    /* 0x020E */ s16 unk_20E;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ Vec3s unk_212[0x13];
} EnMa3; // size = 0x0284

extern const ActorInit En_Ma3_InitVars;

#endif
