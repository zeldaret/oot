#include "z_boss_ganon.h"
#include "overlays/ovl_Boss_Ganon/ovl_Boss_Ganon.h"
#include "overlays/actors/ovl_En_Ganon_Mant/z_en_ganon_mant.h"
#include "overlays/actors/ovl_En_Zl3/z_en_zl3.h"
#include "overlays/actors/ovl_Bg_Ganon_Otyuka/z_bg_ganon_otyuka.h"

#define FLAGS 0x00000035

#define THIS ((BossGanon*)thisx)

void BossGanon_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGanon_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGanon_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGanon_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_808E1EB4(Actor* thisx, GlobalContext* globalCtx); // update
void func_808E2544(Actor* thisx, GlobalContext* globalCtx); // update
void func_808E1034(Actor* thisx, GlobalContext* globalCtx); // update
void func_808E229C(Actor* thisx, GlobalContext* globalCtx); // draw
void func_808E324C(Actor* thisx, GlobalContext* globalCtx); // draw
void func_808E1B54(Actor* thisx, GlobalContext* globalCtx); // draw

// action functions
void func_808D779C(BossGanon* this, GlobalContext* globalCtx);
void func_808D90F8(BossGanon* this, GlobalContext* globalCtx);
void func_808D7918(BossGanon* this, GlobalContext* globalCtx);
void func_808D933C(BossGanon* this, GlobalContext* globalCtx);
void func_808DBB78(BossGanon* this, GlobalContext* globalCtx); // wait
void func_808DBF30(BossGanon* this, GlobalContext* globalCtx); // spawn light ball
void func_808DC14C(BossGanon* this, GlobalContext* globalCtx); // throw light ball
void func_808DAD20(BossGanon* this, GlobalContext* globalCtx); // pound the floor
void func_808DB2E8(BossGanon* this, GlobalContext* globalCtx); // charge up thing
void func_808DC4DC(BossGanon* this, GlobalContext* globalCtx);
void func_808DC75C(BossGanon* this, GlobalContext* globalCtx);
void func_808DCB7C(BossGanon* this, GlobalContext* globalCtx);
void func_808DD14C(BossGanon* this, GlobalContext* globalCtx);

// setup action
void func_808DBAF0(BossGanon* this, GlobalContext* globalCtx); // wait
void func_808DACE8(BossGanon* this, GlobalContext* globalCtx); // pound the floor
void func_808DBEC4(BossGanon* this, GlobalContext* globalCtx); // spawn light ball
void func_808DC0E8(BossGanon* this, GlobalContext* globalCtx); // throw light ball
void func_808DB278(BossGanon* this, GlobalContext* globalCtx); // charge up

void func_808E3D84(GlobalContext* globalCtx);

const ActorInit Boss_Ganon_InitVars = {
    ACTOR_BOSS_GANON,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_GANON,
    sizeof(BossGanon),
    (ActorFunc)BossGanon_Init,
    (ActorFunc)BossGanon_Destroy,
    (ActorFunc)BossGanon_Update,
    (ActorFunc)BossGanon_Draw,
};

static ColliderCylinderInit D_808E4C00 = {
    {
        COLTYPE_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x10 },
        { 0xFFCFFFFE, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 20, 80, -50, { 0, 0, 0 } },
};

static ColliderCylinderInit D_808E4C2C = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK6,
        { 0x00100700, 0x00, 0x08 },
        { 0x0D900740, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 20, 30, -15, { 0, 0, 0 } },
};

u8 D_808E4C58[] = { 0, 12, 10, 12, 14, 16, 12, 14, 16, 12, 14, 16, 12, 14, 16, 10, 16, 14, 0, 0 };
Vec3f D_808E4C6C = { 0.0f, 0.0f, 0.0f };
Color_RGB8 D_808E4C78[] = { { 255, 175, 85 }, { 155, 205, 155 }, { 155, 125, 55 } };

static InitChainEntry D_808E4C84[] = {
    ICHAIN_U8(targetMode, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 61, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 0, ICHAIN_STOP),
};

typedef struct {
    /* 0x00 */ Vec3s eye;
    /* 0x06 */ Vec3s at;
} CutsceneCameraPosition; // size = 0x12

