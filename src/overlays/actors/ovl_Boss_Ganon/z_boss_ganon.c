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
EnGanonMant* sCape;
s32 D_808F93C4;
s32 D_808F93C8;
s32 D_808F93CC;
BossGanon* sGanondorf;
EnZl3* sZelda;

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

GanondorfEffect sEffectBuf[200];

extern u8 D_0600CF00[]; // title card texture
extern u8 D_02007418[];
extern u8 D_02006C18[];
extern UNK_TYPE D_06009A20;
extern FlexSkeletonHeader D_060114E8;
extern AnimationHeader D_06005FFC;
extern AnimationHeader D_060089F8;
extern AnimationHeader D_0600EA00;
extern AnimationHeader D_06004F64;
extern AnimationHeader D_06006AF4;
extern AnimationHeader D_06004304;
extern AnimationHeader D_06001F58;
extern AnimationHeader D_06003018;
extern AnimationHeader D_06007268;
extern AnimationHeader D_06007A64;
extern AnimationHeader D_06008A88;
extern AnimationHeader D_06009A14;
extern AnimationHeader D_0600AA24;
extern AnimationHeader D_0600738C;
extern AnimationHeader D_06009A14;
extern AnimationHeader D_06002D2C;
extern AnimationHeader D_0600343C;
extern AnimationHeader D_06001B0C;
extern AnimationHeader D_06001FF8;
extern AnimationHeader D_06000540;
extern AnimationHeader D_06000FE8;
extern AnimationHeader D_06001440;
extern AnimationHeader D_06008128;
extern AnimationHeader D_06008F44;
extern AnimationHeader D_060096B0;
extern AnimationHeader D_060069A0;
extern AnimationHeader D_06004884;
extern AnimationHeader D_06004DA8;
extern AnimationHeader D_06003D40;
extern AnimationHeader D_060063CC;
extern AnimationHeader D_060058C4;
extern AnimationHeader D_06006028;
extern AnimationHeader D_06009D5C;
extern AnimationHeader D_0600A598;
extern AnimationHeader D_0600F19C;

void func_808D6870(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, f32 scale) {
    s16 i;
    GanondorfEffect* eff = globalCtx->specialEffects;
    Color_RGB8* color;

    for (i = 0; i < 200; i++, eff++) {
        if (eff->type == 0) {
            eff->type = 9;
            eff->pos = *pos;
            eff->velocity = *velocity;
            eff->accel = D_808E4C6C;
            eff->scale = scale;
            eff->accel.y = -1.5f;
            eff->unk_44 = Rand_ZeroFloat(6.28f);
            eff->unk_48 = Rand_ZeroFloat(6.28f);
            color = &D_808E4C78[(s16)Rand_ZeroFloat(2.99f)];
            eff->color.r = color->r;
            eff->color.g = color->g;
            eff->color.b = color->b;
            eff->unk_01 = (s16)Rand_ZeroFloat(20.0f);
            return;
        }
    }
}

void func_808D69B0(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 scale, s16 arg6) {
    s16 i;
    GanondorfEffect* eff = globalCtx->specialEffects;

    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 0) {
            eff->type = 1;
            eff->pos = *pos;
            eff->velocity = *velocity;
            eff->accel = *accel;
            eff->scale = scale / 1000.0f;
            eff->unk_2E = (s16)Rand_ZeroFloat(100.0f) + 0xC8;
            eff->unk_30 = arg6;
            eff->unk_01 = (s16)Rand_ZeroFloat(10.0f);
            return;
        }
    }
}

void func_808D6AAC(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity, Vec3f* accel, f32 scale, f32 arg5, s16 arg6) {
    s16 i;
    GanondorfEffect* eff = globalCtx->specialEffects;

    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 0) {
            eff->type = 2;
            eff->pos = *pos;
            eff->velocity = *velocity;
            eff->accel = *accel;
            eff->scale = scale / 1000.0f;
            eff->unk_38 = 1.0f;
            eff->unk_40 = arg5;
            eff->unk_2E = (s16)Rand_ZeroFloat(100.0f) + 0xC8;
            eff->unk_30 = arg6;
            eff->unk_01 = (s16)Rand_ZeroFloat(10.0f);
            eff->unk_48 = Math_Atan2F(eff->velocity.z, eff->velocity.x);
            eff->unk_44 = -Math_Atan2F(sqrtf(SQ(eff->velocity.x) + SQ(eff->velocity.z)), eff->velocity.y);
            return;
        }
    }
}

