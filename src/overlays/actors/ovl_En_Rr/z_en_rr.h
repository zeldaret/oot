#ifndef _Z_EN_RR_H_
#define _Z_EN_RR_H_

#include "ultra64.h"
#include "global.h"

struct EnRr;

typedef void (*EnRrActionFunc)(struct EnRr*, GlobalContext*);

typedef struct EnRrStruct1 {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ Vec3f unk_08;
    /* 0x14 */ Vec3f unk_14;
    /* 0x20 */ Vec3f unk_20;
    /* 0x2C */ Vec3f unk_2C;
    /* 0x38 */ Vec3s unk_38;
} EnRrStruct1; // size = 0x40

typedef struct EnRr {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnRrActionFunc actionFunc;
    /* 0x0150 */ ColliderCylinder collider1;
    /* 0x019C */ ColliderCylinder collider2;
    /* 0x01E8 */ s16 unk_1E8;
    /* 0x01EA */ s16 unk_1EA;
    /* 0x01EC */ s16 unk_1EC;
    /* 0x01EE */ s16 unk_1EE;
    /* 0x01F0 */ s16 unk_1F0;
    /* 0x01F2 */ s16 unk_1F2;
    /* 0x01F4 */ s16 unk_1F4;
    /* 0x01F6 */ s16 unk_1F6;
    /* 0x01F8 */ f32 unk_1F8;
    /* 0x01FC */ f32 unk_1FC;
    /* 0x0200 */ f32 unk_200;
    /* 0x0204 */ f32 unk_204;
    /* 0x0208 */ f32 unk_208;
    /* 0x020C */ f32 unk_20C;
    /* 0x0210 */ f32 unk_210;
    /* 0x0214 */ f32 unk_214;
    /* 0x0218 */ f32 unk_218;
    /* 0x021C */ f32 unk_21C;
    /* 0x0220 */ f32 unk_220;
    /* 0x0224 */ EnRrStruct1 unk_224[5];
    /* 0x0364 */ f32 unk_364;
    /* 0x0368 */ f32 unk_368;
    /* 0x036C */ f32 unk_36C;
    /* 0x0370 */ u8 unk_370;
    /* 0x0371 */ u8 unk_371;
    /* 0x0372 */ u8 unk_372;
    /* 0x0373 */ u8 unk_373;
    /* 0x0374 */ u8 unk_374;
    /* 0x0375 */ u8 unk_375;
    /* 0x0376 */ u8 unk_376;
    /* 0x0378 */ s16 unk_378;
    /* 0x037C */ Vec3f unk_37C;
    /* 0x0388 */ Vec3f unk_388[5];
    /* 0x03C4 */ char unk_3C4[0x2000];
} EnRr; // size = 0x23C4

extern const ActorInit En_Rr_InitVars;

#endif
