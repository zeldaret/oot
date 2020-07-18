#include "z_boss_goma.h"

#define FLAGS 0x00000035

#define THIS ((BossGoma*)thisx)

void BossGoma_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGoma_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGoma_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGoma_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80916000(BossGoma* this, GlobalContext* globalCtx);
void func_809168B0(BossGoma* this, GlobalContext* globalCtx, f32 arg2, f32 arg3, s16 arg4);
void func_80916C9C(BossGoma* this, GlobalContext* globalCtx);
void func_80917D98(BossGoma* this, GlobalContext* globalCtx);
void func_80918C08(BossGoma* this, GlobalContext* globalCtx);
void func_80918D10(BossGoma* this, GlobalContext* globalCtx);
void func_80918D6C(BossGoma* this, GlobalContext* globalCtx);
void func_80918FBC(BossGoma* this, GlobalContext* globalCtx);
void func_80919054(BossGoma* this, GlobalContext* globalCtx);
void func_809190F8(BossGoma* this, GlobalContext* globalCtx);
void func_80919150(BossGoma* this, GlobalContext* globalCtx);
void func_80919278(BossGoma* this, GlobalContext* globalCtx);
void func_8091932C(BossGoma* this, GlobalContext* globalCtx);
void func_809193EC(BossGoma* this, GlobalContext* globalCtx);
void func_80919548(BossGoma* this, GlobalContext* globalCtx);
void func_809195A4(BossGoma* this, GlobalContext* globalCtx);
void func_8091960C(BossGoma* this, GlobalContext* globalCtx);
void func_80919704(BossGoma* this, GlobalContext* globalCtx);
void func_80919974(BossGoma* this, GlobalContext* globalCtx);
void func_80919A40(BossGoma* this, GlobalContext* globalCtx);
s32 func_8091A560(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
Gfx* func_8091AC18(GraphicsContext* gfxCtx);
void func_8091ADA8(BossGoma* this, GlobalContext* globalCtx, s16 arg2);

void func_80064520(GlobalContext*, CutsceneContext*);
u8 func_800635D0(s32);
void func_800628A4(s32 arg0, ColliderJntSph* collider);

extern AnimationHeader D_06000AE8;
extern AnimationHeader D_0600193C;
extern AnimationHeader D_06002360;
extern AnimationHeader D_060029F0;
extern AnimationHeader D_06004318;
extern AnimationHeader D_06004A20;
extern AnimationHeader D_06005330;
extern AnimationHeader D_060058C0;
extern AnimationHeader D_06005F28;
extern AnimationHeader D_060066DC;
extern AnimationHeader D_06006E60;
extern AnimationHeader D_0600B2FC;
extern AnimationHeader D_0600C468;
extern AnimationHeader D_0600CCD8;
extern AnimationHeader D_0600F70C;
extern AnimationHeader D_06010918;
extern AnimationHeader D_060113BC;
extern AnimationHeader D_06012678;

extern u8 D_060183A8[];
extern u8 D_060185A8[];
extern u8 D_060187A8[];
extern u8 D_060189A8[];
extern u8 D_060191A8[];
extern u8 D_060193A8[];

extern u32 D_06019BA8;
extern SkeletonHeader D_0601DCF8;
extern AnimationHeader D_0601EB4C;

const ActorInit Boss_Goma_InitVars = {
    ACTOR_BOSS_GOMA,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GOMA,
    sizeof(BossGoma),
    (ActorFunc)BossGoma_Init,
    (ActorFunc)BossGoma_Destroy,
    (ActorFunc)BossGoma_Update,
    (ActorFunc)BossGoma_Draw,
};

ColliderJntSphItemInit D_8091AE60[13] = {
    {
        { 0x03, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 5, { { 0, 0, 1200 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 11, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 12, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 13, { { 0, 0, 0 }, 12 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 14, { { 0, 0, 0 }, 25 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 22, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 23, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 29, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 57, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 64, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 74, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 75, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 81, { { 0, 0, 0 }, 15 }, 100 },
    },
};

ColliderJntSphInit D_8091B034 = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    13,
    D_8091AE60,
};

u8 D_8091B044[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00,
                    0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00,
                    0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00,
                    0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,
                    0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01,
                    0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01,
                    0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00,
                    0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00,
                    0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00,
                    0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01,
                    0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00,
                    0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00,
                    0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,
                    0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00,
                    0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00 };

u8 D_8091B144[] = { 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
                    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01 };

u8 D_8091B244[] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x28, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x0F, 0x15, 0x00, 0x00, 0x19, 0x00, 0x00, 0x1F,
                    0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2B, 0x30, 0x35,
                    0x00, 0x00, 0x00, 0x00, 0x2A, 0x2D, 0x35, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x0F,
                    0x15, 0x00, 0x00, 0x19, 0x00, 0x00, 0x1E, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };

InitChainEntry D_8091B2A8[] = {
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 1, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 63536, ICHAIN_STOP),
};

Vec3f D_8091B2B4 = { 0.0f, 0.0f, 0.0f };

Vec3f D_8091B2C0 = { 0.0f, -0.5f, 0.0f };

/*
Vec3f D_8091B2CC = {
    -150.0f, 0.0f, -350.0f
};
*/
f32 D_8091B2CC = -150.0f;
f32 D_8091B2D0 = 0.0f;
f32 D_8091B2D4 = -350.0f;

Vec3f D_8091B2D8 = { 0.0f, 0.0f, 0.0f };

Vec3f D_8091B2E4 = { 0.0f, 1.0f, 0.0f };

s32 D_8091B2F0 = 0xFFFFFFFF;
s32 D_8091B2F4 = 0x0064FFFF;

Vec3f D_8091B2F8 = { 0.0f, 0.0f, 0.0f };

Vec3f D_8091B304 = { 0.0f, -0.5f, 0.0f };

Vec3f D_8091B310 = { -150.0f, 0.0f, -350.0f };

Vec3f D_8091B31C[] = { { 255.0f, 17.0f, 0.0f },  { 0.0f, 255.0f, 170.0f }, { 50.0f, 50.0f, 50.0f },
                       { 0.0f, 255.0f, 170.0f }, { 0.0f, 255.0f, 170.0f }, { 0.0f, 255.0f, 170.0f } };

Vec3f D_8091B364[] = { { 255.0f, 17.0f, 0.0f },  { 0.0f, 255.0f, 170.0f }, { 50.0f, 50.0f, 50.0f },
                       { 0.0f, 255.0f, 170.0f }, { 0.0f, 0.0f, 255.0f },   { 255.0f, 17.0f, 0.0f } };

Vec3f D_8091B3AC[] = { { 255.0f, 17.0f, 0.0f },  { 255.0f, 255.0f, 255.0f }, { 50.0f, 50.0f, 50.0f },
                       { 0.0f, 255.0f, 170.0f }, { 0.0f, 255.0f, 170.0f },   { 0.0f, 255.0f, 170.0f } };

Vec3f D_8091B3F4 = { 0.0f, 0.0f, 0.0f };

Vec3f D_8091B400 = { 0.0f, 0.0f, 0.0f };

Vec3f D_8091B40C = { 0.0f, 300.0f, 2650.0f };

Vec3f D_8091B418 = { 0.0f, 0.0f, 0.0f };

void func_80915A10(void* arg0, u8* arg1, s16 arg2) {
    if (arg1[arg2]) {
        ((s16*)arg0)[arg2] = 0;
    }
}

void func_80915A40(void* arg0, u8* arg1, s16 arg2) {
    s16* temp_v0;

    if (arg1[arg2]) {
        temp_v0 = (s16*)((u8*)arg0 + (s16)(((arg2 & 0xF) * 2) + (arg2 & 0xF0) * 4) * 2);
        *(temp_v0 + 0) = 0;
        *(temp_v0 + 1) = 0;
        *(temp_v0 + 32) = 0;
        *(temp_v0 + 33) = 0;
    }
}

void func_80915A94(u8* arg0, s16 arg1) {
    func_80915A10(SEGMENTED_TO_VIRTUAL(D_060183A8), arg0, arg1);
    func_80915A10(SEGMENTED_TO_VIRTUAL(D_060185A8), arg0, arg1);
    func_80915A10(SEGMENTED_TO_VIRTUAL(D_060187A8), arg0, arg1);
    func_80915A10(SEGMENTED_TO_VIRTUAL(D_060191A8), arg0, arg1);
    func_80915A40(SEGMENTED_TO_VIRTUAL(D_060189A8), arg0, arg1);
    func_80915A40(SEGMENTED_TO_VIRTUAL(D_060193A8), arg0, arg1);
}

void BossGoma_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossGoma* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_8091B2A8);
    ActorShape_Init(&this->actor.shape, 4000.0f, ActorShadow_DrawFunc_Circle, 150.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0601DCF8, &D_06012678, NULL, NULL, 0);
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06012678);
    this->actor.shape.rot.x = -0x8000;
    this->unk_1F8 = 1.0f;
    this->unk_224 = 1.0f;
    this->unk_1FC = this->actor.posRot.pos.x;
    this->unk_200 = this->actor.posRot.pos.z;
    this->actor.posRot.pos.y = -300.0f;
    this->actor.gravity = 0.0f;
    func_80916000(this, globalCtx);
    this->actor.colChkInfo.health = 10;
    this->actor.colChkInfo.mass = 0xFF;
    Collider_InitJntSph(globalCtx, &this->unk_7BC);
    Collider_SetJntSph(globalCtx, &this->unk_7BC, &this->actor, &D_8091B034, &this->unk_7DC);
    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num) != 0) {
        Actor_Kill(&this->actor);
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, 0x5D, 0.0f, -640.0f, 0.0f, 0, 0, 0, 0);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x5F, 141.0f, -640.0f, -84.0f, 0, 0, 0, 0);
    }
}