CutsceneCameraPosition D_808E4C94[] = {
    { { 0, 40, 0 }, { 0, 50, 430 } },
    { { -20, 30, 400 }, { 10, 55, 440 } },
    { { 0, 60, 300 }, { 0, 273, -150 } },
    { { 0, 180, -260 }, { 0, 155, -300 } },
    { { -30, 60, 440 }, { 20, 25, 390 } },
    { { -50, 140, -360 }, { 50, 92, -390 } },
    { { -10, 264, -121 }, { 5, 266, -160 } },
    { { -13, 200, -310 }, { 0, 125, -410 } },
    { { 0, 40, -50 }, { 0, 35, 230 } },
    { { 0, 140, -250 }, { 0, 115, -570 } },
    { { -410, 150, -130 }, { 50, 155, -170 } },
    { { 0, 130, -230 }, { 0, 125, -2000 } },
    { { -2, 147, -293 }, { -200, 345, -2000 } },
};

Color_RGBA8 D_808E4D30 = { 0, 120, 0, 255 };
Color_RGBA8 D_808E4D34 = { 0, 120, 0, 255 };
AnimationHeader* D_808E4D38[] = { 0x0600B4AC, 0x0600BC28 };
s16 D_808E4D40[] = { 26, 20 }; // cape left arm timers
f32 D_808E4D44[] = { 1.0f, 3.0f, 0.0f, 7.0f, 13.0f, 4.0f, 6.0f, 11.0f, 5.0f, 2.0f, 8.0f, 14.0f, 10.0f, 12.0f, 9.0f };

// this one is weird. not sure of its purpose, and cant tell what is a fake symbol or not. grouping it all as one for
// now most likely in function static. ending zeroes are probably padding?
s8 D_808E4D80[] = {
    0xFF, 0xFF, 0x01, 0xFF, 0x03, 0x04, 0x05, 0xFF, 0x06, 0x07, 0x08, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0x02, 0x0C, 0x0D, 0x0E, 0x09, 0x0A, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
};

Vec3f D_808E4DA0 = { -500.0f, 200.0f, -300.0f };
Vec3f D_808E4DAC = { -500.0f, 200.0f, 300.0f };
Vec3f D_808E4DB8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808E4DC4 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808E4DD0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808E4DDC = { 1300.0f, 0.0f, 0.0f };
Vec3f D_808E4DE8 = { 600.0f, 420.0f, 100.0f };

s16 D_808E4DF4[] = { 1, 2, 3, 3, 2, 1 };
s16 D_808E4E00[] = { 2, 3, 4, 4, 4, 3, 2, 0 };
s16 D_808E4E10[] = { 2, 3, 4, 4, 4, 4, 3, 2 };
s16 D_808E4E20[] = { 2, 4, 5, 5, 6, 6, 6, 6, 5, 5, 4, 2 };
s16 D_808E4E38[] = { 1, -1, 1, 1, 3, 4, 1, 6, 7, 2, 9, 10, 2, 12, 13, 0 };
u8 D_808E4E58[] = { 3, 2, 2, 1, 3, 3, 1, 3, 3, 1, 0, 3, 1, 0, 3, 0 };

Gfx* D_808E4E68[] = {
    D_808F67C8, D_808F6790, D_808F6758, D_808F6720, D_808F66E8, D_808F66B0,
    D_808F6678, D_808F6640, D_808F6608, D_808F65D0, D_808F6598, D_808F6560,
};

void* D_808E4E98[] = {
    D_808E7E70, D_808E7E70, D_808E8A70, D_808E9670, D_808EA270, D_808EAE70, D_808EBA70,
    D_808EC670, D_808ED270, D_808EDE70, D_808EEA70, D_808EF670, D_808F0270,
};

Color_RGBA8 D_808E4ECC[] = {
    { 0, 0, 0, 255 },       { 255, 255, 231, 250 }, { 231, 208, 245, 208 }, { 185, 240, 185, 162 },
    { 235, 162, 139, 230 }, { 139, 115, 225, 115 }, { 92, 220, 92, 69 },    { 215, 69, 46, 210 },
    { 46, 23, 205, 23 },    { 0, 200, 0, 0 },
};

