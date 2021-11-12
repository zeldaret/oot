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

void func_808D91F8(u8 arg0);
void func_808E3D84(GlobalContext* globalCtx);
void func_808E3564(GlobalContext* globalCtx);
s32 func_808E0F4C(BossGanon* this, GlobalContext* globalCtx, Vec3f* arg2);

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

// death and tower collapse cutscene
void func_808D90F8(BossGanon* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 animBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GANON_ANIME2);

    if (Object_IsLoaded(&globalCtx->objectCtx, animBankIndex)) {
        this->animBankIndex = animBankIndex;
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[animBankIndex].segment);
        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600EA00, 0.0f);
        this->animationLength = Animation_GetLastFrame(&D_0600EA00);
        this->actionFunc = func_808D933C;
        this->csTimer = 0;
        this->cutsceneState = 0x64;
        this->unk_198 = 1;
        gSaveContext.magic = gSaveContext.unk_13F4;
        gSaveContext.health = gSaveContext.healthCapacity;
    } else {
        this->actionFunc = func_808D90F8;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D91F8.s")
// void func_808D91F8(u8 arg0) {
//     s16 i;
//     u8* tex1 = (u8*)SEGMENTED_TO_VIRTUAL(D_02006C18);
//     u8* tex2 = (u8*)SEGMENTED_TO_VIRTUAL(D_02007418);

//     for (i = 0; i < 2048; i++) {
//         if ((tex1[i] != 0) && (Rand_ZeroOne() < 0.03f)) {
//             if ((D_808E65A8[i] == 0) || (arg0 == 2)) {
//                 tex2[i] = 1;
//                 tex1[i] = 1;
//             }
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D933C.s")
// void func_808D933C(BossGanon* this, GlobalContext* globalCtx) {
//     u8 moveCam = false;      // spAD
//     Player* player = GET_PLAYER(globalCtx); // spA8
//     s16 i;
//     Vec3f sp98;
//     Vec3f sp8C;
//     Vec3f sp80;
//     Vec3f sp64;

//     gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->animBankIndex].segment);
//     this->csTimer++;
//     SkelAnime_Update(&this->skelAnime);

//     switch (this->cutsceneState) {
//         case 0:
//             func_80064520(globalCtx, &globalCtx->csCtx);
//             func_8002DF54(globalCtx, this, 8);
//             this->csCamIndex = Gameplay_CreateSubCamera(globalCtx);
//             Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
//             Gameplay_ChangeCameraStatus(globalCtx, this->csCamIndex, 7);
//             this->actor.world.pos.x = 0.0f;
//             this->actor.world.pos.y = 70.0f;
//             this->actor.world.pos.z = -80.0f;
//             this->actor.shape.rot.y = 0;
//             this->cutsceneState = 1;
//             this->csTimer = 0;
//             this->unk_71A = 1;
//             this->actor.shape.unk_08 = -7000.0f;
//         case 1:
//             player->actor.shape.rot.y = -0x8000;

//             player->actor.world.pos.x = -10.0f;
//             player->actor.world.pos.y = 0.0f;
//             player->actor.world.pos.z = 115.0f;

//             this->unk_1A0 = 0xD;

//             if (this->csTimer < 30) {
//                 globalCtx->envCtx.unk_D8 = 0.0f;
//             }

//             if (this->csTimer >= 2) {
//                 globalCtx->envCtx.fillScreen = false;
//             }

//             this->csCamEye.x = -50.0f;
//             this->csCamEye.z = -50.0f;
//             this->csCamEye.y = 50.0f;

//             this->csCamAt.x = this->unk_1FC.x;
//             this->csCamAt.y = this->unk_1FC.y + 30.0f;
//             this->csCamAt.z = this->unk_1FC.z;

//             if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
//                 Animation_MorphToLoop(&this->skelAnime, &D_0600F19C, 0.0f);
//                 this->cutsceneState = 2;
//                 this->csTimer = 0;
//             }
//             break;
//         case 2:
//             this->csCamEye.x = -100.0f;
//             this->csCamEye.y = 20.0f;
//             this->csCamEye.z = -130.0f;

//             this->unk_1A0 = 0xD;

//             this->csCamAt.x = this->unk_1FC.x;
//             this->csCamAt.y = this->unk_1FC.y;
//             this->csCamAt.z = this->unk_1FC.z + 40.0f;

//             if (this->csTimer >= 30) {
//                 this->cutsceneState = 3;
//                 this->csTimer = 0;
//                 func_8010B680(globalCtx, 0x70CE, NULL);
//                 this->animationLength = 1000.0f;
//             }

//             if ((this->unk_1A2 & 0x1F) == 0) {
//                 Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_BREATH);
//             }
//             break;
//         case 3:
//             this->unk_1A0 = 0xE;

//             if ((this->animationLength > 100.0f) && ((this->unk_1A2 & 0x1F) == 0)) {
//                 Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_BREATH);
//             }

//             this->csCamEye.x = 7.0f;
//             this->csCamEye.y = 52.0f;
//             this->csCamEye.z = -15.0f;

//             this->csCamAt.x = this->unk_1FC.x - 5.0f;
//             this->csCamAt.y = (this->unk_1FC.y + 30.0f) - 10.0f;
//             this->csCamAt.z = this->unk_1FC.z;

//             if ((this->animationLength > 100.0f) && (this->csTimer > 100) && (func_8010BDBC(&globalCtx->msgCtx) ==
//             0)) {
//                 Animation_MorphToPlayOnce(&this->skelAnime, 0x0600B668, 0.0f);
//                 this->animationLength = Animation_GetLastFrame(0x0600B668);
//                 Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_TOKETU);
//             } else {
//                 if (Animation_OnFrame(&this->skelAnime, this->animationLength - 16.0f)) {
//                     for (i = 0; i < 40; i++) {
//                         sp98.x = Rand_CenteredFloat(5.0f);
//                         sp98.y = Rand_CenteredFloat(1.5f) + 1.0f;
//                         sp98.z = Rand_ZeroFloat(5.0f) + 2.0f;

//                         sp8C.x = 0.0f;
//                         sp8C.y = -1.0f;
//                         sp8C.z = 0.0f;

//                         sp80.x = this->unk_208.x;
//                         sp80.y = this->unk_208.y - 10.0f;
//                         sp80.z = this->unk_208.z;

//                         func_8002836C(globalCtx, &sp80, &sp98, &sp8C, &D_808E4D30, &D_808E4D34,
//                                       Rand_ZeroFloat(50.0f) + 0x32, 0, 0x11);
//                     }
//                 }
//                 if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
//                     Animation_MorphToLoop(&this->skelAnime, 0x600BE38, 0.0f);
//                     this->cutsceneState = 4;
//                     this->csTimer = 0;
//                 }
//             }
//             break;
//         case 4:
//             this->unk_1A0 = 0xE;

//             if (this->csTimer == 0x1E) {
//                 func_8010B680(globalCtx, 0x70CF, NULL);
//                 this->cutsceneState = 5;
//                 this->csTimer = 0;
//             }

//             break;
//         case 5:
//             this->unk_1A0 = 0xE;

//             if ((this->csTimer > 70) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
//                 this->cutsceneState = 6;
//                 this->csTimer = 0;
//                 Animation_MorphToPlayOnce(&this->skelAnime, 0x6010298, 0.0f);
//                 this->animationLength = Animation_GetLastFrame(0x6010298);

//                 this->csCamTargetAt.z = this->unk_1FC.z;
//                 this->csCamTargetAt.y = (this->unk_1FC.y + 30.0f) - 10.0f;
//                 this->csCamTargetAt.x = this->unk_1FC.x - 5.0f;

//                 this->csCamMovementScale = 0.05f;
//                 this->csCamMaxStepScale = 0.0f;

//                 this->csCamTargetEye.x = 7.0f;
//                 this->csCamTargetEye.y = 12.0f;
//                 this->csCamTargetEye.z = 70.0f;

//                 this->csCamEyeMaxStep.x = fabsf(this->csCamEye.x - 7.0f);
//                 this->csCamEyeMaxStep.y = fabsf(this->csCamEye.y - 12.0f);
//                 this->csCamEyeMaxStep.z = fabsf(this->csCamEye.z - this->csCamTargetEye.z);

//                 this->csCamAtMaxStep.x = fabsf(this->csCamAt.x - this->csCamTargetAt.x);
//                 this->csCamAtMaxStep.y = fabsf(this->csCamAt.y - this->csCamTargetAt.y);
//                 this->csCamAtMaxStep.z = fabsf(this->csCamAt.z - this->csCamTargetAt.z);
//                 Audio_PlayActorSound2(&this->actor, 0x39D3);
//             }
//             break;
//         case 6:
//             this->unk_1A0 = 0xE;
//             moveCam = true;
//             Math_ApproachF(&this->csCamMaxStepScale, 0.2f, 1.0f, 0.01f);

//             if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
//                 Animation_MorphToLoop(&this->skelAnime, 0x6010514, 0.0f);
//                 this->cutsceneState = 7;
//                 this->csTimer = 0;
//                 this->unk_2E8 = 0;
//                 this->unk_1A0 = 0xF;
//                 this->unk_508 = 0.0f;
//                 this->animationLength = 1000.0f;
//                 globalCtx->envCtx.unk_D8 = 0.0f;
//             }
//             break;
//         case 7:
//             if (this->csTimer < 10) {
//                 globalCtx->envCtx.unk_D8 = 0.0f;
//             }

//             if (this->csTimer == 30) {

//             }
//             goto case_8_not_30f;
//         case 8:
//         case_8_not_30f:
//         case 9:
//         case 100:
//         case 101:
//         case 102:
//         case 103:
//         case 104:
//         case 105:
//         case 1055:
//         case 1056:
//         case 1057:
//         case 106:
//         case 107:
//         case 108:
//         case 109:
//     }

//     if (this->cutsceneState >= 100) {
//         this->unk_1A0 = 0x14;
//     }

//     if (this->csCamIndex != 0) {
//         if (moveCam) {
//             Math_ApproachF(&this->csCamTargetEye.x, this->csCamTargetEye.x, this->csCamMovementScale,
//                                  this->csCamEyeMaxStep.x * this->csCamMaxStepScale);
//             Math_ApproachF(&this->csCamEye.y, this->csCamTargetEye.y, this->csCamMovementScale,
//                                  this->csCamEyeMaxStep.y * this->csCamMaxStepScale);
//             Math_ApproachF(&this->csCamEye.z, this->csCamTargetEye.z, this->csCamMovementScale,
//                                  this->csCamEyeMaxStep.z * this->csCamMaxStepScale);
//             Math_ApproachF(&this->csCamTargetEye.x, this->csCamTargetAt.x, this->csCamMovementScale,
//                                  this->csCamAtMaxStep.x * this->csCamMaxStepScale);
//             Math_ApproachF(&this->csCamAt.y, this->csCamTargetAt.y, this->csCamMovementScale,
//                                  this->csCamAtMaxStep.y * this->csCamMaxStepScale);
//             Math_ApproachF(&this->csCamAt.z, this->csCamTargetAt.z, this->csCamMovementScale,
//                                  this->csCamAtMaxStep.z * this->csCamMaxStepScale);
//         }

//         sp64 = this->csCamTargetEye;
//         sp64.y += this->unk70C;
//         func_800C04D8(globalCtx, this->csCamIndex, &sp64, &this->csCamAt);
//     }
// }

void func_808DACE8(BossGanon* this, GlobalContext* globalCtx) {
    this->unk_1C2 = 0;
    this->timers[0] = 40;
    this->actionFunc = func_808DAD20;
    this->actor.velocity.x = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->unk_1D0 = 100.0f;
}

void func_808DAD20(BossGanon* this, GlobalContext* globalCtx) {
    s16 i;
    f32 heightTarget;
    f32 targetPosX;
    f32 targetPosZ;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    Vec3f sp48;

    SkelAnime_Update(&this->skelAnime);

    switch (this->unk_1C2) {
        case 0:
            targetPosX = Math_SinS(this->unk_1A2 * 1280);
            targetPosX = targetPosX * this->unk_1D0;
            targetPosZ = Math_CosS(this->unk_1A2 * 1792);
            targetPosZ = targetPosZ * this->unk_1D0;

            Math_ApproachF(&this->actor.world.pos.x, targetPosX, 0.05f, this->unk_1C8);
            Math_ApproachF(&this->actor.world.pos.z, targetPosZ, 0.05f, this->unk_1C8);
            Math_ApproachF(&this->unk_1D0, 0.0f, 1, 1.5f);

            if (this->timers[0] == 5) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_HIT_GND);
            }

            if (this->timers[0] < 14) {
                heightTarget = 250.0f;
                this->unk_258 += (Rand_ZeroFloat(M_PI / 2) + (M_PI / 2));
                Math_ApproachF(&this->unk_254, 7.0f, 0.5f, 1.0f);
                this->unk_1A0 = 1;
            } else {
                heightTarget = 200.0f;
            }

            Math_ApproachF(&this->actor.world.pos.y, heightTarget, 0.1f, this->actor.velocity.y);
            Math_ApproachF(&this->actor.velocity.y, 20.0f, 1.0f, 1.0f);

            if (this->timers[0] == 14) {
                this->animationLength = Animation_GetLastFrame(&D_06002D2C);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06002D2C, 0.0f);
                this->actor.velocity.y = 0.0f;
            }

            if (this->timers[0] == 0) {
                this->unk_1C2 = 1;
                this->actor.velocity.y = 0.0f;
            }
            break;
        case 1:
            sCape->gravity = -1.0f;
            this->unk_1A0 = 1;
            Math_ApproachF(&this->actor.velocity.y, -50.0f, 1.0f, 10.0f);
            this->actor.world.pos.y += this->actor.velocity.y;

            if (this->actor.world.pos.y < 60.0f) {
                this->actor.world.pos.y = 60.0f;
                this->unk_1C2 = 2;
                this->timers[0] = 10;
                func_80033E88(&this->actor, globalCtx, 0xA, 0x14); // rumble
                this->unk_19C = 35;
                this->unk_19E = 0;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_HIT_GND_IMP);
                this->unk_254 = 0.0f;
                sp60 = this->unk_260;
                sp60.y = 0.0f;

                for (i = 0; i < 80; i++) {
                    sp6C.x = Rand_CenteredFloat(25.0f);
                    sp6C.y = Rand_ZeroFloat(17.0f);
                    sp6C.z = Rand_CenteredFloat(25.0f);
                    // impact light thing?
                    func_808D6AAC(globalCtx, &sp60, &sp6C, &D_808E4C6C, Rand_ZeroFloat(300.0f) + 500.0f, 13.0f, 0x1E);
                }
            }
            break;
        case 2:
            this->unk_1A0 = 1;

            if (this->timers[0] == 0) {
                this->animationLength = Animation_GetLastFrame(&D_0600343C);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_0600343C, 0.0f);
                this->unk_1C2 = 3;
                this->unk_19F = 1;
                this->actor.velocity.y = 0.0f;
            }
            break;
        case 3:
            Math_ApproachF(&this->actor.world.pos.y, 150.0f, 0.1f, this->actor.velocity.y);
            Math_ApproachF(&this->actor.velocity.y, 20.0f, 1.0f, 1.0f);

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->animationLength = Animation_GetLastFrame(&D_06008A88);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06008A88, 0.0f);
                SkelAnime_Update(&this->skelAnime);
                sCape->attachShouldersTimer = 18.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
                this->unk_1C2 = 4;
            }
            break;
        case 4:
            Math_ApproachF(&this->actor.world.pos.y, 150.0f, 0.1f, this->actor.velocity.y);
            Math_ApproachF(&this->actor.velocity.y, 20.0f, 1.0f, 1.0f);

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                func_808DBAF0(this, globalCtx);
            }
            break;
    }

    if ((this->unk_19C == 35) || (this->unk_19C == 30) || (this->unk_19C == 25)) {
        sp54 = this->actor.world.pos;
        sp54.y = 0.0f;
        func_808D6E54(globalCtx, &sp54, 0, 3.0f, this->unk_19C - 25);
    }

    if (this->unk_19C == 35) {
        sp48 = this->actor.world.pos;
        sp48.y = 0.0f;
        func_808D6F3C(globalCtx, &sp48, 0, 3.0f);
    }
}

