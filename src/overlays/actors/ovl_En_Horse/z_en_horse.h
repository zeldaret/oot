#ifndef _Z_EN_HORSE_H_
#define _Z_EN_HORSE_H_

#include "ultra64.h"
#include "global.h"

struct EnHorse;

typedef enum {
    /* 0 */ PLAYER_DIR_FRONT_R,
    /* 1 */ PLAYER_DIR_FRONT_L,
    /* 2 */ PLAYER_DIR_BACK_R,
    /* 3 */ PLAYER_DIR_BACK_L,
    /* 4 */ PLAYER_DIR_SIDE_R,
    /* 5 */ PLAYER_DIR_SIDE_L
} EnHorsePlayerDir;

typedef enum {
    /* 0 */ HORSE_EPONA,
    /* 1 */ HORSE_HNI,
} HorseType;


typedef struct EnHorse {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 action;
    /* 0x0150 */ s32 unk_150; // some counter
    /* 0x0154 */ s32 unk_154; // copy of unk_150
    /* 0x0158 */ s32 type;
    /* 0x015C */ s8 bankIndex;
    /* 0x0160 */ PSkinAwb skin;
    /* 0x01F0 */ u32 flags;
    /* 0x01F4 */ Vec3f lastPos;
    /* 0x0200 */ s16 lastYaw;
    /* 0x0202 */ s16 unk_202;
    /* 0x0204 */ s32 unk_204;
    /* 0x0208 */ s32 boostSpeed;
    /* 0x020C */ s32 unk_20C;
    /* 0x0210 */ s32 unk_210;
    /* 0x0214 */ f32 curFrame;
    /* 0x0218 */ s32 unk_218;
    /* 0x021C */ Vec3f unk_21C;
    /* 0x0228 */ Vec3f unk_228;
    /* 0x0234 */ s32 unk_234;
    /* 0x0238 */ u8 unk_238;
    /* 0x023C */ s32 unk_23C;
    /* 0x0240 */ s32 unk_240;
    /* 0x0244 */ void (*unk_244)(struct EnHorse *this, GlobalContext *globalCtx);

    // The y coordinate of the floor under the front and back feet
    /* 0x0248 */ f32 yFront;
    /* 0x024C */ f32 yBack;

    /* 0x0250 */ s16 unk_250;
    /* 0x0252 */ s16 unk_252;
    /* 0x0254 */ u32 unk_254;
    /* 0x0258 */ Vec3f unk_258;
    /* 0x0264 */ Vec2f curStick;
    /* 0x026C */ Vec2f lastStick;
    /* 0x0274 */ f32 unk_274;
    /* 0x0278 */ ColliderCylinder cyl1;
    /* 0x02C4 */ ColliderCylinder cyl2;
    /* 0x0310 */ ColliderJntSph jntSph;
    /* 0x0330 */ ColliderJntSphElement jntSphList;
    /* 0x0370 */ u32 playerDir;
    /* 0x0374 */ s16 unk_374;
    /* 0x0376 */ s16 unk_376;
    /* 0x0378 */ s16 unk_378;
    /* 0x037A */ u8 unk_37A;
    /* 0x037C */ s16 unk_37C;
    /* 0x037E */ s16 unk_37E;
    /* 0x0380 */ s32 unk_380;
    /* 0x0384 */ u16 unk_384;
    /* 0x0386 */ s16 unk_386; // pad
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
    /* 0x03C4 */ s16 unk_3C4;
    /* 0x03C6 */ s16 unk_3C6; // pad
    // sub struct?

    /* 0x03C8 */ u16 dustSpawn;
    /* 0x03CC */ Vec3f unk_3CC;
    /* 0x03D8 */ Vec3f unk_3D8;
    /* 0x03E4 */ Vec3f unk_3E4;
    /* 0x03F0 */ Vec3f unk_3F0;
} EnHorse; // size = 0x03FC

#define EN_HORSE_CHECK_1(horseActor) \
    (((horseActor)->flags & 0x40)  \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_2(horseActor) \
    (((horseActor)->flags & 0x100) \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_3(horseActor) \
    (((horseActor)->flags & 0x200) \
        ? true                       \
        : false)

#define EN_HORSE_CHECK_4(horseActor)                                                                    \
    (((((horseActor)->action == 5) || ((horseActor)->action == 0) || ((horseActor)->action == 6)) && \
      !((horseActor)->flags & 0x80000) && !((horseActor)->flags & 0x2000000))                       \
         ? true                                                                                         \
         : false)

#define EN_HORSE_CHECK_5(horseActor) \
    (((horseActor)->flags & 0x4) \
        ? true                       \
        : false)

extern const ActorInit En_Horse_InitVars;

#endif
