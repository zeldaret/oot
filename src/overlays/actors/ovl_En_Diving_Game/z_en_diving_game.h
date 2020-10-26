#ifndef _Z_EN_DIVING_GAME_H_
#define _Z_EN_DIVING_GAME_H_

#include "ultra64.h"
#include "global.h"

struct EnDivingGame;

typedef void (*EnDivingGameActionFunc)(struct EnDivingGame*, GlobalContext*);

typedef struct EnDivingGame {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[20];
    /* 0x0208 */ Vec3s transitionDrawTable[20];
    /* 0x0280 */ EnDivingGameActionFunc actionFunc;
    /* 0x0284 */ Vec3s vec_284;
    /* 0x028A */ Vec3s vec_28A;
    /* 0x0290 */ s16 unk_290;
    /* 0x0292 */ s16 unk_292;
    /* 0x0294 */ s16 unk_294;
    /* 0x0296 */ s16 unk_296;
    /* 0x0298 */ s16 unk_298;
    /* 0x029A */ s16 unk_29A;
    /* 0x029C */ s16 unk_29C;
    /* 0x029E */ s16 unk_29E;
    /* 0x02A0 */ s16 camId;
    /* 0x02A2 */ s16 unk_2A2;
    /* 0x02A4 */ s16 unk_2A4;
    /* 0x02A6 */ s16 unk_2A6;
    /* 0x02A8 */ s16 unk_2A8;
    /* 0x02AA */ s16 unk_2AA;
    /* 0x02AC */ char unk_2AC[0xC];
    /* 0x02B8 */ Vec3f vec_2B8;
    /* 0x02C4 */ Vec3f vec_2C4;
    /* 0x02D0 */ f32 unk_2D0;
    /* 0x02D4 */ f32 unk_2D4;
    /* 0x02D8 */ f32 unk_2D8;
    /* 0x02DC */ f32 unk_2DC;
    /* 0x02E0 */ f32 unk_2E0;
    /* 0x02E4 */ f32 unk_2E4;
    /* 0x02E8 */ f32 unk_2E8;
    /* 0x02EC */ f32 unk_2EC;
    /* 0x02F0 */ f32 unk_2F0;
    /* 0x02F4 */ f32 unk_2F4;
    /* 0x02F8 */ f32 unk_2F8;
    /* 0x02FC */ f32 unk_2FC;
    /* 0x0300 */ f32 unk_300;
    /* 0x0304 */ f32 unk_304;
    /* 0x0308 */ f32 unk_308;
    /* 0x030C */ f32 unk_30C;
    /* 0x0310 */ f32 unk_310;
    /* 0x0314 */ f32 unk_314;
    /* 0x0318 */ f32 unk_318;
    /* 0x031C */ char unk_31C;
    /* 0x031D */ u8 unk_31D;
    /* 0x031E */ char unk_31E;
    /* 0x031F */ u8 unk_31F;
    /* 0x0320 */ char unk_320[0x4];
    /* 0x0324 */ struct_80034A14_arg1 unk_324;
    /* 0x034C */ ColliderCylinder collider;
} EnDivingGame; // size = 0x0398

extern const ActorInit En_Diving_Game_InitVars;

#endif