void func_808DB278(BossGanon* this, GlobalContext* globalCtx) {
    this->unk_1C2 = 0;
    this->timers[0] = 30;
    this->actor.velocity.x = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->unk_1D0 = 100.0f;
    this->unk_1AA = Rand_ZeroFloat(20000.0f);
    this->unk_1AC = 0;
    this->actionFunc = func_808DB2E8;
}

void func_808DB2E8(BossGanon* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 targetPosX;
    f32 targetPosZ;
    Vec3f sp80;
    Vec3f sp74;
    Vec3f sp68;
    s16 i;

    SkelAnime_Update(&this->skelAnime);

    targetPosX = Math_SinS(this->unk_1A2 * 1280);
    targetPosX = targetPosX * this->unk_1D0;
    targetPosZ = Math_CosS(this->unk_1A2 * 1792);
    targetPosZ = targetPosZ * this->unk_1D0;

    Math_ApproachF(&this->actor.world.pos.x, targetPosX, 0.05f, this->unk_1C8);
    Math_ApproachF(&this->actor.world.pos.z, targetPosZ, 0.05, this->unk_1C8);
    Math_ApproachF(&this->unk_1D0, 0.0f, 1.0f, 1.5f);
    Math_ApproachF(&this->actor.world.pos.y, 200.0f, 0.05f, this->actor.velocity.y);
    Math_ApproachF(&this->actor.velocity.y, 20.0f, 1.0f, 1.0f);

    switch (this->unk_1C2) {
        case 0:
            if (this->timers[0] == 0) {
                this->animationLength = Animation_GetLastFrame(&D_06001B0C);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06001B0C, 0.0f);
                this->unk_1C2 = 1;
            }
            break;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->animationLength = Animation_GetLastFrame(&D_06001FF8);
                Animation_MorphToLoop(&this->skelAnime, &D_06001FF8, 0.0f);
                this->unk_1C2 = 2;
                this->timers[0] = 100;
            }
            break;
        case 2:
            this->unk_1A0 = 2;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_CHARGE_MASIC - SFX_FLAG);
            this->unk_278.x = this->unk_2EC[0].x;
            this->unk_278.y = this->unk_2EC[0].y + 50.0f + 30.0f;
            this->unk_278.z = this->unk_2EC[0].z;

            Math_ApproachF(&this->unk_284, 0.25f, 0.1f, 0.006f);
            Math_ApproachF(&this->unk_288, 255.0f, 1.0f, 255.0f);
            Math_ApproachF(&this->unk_28C, 0.25f, 0.1f, 0.006f);

            if ((this->timers[0] > 20) && (this->timers[0] < 60)) {
                Math_ApproachF(&this->unk_290, 255.0f, 1.0f, 15.0f);
            }

            if (this->timers[0] == 0) {
                this->animationLength = Animation_GetLastFrame(&D_06000540);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06000540, 0.0f);
                this->unk_1C2 = 3;
                this->timers[0] = 6;
                this->timers[1] = 0xF;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DARKWAVE);
                break;
            }

            Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x3E8);

            if (this->timers[0] < -4) {
                for (i = 0; i < ARRAY_COUNT(this->unk_294); i++) {
                    Math_ApproachF(&this->unk_294[i], 0.0f, 1.0f, 40.0f);
                }
            } else if ((this->timers[0] >= 7) && (this->timers[0] < 26)) {
                if (this->unk_1AC < ARRAY_COUNT(this->unk_294)) {
                    this->unk_1AC++;
                }

                for (i = 0; i < this->unk_1AC; i++) {
                    Math_ApproachF(&this->unk_294[i], 200.0f, 1.0f, 40.0f);
                }
            }

            if (this->timers[0] <= 30) {
                Math_ApproachF(&this->unk_284, 0.4f, 0.5f, 0.017f);
                this->unk_28C = this->unk_284;
            }

            if (this->timers[0] <= 30) {
                Math_ApproachF(&this->unk_2D0, 45.0f, 0.1f, 10.0f);
                this->unk_66E = 1;
                this->unk_66C = 2;
                gCustomLensFlarePos = this->unk_278;
            }

            if (this->timers[0] == 47) {
                this->unk_274 = 1;
            }

            if (this->timers[0] == 46) {
                this->unk_274 = 2;
            }

            if (this->timers[0] == 45) {
                this->unk_274 = 3;
            }

            if (this->timers[0] == 44) {
                this->unk_274 = 4;
            }

            if (this->timers[0] == 43) {
                this->unk_274 = 5;
            }

            if (this->timers[0] == 42) {
                this->unk_274 = 6;
            }

            if (this->timers[0] > 30) {
                sp74.x = 0.0f;
                sp74.y = Rand_ZeroFloat(10.0f) + 150.0f;
                sp74.z = 0.0f;

                Matrix_RotateY((this->actor.yawTowardsPlayer / 32768.0f) * 3.1415927f, MTXMODE_NEW);
                Matrix_RotateZ(Rand_ZeroFloat(65536.0f), MTXMODE_APPLY);
                Matrix_MultVec3f(&sp74, &sp68);

                sp80.x = this->unk_278.x + sp68.x;
                sp80.y = this->unk_278.y + sp68.y;
                sp80.z = this->unk_278.z + sp68.z;

                func_808D7034(globalCtx, &sp80, 20.0f);
            }
            break;
        case 3:
            this->unk_1A0 = 2;
            for (i = 0; i < ARRAY_COUNT(this->unk_294); i++) {
                Math_ApproachF(&this->unk_294[i], 0.0f, 1.0f, 40.0f);
            }

            if (this->timers[0] == 1) {
                sCape->attachLeftArmTimer = 15.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
            }

            if (this->timers[0] == 0) {
                Math_ApproachZeroF(&this->unk_284, 1.0f, 0.08f);
                this->unk_28C = this->unk_284;
                Math_ApproachZeroF(&this->unk_2D0, 1.0f, 10.0f);
                Math_ApproachF(&this->unk_278.x, this->unk_1FC.x, 0.5f, 30.0f);
                Math_ApproachF(&this->unk_278.y, this->unk_1FC.y, 0.5f, 30.0f);
                Math_ApproachF(&this->unk_278.z, this->unk_1FC.z, 0.5f, 30.0f);
            }

            if (this->timers[1] == 0) {
                this->animationLength = Animation_GetLastFrame(&D_06000FE8);
                Animation_MorphToLoop(&this->skelAnime, &D_06000FE8, 0.0f);
                this->unk_1C2 = 4;
                this->unk_288 = 0.0f;
                this->unk_290 = 0.0f;
                this->unk_284 = 0.0f;
                this->unk_28C = 0.0f;
            }
            break;
        case 4:
            this->unk_1A0 = 2;
            if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
                for (i = 0; i < 5; i++) {
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_GANON, this->unk_1FC.x,
                                       this->unk_1FC.y, this->unk_1FC.z, 0, this->actor.yawTowardsPlayer, 0, 0x104 + i);
                }

                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_BIGMASIC);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_THROW_BIG);
            }

            if (Animation_OnFrame(&this->skelAnime, 3.0f)) {
                sCape->attachShouldersTimer = 26.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
            }

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->animationLength = Animation_GetLastFrame(&D_06001440);
                Animation_MorphToLoop(&this->skelAnime, &D_06001440, 0.0f);
                this->unk_1C2 = 5;
            }
            break;
        case 5:
            this->unk_1A0 = 2;

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                func_808DBAF0(this, globalCtx);
            }
            break;
    }
}