void func_80915DF8(BossGoma* this, GlobalContext* globalCtx, s16 arg2, s16 arg3) {
    if ((arg2 == 0) || (arg2 == 1) || (arg2 == 3)) {
        func_80033260(globalCtx, &this->actor, &this->unk_278, 25.0f, arg3, 8.0f, 0x1F4, 10, 1);
    }
    if ((arg2 == 0) || (arg2 == 2) || (arg2 == 3)) {
        func_80033260(globalCtx, &this->actor, &this->unk_284, 25.0f, arg3, 8.0f, 0x1F4, 10, 1);
    }
    if (arg2 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DOWN);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_WALK);
    }
}

void BossGoma_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossGoma* this = THIS;
    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->unk_7BC);
}

void func_80915F38(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600B2FC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600B2FC.genericHeader),
                         2, -2.0f);
    this->actionFunc = func_80917D98;
    this->unk_1BE = 1;
    this->unk_1C0 = 0;
    this->unk_1C2 = 0;
    this->unk_1D2 = 0x4B0;
    this->unk_1D0 = 0;
    this->actor.flags &= -6;
    this->actor.speedXZ = 0.0f;
    this->actor.shape.unk_10 = 0.0f;
    Audio_SetBGM(0x100100FF);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DEAD);
}

void func_80916000(BossGoma* this, GlobalContext* globalCtx) {
    s16 tmp = SkelAnime_GetFrameCount(&D_06002360.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002360, 1.0f, 0.0f, tmp, 0, -15.0f);
    this->actionFunc = func_80916C9C;
    this->unk_1D0 = 0;
    this->unk_1BE = 1;
    globalCtx->envCtx.unk_BF = 4;
    globalCtx->envCtx.unk_D6 = 0xFF;
}

void func_809160A4(BossGoma* this) {
    f32 tmp = SkelAnime_GetFrameCount(&D_06012678.genericHeader);

    this->unk_1D2 = Math_Rand_S16Offset(0x14, 0x1E);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06012678, 1.0f, 0.0f, tmp, 0, -5.0f);
    this->actionFunc = func_809195A4;
}

void func_8091612C(BossGoma* this) {
    this->unk_1D2 = Math_Rand_S16Offset(0x14, 0x1E);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600193C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600193C.genericHeader),
                         0, -5.0f);
    this->actionFunc = func_8091960C;
}

void func_809161B0(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005F28, 1.0f, 0.0f, 0.0f, 2, -5.0f);
    this->actionFunc = func_80919278;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -2.0f;
}

void func_8091622C(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060058C0, 1.0f, 0.0f, 0.0f, 2, -5.0f);
    this->actionFunc = func_8091932C;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -2.0f;
}

void func_809162A8(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060113BC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060113BC.genericHeader),
                         0, -15.0f);
    this->actionFunc = func_809193EC;
    this->unk_1B2 = 0;
}

void func_8091631C(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060029F0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060029F0.genericHeader),
                         0, -10.0f);
    this->actionFunc = func_80919548;
    this->unk_1D2 = 0x46;
}

void func_80916394(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060066DC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060066DC.genericHeader),
                         0, -10.0f);
    this->actionFunc = func_80919974;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
}

void func_80916418(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002360, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06002360.genericHeader),
                         0, -5.0f);
    this->actionFunc = func_80919A40;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->unk_1D2 = Math_Rand_S16Offset(0x1E, 0x3C);
}

void func_809164AC(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0601EB4C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0601EB4C.genericHeader),
                         0, -5.0f);
    this->actionFunc = func_80919704;
    this->unk_1D2 = Math_Rand_S16Offset(0x46, 0x6E);
}

void func_80916530(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005F28, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06005F28.genericHeader),
                         2, -2.0f);
    this->actionFunc = func_809190F8;
    this->unk_21C = SkelAnime_GetFrameCount(&D_06005F28.genericHeader);
}

void func_809165C0(BossGoma* this) {
    f32 tmp;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_060058C0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060058C0.genericHeader),
                         2, -2.0f);
    tmp = SkelAnime_GetFrameCount(&D_060058C0.genericHeader);
    this->actionFunc = func_80919054;
    this->unk_21C = tmp;
    this->unk_21C = SkelAnime_GetFrameCount(&D_060058C0.genericHeader);
}

void func_80916668(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600CCD8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600CCD8.genericHeader),
                         0, -2.0f);
    this->actionFunc = func_80919150;
}

void func_809166D8(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600C468, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600C468.genericHeader),
                         2, -10.0f);
    this->actionFunc = func_80918C08;
}

void func_8091674C(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000AE8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000AE8.genericHeader),
                         0, -10.0f);
    this->actionFunc = func_80918D10;
    this->unk_1D2 = 0;
}

void func_809167C0(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06004318, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06004318.genericHeader),
                         2, -10.0f);
    this->actionFunc = func_80918D6C;
    this->unk_1D0 = 0;
    this->unk_1D2 = 0;
}

void func_8091683C(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06006E60, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06006E60.genericHeader),
                         2, -2.0f);
    this->actionFunc = func_80918FBC;
}

#ifdef NON_MATCHING
// Matches with the static data, but can't fix the rest of the data if I do that
void func_809168B0(BossGoma* this, GlobalContext* globalCtx, f32 arg2, f32 arg3, s16 arg4) {
    // static Vec3f D_8091B2C0 = {0.0f, -0.5f, 0.0f};
    s16 i;
    Vec3f* tmp = NULL;
    Vec3f a;
    Vec3f b;
    Vec3f c;

    D_8091B2C0.z += arg2;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, arg3, 0.5f, 2.0f);
    if (arg4) {
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y,
                             Math_Vec3f_Yaw(&this->actor.posRot.pos, (Vec3f*)&D_8091B2CC) + 0x8000, 3, 0x3E8);
    }

    if (func_800A56C8(&this->skelAnime, 9.0f)) {
        tmp = &this->unk_278;
    } else if (func_800A56C8(&this->skelAnime, 1.0f)) {
        tmp = &this->unk_284;
    }

    if (tmp != NULL) {
        for (i = 0; i < 5; i++) {
            a = D_8091B2B4;
            b = D_8091B2C0;
            c.x = Math_Rand_CenteredFloat(70.0f) + tmp->x;
            c.y = Math_Rand_ZeroFloat(30.0f) + tmp->y;
            c.z = Math_Rand_CenteredFloat(70.0f) + tmp->z;
            func_80029724(globalCtx, &c, &a, &b, 0, (s16)(Math_Rand_ZeroOne() * 5.0f) + 10, -1, 10, 0);
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_HIGH);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Goma/func_809168B0.s")
#endif

void func_80916AEC(BossGoma* this, GlobalContext* globalCtx) {
    s32 tmp;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    Player* player = PLAYER;

    this->unk_1D0 = 4;
    this->actor.flags |= 1;
    func_80064520(globalCtx, &globalCtx->csCtx);
    func_8002DF54(globalCtx, &this->actor, 1);
    this->unk_1BC = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
    Gameplay_ChangeCameraStatus(globalCtx, this->unk_1BC, 7);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06010918, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06010918.genericHeader),
                         2, 0.0f);

    this->unk_21C = SkelAnime_GetFrameCount(&D_06010918.genericHeader);

    this->actor.posRot.pos.x = -150.0f;
    this->actor.posRot.pos.z = -350.0f;

    player->actor.posRot.pos.x = 150.0f;
    player->actor.posRot.pos.z = 300.0f;

    player->actor.posRot.rot.y = player->actor.shape.rot.y = 0x8FA4;

    this->actor.posRot.rot.y = func_8002DA78(&this->actor, &PLAYER->actor) + 0x8000;
    this->unk_290.x = 90.0f;
    this->unk_290.z = 170.0f;
    this->unk_290.y = camera->eye.y + 20.0f;

    this->unk_1D2 = 0x32;

    this->unk_29C.x = this->actor.posRot.pos.x;
    this->unk_29C.y = this->actor.posRot.pos.y;
    this->unk_29C.z = this->actor.posRot.pos.z;
    Audio_SetBGM(0x100100FF);
}

