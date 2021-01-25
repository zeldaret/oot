#ifndef _Z_EN_HORSE_H_
#define _Z_EN_HORSE_H_

#include "ultra64.h"
#include "global.h"

struct EnHorse;

typedef struct EnHorse {
    /* 0x000 */ Actor actor;
    /* 0x014C */ s32 unk_14C;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ s32 unk_154;
    /* 0x0158 */ s32 unk_158;
    /* 0x015C */ s8 unk_15C;
    /* 0x0160 */ PSkinAwb unk_160;
    /* 0x01F0 */ u32 unk_1F0;
    /* 0x01F4 */ Vec3f unk_1F4;
    /* 0x0200 */ s16 unk_200;
    /* 0x0200 */ s16 unk_202;
    /* 0x0204 */ s32 unk_204;
    /* 0x0208 */ s32 unk_208;
    /* 0x020C */ s32 unk_20C;
    /* 0x0210 */ s32 unk_210;
    /* 0x0214 */ f32 unk_214;
    /* 0x0218 */ s32 unk_218;
    /* 0x0218 */ Vec3f unk_21C;
    /* 0x0218 */ Vec3f unk_228;
    /* 0x0234 */ s32 unk_234;
    /* 0x0238 */ u8 unk_238;
    /* 0x023C */ s32 unk_23C;
    /* 0x0240 */ s32 unk_240;
    /* 0x0244 */ void (*unk_244)(struct EnHorse *this, GlobalContext *globalCtx);
    /* 0x0248 */ f32 unk_248;
    /* 0x024C */ f32 unk_24C;
    /* 0x0250 */ s16 unk_250;
    /* 0x0252 */ s16 unk_252;
    /* 0x0254 */ u32 unk_254;
    /* 0x0258 */ Vec3f unk_258;
    /* 0x0264 */ Vec2f unk_264;
    /* 0x0264 */ Vec2f unk_26C;
    /* 0x0274 */ f32 unk_274;
    /* 0x0278 */ ColliderCylinder cyl1;
    /* 0x02C4 */ ColliderCylinder cyl2;
    /* 0x0310 */ ColliderJntSph jntSph;
    /* 0x0330 */ ColliderJntSphElement jntSphList;
    /* 0x0370 */ u32 unk_370;
    /* 0x0374 */ s16 unk_374;
    /* 0x0376 */ s16 unk_376;
    /* 0x0378 */ s16 unk_378;
    /* 0x037A */ u8 unk_37A;
    /* 0x037B */ char unk_37B;
    /* 0x037A */ s16 unk_37C;
    /* 0x037A */ s16 unk_37E;
    /* 0x0388 */ s32 unk_380;
    /* 0x0388 */ u16 unk_384;
    /* 0x0388 */ s16 unk_386;
    /* 0x0388 */ s32 unk_388;
    // struct {
    /* 0x038C */ Actor* rider;
    /* 0x0390 */ u32 unk_390;
    /* 0x0394 */ u16 unk_394;
    /* 0x0398 */ f32 unk_398;
    // } race; //?
    /* 0x039C */ s32 unk_39C;
    /* 0x03A0 */ s32 unk_3A0;
    /* 0x03A4 */ s32 unk_3A4;
    /* 0x03A8 */ s32 unk_3A8;
    /* 0x03AC */ u8 unk_3AC;
    /* 0x03B0 */ Vec3f unk_3B0;
    /* 0x03BC */ s32 unk_3BC;
    /* 0x03C0 */ f32 unk_3C0;
    /* 0x03C8 */ s16 unk_3C4;
    /* 0x03C8 */ s16 unk_3C6; // pad
    // sub struct?
    /* 0x03C8 */ u16 unk_3C8;
    /* 0x03D0 */ Vec3f unk_3CC;
    /* 0x03D0 */ Vec3f unk_3D8;
    /* 0x03D0 */ Vec3f unk_3E4;
    /* 0x03D0 */ Vec3f unk_3F0;
} EnHorse; // size = 0x03FC

#define EN_HORSE_CHECK_1(horseActor) \
    (((horseActor)->unk_1F0 & 0x40)  \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_2(horseActor) \
    (((horseActor)->unk_1F0 & 0x100) \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_3(horseActor) \
    (((horseActor)->unk_1F0 & 0x200) \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_4(horseActor)                                                                    \
    (((((horseActor)->unk_14C == 5) || ((horseActor)->unk_14C == 0) || ((horseActor)->unk_14C == 6)) && \
      !((horseActor)->unk_1F0 & 0x80000) && !((horseActor)->unk_1F0 & 0x2000000))                       \
         ? true                                                                                         \
         : false)

#define EN_HORSE_CHECK_5(horseActor) \
    (((horseActor)->unk_1F0 & 0x4) \
        ? true                       \
        : false)

extern const ActorInit En_Horse_InitVars;

#endif