void func_808DBAF0(BossGanon* this, GlobalContext* globalCtx) {
    func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
    Animation_MorphToLoop(&this->skelAnime, &D_06009A14, -10.0f);
    this->actionFunc = func_808DBB78;
    this->unk_1C8 = 0.0f;
    this->timers[0] = (s16)Rand_ZeroFloat(64.0f) + 30;
    this->unk_1C2 = 0;
    sCape->minY = 2.0f;
}

void func_808DBB78(BossGanon* this, GlobalContext* globalCtx) {
    f32 sin;
    s32 pad;
    f32 cos;
    Player* player = GET_PLAYER(globalCtx);

    this->unk_199 = 1;

    sCape->backPush = -3.0f;
    sCape->backSwayMagnitude = 0.25f;
    sCape->sideSwayMagnitude = -3.0f;
    sCape->minDist = 20.0f;

    SkelAnime_Update(&this->skelAnime);

    if ((this->unk_1C2 == 0) && !(player->actor.world.pos.y < 0.0f)) {
        if (!(player->stateFlags1 & 0x2000) && (fabsf(player->actor.world.pos.x) < 110.0f) &&
            (fabsf(player->actor.world.pos.z) < 110.0f)) {
            func_808DACE8(this, globalCtx); // pound floor
        } else if ((this->timers[0] == 0) && !(player->stateFlags1 & 0x2000)) {
            this->timers[0] = (s16)Rand_ZeroFloat(30.0f) + 30;

            if ((s8)this->actor.colChkInfo.health >= 20) {
                func_808DBEC4(this, globalCtx);
            } else if (Rand_ZeroOne() >= 0.5f) {
                if ((Rand_ZeroOne() >= 0.5f) || (this->actor.xzDistToPlayer > 350.0f)) {
                    func_808DB278(this, globalCtx);
                } else {
                    func_808DACE8(this, globalCtx); // pound floor
                }
            } else {
                func_808DBEC4(this, globalCtx);
            }
        }
    }

    sin = Math_SinS(this->unk_1A2 * 1280) * 100.0f;
    cos = Math_CosS(this->unk_1A2 * 1792) * 100.0f;

    Math_ApproachF(&this->actor.world.pos.x, sin, 0.05f, this->unk_1C8);
    Math_ApproachF(&this->actor.world.pos.y, 150.0f, 0.05f, this->unk_1C8 * 0.2f);
    Math_ApproachF(&this->actor.world.pos.z, cos, 0.05f, this->unk_1C8);
    Math_ApproachF(&this->unk_1C8, 50.0f, 1.0f, 0.5f);

    this->actor.velocity.x = this->actor.world.pos.x - this->actor.prevPos.x;
    this->actor.velocity.z = this->actor.world.pos.z - this->actor.prevPos.z;

    sin = Math_SinS(this->unk_1A2 * 1500);
    this->actor.velocity.y = this->unk_1C8 * sin * 0.04f;
    this->actor.world.pos.y += this->actor.velocity.y;

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0xBB8);
    func_80078914(&this->actor.projectedPos, NA_SE_EN_FANTOM_FLOAT - SFX_FLAG);
}

void func_808DBEC4(BossGanon* this, GlobalContext* globalCtx) {
    func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
    this->animationLength = Animation_GetLastFrame(&D_0600AA24);
    Animation_MorphToPlayOnce(&this->skelAnime, &D_0600AA24, -3.0f);
    this->actionFunc = func_808DBF30;
    this->timers[0] = 25;
}

void func_808DBF30(BossGanon* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    sCape->backPush = -3.0f;
    sCape->backSwayMagnitude = 1.25f;
    sCape->sideSwayMagnitude = -2.0f;
    sCape->minDist = 10.0f;

    if (this->timers[0] < 17) {
        this->unk_1A0 = 1;
    }

    if (this->timers[0] == 17) {
        this->unk_26C = 0xA;
        this->unk_270 = Rand_ZeroFloat(M_PI);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_SPARK);
    }

    if (this->timers[0] < 10) {
        this->unk_258 += (Rand_ZeroFloat(M_PI / 2) + (M_PI / 2));
        Math_ApproachF(&this->unk_254, 10.0f, 0.5f, 1.25f);

        if (this->timers[0] == 0) {
            func_808DC0E8(this, globalCtx);
        }
    }

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x7D0);

    this->actor.world.pos.x += this->actor.velocity.x;
    this->actor.world.pos.z += this->actor.velocity.z;

    Math_ApproachZeroF(&this->actor.velocity.x, 1.0f, 0.5f);
    Math_ApproachZeroF(&this->actor.velocity.z, 1.0f, 0.5f);

    this->actor.velocity.y = Math_SinS(this->unk_1A2 * 1500) * 2.0f;
    this->actor.world.pos.y += this->actor.velocity.y;
}

void func_808DC0E8(BossGanon* this, GlobalContext* globalCtx) {
    func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
    this->animationLength = Animation_GetLastFrame(&D_0600738C);
    Animation_MorphToPlayOnce(&this->skelAnime, &D_0600738C, 0.0f);
    this->actionFunc = func_808DC14C;
}

void func_808DC14C(BossGanon* this, GlobalContext* globalCtx) {
    s16 rand;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->unk_254, 1.0f, 0.2f);

    switch (this->unk_1C2) {
        case 0:
            this->unk_1A0 = 1;

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->unk_1C2 = 1;
                Animation_MorphToLoop(&this->skelAnime, &D_06009A14, 0.0f);
            }

            if (this->skelAnime.curFrame <= 12.0f) {
                this->unk_66E = 2;
                this->unk_66C = 2;
                gCustomLensFlarePos = this->unk_260;
            }

            if (Animation_OnFrame(&this->skelAnime, 12.0f)) {
                this->unk_254 = 0.0f;
            }

            if (Animation_OnFrame(&this->skelAnime, 11.0f) != 0) {
                this->unk_25C = 1;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_THROW);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_THROW_MASIC);
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_GANON, this->unk_260.x,
                                   this->unk_260.y, this->unk_260.z, 0, 0, 0, 0x64);
            }
            break;
        case 1:
            if (this->unk_1C0 != 0) {
                rand = Rand_ZeroOne() * 1.99f;
                this->animationLength = Animation_GetLastFrame(D_808E4D38[rand]);
                Animation_MorphToPlayOnce(&this->skelAnime, D_808E4D38[rand], 0.0f);
                sCape->attachRightArmTimer = D_808E4D40[rand];
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
                this->unk_1C0 = 0;
            }
            break;
    }

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x7D0);

    this->actor.world.pos.x += this->actor.velocity.x;
    this->actor.world.pos.z += this->actor.velocity.z;

    Math_SmoothStepToF(&this->actor.velocity.x, 0.0f, 1.0f, 0.5f, 0.0f);
    Math_SmoothStepToF(&this->actor.velocity.z, 0.0f, 1.0f, 0.5f, 0.0f);

    this->actor.velocity.y = Math_SinS(this->unk_1A2 * 1500) * 2.0f;
    this->actor.world.pos.y += this->actor.velocity.y;
}