#ifdef NON_MATCHING
// Stack, small regalloc
void func_80916C9C(BossGoma* this, GlobalContext* globalCtx) {
    f32 tmp;
    Player* player = PLAYER;
    Camera* camera;
    s32 tmp1;

    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);

    switch (this->unk_1D0) {
        case 0:
            if ((fabsf(player->actor.posRot.pos.x - 150.0f) < 60.0f) &&
                (fabsf(player->actor.posRot.pos.z - 350.0f) < 60.0f)) {
                if (gSaveContext.eventChkInf[7] & 1) {
                    func_80916AEC(this, globalCtx);
                    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_SHUTTER, 164.72f,
                                        -480.0f, 397.68f, 0, -0x705C, 0, 0x180);
                } else {
                    func_8002DF54(globalCtx, &this->actor, 8);
                    this->unk_1D0 = 1;
                }
            }
            break;
        case 1:
            func_80064520(globalCtx, &globalCtx->csCtx);
            this->unk_1BC = Gameplay_CreateSubCamera(globalCtx);
            osSyncPrintf("MAKE CAMERA !!!   1   !!!!!!!!!!!!!!!!!!!!!!!!!!\n");
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_1BC, 7);
            this->unk_1D0 = 2;

            this->actor.posRot.pos.x = -150.0f;
            this->actor.posRot.pos.y = -320.0f;
            this->actor.posRot.pos.z = -350.0f;

            player->actor.posRot.pos.x = 150.0f;
            player->actor.posRot.pos.z = 300.0f;

            this->unk_290.x = -350.0f;
            this->unk_290.y = -310.0f;
            this->unk_290.z = -350.0f;

            this->unk_29C.x = player->actor.posRot.pos.x;
            this->unk_29C.y = ((player->actor.posRot.pos.y - 200.0f) + 25.0f);
            this->unk_29C.z = player->actor.posRot.pos.z;

            this->unk_1D2 = 0x32;
            this->unk_1D4 = 0x50;
            this->unk_194 = 0;
            this->actor.flags &= -2;
        case 2:
            player->actor.posRot.pos.x = 150.0f;
            player->actor.posRot.pos.z = 300.0f;

            player->actor.posRot.rot.y = player->actor.shape.rot.y = 0x8FA4;

            player->actor.speedXZ = 0.0f;
            if (this->unk_1D2 == 0) {
                Math_SmoothScaleMaxF(&this->unk_290.x, player->actor.posRot.pos.x - 20.0f, 0.05f,
                                     this->unk_220 * 50.0f);
                Math_SmoothScaleMaxF(&this->unk_290.y, player->actor.posRot.pos.y + 25.0f, 0.1f,
                                     this->unk_220 * 130.0f);
                Math_SmoothScaleMaxF(&this->unk_290.z, player->actor.posRot.pos.z - 65.0f, 0.05f,
                                     this->unk_220 * 30.0f);
                Math_SmoothScaleMaxF(&this->unk_220, 0.3f, 1.0f, 0.005f);
                if (this->unk_1D4 == 0) {
                    Math_SmoothScaleMaxF(&this->unk_29C.y, player->actor.posRot.pos.y + 35.0f, 0.1f,
                                         this->unk_220 * 30.0f);
                }
                this->unk_29C.x = player->actor.posRot.pos.x;
                this->unk_29C.z = player->actor.posRot.pos.z;
            }
            func_800C04D8(globalCtx, 0, &this->unk_29C, &this->unk_290);
            if (this->unk_194 == 0xB0) {
                Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_SHUTTER, 164.72f, -480.0f,
                                    397.68f, 0, -0x705C, 0, 0x180);
            }
            if (this->unk_194 == 0xB0) {
                globalCtx->envCtx.unk_BF = 3;
                globalCtx->envCtx.unk_D6 = 0xFFFF;
            }
            if (this->unk_194 == 0xBE) {
                func_8002DF54(globalCtx, &this->actor, 2);
            }
            if (this->unk_194 >= 0xE4) {
                camera = Gameplay_GetCamera(globalCtx, 0);
                camera->eye = this->unk_290;
                camera->eyeNext = this->unk_290;
                camera->at = this->unk_29C;
                func_800C08AC(globalCtx, this->unk_1BC, 0);
                this->unk_1BC = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->unk_1D0 = 3;
            }
            break;
        case 3:
            if ((fabsf(this->actor.projectedPos.x) < 150.0f) && (fabsf(this->actor.projectedPos.y) < 250.0f) &&
                (this->actor.projectedPos.z < 800.0f) && (this->actor.projectedPos.z > 0.0f)) {
                this->unk_1C6++;
                Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
                Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor) + 0x8000, 2,
                                     0xBB8);
                this->unk_198 = this->unk_19A = this->unk_19E = this->unk_1A0 = 0;
            } else {
                this->unk_1C6 = 0;
                func_809168B0(this, globalCtx, 0.0f, -5.0f, 1);
            }
            if (this->unk_1C6 >= 0x10) {
                func_80916AEC(this, globalCtx);
            }
            break;
        case 4:
            if (func_800A56C8(&this->skelAnime, 15.0f) != 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DEMO_EYE);
            }
            if (this->unk_1D2 < 0x29) {
                Math_SmoothScaleMaxF(&this->unk_290.x, this->actor.posRot.pos.x + 22.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->unk_290.y, this->actor.posRot.pos.y - 25.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->unk_290.z, this->actor.posRot.pos.z + 45.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->unk_29C.x, this->actor.posRot.pos.x, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->unk_29C.y, this->actor.posRot.pos.y + 5.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->unk_29C.z, this->actor.posRot.pos.z, 0.2f, 100.0f);
                if (this->unk_1D2 == 0x1E) {
                    globalCtx->envCtx.unk_BF = 4;
                }
                if (this->unk_1D2 < 0x14) {
                    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
                    Math_SmoothScaleMaxF(&this->unk_1F8, 1.0f, 0.8f, 0.4f);
                    Math_SmoothScaleMaxF(&this->unk_224, 1.0f, 0.8f, 0.4f);
                    if (func_800A56C8(&this->skelAnime, 36.0f)) {
                        this->unk_1F8 = 1.8f;
                        this->unk_224 = 1.8f;
                    }
                    if (func_800A56C8(&this->skelAnime, this->unk_21C)) {
                        this->unk_1D0 = 5;
                        SkelAnime_ChangeAnim(&this->skelAnime, &D_06002360, 2.0f, 0.0f,
                                             SkelAnime_GetFrameCount(&D_06002360.genericHeader), 0, -5.0f);
                        this->unk_1D2 = 0x1E;
                        this->unk_220 = 0.0f;
                    }
                }
            }
            break;
        case 5:
            Math_SmoothScaleMaxF(&this->unk_290.x, (this->actor.posRot.pos.x + 8.0f) + 90.0f, 0.1f,
                                 this->unk_220 * 30.0f);
            Math_SmoothScaleMaxF(&this->unk_290.y, player->actor.posRot.pos.y, 0.1f, this->unk_220 * 30.0f);
            Math_SmoothScaleMaxF(&this->unk_290.z, (this->actor.posRot.pos.z + 45.0f) + 40.0f, 0.1f,
                                 this->unk_220 * 30.0f);
            Math_SmoothScaleMaxF(&this->unk_220, 1.0f, 1.0f, 0.05f);
            this->unk_29C.x = this->actor.posRot.pos.x;
            this->unk_29C.y = this->actor.posRot.pos.y;
            this->unk_29C.z = this->actor.posRot.pos.z;
            if (this->unk_1D2 < 0) {
                SkelAnime_FrameUpdateMatrix(&this->skelAnime);
                Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 1.0f, 2.0f);
            } else {
                func_809168B0(this, globalCtx, 0, -7.5f, 0);
            }
            if (this->unk_1D2 == 0) {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_0600193C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600193C.genericHeader), 0, -5.0f);
            }
            if (this->unk_1D2 == 0) {
                this->unk_1D0 = 9;
                this->actor.speedXZ = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = -2.0f;
                SkelAnime_ChangeAnim(&this->skelAnime, &D_0600F70C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600F70C.genericHeader), 2, -5.0f);
                player->actor.posRot.pos.x = 0.0f;
                player->actor.posRot.pos.z = -30.0f;
            }
            break;
        case 9:
            Math_SmoothScaleMaxF(&this->unk_290.x, (this->actor.posRot.pos.x + 8.0f) + 90.0f, 0.1f,
                                 this->unk_220 * 30.0f);
            Math_SmoothScaleMaxF(&this->unk_290.y, player->actor.posRot.pos.y + 10.0f, 0.1f, this->unk_220 * 30.0f);
            Math_SmoothScaleMaxF(&this->unk_290.z, (this->actor.posRot.pos.z + 45.0f) + 40.0f, 0.1f,
                                 this->unk_220 * 30.0f);
            this->unk_29C.x = this->actor.posRot.pos.x;
            this->unk_29C.y = this->actor.posRot.pos.y;
            this->unk_29C.z = this->actor.posRot.pos.z;
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 2, 0x7D0);
            if (this->actor.bgCheckFlags & 1) {
                this->unk_1D0 = 0x82;
                this->actor.velocity.y = 0.0f;
                SkelAnime_ChangeAnim(&this->skelAnime, &D_0600F70C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600F70C.genericHeader), 2, -2.0f);
                this->unk_21C = SkelAnime_GetFrameCount(&D_0600F70C.genericHeader);
                func_80915DF8(this, globalCtx, 0, 5);
                this->unk_1D2 = 0xF;
                func_800A9F6C(0.0f, 0xC8, 0x14, 0x14);
            }
            break;
        case 0x82:
            Math_SmoothScaleMaxF(&this->unk_290.x, (this->actor.posRot.pos.x + 8.0f) + 90.0f, 0.1f,
                                 this->unk_220 * 30.0f);
            Math_SmoothScaleMaxF(&this->unk_290.y, player->actor.posRot.pos.y + 10.0f, 0.1f, this->unk_220 * 30.0f);
            Math_SmoothScaleMaxF(&this->unk_290.z, (this->actor.posRot.pos.z + 45.0f) + 40.0f, 0.1f,
                                 this->unk_220 * 30.0f);
            Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 2, 0x7D0);
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            this->unk_29C.x = this->actor.posRot.pos.x;
            this->unk_29C.z = this->actor.posRot.pos.z;
            if (this->unk_1D2) {
                tmp = sinf((this->unk_1D2 * 3.1415f) * 0.5f);
                this->unk_29C.y = (this->unk_1D2 * tmp * 0.7f) + this->actor.posRot.pos.y;
            } else {
                Math_SmoothScaleMaxF(&this->unk_29C.y, this->actor.posRot2.pos.y, 0.1f, 10.0f);
            }

            if (func_800A56C8(&this->skelAnime, 40.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY1);
                if (!(gSaveContext.eventChkInf[7] & 1)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_06019BA8),
                                           0xA0, 0xB4, 0x80, 0x28);
                }
                Audio_SetBGM(0x1B);
                gSaveContext.eventChkInf[7] |= 1;
            }
            if (func_800A56C8(&this->skelAnime, this->unk_21C)) {
                this->unk_1D0 = 0x8C;
                SkelAnime_ChangeAnim(&this->skelAnime, &D_06000AE8, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06000AE8.genericHeader), 0, -10.0f);
                this->unk_1D2 = 0x14;
            }
            break;
        case 0x8C:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            Math_SmoothScaleMaxF(&this->unk_29C.y, this->actor.posRot2.pos.y, 0.1f, 10.0f);
            if (this->unk_1D2 == 0) {
                this->unk_1D2 = 0x1E;
                this->unk_1D0 = 0x96;
                Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
            }
            break;
        case 0x96:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            Math_SmoothScaleMaxMinF(&this->unk_290.x, this->actor.posRot.pos.x + 150.0f, 0.2f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_290.y, this->actor.posRot.pos.y + 20.0f, 0.2f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_290.z, this->actor.posRot.pos.z + 220.0f, 0.2f, 100.0f, 0.1f);
            if (this->unk_1D2 == 0) {
                camera = Gameplay_GetCamera(globalCtx, 0);
                camera->eye = this->unk_290;
                camera->eyeNext = this->unk_290;
                camera->at = this->unk_29C;
                func_800C08AC(globalCtx, this->unk_1BC, 0);
                this->unk_1BC = 0;
                func_809164AC(this);
                this->unk_1BE = 0;
                this->unk_196 = 0xC8;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
            }
            break;
    }

    if (this->unk_1BC != 0) {
        func_800C04D8(globalCtx, this->unk_1BC, &this->unk_29C, &this->unk_290);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Goma/func_80916C9C.s")
#endif

#ifdef NON_MATCHING
// Small regalloc in the middle
void func_80917D98(BossGoma* this, GlobalContext* globalCtx) {
    f32 spBC;
    f32 spB8;
    s16 tmp;
    Vec3f spA8 = D_8091B2D8;
    Vec3f sp9C = D_8091B2E4;
    s32 sp98 = D_8091B2F0;
    s32 sp94 = D_8091B2F4;
    Vec3f sp88 = D_8091B2F8;
    Vec3f sp7C = D_8091B304;
    Vec3f sp70;
    s16 i;
    Player* player = PLAYER;
    Vec3f sp5C;
    Camera* camera;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    if (func_800A56C8(&this->skelAnime, 107.0f)) {
        func_80915DF8(this, globalCtx, 0, 8);
        func_800A9F6C(0.0f, 0x96, 0x14, 0x14);
    }
    this->unk_1B8 = 2;
    this->unk_1B4 = 1;
    if (this->unk_1D2 == 0x3E9) {
        for (i = 0; i < 0x5A; i++) {
            if (D_8091B244[i] != 0) {
                this->unk_758[i] = 1;
            }
        }
    }

    if ((this->unk_1D2 < 0x4B0) && (this->unk_1D2 >= 0x44D) && !(this->unk_1D2 & 7)) {
        func_800299AC(globalCtx, &this->actor.posRot2.pos);
    }

    if ((this->unk_1D2 < 0x438) && (this->unk_1D0 < 3)) {
        if (this->unk_1D2 < 0x42E) {
            Audio_PlayActorSound2(&this->actor, 0x301C);
        }

        for (i = 0; i < 4; i++) {
            tmp = Math_Rand_ZeroOne() * 85.0f;
            if (this->unk_2A8[tmp].y < 10000.0f) {
                sp70.x = Math_Rand_CenteredFloat(20.0f) + this->unk_2A8[tmp].x;
                sp70.y = Math_Rand_CenteredFloat(10.0f) + this->unk_2A8[tmp].y;
                sp70.z = Math_Rand_CenteredFloat(20.0f) + this->unk_2A8[tmp].z;
                func_8002836C(globalCtx, &sp70, &spA8, &sp9C, &sp98, &sp94, 0x1F4, 10, 10);
            }
        }

        for (i = 0; i < 15; i++) {
            tmp = Math_Rand_ZeroOne() * 85.0f;
            if (this->unk_2A8[tmp].y < 10000.0f) {
                sp70.x = Math_Rand_CenteredFloat(20.0f) + this->unk_2A8[tmp].x;
                sp70.y = Math_Rand_CenteredFloat(10.0f) + this->unk_2A8[tmp].y;
                sp70.z = Math_Rand_CenteredFloat(20.0f) + this->unk_2A8[tmp].z;
                func_80029724(globalCtx, &sp70, &sp88, &sp7C, 0, (s16)(Math_Rand_ZeroOne() * 5.0f) + 10, -1, 10, 0);
            }
        }
    }

    switch (this->unk_1D0) {
        case 0:
            this->unk_1D0 = 1;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->unk_1BC = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_1BC, 7);
            camera = Gameplay_GetCamera(globalCtx, 0);
            this->unk_290.x = camera->eye.x;
            this->unk_290.y = camera->eye.y;
            this->unk_290.z = camera->eye.z;
            this->unk_29C.x = camera->at.x;
            this->unk_29C.y = camera->at.y;
            this->unk_29C.z = camera->at.z;

            spBC = this->unk_290.x - this->actor.posRot.pos.x;
            spB8 = this->unk_290.z - this->actor.posRot.pos.z;
            this->unk_228 = sqrtf((spBC * spBC) + (spB8 * spB8));
            this->unk_22C = Math_atan2f(spBC, spB8);
            this->unk_1D4 = 0x10E;
            break;

        case 1:
            spBC = Math_Sins(this->actor.shape.rot.y) * 100.0f;
            spB8 = Math_Coss(this->actor.shape.rot.y) * 100.0f;
            Math_SmoothScaleMaxF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x + spBC, 0.5f, 5.0f);
            Math_SmoothScaleMaxF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z + spB8, 0.5f, 5.0f);
            if (this->unk_1D2 < 0x438) {
                this->unk_1C2 = 1;
                for (i = 0; i < 4; i++) {
                    func_80915A94(D_8091B044, this->unk_1C0);
                    if (this->unk_1C0 < 0x100) {
                        this->unk_1C0++;
                    }
                }
            }
            if ((this->unk_1D2 < 0x42E) && !(this->unk_194 & 3) && (Math_Rand_ZeroOne() < 0.5f)) {
                this->unk_1C4 = 3;
            }
            this->unk_22C += 0.022f;
            Math_SmoothScaleMaxF(&this->unk_228, 150.0f, 0.1f, 5.0f);
            spBC = this->unk_228 * sinf(this->unk_22C);
            spB8 = this->unk_228 * cosf(this->unk_22C);
            Math_SmoothScaleMaxMinF(&this->unk_290.x, this->actor.posRot.pos.x + spBC, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_290.y, this->actor.posRot.pos.y + 20.0f, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_290.z, this->actor.posRot.pos.z + spB8, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_29C.x, this->unk_26C.x, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_29C.y, this->actor.posRot2.pos.y, 0.5f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_29C.z, this->unk_26C.z, 0.2f, 50.0f, 0.1f);
            if (this->unk_1D4 == 0x50) {
                Audio_SetBGM(0x21);
            }
            if (this->unk_1D4 == 0) {
                this->unk_1D0 = 2;
                Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
                this->unk_1D4 = 0x46;
                this->unk_1C0 = 0;
                this->unk_220 = 0.0f;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            }
            break;

        case 2:
            camera = Gameplay_GetCamera(globalCtx, 0);
            Math_SmoothScaleMaxMinF(&this->unk_290.x, camera->eye.x, 0.2f, this->unk_220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_290.y, camera->eye.y, 0.2f, this->unk_220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_290.z, camera->eye.z, 0.2f, this->unk_220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_29C.x, camera->at.x, 0.2f, this->unk_220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_29C.y, camera->at.y, 0.2f, this->unk_220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_29C.z, camera->at.z, 0.2f, this->unk_220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->unk_220, 1.0f, 1.0f, 0.02f, 0.0f);
            if (this->unk_1D4 == 0) {
                sp5C = D_8091B310;
                this->unk_1D4 = 0x1E;
                this->unk_1D0 = 3;

                for (i = 0; i < 10000; i++) {
                    if (((fabsf(sp5C.x - player->actor.posRot.pos.x) < 100.0f) &&
                         (fabsf(sp5C.z - player->actor.posRot.pos.z) < 100.0f)) ||
                        ((fabsf(sp5C.x - this->actor.posRot.pos.x) < 150.0f) &&
                         (fabsf(sp5C.z - this->actor.posRot.pos.z) < 150.0f))) {
                        sp5C.x = Math_Rand_CenteredFloat(400.0f) + -150.0f;
                        sp5C.z = Math_Rand_CenteredFloat(400.0f) + -350.0f;
                    } else {
                        break;
                    }
                }
                Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, sp5C.x,
                                    this->actor.posRot.pos.y, sp5C.z, 0, 0, 0, 0);
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
            }

            for (i = 0; i < 4; i++) {
                func_80915A94(D_8091B144, this->unk_1C0);
                if (this->unk_1C0 < 0x100) {
                    this->unk_1C0++;
                }
            }
            break;
        case 3:
            for (i = 0; i < 4; i++) {
                func_80915A94(D_8091B144, this->unk_1C0);
                if (this->unk_1C0 < 0x100) {
                    this->unk_1C0++;
                }
            }
            if (this->unk_1D4 == 0) {
                if (Math_SmoothScaleMaxMinF(&this->actor.scale.y, 0, 1.0f, 0.00075f, 0.0f) <= 0.001f) {
                    camera = Gameplay_GetCamera(globalCtx, 0);
                    camera->eye = this->unk_290;
                    camera->eyeNext = this->unk_290;
                    camera->at = this->unk_29C;
                    func_800C08AC(globalCtx, this->unk_1BC, 0);
                    this->unk_1BC = 0;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 7);
                    Actor_Kill(&this->actor);
                }
                this->actor.scale.z = this->actor.scale.y;
                this->actor.scale.x = this->actor.scale.y;
            }
            break;
    }

    if (this->unk_1BC != 0) {
        func_800C04D8(globalCtx, this->unk_1BC, &this->unk_29C, &this->unk_290);
    }

    if (this->unk_1C4 != 0) {
        this->unk_1C4--;
        globalCtx->envCtx.unk_8C[0] += 0x28;
        globalCtx->envCtx.unk_8C[1] += 0x28;
        globalCtx->envCtx.unk_8C[2] += 0x50;
        globalCtx->envCtx.unk_98[0] += 0xA;
        globalCtx->envCtx.unk_98[1] += 0xA;
        globalCtx->envCtx.unk_98[2] += 0x14;
    } else {
        globalCtx->envCtx.unk_8C[0] -= 0x14;
        globalCtx->envCtx.unk_8C[1] -= 0x14;
        globalCtx->envCtx.unk_8C[2] -= 0x28;
        globalCtx->envCtx.unk_98[0] -= 5;
        globalCtx->envCtx.unk_98[1] -= 5;
        globalCtx->envCtx.unk_98[2] -= 0xA;
    }

    if (globalCtx->envCtx.unk_8C[0] >= 0xC9) {
        globalCtx->envCtx.unk_8C[0] = 0xC8;
    }
    if (globalCtx->envCtx.unk_8C[1] >= 0xC9) {
        globalCtx->envCtx.unk_8C[1] = 0xC8;
    }
    if (globalCtx->envCtx.unk_8C[2] >= 0xC9) {
        globalCtx->envCtx.unk_8C[2] = 0xC8;
    }
    if (globalCtx->envCtx.unk_98[0] >= 0x47) {
        globalCtx->envCtx.unk_98[0] = 0x46;
    }
    if (globalCtx->envCtx.unk_98[1] >= 0x47) {
        globalCtx->envCtx.unk_98[1] = 0x46;
    }
    if (globalCtx->envCtx.unk_98[2] >= 0x8D) {
        globalCtx->envCtx.unk_98[2] = 0x8C;
    }
    if (globalCtx->envCtx.unk_8C[0] < 0) {
        globalCtx->envCtx.unk_8C[0] = 0;
    }
    if (globalCtx->envCtx.unk_8C[1] < 0) {
        globalCtx->envCtx.unk_8C[1] = 0;
    }
    if (globalCtx->envCtx.unk_8C[2] < 0) {
        globalCtx->envCtx.unk_8C[2] = 0;
    }
    if (globalCtx->envCtx.unk_98[0] < 0) {
        globalCtx->envCtx.unk_98[0] = 0;
    }
    if (globalCtx->envCtx.unk_98[1] < 0) {
        globalCtx->envCtx.unk_98[1] = 0;
    }
    if (globalCtx->envCtx.unk_98[2] < 0) {
        globalCtx->envCtx.unk_98[2] = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Goma/func_80917D98.s")
#endif

void func_80918C08(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    if ((this->skelAnime.animCurrentFrame >= 19.333334f) && (this->skelAnime.animCurrentFrame <= 30.0f)) {
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 3, 0xBB8);
    }
    if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_0600C468.genericHeader))) {
        if (this->actor.xzDistFromLink < 250.0f) {
            func_8091674C(this);
        } else {
            func_809164AC(this);
        }
    }
    this->unk_1B4 = 2;
    this->unk_1B8 = 0;
}