// shock
void func_808D6BF0(GlobalContext* globalCtx, f32 scale, s16 arg2) {
    s16 i;
    GanondorfEffect* eff = globalCtx->specialEffects;

    for (i = 0; i < 75; i++, eff++) {
        if (eff->type == 0) {
            eff->type = 3;
            eff->pos = D_808E4C6C;
            eff->pos.y = -2000.0f;
            eff->velocity = D_808E4C6C;
            eff->accel = D_808E4C6C;
            eff->scale = scale / 1000.0f;
            eff->unk_2E = arg2;
            eff->unk_01 = 0;
            return;
        }
    }
}

void func_808D6CBC(GlobalContext* globalCtx, f32 scale, f32 arg2, f32 arg3) {
    s16 i;
    GanondorfEffect* eff = globalCtx->specialEffects;

    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 0) {
            eff->type = 4;
            eff->velocity = D_808E4C6C;
            eff->accel = D_808E4C6C;
            eff->unk_2E = 0;
            eff->scale = scale;
            eff->unk_48 = arg2;
            eff->unk_3C = arg3;
            eff->unk_01 = 0;
            return;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6D60.s")
void func_808D6D60(GlobalContext* globalCtx, Vec3f* pos, f32 arg2, f32 arg3);
// void func_808D6D60(GlobalContext* globalCtx, Vec3f* pos, f32 scale, f32 arg3) {
//     s16 i;
//     GanondorfEffect* eff = globalCtx->specialEffects;

//     for (i = 0; i < 150; i++, eff++) {
//         if (eff->type == 0) {
//             eff->type = 5;
//             eff->pos = *pos;
//             eff->velocity = D_808E4C6C;
//             eff->accel = D_808E4C6C;
//             eff->scale = scale;
//             eff->unk_40 = 1.0f;
//             eff->unk_38 = arg3;
//             eff->unk_30 = (s16)Rand_ZeroFloat(100.0f);
//             eff->unk_2C = 0;
//             eff->unk_2E = eff->unk_01 = eff->unk_2D;
//             return;
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6E54.s")
void func_808D6E54(GlobalContext* globalCtx, Vec3f* pos, f32 arg2, f32 arg3, s16 arg4);

void func_808D6F3C(GlobalContext* globalCtx, Vec3f* pos, f32 arg2, f32 arg3);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6F3C.s")
// void func_808D6F3C(GlobalContext* globalCtx, Vec3f* pos, f32 scale, f32 arg3) {
//     s16 i;
//     GanondorfEffect* eff = globalCtx->specialEffects;

//     for (i = 0; i < 150; i++, eff++) {
//         if (eff->type == 0) {
//             eff->type = 7;
//             eff->pos = *pos;
//             eff->velocity = D_808E4C6C;
//             eff->accel = D_808E4C6C;
//             eff->unk_2C = 0xFF;
//             eff->scale = scale;
//             eff->unk_38 = arg3;
//             eff->unk_40 = 0.6f;
//             eff->unk_30 = Rand_ZeroFloat(100.0f);
//             eff->unk_2E = 0;
//             eff->unk_01 = 0;
//             return;
//         }
//     }
// }

void func_808D7034(GlobalContext* globalCtx, Vec3f* pos, f32 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D7034.s")

void func_808D70F0(Vec3f* src, ColliderCylinder* collider) {
    collider->dim.pos.x = src->x;
    collider->dim.pos.y = src->y;
    collider->dim.pos.z = src->z;
}

void func_808D712C(BossGanon* this, GlobalContext* globalCtx, s32 objectId) {
    this->animBankIndex = Object_GetIndex(&globalCtx->objectCtx, objectId);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->animBankIndex].segment);
}