void func_808DC420(BossGanon* this, GlobalContext* globalCtx) {
    if ((this->actionFunc != func_808DC4DC) || (this->unk_1C2 != 0)) {
        func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
        this->animationLength = Animation_GetLastFrame(&D_06009D5C);
        Animation_MorphToPlayOnce(&this->skelAnime, &D_06009D5C, 0.0f);
        this->actionFunc = func_808DC4DC;
    }

    this->unk_1C2 = 0;
    sCape->attachLeftArmTimer = this->timers[0] = 10;
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
    this->unk_254 = 0.0f;
}

void func_808DC4DC(BossGanon* this, GlobalContext* globalCtx) {
    this->collider.base.colType = 9;
    SkelAnime_Update(&this->skelAnime);
    sCape->backPush = -9.0f;
    sCape->backSwayMagnitude = 0.25f;
    sCape->sideSwayMagnitude = -2.0f;
    sCape->minDist = 13.0f;

    if (this->unk_1C2 == 0) {
        if (this->timers[0] == 0) {
            this->unk_1C2 = 1;
            Animation_MorphToPlayOnce(&this->skelAnime, &D_0600A598, 0.0f);
            this->animationLength = Animation_GetLastFrame(&D_0600A598);
            SkelAnime_Update(&this->skelAnime);
            sCape->attachShouldersTimer = 15.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
        }
    } else {
        sCape->sideSwayMagnitude = -13.0f;

        if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
            func_808DBAF0(this, globalCtx);
        }
    }

    this->actor.world.pos.x += this->actor.velocity.x;
    this->actor.world.pos.y += this->actor.velocity.y;
    this->actor.world.pos.z += this->actor.velocity.z;

    Math_ApproachZeroF(&this->actor.velocity.x, 1.0f, 0.5f);
    Math_ApproachZeroF(&this->actor.velocity.y, 1.0f, 0.5f);
    Math_ApproachZeroF(&this->actor.velocity.z, 1.0f, 0.5f);
}

void func_808DC66C(BossGanon* this, GlobalContext* globalCtx) {
    s16 i;

    func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
    this->animationLength = Animation_GetLastFrame(&D_06008128);
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06008128, 0);
    this->timers[0] = 70;
    sCape->attachRightArmTimer = sCape->attachLeftArmTimer = 0;

    for (i = 1; i < 15; i++) {
        this->unk_4E4[i] = D_808E4C58[i];
    }

    this->unk_2E6 = 0x50;
    this->unk_2E8 = 0;
    this->actionFunc = func_808DC75C;
    this->actor.velocity.x = this->actor.velocity.z = 0.0f;
    this->unk_1C2 = 0;
    this->unk_1A6 = 0xF;
    this->unk_508 = 6.0f;
}

void func_808DC75C(BossGanon* this, GlobalContext* globalCtx) {
    s16 i;
    Vec3f sp50;

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_1C2 == 0) {
        func_808D6BF0(globalCtx, 1500.0f, 0);

        if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
            this->animationLength = Animation_GetLastFrame(&D_06008F44);
            Animation_MorphToLoop(&this->skelAnime, &D_06008F44, 0.0f);
            this->unk_1C2 = 1;
        }
    } else if (this->unk_1C2 == 1) {
        func_808D6BF0(globalCtx, 1000.0f, 0);

        if (this->timers[0] == 0) {
            this->animationLength = Animation_GetLastFrame(&D_06008A88);
            Animation_MorphToPlayOnce(&this->skelAnime, &D_06008A88, 0.0f);
            this->unk_1C2 = 2;
            SkelAnime_Update(&this->skelAnime);
            sCape->attachShouldersTimer = 18.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_RESTORE);
            this->timers[2] = 130;
        }
    } else {
        if (Animation_OnFrame(&this->skelAnime, 7.0f)) {
            for (i = 0; i < 100; i++) {
                sp50.x = Rand_CenteredFloat(25.0f);
                sp50.y = Rand_CenteredFloat(25.0f);
                sp50.z = Rand_CenteredFloat(25.0f);

                func_808D69B0(globalCtx, &this->unk_1FC, &sp50, &D_808E4C6C, Rand_ZeroFloat(200.0f) + 500.0f, 0x14);
            }
            Audio_PlayActorSound2(&this->actor, NA_SE_PL_WALK_WATER2);
        }

        if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
            func_808DBAF0(this, globalCtx);
        }
    }

    this->actor.velocity.y = Math_SinS(this->unk_1A2 * 1500) * 2.0f;
    this->actor.world.pos.y += this->actor.velocity.y;
}

void func_808DC9B4(BossGanon* this, GlobalContext* globalCtx) {
    s16 i;

    if (this->actionFunc != func_808DCB7C) {
        func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
        this->animationLength = Animation_GetLastFrame(&D_06004884);
        Animation_MorphToPlayOnce(&this->skelAnime, &D_06004884, 0.0f);
        sCape->attachRightArmTimer = sCape->attachLeftArmTimer = 0;
        this->actionFunc = func_808DCB7C;
        this->actor.velocity.x = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.velocity.z = 0.0f;
        this->unk_1C2 = 0;
        sCape->backPush = -4.0f;
        sCape->backSwayMagnitude = 0.75f;
        sCape->sideSwayMagnitude = -3.0f;
        sCape->minDist = 20.0f;

        for (i = 0; i < 10; i++) {
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_GANON, this->unk_1FC.x,
                               this->unk_1FC.y, this->unk_1FC.z, Rand_CenteredFloat(0x8000),
                               (s16)Rand_CenteredFloat(0x8000) + this->actor.yawTowardsPlayer, 0, 0xC8 + i);
        }

        this->unk_1A4 = 0;
        this->unk_288 = 0.0f;
        this->unk_290 = 0.0f;
        this->unk_284 = 0.0f;
        this->unk_28C = 0.0f;
    }
}

void func_808DCB7C(BossGanon* this, GlobalContext* globalCtx) {
    s16 i;
    Vec3f sp40;

    if (this->timers[3] == 0) {
        this->actor.flags |= 1;
    }

    SkelAnime_Update(&this->skelAnime);

    this->unk_1A0 = 1;
    this->actor.world.pos.y += this->actor.velocity.y;

    if (this->unk_1A4 < 0x28) {
        Math_ApproachF(&this->unk_508, 4.0f, 0.1f, 0.1f);
    }

    if ((this->unk_1A4 >= 0x28) && (this->unk_1A4 < 0x37)) {
        Math_ApproachF(&this->unk_508, 0.0f, 1.0f, 0.5f);
    }

    if (this->unk_1A4 >= 0x37) {
        Math_ApproachF(&this->unk_508, 5.0f, 0.1f, 0.15f);
        this->unk_2E4 = 1;
    }

    switch (this->unk_1C2) {
        case 0:
            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->unk_1C2 = 1;
                this->animationLength = Animation_GetLastFrame(&D_06004DA8);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06004DA8, 0.0f);
            }
            break;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->unk_1C2 = 2;
                this->animationLength = Animation_GetLastFrame(&D_06003D40);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06003D40, 0.0f);
            }
            break;
        case 2:
            sCape->minDist = 0.0f;
            this->actor.velocity.y = this->actor.velocity.y - 0.5f;

            if (this->actor.world.pos.y < 40.0f) {
                this->actor.world.pos.y = 40.0f;
                this->actor.velocity.y = 0.0f;
                this->unk_1C2 = 3;
                this->animationLength = Animation_GetLastFrame(&D_060063CC);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_060063CC, 0.0f);
                this->timers[0] = 70;
                this->actor.flags |= 0x400;
            }
            break;
        case 3:
            if (this->timers[0] == 68) {
                this->unk_19F = 1;
            }

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->unk_1C2 = 4;
                this->animationLength = Animation_GetLastFrame(&D_060069A0);
                Animation_MorphToLoop(&this->skelAnime, &D_060069A0, 0.0f);
            }
            break;
        case 4:
            if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DOWN);
            }

            if (this->timers[0] == 0) {
                this->unk_1C2 = 5;
                this->animationLength = Animation_GetLastFrame(&D_060058C4);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_060058C4, 0.0f);
                this->unk_2D4 = 0x50;

                for (i = 1; i < 15; i++) {
                    this->unk_4E4[i] = Rand_ZeroFloat(10.0f);
                }

                this->unk_2E6 = 0x50;
                this->unk_2E8 = 0;
                this->actor.flags &= ~0x400;
            }
            break;
        case 5:
            func_808D6BF0(globalCtx, 1000.0f, 0);

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->unk_1C2 = 6;
                this->animationLength = Animation_GetLastFrame(&D_06006028);
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06006028, 0.0f);
                sCape->minDist = 20.0f;
                this->unk_19F = 1;
            }
            break;
        case 6:
            this->unk_1A0 = 0;
            Math_ApproachF(&this->actor.world.pos.y, 200.0f, 0.1f, 1000.0f);

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                this->unk_1C2 = 7;
            }
            break;
        case 7:
            this->unk_1A0 = 0;
            Math_ApproachF(&this->actor.world.pos.y, 150.0f, 0.05f, 30.0f);
            this->animationLength = Animation_GetLastFrame(&D_06008A88);
            Animation_MorphToPlayOnce(&this->skelAnime, &D_06008A88, 0.0f);
            this->unk_1C2 = 8;
            SkelAnime_Update(&this->skelAnime);
            sCape->attachShouldersTimer = 18.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_GANON_MANTLE);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_RESTORE);
            break;
        case 8:
            this->unk_1A0 = 0;

            if (Animation_OnFrame(&this->skelAnime, 7.0f)) {
                for (i = 0; i < 100; i++) {
                    sp40.x = Rand_CenteredFloat(25.0f);
                    sp40.y = Rand_CenteredFloat(25.0f);
                    sp40.z = Rand_CenteredFloat(25.0f);
                    func_808D69B0(globalCtx, &this->unk_1FC, &sp40, &D_808E4C6C, Rand_ZeroFloat(200.0f) + 500.0f, 0x14);
                }

                Audio_PlayActorSound2(&this->actor, NA_SE_PL_WALK_WATER2);
                this->timers[3] = 50;
            }

            if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
                func_808DBAF0(this, globalCtx);
            }
            break;
    }
}