void func_80918D10(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1D2 == 0) {
        func_809167C0(this);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY1);
    }
    this->unk_1B4 = 2;
    this->unk_1B8 = 0;
}

void func_80918D6C(BossGoma* this, GlobalContext* globalCtx) {
    s16 i;

    this->actor.flags |= 0x1000000;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    switch (this->unk_1D0) {
        case 0:
            for (i = 0; i < this->unk_7BC.count; i++) {
                if ((this->unk_7BC.list[i].body.toucherFlags & 2) != 0) {
                    this->unk_1D2 = 10;
                    break;
                }
            }
            if (func_800A56C8(&this->skelAnime, 10.0f)) {
                func_80915DF8(this, globalCtx, 3, 5);
                func_80033E88(&this->actor, globalCtx, 5, 0xF);
            }
            if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_06004318.genericHeader))) {
                this->unk_1D0 = 1;
                SkelAnime_ChangeAnim(&this->skelAnime, &D_06004A20, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06004A20.genericHeader), 0, -1.0f);
                if (this->unk_1D2 == 0) {
                    this->unk_1D4 = (s16)(Math_Rand_ZeroOne() * 30.0f) + 0x1E;
                }
            }
            break;
        case 1:
            if (func_800A56C8(&this->skelAnime, 3.0f) != 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_UNARI2);
            }
            if (this->unk_1D4 == 0) {
                this->unk_1D0 = 2;
                SkelAnime_ChangeAnim(&this->skelAnime, &D_06005330, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06005330.genericHeader), 2, -5.0f);
            }
            break;
        case 2:
            if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_06005330.genericHeader))) {
                func_809160A4(this);
            }
            break;
    }

    this->unk_1B4 = 2;
    this->unk_1B8 = 0;
}

