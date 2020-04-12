#ifndef _Z_BG_BDAN_SWITCH_H_
#define _Z_BG_BDAN_SWITCH_H_

#include <ultra64.h>
#include <global.h>

// BgBdanSwitch.actor.params & 0xFF
typedef enum {
    /* 0x00 */ BLUE,
    /* 0x01 */ YELLOW_HEAVY,
    /* 0x02 */ YELLOW,
    /* 0x03 */ YELLOW_TALL_1,
    /* 0x04 */ YELLOW_TALL_2
} BgBdanSwitchType;

typedef struct {
    /* 0x00 */ char unk_00[0x2E];
    /* 0x2E */ s16 unk_2E;
} ColliderCustomHelper;

typedef struct {
    /* 0x00 */ Collider base;
    /* 0x18 */ char unk_18[0x4];
    /* 0x1C */ ColliderCustomHelper* unk_1C;
    /* 0x20 */ s32 unk_20;
    /* 0x24 */ char unk_24[0x1C];
    // after this is a guess based on ColliderCylinderMain
    /* 0x40 */ s16 radius;
    /* 0x42 */ s16 height;
    /* 0x44 */ s16 yShift;
    /* 0x46 */ Vec3s position;
} ColliderCustomMain; // size = 0x4C

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ f32 unk_150;
    /* 0x0154 */ f32 unk_154;
    /* 0x0158 */ u32 unk_158;
    /* 0x015C */ u32 unk_15C;
    /* 0x0160 */ u8 unk_160;
    /* 0x0164 */ ActorFunc updateFunc;
    /* 0x0168 */ ColliderCustomMain collider;
    /* 0x01B4 */ char unk_1B4[0x14];
    /* 0x01C8 */ f32 unk_1C8;
    /* 0x01CC */ s16 unk_1CC;
    /* 0x01CE */ char unk_1CE[0x2];
    /* 0x01D0 */ f32 unk_1D0;
    /* 0x01D4 */ f32 unk_1D4;
    /* 0x01D8 */ s16 unk_1D8;
    /* 0x01DA */ s16 unk_1DA;
    /* 0x01DC */ u8 unk_1DC;
    /* 0x01DD */ char unk_1DD[0x3];
} BgBdanSwitch; // size = 0x01E0

extern const ActorInit Bg_Bdan_Switch_InitVars;

#endif