void func_808DD0E8(BossGanon* this, GlobalContext* globalCtx) {
    func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
    this->animationLength = Animation_GetLastFrame(&D_060096B0);
    Animation_MorphToPlayOnce(&this->skelAnime, &D_060096B0, 0.0f);
    this->actionFunc = func_808DD14C;
}

void func_808DD14C(BossGanon* this, GlobalContext* globalCtx) {
    this->actor.flags |= 1;

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_1A4 >= 0x37) {
        Math_ApproachF(&this->unk_508, 5.0f, 0.1f, 0.15f);
        this->unk_2E4 = 1;
    }
    if (Animation_OnFrame(&this->skelAnime, this->animationLength)) {
        this->actionFunc = func_808DCB7C;
        this->unk_1C2 = 4;
        this->animationLength = Animation_GetLastFrame(&D_060069A0);
        Animation_MorphToLoop(&this->skelAnime, &D_060069A0, 0.0f);
    }
}

// collision check
void func_808DD20C(BossGanon* this, GlobalContext* globalCtx) {
    s16 i;
    s16 j;
    ColliderInfo* acHitInfo;

    if (this->collider.base.acFlags & 2) {
        this->unk_2D4 = 2;
        this->collider.base.acFlags &= ~2;
        acHitInfo = this->collider.info.acHitInfo;

        if ((this->actionFunc == func_808DC75C) || (this->actionFunc == func_808DB2E8)) {
            if (acHitInfo->toucher.dmgFlags & 0x2000) {
                func_808DC9B4(this, globalCtx);
                this->timers[2] = 0;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DAMAGE1);
                this->unk_1A6 = 0xF;
                return;
            }
        } else if ((this->actionFunc == func_808DCB7C) && (this->unk_1C2 >= 3)) {
            if (!(acHitInfo->toucher.dmgFlags & 0x80)) {
                u8 hitWithSword = false;
                u8 damage;
                Vec3f sp50;
                u32 flags;

                for (i = 0; i < 30; i++) {
                    sp50.x = Rand_CenteredFloat(20.0f);
                    sp50.y = Rand_CenteredFloat(20.0f);
                    sp50.z = Rand_CenteredFloat(20.0f);
                    func_808D69B0(globalCtx, &this->unk_1FC, &sp50, &D_808E4C6C, Rand_ZeroFloat(200.0f) + 500.0f, 0x1E);
                }

                damage = flags = CollisionCheck_GetSwordDamage(acHitInfo->toucher.dmgFlags);

                if (flags == 0) {
                    damage = 2;
                } else {
                    hitWithSword = true;
                }

                if (((s8)this->actor.colChkInfo.health >= 3) || hitWithSword) {
                    this->actor.colChkInfo.health -= damage;
                }

                for (i = 0; i < ARRAY_COUNT(sCape->strands); i++) {
                    for (j = 1; j < 12; j++) {
                        sCape->strands[i].velocities[j].x = Rand_CenteredFloat(15.0f);
                        sCape->strands[i].velocities[j].z = Rand_CenteredFloat(15.0f);
                    }
                }

                if ((s8)this->actor.colChkInfo.health <= 0) {
                    func_808D9018(this, globalCtx);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DEAD);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DD_THUNDER);
                    func_80078914(&D_808E4C6C, NA_SE_EN_LAST_DAMAGE);
                    Audio_QueueSeqCmd(0x100100FF);
                    this->unk_1C4 = 4;
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_DAMAGE2);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_CUTBODY);
                    func_808DD0E8(this, globalCtx);
                    this->unk_1A6 = 0xF;
                    sCape->tearTimer = 1;
                }
            }
        } else if (acHitInfo->toucher.dmgFlags & 0x1F8A4) {
            Audio_PlayActorSound2(&this->actor, 0);

            for (i = 0; i < ARRAY_COUNT(sCape->strands); i++) {
                for (j = 1; j < 12; j++) {
                    sCape->strands[i].velocities[j].x = Rand_CenteredFloat(15.0f);
                    sCape->strands[i].velocities[j].z = Rand_CenteredFloat(15.0f);
                }
            }
        }
    }
}