void func_80918FBC(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, SkelAnime_GetFrameCount(&D_06006E60.genericHeader))) {
        func_80916668(this);
        this->unk_196 = 0;
    }
    this->unk_1B4 = 1;
    Math_SmoothScaleMaxF(&this->unk_1F8, 0.4f, 0.5f, 0.2f);
    this->unk_1B8 = 5;
}

void func_80919054(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, this->unk_21C)) {
        func_80916668(this);
        this->unk_1D6 = 0x5C;
        this->unk_196 = 0;
        this->unk_1D2 = 0x96;
    }
    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 55.0f, 4, 8.0f, 0x1F4, 0xA, 1);
}

void func_809190F8(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, this->unk_21C)) {
        func_809160A4(this);
        this->unk_196 = 0xC8;
    }
}

void func_80919150(BossGoma* this, GlobalContext* globalCtx) {
    if (this->unk_1D6 < 0x5B) {
        Audio_PlayActorSound2(&this->actor, 0x301E);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1D4 == 1) {
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 55.0f, 4, 8.0f, 0x1F4, 0xA, 1);
    }
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 1.0f);
    if (this->unk_1D2 == 0) {
        func_809164AC(this);
        if ((this->unk_196 == 0) && (this->actor.xzDistFromLink < 130.0f)) {
            this->unk_1D4 = 0x14;
        }
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    this->unk_1B4 = 1;
    Math_SmoothScaleMaxF(&this->unk_1F8, 0.4f, 0.5f, 0.2f);
    this->unk_1B8 = 4;
}