Color_RGBA8 D_808E4EF4[] = {
    { 0, 0, 0, 255 },       { 255, 0, 240, 231 },  { 23, 226, 208, 46 }, { 212, 185, 69, 198 }, { 162, 92, 184, 139 },
    { 115, 170, 115, 139 }, { 156, 92, 162, 142 }, { 69, 185, 128, 46 }, { 208, 114, 23, 231 }, { 100, 0, 255, 0 },
    { 0, 0, 0, 0 },         { 0, 0, 0, 0 },        { 0, 0, 0, 0 },
};

// need to move dlists here. they start at 8 so it cant be a real file split. though some of the zeros above might be
// var padding
#include "overlays/ovl_Boss_Ganon/ovl_Boss_Ganon.c"

// bss
EnGanonMant* D_808F93C0; // sCape
s32 D_808F93C4;
s32 D_808F93C8;
s32 D_808F93CC;
BossGanon* D_808F93D0; // sGanondorf
EnZl3* D_808F93D4;     // sZelda

typedef struct {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 unk_01;
    /* 0x04 */ Vec3f pos;
    /* 0x10 */ Vec3f velocity;
    /* 0x1C */ Vec3f accel;
    /* 0x28 */ Color_RGB8 color; // this might not be a color
    /* 0x2B */ u8 unk_2B;
    /* 0x2C */ s16 unk_2C; // alpha?
    /* 0x2E */ s16 unk_2E;
    /* 0x30 */ s16 unk_30;
    /* 0x34 */ f32 scale; // scale
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ f32 unk_3C; // roll?
    /* 0x40 */ f32 unk_40;
    /* 0x44 */ f32 unk_44; // pitch?
    /* 0x48 */ f32 unk_48; // yaw?
} GanondorfEffect;         // size = 0x4C

GanondorfEffect D_808F93D8[200]; // sCustomEffects

extern UNK_TYPE D_02006C18;
extern UNK_TYPE D_02007418;
extern UNK_TYPE D_06000540;
extern UNK_TYPE D_06000FE8;
extern UNK_TYPE D_06001440;
extern UNK_TYPE D_06001B0C;
extern UNK_TYPE D_06001F58;
extern UNK_TYPE D_06001FF8;
extern UNK_TYPE D_06002D2C;
extern UNK_TYPE D_06003018;
extern UNK_TYPE D_0600343C;
extern UNK_TYPE D_06003D40;
extern UNK_TYPE D_06004304;
extern UNK_TYPE D_06004884;
extern UNK_TYPE D_06004DA8;
extern UNK_TYPE D_06004F64;
extern UNK_TYPE D_060058C4;
extern UNK_TYPE D_06005FFC;
extern UNK_TYPE D_06006028;
extern UNK_TYPE D_060063CC;
extern UNK_TYPE D_060069A0;
extern UNK_TYPE D_06006AF4;
extern UNK_TYPE D_06007268;
extern UNK_TYPE D_0600738C;
extern UNK_TYPE D_06007A64;
extern UNK_TYPE D_06008128;
extern UNK_TYPE D_060089F8;
extern UNK_TYPE D_06008A88;
extern UNK_TYPE D_06008F44;
extern UNK_TYPE D_060096B0;
extern UNK_TYPE D_06009A14;
extern UNK_TYPE D_06009A20;
extern UNK_TYPE D_06009D5C;
extern UNK_TYPE D_0600A598;
extern UNK_TYPE D_0600AA24;
extern UNK_TYPE D_0600ADDC;
extern UNK_TYPE D_0600B668;
extern UNK_TYPE D_0600BE38;
extern UNK_TYPE D_0600BE90;
extern UNK_TYPE D_0600C9E8;
extern UNK_TYPE D_0600CF00;
extern UNK_TYPE D_0600EA00;
extern UNK_TYPE D_0600F19C;
extern UNK_TYPE D_06010298;
extern UNK_TYPE D_06010514;
extern UNK_TYPE D_060114E8;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D69B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6CBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6F3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D7034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D70F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D712C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D779C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D787C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D7918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D9018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D90F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D91F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D933C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DACE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DAD20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DB278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DB2E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DBAF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DBB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DBEC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DBF30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC0E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC14C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC66C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC75C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC9B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DCB7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DD0E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DD14C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DD20C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DE734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DE988.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DED30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DED4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DEE70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DF25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DF4F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DFBD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DFFC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E06FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0A3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0F4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E1034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E1B54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E1EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E229C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E2544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E324C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E3564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E3D84.s")