#ifdef NON_MATCHING
void BossGanon_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossGanon* this = THIS;
    Player* player = GET_PLAYER(globalCtx);
    f32 sin;
    f32 cos;
    f32 target50C_X;
    f32 target50C_Y; // target50C_Y
    f32 target50C_Z;
    Vec3f sp100;
    Vec3f spF4;
    Vec3f spE8;
    Vec3f spD8;
    Vec3f spCC;
    Vec3f spBC;
    Vec3f spB0;
    Vec3f spA4;
    Actor* explosive;
    Actor* prop; // might need only one temp for this
    BgGanonOtyuka* platform;
    f32 target670;
    s16 decr274;
    f32 decr2pi;
    s16 i;
    s16 j;

    if ((this->actionFunc != func_808D7918) && (this->actionFunc != func_808D933C)) {
        func_808D712C(this, globalCtx, OBJECT_GANON_ANIME1);
    } else {
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->animBankIndex].segment);
    }

    if (this->unk_71B != 0) {
        func_808D91F8(this->unk_71B);
        spF4.y = 0.0f;

        for (i = 0; i < 10; i++) {
            sp100.y = Rand_ZeroFloat(240.0f) + 20.0f;

            if (Rand_ZeroOne() < 0.5f) {
                sp100.x = 463.0f;
                sp100.z = Rand_ZeroFloat(463.0f);
                spF4.x = Rand_ZeroFloat(2);
                spF4.z = Rand_ZeroFloat(1.0f);
            } else {
                sp100.z = 463.0f;
                sp100.x = Rand_ZeroFloat(463);
                spF4.z = Rand_ZeroFloat(2.0f);
                spF4.x = Rand_ZeroFloat(1.0f);
            }

            func_808D6870(globalCtx, &sp100, &spF4, Rand_ZeroFloat(0.075f) + 0.08f);
        }
    }

    this->collider.base.colType = 3;
    sCape->gravity = -3.0f;
    this->unk_2E4 = 0;
    this->actor.flags &= ~1;
    this->unk_1A2++;
    this->unk_1A4++;

    // block links attack if hes shooting something
    if ((this->actionFunc == func_808DBB78) || (this->actionFunc == func_808DC4DC)) {
        if (player->unk_A73 != 0) {
            func_808DC420(this, globalCtx);
        }
    }

    this->actionFunc(this, globalCtx);

    for (i = 0; i < ARRAY_COUNT(this->timers); i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }

    if (this->unk_1A6 != 0) {
        this->unk_1A6--;
    }

    if (this->unk_2D4 != 0) {
        this->unk_2D4--;
    }

    if (this->unk_2E8 != 0) {
        this->unk_2E8--;
    }

    if (this->unk_2E6 != 0) {
        this->unk_2E6--;
    }

    if (this->unk_19C != 0) {
        this->unk_19C--;
    }

    if (this->cutsceneState == 0) {
        func_808DD20C(this, globalCtx);
        func_808D70F0(&this->unk_1FC, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

        if (this->unk_2D4 == 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

            if ((this->actionFunc != func_808DC75C) && (this->actionFunc != func_808DCB7C) &&
                (this->actionFunc != func_808DD14C)) {
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }
        }
    }

    if (this->unk_199 != 0) {
        sin = Math_SinS(-this->actor.shape.rot.y);
        cos = Math_CosS(-this->actor.shape.rot.y);
        // flip mults if needed
        target50C_X = ((this->actor.velocity.z * sin) + (cos * this->actor.velocity.x)) * 300.0f;
        target50C_Y = ((-sin * this->actor.velocity.x) + (cos * this->actor.velocity.z)) * 300.0f;
        target50C_Z = (Math_SinS(this->unk_1A2 * 2268) * -500.0f) - 500.0f;
    } else {
        target50C_X = 0.0f; // x second?
        target50C_Y = 0.0f;
        target50C_Z = 0.0f;
    }

    this->unk_199 = 0;

    Math_SmoothStepToF(&this->unk_50C.x, target50C_X, 1.0f, 600.0f, 0.0f);
    Math_SmoothStepToF(&this->unk_50C.y + 1296, target50C_Y, 1.0f, 600.0f, 0.0f); // float for 1296?
    Math_SmoothStepToF(&this->unk_50C.z, target50C_Z, 1.0f, 100.0f, 0.0f);

    if (this->timers[2] == 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_LAUGH);
    }

    if (this->timers[2] == 100) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_ST_LAUGH);
        this->timers[2] = 0;
    }

    if ((this->unk_2E6 != 0) || (this->unk_2E8 != 0)) {
        for (i = 1; i < ARRAY_COUNT(this->unk_49C); i++) {
            if (this->unk_4E4[i] != 0) {
                this->unk_4E4[i]--;
                Math_ApproachF(&this->unk_49C[i], this->unk_508, 1.0f, 2.0f);
            } else {
                Math_ApproachZeroF(&this->unk_49C[i], 1.0f, 2.0f);
            }
        }

        // link hit, spawn shock and play sound
        if (this->unk_2E8 != 0) {
            func_80078914(&player->actor.projectedPos, NA_SE_PL_SPARK - SFX_FLAG);
            func_808D6BF0(globalCtx, 700.0f, 1);
        }
    }

    if (this->unk_19F != 0) {
        this->unk_19F = 0;
        spE8 = this->actor.world.pos;
        spE8.y = 0.0f;
        func_808D6D60(globalCtx, &spE8, 0.2f, 0.7f); // no f?
        func_808D6D60(globalCtx, &spE8, 0.3f, 0.8f); // no f?
    }

    if (this->unk_26C != 0) {
        this->unk_26C--;

        if (this->unk_26C == 0) {
            func_808D6CBC(globalCtx, 1.0f, 0.0f, 0.0f);
        }

        func_808D6CBC(globalCtx, 1.0f, D_808E4D44[i] * (M_PI / 5) + this->unk_270,
                      Rand_CenteredFloat(M_PI / 5) + (M_PI / 2));
    }

    // see if light ball hit and should knock platform down?
    if ((this->unk_19C != 0) && (this->unk_19E < 4)) {
        if ((this->unk_19A == 0) && (this->unk_19C == 20)) {
            this->unk_19A = 1;
            spCC.y = 0.0f; // x first?
            spCC.x = -180.0f;

            for (i = 0; i < 4; i++) {
                spCC.z = -180.0f;

                for (j = 0; j < 4; j++) {
                    func_808E0F4C(this, globalCtx, &spCC);
                    spCC.z += 120.0f;
                }

                spCC.x += 120.0f;
            }
        } else if (this->unk_19C < 30) {
            spD8.x = 0.0f;
            spD8.y = 0.0f;
            spD8.z = (30.0f - this->unk_19C) * 15.0f;

            Matrix_RotateY(Rand_ZeroFloat(M_PI * 2), MTXMODE_NEW);
            Matrix_MultVec3f(&spD8, &spCC);

            this->unk_19E += func_808E0F4C(this, globalCtx, &spCC);
        }
    }

    // see if a bomb exploded near a group of platforms and if they should fall
    explosive = globalCtx->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;

    while (explosive != NULL) {
        if (explosive->params == 1) {
            for (i = 0; i < 8; i++) {
                spBC.x = 0.0f;
                spBC.y = 0.0f;
                spBC.z = 60.0f;

                Matrix_RotateY(i * (M_PI / 4), MTXMODE_NEW);
                Matrix_MultVec3f(&spBC, &spB0);

                spA4.x = explosive->world.pos.x + spB0.x;
                spA4.y = explosive->world.pos.y;
                spA4.z = explosive->world.pos.z + spB0.z;

                func_808E0F4C(this, globalCtx, &spA4);
            }
        }
        explosive = explosive->next;
    }

    func_808E3564(globalCtx);

    prop = globalCtx->actorCtx.actorLists[ACTORCAT_PROP].head;

    while (prop != NULL) {
        if ((prop->id == ACTOR_BG_GANON_OTYUKA)) {
            platform = (BgGanonOtyuka*)prop;

            if (platform->flashState != 0) {
                this->unk_1A0 = 1;
            }
        } else {
            prop = prop->next;
        }
    }

    globalCtx->envCtx.unk_BF = 0;
    globalCtx->envCtx.unk_BE = 0;
    globalCtx->envCtx.unk_DC = 2;

    switch (this->unk_1A0) {
        case 1:
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 0.0f, 1.0f, 0.02f);
            break;
        case 2:
            globalCtx->envCtx.unk_BD = 1;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.1f);
            break;
        case 3:
            globalCtx->envCtx.unk_BD = 1;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.02f);
            break;
        case 4:
            globalCtx->envCtx.unk_BD = 3;
            globalCtx->envCtx.unk_D8 = 1.0f;
            break;
        case 36:
            globalCtx->envCtx.unk_BD = 0;
            globalCtx->envCtx.unk_D8 = 1.0f;
            break;
        case 5:
            globalCtx->envCtx.unk_BD = 4;
            globalCtx->envCtx.unk_D8 = 1.0f;
            break;
        case 6:
            globalCtx->envCtx.unk_BE = 5;
            globalCtx->envCtx.unk_BD = 3;
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.075f);
            break;
        case 7:
            globalCtx->envCtx.unk_BE = 5;
            globalCtx->envCtx.unk_D8 = 0.0f;
            break;
        case 65:
            globalCtx->envCtx.unk_BE = 3;
            globalCtx->envCtx.unk_BD = 6;
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.05f);
            break;
        case 8:
            globalCtx->envCtx.unk_BE = 7;
            globalCtx->envCtx.unk_D8 = 0.0f;
            break;
        case 75:
            globalCtx->envCtx.unk_BE = 4;
            globalCtx->envCtx.unk_BD = 8;
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.05f);
            break;
        case 9:
            globalCtx->envCtx.unk_BE = 3;
            globalCtx->envCtx.unk_BD = 9;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
            break;
        case 10:
            globalCtx->envCtx.unk_BE = 3;
            globalCtx->envCtx.unk_BD = 0xA;
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.05f);
            break;
        case 11:
            globalCtx->envCtx.unk_BE = 3;
            globalCtx->envCtx.unk_BD = 0xB;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
            this->unk_1A4 = 0;
            break;
        case 12:
            globalCtx->envCtx.unk_BE = 0xC;
            globalCtx->envCtx.unk_BD = 0xB;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, (Math_CosS(this->unk_1A4 * 0x1800) * 0.5f) + 0.5f, 1.0f, 1.0f);
            break;
        case 13:
            globalCtx->envCtx.unk_BE = 0xC;
            globalCtx->envCtx.unk_BD = 3;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
            break;
        case 14:
            globalCtx->envCtx.unk_BD = 0xD;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.025f);
            break;
        case 15:
            globalCtx->envCtx.unk_BD = 0xE;
            globalCtx->envCtx.unk_D8 = 1.0f;
            break;
        case 16:
            globalCtx->envCtx.unk_BE = 0xE;
            globalCtx->envCtx.unk_BD = 0xF;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.01f);
            break;
        case 17:
            globalCtx->envCtx.unk_BE = 0x10;
            globalCtx->envCtx.unk_BD = 0xF;
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.05f);
            break;
        case 21:
            globalCtx->envCtx.unk_BE = 2;
            globalCtx->envCtx.unk_BD = 1;
            break;
        default:
            break;
    }

    this->unk_1A0 = 0;

    if (this->unk_714 != 0.0f) {
        globalCtx->envCtx.screenFillColor[3] = this->unk_714;
        globalCtx->envCtx.screenFillColor[0] = globalCtx->envCtx.screenFillColor[1] =
            globalCtx->envCtx.screenFillColor[2] = 255;
        globalCtx->envCtx.fillScreen = 1;
    } else if (this->unk_1C4 != 0) {
        globalCtx->envCtx.fillScreen = 1;
        globalCtx->envCtx.screenFillColor[0] = globalCtx->envCtx.screenFillColor[1] =
            globalCtx->envCtx.screenFillColor[2] = 255;

        if ((this->unk_1C4 & 1) != 0) {
            globalCtx->envCtx.screenFillColor[3] = 100;
        } else {
            globalCtx->envCtx.screenFillColor[3] = 0;
        }

        this->unk_1C4--;
    } else {
        globalCtx->envCtx.screenFillColor[3] = 0;
        globalCtx->envCtx.fillScreen = false;
    }

    if (this->unk_66E != 0) {
        this->unk_66E--;

        if (this->unk_66C == 1) {
            target670 = 40.0f;
        } else if (this->unk_66C == 4) {
            target670 = 25.0f;
        } else {
            target670 = 10.0f;
        }

        Math_ApproachF(&this->unk_670, target670, 0.3f, 10.0f);
    } else {
        Math_ApproachZeroF(&this->unk_670, 1.0f, 5.0f);

        if (this->unk_670 == 0.0f) {
            this->unk_66C = 0;
        }
    }

    if (this->unk_66C != 0) {
        gCustomLensFlareOn = true;

        if (this->unk_66C == 1) {
            gCustomLensFlarePos = this->actor.world.pos;
        }

        D_8015FD06 = this->unk_670;
        D_8015FD08 = 10.0f;
        D_8015FD0C = 0;
    } else {
        gCustomLensFlareOn = false;
    }

    if (this->unk_274 != 0) {
        decr274 = this->unk_274 - 1;

        this->unk_278.x = this->unk_2EC[0].x;
        this->unk_278.y = this->unk_2EC[0].y + 50.0f + 30.0f;
        this->unk_278.z = this->unk_2EC[0].z;

        decr2pi = decr274 * 1.2566371f; // fake?
        // temp_f24 = sinf(decr2pi) * 600.0f; might need a temp for cosf
        // 5 or 6 light balls that go into the charge. not the same as the ones that he throws
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_GANON,
                           this->unk_1FC.x + sinf(decr2pi) * 600.0f, this->unk_1FC.y,
                           this->unk_1FC.z + (cosf(decr2pi) * 600.0f), 0, (decr274 * 13107.2f) + 0x6000, 0,
                           0xFA + decr274);
        this->unk_274 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Update.s")
#endif