void func_80919278(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 2, 0x7D0);
    if (this->actor.bgCheckFlags & 1) {
        func_80916530(this);
        this->actor.velocity.y = 0.0f;
        func_80915DF8(this, globalCtx, 0, 8);
        func_80033E88(&this->actor, globalCtx, 5, 0xF);
    }
}

void func_8091932C(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 3, 0x7D0);
    if (this->actor.bgCheckFlags & 1) {
        func_809165C0(this);
        this->actor.velocity.y = 0.0f;
        func_80915DF8(this, globalCtx, 0, 8);
        func_80033E88(&this->actor, globalCtx, 0xA, 0xF);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM1);
    }
}

void func_809193EC(BossGoma* this, GlobalContext* globalCtx) {
    s16 i;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!(this->unk_194 & 0xF)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_UNARI);
    }
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    this->unk_1B2++;
    switch (this->unk_1B2) {
        case 0x18:
            this->unk_1AA[3] = 10;
            break;
        case 0x20:
            this->unk_1AA[2] = 10;
            break;
        case 0x28:
            this->unk_1AA[1] = 10;
            break;
        case 0x30:
            this->unk_1AA[0] = 10;
            break;
    }
    if (this->unk_1AA[0] == 2) {
        for (i = 0; i < 3; i++) {
            if (this->unk_1A4[i] == 0) {
                func_8091ADA8(this, globalCtx, i);
                break;
            }
        }
        if (((this->unk_1A4[0] == 0) || (this->unk_1A4[1] == 0)) || (this->unk_1A4[2] == 0)) {
            this->unk_1B2 = 0x17;
        }
    }
    if (this->unk_1B2 >= 0x40) {
        func_8091612C(this);
    }
    this->unk_1B4 = 1;
}

void func_80919548(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1D2 == 0) {
        func_809162A8(this);
    }
    this->unk_1B4 = 1;
    this->unk_1B8 = 0;
}

void func_809195A4(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    if (this->unk_1D2 == 0) {
        func_809164AC(this);
    }
}

void func_8091960C(BossGoma* this, GlobalContext* globalCtx) {
    s16 i;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    if (this->unk_1D2 == 0) {
        if ((this->unk_1A4[0] == 0) && (this->unk_1A4[1] == 0) && (this->unk_1A4[2] == 0)) {
            func_8091631C(this);
            return;
        }
        if ((this->unk_1A4[0] < 0) && (this->unk_1A4[1] < 0) && (this->unk_1A4[2] < 0)) {
            func_809161B0(this);
            return;
        }

        for (i = 0; i < 3; i++) {
            if (!this->unk_1A4[i]) {
                func_809162A8(this);
                return;
            }
        }
        func_80916418(this);
    }
}

void func_80919704(BossGoma* this, GlobalContext* globalCtx) {
    s16 tmp;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 1.0f)) {
        this->unk_1B6 = 1;
    } else if (func_800A56C8(&this->skelAnime, 30.0f)) {
        this->unk_1B6 = 1;
    } else if (func_800A56C8(&this->skelAnime, 15.0f)) {
        this->unk_1B6 = 1;
    } else if (func_800A56C8(&this->skelAnime, 16.0f)) {
        this->unk_1B6 = 1;
    }

    if (func_800A56C8(&this->skelAnime, 15.0f)) {
        func_80915DF8(this, globalCtx, 1, 3);
    } else if (func_800A56C8(&this->skelAnime, 30.0f)) {
        func_80915DF8(this, globalCtx, 2, 3);
    }

    if ((this->unk_194 & 0x3F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY2);
    }

    if (this->unk_1B6 == 0) {
        tmp = func_8002DA78(&this->actor, &PLAYER->actor);
        if (this->unk_196) {
            this->unk_196--;
            if (this->actor.xzDistFromLink < 150.0f) {
                func_809166D8(this);
            }
            Math_SmoothScaleMaxF(&this->actor.speedXZ, 10.0f / 3.0f, 0.5f, 2.0f);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, tmp, 5, 0x3E8);
        } else {
            if (this->unk_1D4) {
                Math_SmoothScaleMaxF(&this->actor.speedXZ, -10.0f, 0.5f, 2.0f);
                this->skelAnime.animPlaybackSpeed = -3.0f;
                if (this->unk_1D4 == 1) {
                    this->actor.speedXZ = 0.0f;
                }
            } else {
                Math_SmoothScaleMaxF(&this->actor.speedXZ, (10.0f / 3.0f) * 2.0f, 0.5f, 2.0f);
                this->skelAnime.animPlaybackSpeed = 2.0f;
                tmp += 0x8000;
            }
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, tmp, 3, 0x9C4);
        }
    }
    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->actor.bgCheckFlags & 8) {
        func_80916394(this);
    }
    if (!this->unk_1D2 && this->unk_196) {
        func_809160A4(this);
    }
}