void BossGanon_Init(Actor* thisx, GlobalContext* globalCtx2) {
    s16 i;
    GlobalContext* globalCtx = globalCtx2;
    BossGanon* this = THIS;
    s32 cond;
    f32 xDistFromPlayer;
    f32 yDistFromPlayer;
    f32 zDistFromPlayer;
    Player* player = GET_PLAYER(globalCtx);

    if (thisx->params < 0x64) {
        Flags_SetSwitch(globalCtx, 0x14);
        globalCtx->specialEffects = sEffectBuf;

        for (i = 0; i < ARRAY_COUNT(sEffectBuf); i++) {
            sEffectBuf[i].type = 0;
        }

        sGanondorf = this;
        thisx->colChkInfo.health = 40;
        Actor_ProcessInitChain(thisx, D_808E4C84);
        ActorShape_Init(&thisx->shape, 0, NULL, 0);
        Actor_SetScale(thisx, 0.01f);
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_060114E8, NULL, NULL, NULL, 0);
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &D_808E4C00);

        if (thisx->params != 1) {
            // fight intro
            func_808D779C(this, globalCtx);
            this->organAlpha = 255;
        } else {
            // tower collapse
            cond = Flags_GetSwitch(globalCtx, 0x37) &&
                   ((globalCtx->sceneNum == SCENE_GANON_DEMO) || (globalCtx->sceneNum == SCENE_GANON_FINAL) ||
                    (globalCtx->sceneNum == SCENE_GANON_SONOGO) || (globalCtx->sceneNum == SCENE_GANONTIKA_SONOGO));

            if (!cond) {
                func_808D90F8(this, globalCtx);
            } else {
                Actor_Kill(thisx);
                return;
            }

            func_808D90F8(this, globalCtx);
        }

        sCape = (EnGanonMant*)Actor_SpawnAsChild(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_EN_GANON_MANT, 0.0f,
                                                 0.0f, 0.0f, 0, 0, 0, 1);
        Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_BOSS);
    } else {
        thisx->flags &= ~1;
        this->animationLength = 255.0f;

        if (thisx->params >= 0xC8) {
            if (thisx->params == 0x12C) {
                thisx->update = func_808E1034;
                thisx->draw = func_808E1B54;
                this->unk_1A8 = 2;
            } else if (thisx->params == 0x190) {
                thisx->update = func_808E1034;
                thisx->draw = func_808E1B54;
                this->unk_1A8 = 1;
            } else if (thisx->params >= 0x104) {
                // charge attack light ball (0x104 - 0x109)
                thisx->update = func_808E2544;
                thisx->draw = func_808E324C;
                this->unk_1C2 = 0xA;
                this->unk_1A2 = 520 + (-thisx->params * 2);

                for (i = 0; i < ARRAY_COUNT(this->unk_2EC); i++) {
                    this->unk_2EC[i] = thisx->world.pos;
                }

                this->timers[1] = 3;
                Collider_InitCylinder(globalCtx, &this->collider);
                Collider_SetCylinder(globalCtx, &this->collider, thisx, &D_808E4C2C);
            } else if (thisx->params >= 0xFA) {
                thisx->update = func_808E2544;
                thisx->draw = func_808E324C;
                this->unk_1A2 = Rand_ZeroFloat(10000.0f);

                for (i = 0; i < ARRAY_COUNT(this->unk_2EC); i++) {
                    this->unk_2EC[i] = thisx->world.pos;
                }

                this->animationLength = 0;
            } else {
                thisx->update = func_808E1EB4;
                thisx->draw = func_808E229C;
                if (1) {}
                thisx->speedXZ = 11.0f;

                if (thisx->params == 0xC8) {
                    this->timers[0] = 7;
                } else {
                    this->timers[0] = (s16)Rand_ZeroFloat(3.0f) + 3;
                }

                for (i = 0; i < ARRAY_COUNT(this->unk_2EC); i++) {
                    this->unk_2EC[i].y = 5000.0f;
                }
            }
        } else {
            // light ball ( anything from 0x64 - 0xC7)
            thisx->update = func_808E1034;
            thisx->draw = func_808E1B54;
            thisx->speedXZ = 12.0f;

            xDistFromPlayer = player->actor.world.pos.x - thisx->world.pos.x;
            yDistFromPlayer = (player->actor.world.pos.y + 30.0f) - thisx->world.pos.y;
            zDistFromPlayer = player->actor.world.pos.z - thisx->world.pos.z;

            thisx->world.rot.y = Math_Atan2S(zDistFromPlayer, xDistFromPlayer);
            thisx->world.rot.x = Math_Atan2S(sqrtf(SQ(xDistFromPlayer) + SQ(zDistFromPlayer)), yDistFromPlayer);

            if (Rand_ZeroOne() < 0) {
                thisx->world.rot.y += (s16)Rand_CenteredFloat(5000.0f);
                thisx->world.rot.x += (s16)Rand_CenteredFloat(5000.0f);
            }

            this->timers[1] = 3;
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, thisx, &D_808E4C2C);
        }
    }
}

void BossGanon_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossGanon* this = THIS;

    if ((this->actor.params < 0xC8) || (this->actor.params > 0x103)) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }

    if (this->actor.params < 0x64) {
        SkelAnime_Free(&this->skelAnime, globalCtx);
    }
}

void func_808D779C(BossGanon* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 animBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GANON_ANIME2);

    if (animBankIndex < 0) {
        Actor_Kill(&this->actor);
        return;
    }

    if (Object_IsLoaded(&globalCtx->objectCtx, animBankIndex)) {
        this->actionFunc = func_808D7918;
        this->unk_198 = 1;
        this->animBankIndex = animBankIndex;
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[animBankIndex].segment);
        Animation_MorphToLoop(&this->skelAnime, &D_06005FFC, 0.0f);
    } else {
        this->actionFunc = func_808D779C;
    }
}

