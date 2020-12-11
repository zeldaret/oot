#ifndef _Z_EN_GO2_H_
#define _Z_EN_GO2_H_

#include "ultra64.h"
#include "global.h"

struct EnGo2;

typedef void (*EnGo2ActionFunc)(struct EnGo2*, GlobalContext*);

typedef struct EnGo2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnGo2ActionFunc actionFunc;
    /* 0x0194 */ char unk_194[0x28];
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x0208 */ Path* path;
    /* 0x020C */ char unk_20C[0x2];
    /* 0x020E */ u8 unk_20E;
    /* 0x020F */ u8 unk_20F;
    /* 0x0210 */ s8 unk_210;
    /* 0x0211 */ u8 unk_211;
    /* 0x0212 */ u8 unk_212;
    /* 0x0213 */ u8 unk_213;
    /* 0x0214 */ char unk_214[0x2];
    /* 0x0216 */ s16 unk_216;
    /* 0x0218 */ char unk_218[0x8];
    /* 0x0220 */ f32 unk_220;
    /* 0x0224 */ char unk_224[0x4A];
    /* 0x026E */ u16 unk_26E;
    /* 0x0270 */ char unk_270[0x330];
} EnGo2; // size = 0x05A0

extern const ActorInit En_Go2_InitVars;

#endif
