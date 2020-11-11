#ifndef _Z_EN_RU1_H_
#define _Z_EN_RU1_H_

#include "ultra64.h"
#include "global.h"

#include "overlays/actors/ovl_Bg_Bdan_Objects/z_bg_bdan_objects.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

struct EnRu1;

typedef void (*EnRu1ActionFunc)(struct EnRu1*, GlobalContext*);
typedef void (*EnRu1DrawFunc)(struct EnRu1*, GlobalContext*);
typedef void (*EnRu1PreLimbDrawFunc)(struct EnRu1*, GlobalContext*, s32, Vec3s*);

typedef struct EnRu1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s limbDrawTable[17];
    /* 0x01F6 */ Vec3s transitionDrawTable[17];
    /* 0x025C */ s16 unk_25C;
    /* 0x025E */ char unk_25E[0x2];
    /* 0x0260 */ s16 unk_260;
    /* 0x0262 */ char unk_262[0x2];
    /* 0x0264 */ s32 action;
    /* 0x0268 */ s32 drawConfig;
    /* 0x026C */ f32 unk_26C;
    /* 0x0270 */ f32 unk_270;
    /* 0x0274 */ char unk_274[0x4];
    /* 0x0278 */ DoorWarp1* unk_278;
    /* 0x027C */ f32 unk_27C;
    /* 0x0280 */ s32 unk_280;
    /* 0x0284 */ s8 roomNum1;
    /* 0x0285 */ s8 roomNum2;
    /* 0x0286 */ s8 roomNum3;
    /* 0x0287 */ char unk_287;
    /* 0x0288 */ f32 unk_288;
    /* 0x028C */ BgBdanObjects* unk_28C;
    /* 0x0290 */ s32 unk_290;
    /* 0x0294 */ char unk_294[0x4];
    /* 0x0298 */ s32 unk_298;
    /* 0x029C */ char unk_29C[0x2];
    /* 0x029E */ s16 unk_29E;
    /* 0x02A0 */ char unk_2A0[0x4];
    /* 0x02A4 */ f32 unk_2A4;
    /* 0x02A8 */ s32 unk_2A8;
    /* 0x02AC */ s16 unk_2AC;
    /* 0x02AE */ char unk_2AE[0x2];
    /* 0x02B0 */ s32 unk_2B0;
    /* 0x02B4 */ ColliderCylinder collider;
    /* 0x0300 */ ColliderCylinder collider2;
    /* 0x034C */ s32 unk_34C;
    /* 0x0350 */ s32 unk_350;
    /* 0x0354 */ f32 unk_354;
    /* 0x0358 */ f32 unk_358;
    /* 0x035C */ s16 unk_35C;
    /* 0x0360 */ f32 unk_360;
    /* 0x0364 */ Vec3f unk_364;
    /* 0x0370 */ f32 unk_370;
    /* 0x0374 */ struct_80034A14_arg1 unk_374;
} EnRu1; // size = 0x039C

extern const ActorInit En_Ru1_InitVars;

#endif