void func_80919974(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!(this->unk_194 & 7)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CLIM);
    }
    Math_SmoothScaleMaxF(&this->actor.velocity.y, 5.0f, 0.5f, 2.0f);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, -0x4000, 2, 0x7D0);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, this->actor.wallPolyRot + 0x8000, 2, 0x5DC);
    if (this->actor.posRot.pos.y > -320.0f) {
        func_80916418(this);
        this->unk_1A4[0] = this->unk_1A4[1] = this->unk_1A4[2] = 0;
    }
}

#ifdef NON_MATCHING
// regalloc, definitely wrong. Same register used throughout the original
void func_80919A40(BossGoma* this, GlobalContext* globalCtx) {
    f32 sp2C;
    f32 sp28;
    s16 tmp1;

    func_809168B0(this, globalCtx, 0.0f, -5.0f, 1);
    if (!(this->unk_194 & 0x3F)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY2);
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, -0x8000, 3, 0x3E8);
    if (this->actor.bgCheckFlags & 8) {
        tmp1 = this->actor.shape.rot.y + 0x8000;

        /*
        if (tmp1 < this->actor.wallPolyRot) {
            tmp1 += (s16)(this->actor.wallPolyRot - tmp1) / 2;
        } else {
            tmp1 = this->actor.wallPolyRot + ((s16)(tmp1 - this->actor.wallPolyRot) / 2);
        }
        */

        tmp1 = (tmp1 < this->actor.wallPolyRot) ? tmp1 + ((s16)(this->actor.wallPolyRot - tmp1) / 2)
                                                : this->actor.wallPolyRot + ((s16)(tmp1 - this->actor.wallPolyRot) / 2);

        sp28 = Math_Rand_CenteredFloat(2.0f);
        sp2C = Math_Rand_ZeroOne();
        this->actor.posRot.pos.z = (sp28 + Math_Coss(tmp1) * (5.0f + (sp2C * 5.0f))) + this->actor.posRot.pos.z;
        sp28 = Math_Rand_CenteredFloat(2.0f);
        sp2C = Math_Rand_ZeroOne();
        this->actor.posRot.pos.x = (sp28 + Math_Sins(tmp1) * (5.0f + (sp2C * 5.0f))) + this->actor.posRot.pos.x;
    }
    if (this->unk_1D2 == 0) {
        if ((fabsf(-150.0f - this->actor.posRot.pos.x) < 100.0f) &&
            (fabsf(-350.0f - this->actor.posRot.pos.z) < 100.0f)) {
            func_8091612C(this);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Goma/func_80919A40.s")
#endif

void func_80919C38(BossGoma* this, GlobalContext* globalCtx) {
    s16 tmp2;
    s16 tmp;
    Player* player;

    if (this->unk_1BE == 0) {
        player = PLAYER;
        if (this->unk_1B4 == 0) {
            if (player->unk_A73 != 0) {
                PLAYER->unk_A73 = 0;
                this->unk_19C = 0xC;
            }
            if (!(this->unk_194 & 0xF) && (Math_Rand_ZeroOne() < 0.3f)) {
                this->unk_19C = 7;
            }
        }
        if ((this->unk_1A4[0] > 0) || (this->unk_1A4[1] > 0) || (this->unk_1A4[2] > 0)) {
            this->unk_19C = 7;
        }
        if (this->unk_19C) {
            this->unk_19C--;
            Math_SmoothScaleMaxS(&this->unk_198, -0xA98, 1, 0x7D0);
            Math_SmoothScaleMaxS(&this->unk_19A, 0x1600, 1, 0x7D0);
        } else {
            Math_SmoothScaleMaxS(&this->unk_198, 0, 1, 0x7D0);
            Math_SmoothScaleMaxS(&this->unk_19A, 0, 1, 0x7D0);
        }
        if (!(this->unk_1B4 == 1)) {
            tmp = func_8002DA78(&this->actor, &PLAYER->actor) - this->actor.shape.rot.y;
            tmp2 = func_8002DAE0(&this->actor, &PLAYER->actor) - this->actor.shape.rot.x;
            if ((this->actor.shape.rot.x >= 0x4001) || (this->actor.shape.rot.x < -0x4000)) {
                tmp = -(s16)(tmp + 0x8000);
                tmp2 = -0xBB8;
            }
            if (tmp >= 0x1771) {
                tmp = 0x1770;
            }
            if (tmp < -0x1770) {
                tmp = -0x1770;
            }

            Math_SmoothScaleMaxS(&this->unk_1A0, tmp, 3, 0x7D0);
            Math_SmoothScaleMaxS(&this->unk_19E, tmp2, 3, 0x7D0);
        } else {
            Math_SmoothScaleMaxS(&this->unk_1A0, 0, 3, 0x3E8);
            Math_SmoothScaleMaxS(&this->unk_19E, 0, 3, 0x3E8);
        }
        Math_SmoothScaleMaxF(&this->unk_1F8, 1.0f, 0.2f, 0.07f);
        Math_SmoothScaleMaxF(&this->unk_224, 1.0f, 0.2f, 0.07f);
    }
}

void func_80919E80(BossGoma* this) {
    s16 i;

    if (!(this->unk_194 & 0x7F)) {
        this->unk_1A2++;
        if (this->unk_1A2 >= 3) {
            this->unk_1A2 = 0;
        }
    }
    for (i = 0; i < 4; i++) {
        if (this->unk_1AA[i]) {
            this->unk_1AA[i]--;
            Math_SmoothScaleMaxF(&this->unk_1E8[i], 1.5f, 0.2f, 0.1f);
        } else {
            Math_SmoothScaleMaxF(&this->unk_1E8[i], 1.0f, 0.2f, 0.1f);
        }
    }
}

void func_80919F8C(BossGoma* this, GlobalContext* globalCtx) {
    ColliderBody* sp2C;
    u8 tmp;

    if (this->unk_1BA != 0) {
        this->unk_1BA--;
        return;
    }

    sp2C = this->unk_7BC.list->body.acHitItem;

    if ((this->unk_19C == 0) && (this->actionFunc != func_809193EC) && (this->unk_7BC.list->body.bumperFlags & 2)) {
        this->unk_7BC.list->body.bumperFlags &= ~2;
        if ((this->actionFunc == func_80919A40) || (this->actionFunc == func_8091960C) ||
            (this->actionFunc == func_80919548)) {
            func_8091622C(this);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM2);
            return;
        }

        if (this->actionFunc == func_80919150) {
            tmp = func_800635D0(sp2C->toucher.flags);
            if (tmp) {
                this->actor.colChkInfo.health -= tmp;
                if ((s8)this->actor.colChkInfo.health > 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM1);
                    func_8091683C(this);
                    func_800299AC(globalCtx, &this->actor.posRot2.pos);
                } else {
                    func_80915F38(this, globalCtx);
                    func_80032C7C(globalCtx, &this->actor);
                }
                this->unk_1BA = 10;
                return;
            }
        }
        if (((this->actionFunc != func_80919150) && this->unk_196) && (sp2C->toucher.flags & 5)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM2);
            func_800F8D04(0x380E);
            this->unk_1BA = 10;
            func_80916668(this);
            this->unk_1D6 = 100;
            if (sp2C->toucher.flags & 1) {
                this->unk_1D2 = 0x28;
            } else {
                this->unk_1D2 = 0x5A;
            }
            this->unk_1D4 = 4;
            func_80033E88(&this->actor, globalCtx, 4, 0xC);
        }
    }
}

void func_8091A16C(BossGoma* this) {
    Vec3f* tmp;

    if ((this->unk_1B8 == 1) && (this->unk_194 & 0x10)) {
        Math_SmoothScaleMaxF(&this->unk_204.x, 50.0f, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->unk_204.y, 50.0f, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->unk_204.z, 50.0f, 0.5f, 20.0f);
    } else if (this->unk_1BA) {
        if (this->unk_1BA & 2) {
            this->unk_204.x = D_8091B364[this->unk_1B8].x;
            this->unk_204.y = D_8091B364[this->unk_1B8].y;
            this->unk_204.z = D_8091B364[this->unk_1B8].z;
            return;
        } else {
            tmp = &D_8091B31C[this->unk_1B8];
            this->unk_204.x = tmp->x;
            this->unk_204.y = tmp->y;
            this->unk_204.z = tmp->z;
            return;
        }
    } else {
        Math_SmoothScaleMaxF(&this->unk_204.x, D_8091B31C[this->unk_1B8].x, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->unk_204.y, D_8091B31C[this->unk_1B8].y, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->unk_204.z, D_8091B31C[this->unk_1B8].z, 0.5f, 20.0f);
    }
}

