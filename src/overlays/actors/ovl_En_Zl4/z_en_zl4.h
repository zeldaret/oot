#ifndef _Z_EN_ZL4_H_
#define _Z_EN_ZL4_H_

#include "ultra64.h"
#include "global.h"

struct EnZl4;

typedef void (*EnZl4ActionFunc)(struct EnZl4*, GlobalContext*);
typedef void (*EnZl4DrawFunc)(struct EnZl4*, GlobalContext*);

typedef struct EnZl4 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnZl4ActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ struct_80034A14_arg1 unk_1E0;
    /* 0x0208 */ u8 unk_208;
    /* 0x0209 */ u8 unk_209;
    /* 0x020A */ u8 unk_20A;
    /* 0x020B */ u8 unk_20B;
    /* 0x020C */ u8 unk_20C;
    /* 0x020D */ u8 unk_20D;
    /* 0x020E */ u8 unk_20E;
    /* 0x020F */ u8 unk_20F;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ s16 unk_212;
    /* 0x0214 */ s16 unk_214;
    /* 0x0216 */ s16 unk_216;
    /* 0x0218 */ Vec3s jointTable[18];
    /* 0x0284 */ Vec3s morphTable[18];
} EnZl4; // size = 0x02F0

extern const ActorInit En_Zl4_InitVars;

#endif