s32 func_808DE734(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DE734.s")

void func_808DE988(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DE988.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DED30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DED4C.s")

void func_808DEE70(BossGanon* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DEE70.s")
// void func_808DEE70(BossGanon* this, GlobalContext* globalCtx2) {
//     GlobalContext* globalCtx = globalCtx2;
//     GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
//     s16 i;

//     OPEN_DISPS(gfxCtx, "../z_boss_ganon.c", 7350);

//     if ((this->unk_2E8 != 0) || (this->unk_2E6 != 0)) {
//         func_80093D84(globalCtx->state.gfxCtx);
//         gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
//         gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 0, 0);
//         gSPDisplayList(POLY_XLU_DISP++, D_808E7DE8);

//         if (this->unk_2E8 != 0) {
//             Player* player = GET_PLAYER(globalCtx);

//             for (i = 0; i < 18; i++) {
//                 Matrix_Translate(player->bodyPartsPos[i].x, player->bodyPartsPos[i].y, player->bodyPartsPos[i].z,
//                                  MTXMODE_NEW);
//                 func_800D1FD4(&globalCtx->mf_11DA0);
//                 Matrix_Scale(this->unk_49C[i], this->unk_49C[i], this->unk_49C[i], MTXMODE_APPLY);
//                 Matrix_RotateZ(Rand_CenteredFloat(M_PI), MTXMODE_APPLY);
//                 gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_ganon.c", 7384),
//                           G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
//                 gSPDisplayList(POLY_XLU_DISP++, D_808E7E58);
//             }
//         } else {
//             for (i = 1; i < 15; i++) {
//                 Matrix_Translate(this->unk_2EC[i].x, this->unk_2EC[i].y, this->unk_2EC[i].z, MTXMODE_NEW);
//                 func_800D1FD4(&globalCtx->mf_11DA0);
//                 Matrix_Scale(this->unk_49C[i], this->unk_49C[i], this->unk_49C[i], MTXMODE_APPLY);

//                 if (this->unk_2E4 == 0) {
//                     Matrix_RotateZ(Rand_CenteredFloat(M_PI), MTXMODE_APPLY);
//                 }

//                 gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_ganon.c", 7401),
//                           G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

//                 if (this->unk_2E4 != 0) {
//                     gSPSegment(POLY_XLU_DISP++, 0x08,
//                                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0,
//                                                 (this->unk_1A2 + i) * -15, 32, 64));
//                     gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 255, 170, 255);
//                     gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 0, 128);
//                     gSPDisplayList(POLY_XLU_DISP++, D_808F5738);
//                 } else {
//                     gSPDisplayList(POLY_XLU_DISP++, D_808E7E58);
//                 }
//             }
//         }
//     }
//     CLOSE_DISPS(gfxCtx, "../z_boss_ganon.c", 7465);
// }

void func_808DF25C(BossGanon* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DF25C.s")

void func_808DF4F0(BossGanon* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DF4F0.s")

void func_808DFBD0(BossGanon* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DFBD0.s")

void func_808DFFC8(BossGanon* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DFFC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0254.s")

void func_808E06FC(Mtx* mtx, BossGanon* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E06FC.s")

void func_808E0A3C(Mtx* mtx, BossGanon* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0A3C.s")

void BossGanon_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossGanon* this = THIS;
    Mtx* sp54; // this is totally a guess

    sp54 = Graph_Alloc(globalCtx->state.gfxCtx, 0x1000);

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 9138);

    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);

    if ((this->unk_1A6 & 2) != 0) {
        POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 50, 0, 0, 900, 1099);
    }

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(&D_06009A20));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_808DE734, func_808DE988, &this->actor);

    this->unk_2EC[0].x = this->unk_2EC[1].x;
    this->unk_2EC[0].y = this->unk_2EC[1].y + 30.0f;
    this->unk_2EC[0].z = this->unk_2EC[1].z;

    POLY_OPA_DISP = Gameplay_SetFog(globalCtx, POLY_OPA_DISP);

    func_808E3D84(globalCtx);

    sCape->actor.world.pos = this->actor.world.pos;
    sCape->rightForearmPos = this->unk_214;
    sCape->leftForearmPos = this->unk_220;
    sCape->rightShoulderPos = this->unk_22C;
    sCape->leftShoulderPos = this->unk_238;

    func_808DEE70(this, globalCtx);
    func_808DF25C(this, globalCtx);
    func_808DF4F0(this, globalCtx);
    func_808DFBD0(this, globalCtx);
    func_808DFFC8(this, globalCtx);
    func_808E06FC(sp54, this, globalCtx);
    func_808E0A3C(sp54, this, globalCtx);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 9393);
}

// check distance and set platform to fall if it passes
s32 func_808E0F4C(BossGanon* this, GlobalContext* globalCtx, Vec3f* arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0F4C.s")

void func_808E1034(Actor* thisx, GlobalContext* globalCtx2) {
    u8 hitWithBottle;
    s16 i;
    s16 spBA = 0;
    Vec3f spAC;
    Vec3f spA0;
    Vec3f sp94;
    BossGanon* this = THIS;
    GlobalContext* globalCtx = globalCtx2;
    f32 xDistFromLink;
    f32 yDistFromLink;
    f32 zDistFromLink;
    f32 minReflectDist;
    f32 xDistFromGanondorf;
    f32 yDistFromGanondorf;
    f32 zDistFromGanondorf;
    Player* player = GET_PLAYER(globalCtx);
    s32 pad;
    BossGanon* ganondorf = (BossGanon*)this->actor.parent;
    s32 pad1;

    this->unk_1A2++;
    ganondorf->unk_1A0 = 1;

    if (this->unk_1A8 != 0) {
        if (this->unk_1A8 == 2) {
            Math_ApproachZeroF(&this->animationLength, 1.0f, 10.0f);
            Math_ApproachF(&this->actor.scale.x, 30.0f, 0.5f, 100.0f);
        } else {
            this->actor.shape.rot.y += 0x1000;
            ganondorf->unk_66E = 1;
            gCustomLensFlarePos = this->actor.world.pos;
            Math_ApproachZeroF(&this->animationLength, 1.0f, 30.0f);
            Math_ApproachF(&this->actor.scale.x, 20.0f, 0.5f, 100.0f);
            this->unk_1C8 += ((M_PI / 2) + Rand_ZeroFloat((M_PI / 4)));
        }

        Actor_SetScale(&this->actor, this->actor.scale.x);

        if (this->animationLength == 0.0f) {
            Actor_Kill(&this->actor);
            return;
        }
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_FIRE - SFX_FLAG);

        if (this->unk_1A2 & 1) {
            Actor_SetScale(&this->actor, 6.0f);
        } else {
            Actor_SetScale(&this->actor, 5.25f);
        }

        this->actor.shape.rot.z += (s16)(Rand_ZeroOne() * 20000.0f) + 0x4000;

        for (i = 0; i < ARRAY_COUNT(this->timers); i++) {
            if (this->timers[i] != 0) {
                this->timers[i]--;
            }
        }

        xDistFromGanondorf = ganondorf->unk_1FC.x - this->actor.world.pos.x;
        yDistFromGanondorf = ganondorf->unk_1FC.y - this->actor.world.pos.y;
        zDistFromGanondorf = ganondorf->unk_1FC.z - this->actor.world.pos.z;

        xDistFromLink = player->actor.world.pos.x - this->actor.world.pos.x;
        yDistFromLink = (player->actor.world.pos.y + 40.0f) - this->actor.world.pos.y;
        zDistFromLink = player->actor.world.pos.z - this->actor.world.pos.z;

        func_8002D908(&this->actor);
        func_8002D7EC(&this->actor);

        switch (this->unk_1C2) {
            case 0:
                if ((player->stateFlags1 & 2) &&
                    (ABS((s16)(player->actor.shape.rot.y - (s16)(ganondorf->actor.yawTowardsPlayer + 0x8000))) <
                     0x2000) &&
                    (sqrtf(SQ(xDistFromLink) + SQ(yDistFromLink) + SQ(zDistFromLink)) <= 25.0f)) {
                    hitWithBottle = true;
                } else {
                    hitWithBottle = false;
                }

                if ((this->collider.base.acFlags & 2) || hitWithBottle) {
                    ColliderInfo* acHitInfo = this->collider.info.acHitInfo;
                    this->collider.base.acFlags &= ~2;

                    if ((hitWithBottle == false) && (acHitInfo->toucher.dmgFlags & 0x100000)) {
                        spBA = 2;
                        Audio_PlaySoundGeneral(NA_SE_IT_SHIELD_REFLECT_MG, &player->actor.projectedPos, 4, &D_801333E0,
                                               &D_801333E0, &D_801333E8);
                        func_800AA000(this->actor.xyzDistToPlayerSq, 0xFF, 0x14, 0x96);
                    } else {
                        spBA = 1;
                        this->actor.world.rot.y = Math_Atan2S(zDistFromGanondorf, xDistFromGanondorf);
                        this->actor.world.rot.x =
                            Math_Atan2S(sqrtf(SQ(xDistFromGanondorf) + SQ(zDistFromGanondorf)), yDistFromGanondorf);
                        this->unk_1A4++;
                        this->timers[1] = 2;
                        Audio_PlaySoundGeneral(NA_SE_IT_SWORD_REFLECT_MG, &player->actor.projectedPos, 4, &D_801333E0,
                                               &D_801333E0, &D_801333E8);
                        func_800AA000(this->actor.xyzDistToPlayerSq, 0xB4, 0x14, 0x64);

                        if (hitWithBottle == false) {
                            // if ganondorf is 250 units away from link, at least 3 volleys are required
                            if ((ganondorf->actor.xyzDistToPlayerSq > 62500.0f) && (this->unk_1A4 < 3)) {
                                this->unk_1C2 = 1;
                            } else if (Rand_ZeroOne() < 0.7f) {
                                this->unk_1C2 = 1;
                            } else {
                                this->unk_1C2 = 3;
                            }

                            // if a spin attack is used
                            if (player->swordAnimation >= 24) {
                                this->actor.speedXZ = 20.0f;
                            }
                            break;
                        } else {
                            if (Rand_ZeroOne() < 0.9f) {
                                this->unk_1C2 = 1;
                            } else {
                                this->unk_1C2 = 3;
                            }
                        }
                    }
                } else {
                    if (sqrtf(SQ(xDistFromLink) + SQ(yDistFromLink) + SQ(zDistFromLink)) <= 25.0f) {
                        spBA = 5;
                        func_8002F6D4(globalCtx, &this->actor, 3.0f, this->actor.world.rot.y, 0.0f, 0x30);
                        Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 0x28, NA_SE_EN_GANON_HIT_THUNDER);
                        ganondorf->timers[2] = 20;

                        for (i = 0; i < ARRAY_COUNT(ganondorf->unk_4E4); i++) {
                            ganondorf->unk_4E4[i] = D_808E4C58[i];
                        }

                        ganondorf->unk_2E6 = 0;
                        ganondorf->unk_2E8 = 60;
                        ganondorf->unk_508 = 4.0f;
                    }
                }
                break;
            case 1:
                if ((ganondorf->actionFunc == func_808DC14C) && (ganondorf->unk_1C2 == 1)) {
                    minReflectDist = (this->actor.speedXZ >= 19.0f) ? 250.0f : 170.0f;

                    if (sqrtf(SQ(xDistFromGanondorf) + SQ(yDistFromGanondorf) + SQ(zDistFromGanondorf)) <
                        minReflectDist) {
                        ganondorf->unk_1C0 = 1;
                        this->timers[0] = 8;
                        this->unk_1C2 = 2;
                    }
                }
                break;
            case 2:
                if (this->timers[0] == 1) {
                    spBA = 1;
                    this->actor.world.rot.y = Math_Atan2S(zDistFromLink, xDistFromLink);
                    this->actor.world.rot.x = Math_Atan2S(sqrtf(SQ(xDistFromLink) + SQ(zDistFromLink)), yDistFromLink);
                    this->timers[1] = 2;
                    Audio_PlayActorSound2(&this->actor, NA_SE_IT_SWORD_REFLECT_MG);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_AT_RETURN);
                    this->unk_1C2 = 0;
                    break;
                }
            case 4:
                if (sqrtf(SQ(xDistFromGanondorf) + SQ(yDistFromGanondorf) + SQ(zDistFromGanondorf)) < 30.0f) {
                    spBA = 3;
                    Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 40, NA_SE_EN_GANON_DAMAGE1);
                    Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 40, NA_SE_EN_GANON_HIT_THUNDER);
                }
                break;
            case 3:
                if (sqrtf(SQ(xDistFromGanondorf) + SQ(yDistFromGanondorf) + SQ(zDistFromGanondorf)) < 100.0f) {
                    ganondorf->unk_1C0 = 1;
                    this->unk_1C2 = 4;
                }
                break;
        }

        Collider_UpdateCylinder(&this->actor, &this->collider);

        if (this->timers[1] == 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        for (i = 0; i < 2; i++) {
            spA0.x = spA0.z = 0.0f;
            spA0.y = 0.2f;

            spAC.x = spAC.y = spAC.z = 0.0f;

            sp94.x = Rand_CenteredFloat(30.0f) + this->actor.world.pos.x;
            sp94.y = Rand_CenteredFloat(30.0f) + this->actor.world.pos.y;
            sp94.z = Rand_CenteredFloat(30.0f) + this->actor.world.pos.z;

            func_808D69B0(globalCtx, &sp94, &spAC, &spA0, Rand_ZeroFloat(500.0f) + 700.0f, 0x1E);
        }

        if (this->actor.world.pos.y < 10.0f) {
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 20.0f, 20.0f, 4);
        }

        if ((fabsf(this->actor.world.pos.x) > 465.0f) || (this->actor.world.pos.y > 500.0f) ||
            (fabsf(this->actor.world.pos.z) > 465.0f)) {
            spBA = 4;
        }

        if ((spBA != 0) || (this->actor.bgCheckFlags & 1)) {
            f32 sp58;
            f32 sp54;
            f32 phi_f20;
            s16 sp4E;

            if (spBA == 1) {
                sp58 = Rand_ZeroFloat(100.0f) + 300.0f;
                sp54 = 10.0f;
                phi_f20 = 25.0f;
                sp4E = 40;
            } else {
                sp58 = Rand_ZeroFloat(200.0f) + 500.0f;
                sp54 = 15.0f;
                phi_f20 = 30.0f;
                sp4E = 70;
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.world.pos, 0x50, NA_SE_EN_GANON_HIT_THUNDER);
            }

            for (i = 0; i < sp4E; i++) {
                if (spBA != 0) {
                    spAC.x = Rand_CenteredFloat(phi_f20);
                    spAC.y = Rand_CenteredFloat(phi_f20);
                    spAC.z = Rand_CenteredFloat(phi_f20);
                } else {
                    spAC.x = Rand_CenteredFloat(phi_f20);
                    spAC.y = Rand_ZeroFloat(25.0f);
                    spAC.z = Rand_CenteredFloat(phi_f20);
                }

                func_808D6AAC(globalCtx, &this->actor.world.pos, &spAC, &D_808E4C6C, sp58, sp54, 0x1E);
            }

            if (spBA != 1) {
                this->unk_1A8 = 1;

                if (spBA == 0) {
                    func_808E0F4C(this, globalCtx, &this->actor.world.pos);
                }

                if (spBA == 3) {
                    func_808DC66C(ganondorf, globalCtx);
                } else if (ganondorf->actionFunc == func_808DC14C) {
                    func_808DBAF0(ganondorf, globalCtx);

                    if (spBA == 5) {
                        ganondorf->timers[0] = 125;
                    }
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E1B54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E1EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E229C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E2544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E324C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E3564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E3D84.s")
/*
void func_808E3D84(GlobalContext* globalCtx) {
    s16 i;
    u8 dListDrawn;
    s32 pad;
    GanondorfEffect* eff = globalCtx->customActorEffects;
    GanondorfEffect* effFirst = globalCtx->customActorEffects;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 10865);
    func_80093D84(globalCtx->state.gfxCtx);
    dListDrawn = 0;
    for (i = 0; i < 200; i++, eff++) {
        if (eff->type == 9) {
            gDPPipeSync(POLY_OPA_DISP++);
            if (dListDrawn == 0) {
                gSPDisplayList(POLY_OPA_DISP++, D_808E64E8);
                dListDrawn++;
            }
            if (eff->unk_01 & 7) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, eff->color.r, eff->color.g, eff->color.b, 255);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
            }
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            Matrix_Scale(eff->scale, eff->scale, eff->scale, MTXMODE_APPLY);
            Matrix_RotateY(eff->unk_48, MTXMODE_APPLY);
            Matrix_RotateX(eff->unk_44, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 10898),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_808E6590);
        }
    }
    eff = effFirst;
    dListDrawn = 0;
    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 1) {
            gDPPipeSync(POLY_XLU_DISP++);
            if (dListDrawn == 0) {
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 0, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_808E64E8);
                dListDrawn++;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, eff->unk_2C);
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(eff->scale, eff->scale, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(eff->unk_3C, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 10932),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_808E7E58);
        }
    }
    eff = effFirst;
    dListDrawn = 0;
    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 2) {
            gDPPipeSync(POLY_XLU_DISP++);
            if (dListDrawn == 0) {
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 0, 0);
                gSPDisplayList(POLY_XLU_DISP++, D_808E7DE8);
                dListDrawn++;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, eff->unk_2C);
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            Matrix_RotateY(eff->unk_48, MTXMODE_APPLY);
            Matrix_RotateX(eff->unk_44, MTXMODE_APPLY);
            Matrix_RotateZ(eff->unk_3C, MTXMODE_APPLY);
            Matrix_Scale(eff->scale, eff->scale, eff->scale * eff->unk_38, MTXMODE_APPLY);
            Matrix_RotateX(M_PI / 2, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 10971),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_808E7E58);
        }
    }
    eff = effFirst;
    dListDrawn = 0;
    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 3) {
            if (dListDrawn == 0) {
                gDPPipeSync(POLY_XLU_DISP++);
                if (eff->unk_2E == 2) {
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 0, 200, 255);
                    gDPSetEnvColor(POLY_XLU_DISP++, 130, 0, 0, 0);
                } else {
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
                    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 0, 0);
                }
                dListDrawn++;
            }
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            Matrix_Scale(eff->scale, eff->scale, 1.0f, MTXMODE_APPLY);
            Matrix_RotateX(eff->unk_3C * 1.3f, MTXMODE_APPLY);
            Matrix_RotateZ(eff->unk_3C, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 11023),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_808F6B60);
        }
    }
    eff = effFirst;
    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 4) {
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, D_808E4ECC[eff->unk_01].r, D_808E4ECC[eff->unk_01].g,
                            D_808E4ECC[eff->unk_01].b, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, D_808E4EF4[eff->unk_01].r, D_808E4EF4[eff->unk_01].g,
                           D_808E4EF4[eff->unk_01].b, 0);
            Matrix_Translate(sGanondorf->unk_260.x, sGanondorf->unk_260.y, sGanondorf->unk_260.z, MTXMODE_NEW);
            Matrix_RotateY(eff->unk_48, MTXMODE_APPLY);
            Matrix_RotateZ(eff->unk_3C, MTXMODE_APPLY);
            Matrix_Scale(eff->scale, eff->scale, eff->scale, MTXMODE_APPLY);
            Matrix_RotateY(eff->unk_44, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 11074),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_808E4E98[eff->unk_01]));
            gSPDisplayList(POLY_XLU_DISP++, D_808F0EB0);
        }
    }
    eff = effFirst;
    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 5) {
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, eff->unk_2C);
            gDPSetEnvColor(POLY_XLU_DISP++, 100, 70, 0, 128);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, eff->unk_01 * 4, 0, 32, 64, 1, eff->unk_01 * 2,
                                        eff->unk_01 * -20, 32, 32));
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            Matrix_Scale(eff->scale, eff->scale * eff->unk_40, eff->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 11121),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_808F44C8);
        }
    }
    eff = effFirst;
    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 6) {
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, eff->unk_2C);
            gDPSetEnvColor(POLY_XLU_DISP++, 200, 100, 0, 128);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, eff->unk_01 * 4, 0, 32, 64, 1, eff->unk_01 * 2,
                                        eff->unk_01 * -20, 32, 32));
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            Matrix_Scale(eff->scale, eff->scale * eff->unk_40, eff->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 11165),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_808F45E0);
        }
    }
    eff = effFirst;
    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 7) {
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 170, eff->unk_2C);
            gDPSetEnvColor(POLY_XLU_DISP++, 150, 255, 0, 128);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (eff->unk_01 * 64), 0, 64, 32, 1,
                                        (eff->unk_01 * 64), 0, 64, 32));
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            Matrix_Scale((eff->scale * 200.0f) / 1500.0f, (eff->unk_40 * 200.0f) / 1500.0f,
                         (eff->scale * 200.0f) / 1500.0f, 1);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 11209),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_808F3630);
        }
    }
    eff = effFirst;
    for (i = 0; i < 150; i++, eff++) {
        if (eff->type == 8) {
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 150, 170, 0, eff->unk_2C);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 32, 1, eff->unk_01 * 2,
                                          eff->unk_01 * -20, 64, 64));
            Matrix_Translate(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(eff->scale, eff->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 11250),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_808F2BC8);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon.c", 11255);
}
*/