void func_8091A2E8(BossGoma* this) {
    Math_SmoothScaleMaxF(&this->unk_210.x, D_8091B3AC[this->unk_1B8].x, 0.5f, 20.0f);
    Math_SmoothScaleMaxF(&this->unk_210.y, D_8091B3AC[this->unk_1B8].y, 0.5f, 20.0f);
    Math_SmoothScaleMaxF(&this->unk_210.z, D_8091B3AC[this->unk_1B8].z, 0.5f, 20.0f);
}

void BossGoma_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossGoma* this = THIS;
    s32 pad;

    this->unk_1B8 = 1;
    this->unk_194++;
    if (this->unk_1D2 != 0) {
        this->unk_1D2--;
    }
    if (this->unk_1D4 != 0) {
        this->unk_1D4--;
    }
    if (this->unk_1D6 != 0) {
        this->unk_1D6--;
    }
    this->unk_1B4 = 0;
    this->actionFunc(this, globalCtx);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (this->unk_1B6 == 0) {
        Actor_MoveForward(&this->actor);
    } else {
        this->unk_1B6 = 0;
    }
    if (this->actor.posRot.pos.y < -400.0f) {
        func_8002E4B4(globalCtx, &this->actor, 30.0f, 30.0f, 80.0f, 5);
    } else {
        func_8002E4B4(globalCtx, &this->actor, 0.0f, 30.0f, 80.0f, 1);
    }
    func_80919C38(this, globalCtx);
    func_8091A16C(this);
    func_8091A2E8(this);
    func_80919E80(this);

    if (this->unk_1BE == 0) {
        if (this) {};

        func_80919F8C(this, globalCtx);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk_7BC.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_7BC.base);

        if ((this->actionFunc != func_80919150) && (this->actionFunc != func_80918FBC) &&
            ((this->actionFunc != func_80919704) || (this->unk_1D4 == 0))) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->unk_7BC.base);
        }
    }
}

#ifdef NON_MATCHING
// gDPSetEnvColor macros
s32 func_8091A560(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    BossGoma* this = THIS;
    s32 ret = 0;

    {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_goma.c", 4685);

        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, (s8)this->unk_204.x, (s8)this->unk_204.y, (s8)this->unk_204.z, 0xFF);

        if (this->unk_758[limbIndex] >= 2) {
            *dList = NULL;
        }

        switch (limbIndex) {
            case 5:
                if ((this->unk_1B4 == 0) && (this->unk_198 < -0xA8C)) {
                    *dList = NULL;
                    break;
                }
                if (this->unk_1BA != 0) {
                    gDPSetEnvColor(gfxCtx->polyOpa.p++, (s8)(Math_Rand_ZeroOne() * 255.0f),
                                   (s8)(Math_Rand_ZeroOne() * 255.0f), (s8)(Math_Rand_ZeroOne() * 255.0f), 0x3F);
                } else {
                    gDPSetEnvColor(gfxCtx->polyOpa.p++, (s8)this->unk_210.x, (s8)this->unk_210.y, (s8)this->unk_210.z,
                                   0x3F);
                }
                break;
            case 32:
                rot->x += this->unk_198;
                break;
            case 35:
                rot->x += this->unk_19A;
                break;
            case 38:
                rot->x += this->unk_19E;
                rot->y += this->unk_1A0;
                break;
            case 39:
                if ((this->unk_1B4 == 0) && (this->unk_198 < -0xA8C)) {
                    *dList = 0;
                    break;
                }
                if (this->unk_1B8 == 2) {
                    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x32, 0x32, 0x32, 0xFF);
                } else {
                    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, 0xFF);
                }
                Matrix_JointPosition(pos, rot);
                if (*dList != NULL) {
                    Matrix_Push();
                    Matrix_Scale(this->unk_1F8, this->unk_224, 1.0f, MTXMODE_APPLY);
                    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4815),
                              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gSPDisplayList(gfxCtx->polyOpa.p++, *dList);
                    Matrix_Pull();
                }
                ret = 1;
                break;
            case 11:
            case 12:
            case 13:
            case 14:
                Matrix_JointPosition(pos, rot);
                if (*dList != NULL) {
                    Matrix_Push();
                    Matrix_Scale(*(f32*)(&this->unk_1BC + limbIndex * 2), *(f32*)(&this->unk_1BC + limbIndex * 2),
                                 *(f32*)(&this->unk_1BC + limbIndex * 2), MTXMODE_APPLY);
                    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4836),
                              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gSPDisplayList(gfxCtx->polyOpa.p++, *dList);
                    Matrix_Pull();
                }
                ret = 1;
                break;
        }
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_goma.c", 4858);
    }

    return ret;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Goma/func_8091A560.s")
#endif

void func_8091A9E8(GlobalContext* globalCtx, s32 arg1, Gfx** arg2, Vec3s* arg3, Actor* thisx) {
    Vec3f a;
    Vec3s b;
    s32 pad;
    BossGoma* tmp;
    BossGoma* this = THIS;
    MtxF c;

    if (arg1 == 0xB) {
        Matrix_MultVec3f(&D_8091B3F4, &this->unk_260);
    } else if (arg1 == 0xE) {
        Matrix_MultVec3f(&D_8091B3F4, &this->unk_26C);
    } else if (arg1 == 0x5) {
        Matrix_MultVec3f(&D_8091B40C, &this->actor.posRot2.pos);
    } else if (arg1 == 0x15) {
        Matrix_MultVec3f(&D_8091B400, &this->unk_278);
    } else if (arg1 == 0x49) {
        Matrix_MultVec3f(&D_8091B400, &this->unk_284);
    }

    if (this->unk_1B8 == 2) {
        if (*arg2 != NULL) {
            Matrix_MultVec3f(&D_8091B400, &this->unk_2A8[arg1]);
        } else {
            this->unk_2A8[arg1].y = 10000.0f;
        }
    }

    if (this->unk_758[arg1] == 1) {
        this->unk_758[arg1] = 2;
        Matrix_MultVec3f(&D_8091B418, &a);
        Matrix_Get(&c);
        func_800D20CC(&c, &b, MTXMODE_NEW);
        tmp = (BossGoma*)Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GOMA, a.x, a.y,
                                             a.z, b.x, b.y, b.z, D_8091B244[arg1] + 0x64);
        if (tmp != NULL) {
            tmp->unk_308 = *arg2;
            tmp->actor.objBankIndex = this->actor.objBankIndex;
        }
    }
    func_800628A4(arg1, &this->unk_7BC);
}

Gfx* func_8091ABEC(GraphicsContext* gfxCtx) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayList = displayListHead = Graph_Alloc(gfxCtx, 8);
    gSPEndDisplayList(displayListHead++);

    return displayList;
}

Gfx* func_8091AC18(GraphicsContext* gfxCtx) {
    Gfx* displayListHead;
    Gfx* displayList;

    displayListHead = displayList = Graph_Alloc(gfxCtx, 0x20);
    gDPPipeSync(displayListHead++);
    gDPSetRenderMode(displayListHead++, G_RM_PASS, G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(displayListHead++, G_CULL_BACK);
    if (0) {};
    gSPEndDisplayList(displayListHead++);
    return displayList;
}

void BossGoma_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossGoma* this = THIS;

    {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_goma.c", 4991);
        func_80093D18(globalCtx->state.gfxCtx);
        Matrix_Translate(0.0f, -4000.0f, 0.0f, MTXMODE_APPLY);

        if (this->unk_1C2) {
            gSPSegment(gfxCtx->polyOpa.p++, 0x08, func_8091AC18(globalCtx->state.gfxCtx));
        } else {
            gSPSegment(gfxCtx->polyOpa.p++, 0x08, func_8091ABEC(globalCtx->state.gfxCtx));
        }

        SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_8091A560, func_8091A9E8,
                       &this->actor);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_goma.c", 5012);
    }
}

void func_8091ADA8(BossGoma* this, GlobalContext* globalCtx, s16 arg2) {
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GOMA, this->unk_260.x,
                        this->unk_260.y - 50.0f, this->unk_260.z, 0, arg2 * 0x5555, 0, arg2);
    this->unk_1A4[arg2] = 1;
}