void BossGanon_SetIntroCsCamera(BossGanon* this, u8 camPosIndex) {
    CutsceneCameraPosition* camPos = &D_808E4C94[camPosIndex];

    this->csCamEye.x = camPos->eye.x;
    this->csCamEye.y = camPos->eye.y;
    this->csCamEye.z = camPos->eye.z;

    this->csCamAt.x = camPos->at.x;
    this->csCamAt.y = camPos->at.y;
    this->csCamAt.z = camPos->at.z;
}

void func_808D7918(BossGanon* this, GlobalContext* globalCtx) {
    u8 moveCam;
    Player* player;
    s32 pad;
    f32 sin;
    f32 cos;
    Camera* gameplayCam;

    moveCam = false;
    player = GET_PLAYER(globalCtx);
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->animBankIndex].segment);

    sCape->backPush = -2.0f;
    sCape->backSwayMagnitude = 0.25f;
    sCape->sideSwayMagnitude = -1.0f;
    sCape->minDist = 0.0f;

    this->csTimer++;
    SkelAnime_Update(&this->skelAnime);

    switch (this->cutsceneState) {
        case 0:
            player->actor.world.pos.x = 0.0f;
            player->actor.world.pos.y = 0.0f;
            player->actor.world.pos.z = 430.0f;

            this->actor.world.pos.x = 0.0f;
            this->actor.world.pos.y = 112.0f;
            this->actor.world.pos.z = -333.0f;

            this->actor.shape.yOffset = -7000.0f;
            this->actor.shape.rot.y = 0;

            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->csCamIndex = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->csCamIndex, 7);
            this->csCamFov = 60.0f;

            if (gSaveContext.eventChkInf[7] & 0x100) {
                // watched cutscene already, skip most of it
                this->cutsceneState = 17;
                this->csTimer = 0;
                player->actor.world.pos.z = 20.0f;
                this->unk_71A = 0;
                Animation_MorphToLoop(&this->skelAnime, &D_060089F8, -5.0f);
                this->animationLength = 1000.0f;
                BossGanon_SetIntroCsCamera(this, 11);
                this->unk_198 = 2;
                this->timers[2] = 0x6E;
                gSaveContext.healthAccumulator = 0x140;
                Audio_QueueSeqCmd(NA_BGM_STOP);
            } else {
                this->unk_71A = 1;
                BossGanon_SetIntroCsCamera(this, 0);
                this->cutsceneState = 1;
                sZelda = (EnZl3*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ZL3, 0.0f,
                                                    220.0f, -150.0f, 0, 0, 0, 0x2000);
            }

            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GANON_ORGAN, 0.0f, 0.0f, 0.0f, 0,
                               0, 0, 1);
            sCape->minY = 57.0f;
        case 1:
            this->unk_1A0 = 3;
            if (this->csTimer == 70) {
                this->cutsceneState = 2;
                this->csTimer = 0;
            }
            break;
        case 2:
            BossGanon_SetIntroCsCamera(this, 1);

            if (this->csTimer == 10) {
                func_8002DF54(globalCtx, &this->actor, 5);
            }

            if (this->csTimer == 13) {
                func_8002F7DC(&player->actor, (player->ageProperties->unk_92 + NA_SE_VO_LI_SURPRISE));
            }

            if (this->csTimer != 35) {
                break;
            }

            this->cutsceneState = 3;
            this->csTimer = 0;
            this->csCamEye.x = 0.0f;
            this->csCamEye.y = 60.0f;
            this->csCamEye.z = 300.0f;
            this->csCamAt.x = 0.0f;
            this->unk_704 = 1.2566371f;
        case 3:
            this->unk_1A0 = 0;
            globalCtx->envCtx.unk_D8 = 0.0f;
            this->csCamAt.y = (sinf(this->unk_704) * 300.0f) + this->csCamEye.y;
            this->csCamAt.z = (cosf(this->unk_704) * -300.0f) + this->csCamEye.z;
            Math_ApproachF(&this->unk_704, 0.25f, 0.05f, this->csCamAtMaxStep.y);
            Math_ApproachF(&this->csCamAtMaxStep.y, 0.01f, 1.0f, 0.0001f);

            if (this->csTimer != 200) {
                break;
            }

            func_8002DF54(globalCtx, &this->actor, 8);
            this->cutsceneState = 4;
            BossGanon_SetIntroCsCamera(this, 2);
            this->csTimer = 0;
        case 4:
            if ((this->csTimer == 0) || (this->csTimer == 10) || (this->csTimer == 20)) {
                this->csCamEye.y += 68.0f;
                this->csCamEye.z -= 142.0f;
            }

            if (this->csTimer >= 20) {
                this->unk_1A0 = 4;
            } else {
                this->unk_1A0 = 35;
            }

            if (this->csTimer == 60) {
                BossGanon_SetIntroCsCamera(this, 1);
                this->cutsceneState = 5;
                this->csTimer = 0;
            }
            break;
        case 5:
            this->unk_1A0 = 5;

            if (this->csTimer < 50) {
                globalCtx->envCtx.unk_D8 = 1.0f;
            }

            if (this->csTimer == 10) {
                func_8002DF54(globalCtx, &this->actor, 0x4B);
            }

            if (this->csTimer == 70) {
                BossGanon_SetIntroCsCamera(this, 3);
                this->cutsceneState = 6;
                this->csTimer = 0;
                this->unk_1A0 = 3;
            }
            break;
        case 6:
            this->unk_1A0 = 3;

            if (this->csTimer != 30) {
                break;
            }

            this->cutsceneState = 7;
            this->csTimer = 0;
            BossGanon_SetIntroCsCamera(this, 4);
            this->unk_1AE = 0;
            this->unk_1E0 = 10.0f;
            this->unk_1D8 = 0.0f;
            this->unk_1D4 = 255.0f;
            this->unk_1DC = 100.0f;
            func_80078884(NA_SE_EV_TRIFORCE_MARK);
            globalCtx->envCtx.unk_D8 = 0.0f;
        case 7: // 165C
            this->unk_1A0 = 6;
            // fade in links triforce
            Math_ApproachF(&this->unk_1D8, 255.0f, 1.0f, 10.0f);
            Math_ApproachF(&this->unk_1E0, 0.4f, 1.0f, 0.3f);
            Math_ApproachF(&this->unk_1D4, 170.0f, 1.0f, 2.55f);
            Math_ApproachF(&this->unk_1DC, 200.0f, 1.0f, 3.0f);

            if (this->csTimer >= 30) {
                this->unk_1A0 = 65;
            }

            if (this->csTimer == 30) {
                globalCtx->envCtx.unk_D8 = 1.0f;
            }

            BossGanon_SetIntroCsCamera(this, 4);
            this->csCamEye.x += 5.0f;
            this->csCamEye.z += -10.0f;
            this->csCamAt.x += 18.0f;

            if (this->csTimer == 60) {
                this->cutsceneState = 8;
                this->csTimer = 0;
            }
            break;
        case 8:
            this->unk_1A0 = 3;
            BossGanon_SetIntroCsCamera(this, 5);

            if (this->csTimer != 30) {
                break;
            }

            this->cutsceneState = 9;
            this->csTimer = 0;
            func_8002DF54(globalCtx, &this->actor, 8);
            sZelda->unk_3C8 = 0;
            this->unk_1AE = 1;
            this->unk_1E0 = 10.0f;
            this->unk_1D8 = 0.0f;
            this->unk_1D4 = 255.0f;
            this->unk_1DC = 100.0f;
            func_80078884(NA_SE_EV_TRIFORCE_MARK);
            globalCtx->envCtx.unk_D8 = 0.0f;
        case 9:
            this->unk_1A0 = 7;
            BossGanon_SetIntroCsCamera(this, 6);
            // fade in zeldas triforce
            Math_ApproachF(&this->unk_1D8, 255.0f, 1.0f, 10.0f);
            Math_ApproachF(&this->unk_1E0, 0.4f, 1.0f, 0.3f);
            Math_ApproachF(&this->unk_1D4, 170.0f, 1.0f, 2.55f);
            Math_ApproachF(&this->unk_1DC, 200.0f, 1.0f, 3.0f);

            if (this->csTimer == 30) {
                sZelda->unk_3C8 = 1;
            }

            if (this->csTimer >= 32) {
                this->unk_1A0 = 75;
            }

            if (this->csTimer == 32) {
                globalCtx->envCtx.unk_D8 = 1.0f;
            }

            if (this->csTimer == 50) {
                this->cutsceneState = 10;
                this->csTimer = 0;
            }
            break;
        case 10: // top view of playing the organ
            this->unk_1A0 = 3;
            BossGanon_SetIntroCsCamera(this, 7);

            if (this->csTimer == 40) {
                this->cutsceneState = 11;
                this->csTimer = 0;
                this->unk_1D8 = 0.0f;
            }
            break;
        case 11: // link is healed
            this->unk_1A0 = 3;
            BossGanon_SetIntroCsCamera(this, 8);
            player->actor.world.pos.z = 20.0f;

            if (this->csTimer == 20) {
                func_8002DF54(globalCtx, &this->actor, 0x17);
                Interface_ChangeAlpha(11); // show hearts only
            }

            if (this->csTimer == 25) {
                gSaveContext.healthAccumulator = 0x140;
            }

            if (this->csTimer == 100) {
                Interface_ChangeAlpha(1);
            }

            if (this->csTimer == 120) {
                this->cutsceneState = 12;
                this->csTimer = 0;
            }
            break;
        case 12: // first dialouge, back facing link
            this->unk_1A0 = 3;
            BossGanon_SetIntroCsCamera(this, 9);

            if (this->csTimer == 30) {
                Audio_QueueSeqCmd(0x100100FF);
                this->animationLength = Animation_GetLastFrame(&D_06004F64);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06004F64, -5.0f);
            }

            if ((this->csTimer > 30) && Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                Animation_MorphToLoop(&this->skelAnime, &D_06006AF4, 0.0f);
                this->animationLength = 1000.0f;
            }

            if (this->csTimer == 80) {
                func_8010B680(globalCtx, 0x70C8, NULL);
            }

            if ((this->csTimer > 180) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                this->cutsceneState = 15;
                this->csTimer = 0;
                this->unk_71A = 0;
            }
            break;
        case 15: // side view of all 3 of them
            this->unk_1A0 = 0;
            globalCtx->envCtx.unk_D8 = 0.0f;
            BossGanon_SetIntroCsCamera(this, 10);

            if (this->csTimer == 30) {
                func_8010B680(globalCtx, 0x70C9, NULL);
            }

            if ((this->csTimer > 100) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                this->cutsceneState = 16;
                this->csTimer = 0;
                BossGanon_SetIntroCsCamera(this, 11);
                this->unk_198 = 2;
                sZelda->unk_3C8 = 2;
                this->timers[2] = 0x6E;
                this->unk_1A0 = 3;
            }
            break;
        case 16:
            this->unk_1A0 = 3;

            if (this->csTimer <= 20) {
                if (this->csTimer == 20) {
                    Animation_MorphToPlayOnce(&this->skelAnime, &D_06004304, -5.0f);
                    this->animationLength = Animation_GetLastFrame(&D_06004304);
                }
            } else if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                func_8010B680(globalCtx, 0x70CA, NULL);
                Animation_MorphToLoop(&this->skelAnime, &D_060089F8, -5.0f);
                this->animationLength = 1000.0f;
            }

            if ((this->csTimer > 100) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                this->cutsceneState = 17;
                this->csTimer = 0;
            }
            break;
        case 17: // turns around
            this->unk_1A0 = 3;

            if (this->csTimer == 20) {
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06001F58, -5.0f);
                this->animationLength = Animation_GetLastFrame(&D_06001F58);
            }

            if (this->csTimer > 10) {
                if (this->csTimer == 62) {
                    sCape->attachRightArmTimer = 20.0f;
                }

                if (this->csTimer == 57) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
                }

                Math_ApproachF(&this->csCamFov, 110.0f, 0.1f, this->csCamMaxStepScale * 2.0f);
                Math_ApproachF(&this->csCamEye.z, -290.0f, 0.1f, this->csCamMaxStepScale * 2.4f);
                Math_ApproachF(&this->csCamMaxStepScale, 0.75f, 1.0f, 0.05f);

                if (this->csTimer == 70) {
                    this->cutsceneState = 18;
                    this->csTimer = 0;
                    this->csCamFov = 60.0f;
                    BossGanon_SetIntroCsCamera(this, 12);
                    func_8010B680(globalCtx, 0x70CB, NULL);
                }
            }
            break;
        case 18: // last dialog before triforce
            this->unk_1A0 = 3;
            BossGanon_SetIntroCsCamera(this, 12);
            this->csCamEye.y += -6.0f;
            this->csCamEye.z += 6.0f;

            if (Animation_OnFrame(&this->skelAnime, this->animationLength - 5.0f)) {
                Animation_MorphToLoop(&this->skelAnime, &D_06003018, -5.0f);
                this->animationLength = 1000.0f;
            }

            if ((this->csTimer <= 50) || (func_8010BDBC(&globalCtx->msgCtx) != 0)) {
                break;
            }

            this->cutsceneState = 19;
            this->csTimer = 0;
            func_8010B680(globalCtx, 0x70CC, NULL);
            Animation_MorphToPlayOnce(&this->skelAnime, &D_06007268, -5.0f);
            this->unk_1AE = 2;
            this->unk_1E0 = 10.0f;
            this->unk_1D8 = 0.0f;
            this->unk_1D4 = 255.0f;
            this->unk_1DC = 100.0f;
            globalCtx->envCtx.unk_D8 = 0.0f;
        case 19: // show triforce
            this->unk_1A0 = 8;

            if (this->csTimer >= 60) {
                this->unk_1A0 = 9;

                if (this->csTimer == 60) {
                    globalCtx->envCtx.unk_D8 = 1.0f;
                }
            }

            BossGanon_SetIntroCsCamera(this, 12);
            this->csCamEye.y += -6.0f;
            this->csCamEye.z += 6.0f;

            if (this->csTimer >= 30) {
                if (this->csTimer == 30) {
                    func_80078884(NA_SE_EV_TRIFORCE_MARK);
                }
                // fade in ganondorfs triforce
                Math_ApproachF(&this->unk_1D8, 255.0f, 1.0f, 10.0f);
                Math_ApproachF(&this->unk_1E0, 0.6f, 1.0f, 0.3f);
                Math_ApproachF(&this->unk_1D4, 170.0f, 1.0f, 2.55f);
                Math_ApproachF(&this->unk_1DC, 200.0f, 1.0f, 3.0f);
            }

            if (this->csTimer == 17) {
                Animation_MorphToLoop(&this->skelAnime, &D_06007A64, -5.0f);
            }

            if ((this->csTimer > 80) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                this->cutsceneState = 20;
                this->csTimer = 0;
                this->csCamTargetEye.x = this->csCamEye.x - 50.0f;
                this->csCamTargetEye.y = this->csCamEye.y - 100.0f;
                this->csCamTargetEye.z = this->csCamEye.z + 400.0f;
                this->csCamEyeMaxStep.x = 50.0f;
                this->csCamEyeMaxStep.y = 100.0f;
                this->csCamEyeMaxStep.z = 400.0f;
                this->csCamAtMaxStep.x = 400.0f;
                this->csCamMaxStepScale = 0.0f;
                this->csCamTargetAt.x = this->csCamAt.x + 400.0f;
                this->csCamTargetAt.y = this->csCamAt.y;
                this->csCamTargetAt.z = this->csCamAt.z;
                this->csCamMovementScale = 0.2f;
                this->unk_1E4 = 0.0f;
                this->unk_1E8 = 0.1f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DARKWAVE);
            }
            break;
        case 20: // zoom cam out
            this->unk_1A0 = 0xA;
            moveCam = true;
            Math_ApproachF(&this->csCamMaxStepScale, 0.15f, 1.0f, 0.015f);

            if (this->csTimer <= 40) {
                Math_ApproachF(&this->unk_1E4, 255.0f, 1.0f, 6.5f);
                Math_ApproachF(&this->unk_1E8, 0.2f, 1.0f, 0.025f);
            }

            if (this->csTimer > 20) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DARKWAVE_M - SFX_FLAG);
            }

            if (this->csTimer > 20) {
                func_808D6BF0(globalCtx, 700.0f, 2);
                func_808D6BF0(globalCtx, 700.0f, 2);
            }

            if (this->csTimer == 30) {
                func_8002DF54(globalCtx, &this->actor, 0x4A);
            }

            if (this->csTimer <= 50) {
                break;
            }

            this->cutsceneState = 21;
            this->csTimer = 0;
            this->unk_1D8 = 0.0f;
            this->unk_1E8 = 0.16f;
            goto skip_sound_and_fx;
        case 21: // purple wave thing
            this->unk_1A0 = 0xB;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DARKWAVE_M - SFX_FLAG);
            func_808D6BF0(globalCtx, 700.0f, 2);
            func_808D6BF0(globalCtx, 700.0f, 2);
        skip_sound_and_fx:
            this->csCamEye.x = -30.0f;
            this->csCamEye.y = 37.0f;
            this->csCamEye.z = -30.0f;

            this->csCamAt.x = -10.0f;
            this->csCamAt.y = 45.0f;
            this->csCamAt.z = 0.0f;

            if (this->csTimer == 13) {
                func_8010B680(globalCtx, 0x70CD, NULL);
            }

            if ((this->csTimer <= 120) || (func_8010BDBC(&globalCtx->msgCtx) != 0)) {
                break;
            }

            this->cutsceneState = 22;
            this->csTimer = 0;
            this->timers[2] = 0x1E;
            this->organAlpha = 254;
            this->csCamAt.x = this->unk_1FC.x - 10.0f;
            this->csCamAt.y = this->unk_1FC.y + 30.0f;
            this->csCamAt.z = this->unk_1FC.z;
            this->unk_1E4 = 255.0f;
            this->unk_1E8 = 0.2f;
        case 22: // float, show title card, start fight
            if (this->csTimer > 30) {
                this->unk_1A0 = 0;
            } else {
                this->unk_1A0 = 0xC;
            }

            Math_ApproachZeroF(&this->unk_1E4, 1.0f, 10.0f);
            this->csCamEye.x = -30.0f;
            this->csCamEye.y = 137.0f;
            this->csCamEye.z = -110.0f;
            Math_ApproachF(&this->csCamAt.y, this->unk_1FC.y + 30.0f, 0.1f, 20.0f);
            Math_ApproachF(&this->csCamAt.x, this->unk_1FC.x - 10.0f, 0.1f, 5.0f);

            if (this->csTimer == 20) {
                func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06008A88, 0.0f);
                SkelAnime_Update(&this->skelAnime);
                this->actor.shape.yOffset = 0.0f;
                sCape->attachShouldersTimer = 18.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
                this->unk_198 = 0;
                Audio_QueueSeqCmd(0x64);
            }

            if (this->csTimer == 50) {
                gSegments[6] = VIRTUAL_TO_PHYSICAL(
                    globalCtx->objectCtx.status[Object_GetIndex(&globalCtx->objectCtx, OBJECT_GANON)].segment);

                if (!(gSaveContext.eventChkInf[7] & 0x100)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(D_0600CF00),
                                           0xA0, 0xB4, 0x80, 0x28);
                }

                gSaveContext.eventChkInf[7] |= 0x100;
            }

            if (this->csTimer >= 20) {
                this->unk_199 = 1;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_FLOAT - SFX_FLAG);

                Math_ApproachF(&this->actor.world.pos.y, 228.0f, 0.05f, 2.0f);
                Math_ApproachF(&this->actor.world.pos.z, -230.0f, 0.05f, 4.0f);

                sCape->backPush = -3.0f;
                sCape->backSwayMagnitude = 0.25f;
                sCape->sideSwayMagnitude = -3.0f;

                sin = Math_SinS(this->csTimer * 1500);
                this->actor.velocity.y = this->unk_1C8 * sin * 0.04f;
                this->actor.world.pos.y += this->actor.velocity.y;

                cos = Math_CosS(this->csTimer * 1800);
                this->actor.world.pos.x = this->unk_1C8 * cos * 0.5f;
                this->actor.velocity.x = this->actor.world.pos.x - this->actor.prevPos.x;

                Math_ApproachF(&this->unk_1C8, 50.0f, 1.0f, 1.0f);
            }

            if (this->csTimer > 30) {
                this->organAlpha -= 5;

                if (this->organAlpha < 0) {
                    this->organAlpha = 0;
                }
            }

            if (this->csTimer == 120) {
                gameplayCam = Gameplay_GetCamera(globalCtx, 0);
                gameplayCam->eye = this->csCamEye;
                gameplayCam->eyeNext = this->csCamEye;
                gameplayCam->at = this->csCamAt;
                func_800C08AC(globalCtx, this->csCamIndex, 0);
                this->cutsceneState = this->csCamIndex = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                func_808DBAF0(this, globalCtx);
            }

            if (sZelda != NULL) {
                sZelda->actor.world.pos.x = 0.0f;
                sZelda->actor.world.pos.y = 350.0f;
                sZelda->actor.world.pos.z = 0.0f;
            }
    }

    if (this->csCamIndex != 0) {
        if (moveCam) {
            Math_ApproachF(&this->csCamEye.x, this->csCamTargetEye.x, this->csCamMovementScale,
                                 this->csCamEyeMaxStep.x * this->csCamMaxStepScale);
            Math_ApproachF(&this->csCamEye.y, this->csCamTargetEye.y, this->csCamMovementScale,
                                 this->csCamEyeMaxStep.y * this->csCamMaxStepScale);
            Math_ApproachF(&this->csCamEye.z, this->csCamTargetEye.z, this->csCamMovementScale,
                                 this->csCamEyeMaxStep.z * this->csCamMaxStepScale);

            Math_ApproachF(&this->csCamAt.x, this->csCamTargetAt.x, this->csCamMovementScale,
                                 this->csCamAtMaxStep.x * this->csCamMaxStepScale);
            Math_ApproachF(&this->csCamAt.y, this->csCamTargetAt.y, this->csCamMovementScale,
                                 this->csCamAtMaxStep.y * this->csCamMaxStepScale);
            Math_ApproachF(&this->csCamAt.z, this->csCamTargetAt.z, this->csCamMovementScale,
                                 this->csCamAtMaxStep.z * this->csCamMaxStepScale);
        }

        Gameplay_CameraSetAtEye(globalCtx, this->csCamIndex, &this->csCamAt, &this->csCamEye);
        Gameplay_CameraSetFov(globalCtx, this->csCamIndex, this->csCamFov);
    }
}

void func_808D9018(BossGanon* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 animBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GANON_ANIME2);

    if (Object_IsLoaded(&globalCtx->objectCtx, animBankIndex)) {
        this->actionFunc = func_808D933C;
        this->csTimer = this->cutsceneState = 0;
        this->unk_198 = 1;
        this->animBankIndex = animBankIndex;
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[animBankIndex].segment);
        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600EA00, 0.0f);
        this->animationLength = Animation_GetLastFrame(&D_0600EA00);
        this->unk_508 = 0.0f;
    }
}

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
