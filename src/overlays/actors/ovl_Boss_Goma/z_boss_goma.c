#include "z_boss_goma.h"

#define FLAGS 0x00000035

#define THIS ((BossGoma*)thisx)

void BossGoma_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGoma_Destroy(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_Update(BossGoma* this, GlobalContext* globalCtx);
void BossGoma_Draw(BossGoma* this, GlobalContext* globalCtx);

void func_80916000(BossGoma* this, GlobalContext* globalCtx);
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
void func_8091ADA8(BossGoma* this, GlobalContext* globalCtx, s16 arg2);

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
extern AnimationHeader D_0601EB4C;
extern s16 D_060183A8[];
extern s16 D_060185A8[];
extern s16 D_060187A8[];
extern s16 D_060189A8[];
extern s16 D_060191A8[];
extern s16 D_060193A8[];
extern UNK_TYPE D_06019BA8[];
extern SkeletonHeader D_0601DCF8;

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

void func_80915A10(s16* arg0, u8* arg1, s16 arg2) {
    if (arg1[arg2] != 0) {
        arg0[arg2] = 0;
    }
}

void func_80915A40(s16* arg0, u8* arg1, s16 arg2) {
    s16* temp_v0;

    if (arg1[arg2] != 0) {
        // equivalent but doesnt match:
        // temp_v0 = &arg0[(s16)((arg2 & 0xF) * 2 + (arg2 & 0xF0) * 4)];
        temp_v0 = (s32)arg0 + (s16)((arg2 & 0xF) * 2 + (arg2 & 0xF0) * 4) * 2;
        temp_v0[0] = 0;
        temp_v0[1] = 0;
        temp_v0[0x20] = 0;
        temp_v0[0x21] = 0;
    }
}

void func_80915A94(u8* arg0, s16 arg1) {
    func_80915A10((s16*)SEGMENTED_TO_VIRTUAL(D_060183A8), arg0, arg1);
    func_80915A10((s16*)SEGMENTED_TO_VIRTUAL(D_060185A8), arg0, arg1);
    func_80915A10((s16*)SEGMENTED_TO_VIRTUAL(D_060187A8), arg0, arg1);
    func_80915A10((s16*)SEGMENTED_TO_VIRTUAL(D_060191A8), arg0, arg1);
    func_80915A40((s16*)SEGMENTED_TO_VIRTUAL(D_060189A8), arg0, arg1);
    func_80915A40((s16*)SEGMENTED_TO_VIRTUAL(D_060193A8), arg0, arg1);
}

void BossGoma_Init(Actor* thisx, GlobalContext* globalCtx) {
    static InitChainEntry D_8091B2A8[] = { ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
                                           ICHAIN_S8(naviEnemyId, 1, ICHAIN_CONTINUE),
                                           ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP) };

    s32 pad;
    BossGoma* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_8091B2A8);
    ActorShape_Init(&this->actor.shape, 4000.0f, ActorShadow_DrawFunc_Circle, 150.0f);
    SkelAnime_Init(globalCtx, &this->nok14C, &D_0601DCF8, &D_06012678, 0, 0, 0);
    SkelAnime_ChangeAnimDefaultRepeat(&this->nok14C, &D_06012678);
    this->actor.shape.rot.x = -0x8000;
    this->nok1F8 = 1.0f;
    this->nok224 = 1.0f;
    this->nok1FC = this->actor.posRot.pos.x;
    this->nok200 = this->actor.posRot.pos.z;
    this->actor.posRot.pos.y = -300.0f;
    this->actor.gravity = 0.0f;
    func_80916000(this, globalCtx);
    this->actor.colChkInfo.health = 10;
    this->actor.colChkInfo.mass = 0xFF;
    Collider_InitJntSph(globalCtx, &this->nok7BC);
    Collider_SetJntSph(globalCtx, &this->nok7BC, &this->actor, &D_8091B034, this->nok7DC);
    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(&this->actor);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, -640.0f, 0.0f, 0, 0,
                           0, 0);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 141.0f, -640.0f, -84.0f, 0, 0, 0, 0);
    }
}

void func_80915DF8(BossGoma* this, GlobalContext* globalCtx, s16 arg2, s16 arg3) {
    if (arg2 == 0 || arg2 == 1 || arg2 == 3) {
        func_80033260(globalCtx, &this->actor, &this->nok278, 25.0f, arg3, 8.0f, 500, 10, 1);
    }
    if (arg2 == 0 || arg2 == 2 || arg2 == 3) {
        func_80033260(globalCtx, &this->actor, &this->nok284, 25.0f, arg3, 8.0f, 500, 10, 1);
    }
    if (arg2 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DOWN);
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_WALK);
    }
}

void BossGoma_Destroy(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_Free(&this->nok14C, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->nok7BC);
}

void func_80915F38(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_0600B2FC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600B2FC.genericHeader), 2,
                         -2.0f);
    this->nok190 = func_80917D98;
    this->nok1BE = 1;
    this->nok1C0 = 0;
    this->nok1C2 = 0;
    this->nok1D2 = 0x4B0;
    this->nok1D0 = 0;
    this->actor.flags &= ~5;
    this->actor.speedXZ = 0.0f;
    this->actor.shape.unk_10 = 0.0f;
    Audio_SetBGM(0x100100FF);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DEAD);
}

void func_80916000(BossGoma* this, GlobalContext* globalCtx) {
    f32 fc = SkelAnime_GetFrameCount(&D_06002360.genericHeader);
    SkelAnime_ChangeAnim(&this->nok14C, &D_06002360, 1.0f, 0.0f, fc, 0, -15.0f);
    this->nok190 = func_80916C9C;
    this->nok1D0 = 0;
    this->nok1BE = 1;
    globalCtx->envCtx.unk_BF = 4;
    globalCtx->envCtx.unk_D6 = 0xFF;
}

void func_809160A4(BossGoma* this) {
    f32 sp2C = SkelAnime_GetFrameCount(&D_06012678.genericHeader);
    this->nok1D2 = Math_Rand_S16Offset(0x14, 0x1E);
    SkelAnime_ChangeAnim(&this->nok14C, &D_06012678, 1.0f, 0.0f, sp2C, 0, -5.0f);
    this->nok190 = func_809195A4;
}

void func_8091612C(BossGoma* this) {
    this->nok1D2 = Math_Rand_S16Offset(0x14, 0x1E);
    SkelAnime_ChangeAnim(&this->nok14C, &D_0600193C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600193C.genericHeader), 0,
                         -5.0f);
    this->nok190 = func_8091960C;
}

void func_809161B0(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_06005F28, 1.0f, 0.0f, 0.0f, 2, -5.0f);
    this->nok190 = func_80919278;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -2.0f;
}

void func_8091622C(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_060058C0, 1.0f, 0.0f, 0.0f, 2, -5.0f);
    this->nok190 = func_8091932C;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -2.0f;
}

void func_809162A8(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_060113BC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060113BC.genericHeader), 0,
                         -15.0f);
    this->nok190 = func_809193EC;
    this->nok1B2 = 0;
}

void func_8091631C(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_060029F0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060029F0.genericHeader), 0,
                         -10.0f);
    this->nok190 = func_80919548;
    this->nok1D2 = 0x46;
}

void func_80916394(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_060066DC, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060066DC.genericHeader), 0,
                         -10.0f);
    this->nok190 = func_80919974;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
}

void func_80916418(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_06002360, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06002360.genericHeader), 0,
                         -5.0f);
    this->nok190 = func_80919A40;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->nok1D2 = Math_Rand_S16Offset(0x1E, 0x3C);
}

void func_809164AC(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_0601EB4C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0601EB4C.genericHeader), 0,
                         -5.0f);
    this->nok190 = func_80919704;
    this->nok1D2 = Math_Rand_S16Offset(0x46, 0x6E);
}

void func_80916530(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_06005F28, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06005F28.genericHeader), 2,
                         -2.0f);
    this->nok190 = func_809190F8;
    this->nok21C = SkelAnime_GetFrameCount(&D_06005F28.genericHeader);
}

void func_809165C0(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_060058C0, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_060058C0.genericHeader), 2,
                         -2.0f);
    this->nok21C = SkelAnime_GetFrameCount(&D_060058C0.genericHeader);
    this->nok190 = func_80919054;
    this->nok21C = SkelAnime_GetFrameCount(&D_060058C0.genericHeader);
}

void func_80916668(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_0600CCD8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600CCD8.genericHeader), 0,
                         -2.0f);
    this->nok190 = func_80919150;
}

void func_809166D8(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_0600C468, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_0600C468.genericHeader), 2,
                         -10.0f);
    this->nok190 = func_80918C08;
}

void func_8091674C(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_06000AE8, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000AE8.genericHeader), 0,
                         -10.0f);
    this->nok190 = func_80918D10;
    this->nok1D2 = 0;
}

void func_809167C0(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_06004318, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06004318.genericHeader), 2,
                         -10.0f);
    this->nok190 = func_80918D6C;
    this->nok1D0 = 0;
    this->nok1D2 = 0;
}

void func_8091683C(BossGoma* this) {
    SkelAnime_ChangeAnim(&this->nok14C, &D_06006E60, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06006E60.genericHeader), 2,
                         -2.0f);
    this->nok190 = func_80918FBC;
}

void func_809168B0(BossGoma* this, GlobalContext* globalCtx, f32 arg2, f32 arg3, s16 arg4) {
    static Vec3f D_8091B2B4 = { 0, 0, 0 };
    static Vec3f D_8091B2C0 = { 0, -0.5f, 0 };
    static Vec3f D_8091B2CC = { -150, 0, -350 };

    Vec3f* basePos = NULL;
    s16 i;
    Vec3f vel;
    Vec3f accel;
    Vec3f pos;

    D_8091B2CC.z += arg2;
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, arg3, 0.5f, 2.0f);

    if (arg4 != 0) {
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, Math_Vec3f_Yaw(&this->actor.posRot.pos, &D_8091B2CC) + 0x8000,
                             3, 0x3E8);
    }

    if (func_800A56C8(&this->nok14C, 9.0f)) {
        basePos = &this->nok278;
    } else if (func_800A56C8(&this->nok14C, 1.0f)) {
        basePos = &this->nok284;
    }

    if (basePos != NULL) {
        for (i = 0; i < 5; i++) {
            vel = D_8091B2B4;
            accel = D_8091B2C0;
            pos.x = Math_Rand_CenteredFloat(70.0f) + basePos->x;
            pos.y = Math_Rand_ZeroFloat(30.0f) + basePos->y;
            pos.z = Math_Rand_CenteredFloat(70.0f) + basePos->z;
            func_80029724(globalCtx, &pos, &vel, &accel, 0, (s16)(Math_Rand_ZeroOne() * 5.0f) + 10, -1, 10, 0);
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_HIGH);
    }
}

void func_80916AEC(BossGoma* this, GlobalContext* globalCtx) {
    Player* player;
    Camera* camera;

    camera = Gameplay_GetCamera(globalCtx, 0);
    player = PLAYER;
    this->nok1D0 = 4;
    this->actor.flags |= 1;
    func_80064520(globalCtx, &globalCtx->csCtx);
    func_8002DF54(globalCtx, &this->actor, 1);
    this->nok1BC = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
    Gameplay_ChangeCameraStatus(globalCtx, this->nok1BC, 7);
    SkelAnime_ChangeAnim(&this->nok14C, &D_06010918, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06010918.genericHeader), 2,
                         0.0f);
    this->nok21C = SkelAnime_GetFrameCount(&D_06010918.genericHeader);
    this->actor.posRot.pos.x = -150.0f;
    this->actor.posRot.pos.z = -350.0f;
    player->actor.posRot.pos.x = 150.0f;
    player->actor.posRot.pos.z = 300.0f;
    player->actor.posRot.rot.y = player->actor.shape.rot.y = -0x705C;
    this->actor.posRot.rot.y = func_8002DA78(&this->actor, &PLAYER->actor) + 0x8000;
    this->nok290.x = 90.0f;
    this->nok290.z = 170.0f;
    this->nok290.y = camera->eye.y + 20.0f;
    this->nok1D2 = 0x32;
    this->nok29C.x = this->actor.posRot.pos.x;
    this->nok29C.y = this->actor.posRot.pos.y;
    this->nok29C.z = this->actor.posRot.pos.z;
    Audio_SetBGM(0x100100FF);
}

void func_80916C9C(BossGoma* this, GlobalContext* globalCtx) {
    Camera* cam;
    Player* player;
    s32 pad[2];

    player = PLAYER;
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);

    switch (this->nok1D0) {
        case 0:
            if (fabsf(player->actor.posRot.pos.x - 150.0f) < 60.0f &&
                fabsf(player->actor.posRot.pos.z - 350.0f) < 60.0f) {
                if (gSaveContext.eventChkInf[7] & 1) {
                    func_80916AEC(this, globalCtx);
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x2E, 164.72f, -480.0f,
                                       397.68002f, 0, -0x705C, 0, 0x180);
                } else {
                    func_8002DF54(globalCtx, &this->actor, 8);
                    this->nok1D0 = 1;
                }
            }
            break;
        case 1:
            func_80064520(globalCtx, &globalCtx->csCtx);
            this->nok1BC = Gameplay_CreateSubCamera(globalCtx);
            osSyncPrintf("MAKE CAMERA !!!   1   !!!!!!!!!!!!!!!!!!!!!!!!!!\n");
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->nok1BC, 7);
            this->nok1D0 = 2;
            this->actor.posRot.pos.x = -150.0f;
            this->actor.posRot.pos.y = -320.0f;
            this->actor.posRot.pos.z = -350.0f;
            player->actor.posRot.pos.x = 150.0f;
            player->actor.posRot.pos.z = 300.0f;
            this->nok290.x = -350.0f;
            this->nok290.y = -310.0f;
            this->nok290.z = -350.0f;
            this->nok29C.x = player->actor.posRot.pos.x;
            this->nok29C.y = player->actor.posRot.pos.y - 200.0f + 25.0f;
            this->nok29C.z = player->actor.posRot.pos.z;
            this->nok1D2 = 0x32;
            this->nok1D4 = 0x50;
            this->nok194 = 0;
            this->actor.flags &= ~1;
            // fall-through
        case 2:
            player->actor.shape.rot.y = -0x705C;
            player->actor.posRot.pos.x = 150.0f;
            player->actor.posRot.pos.z = 300.0f;
            player->actor.posRot.rot.y = player->actor.shape.rot.y;
            player->actor.speedXZ = 0.0f;
            if (this->nok1D2 == 0) {
                Math_SmoothScaleMaxF(&this->nok290.x, player->actor.posRot.pos.x - 20.0f, 0.049999997f,
                                     this->nok220 * 50.0f);
                Math_SmoothScaleMaxF(&this->nok290.y, player->actor.posRot.pos.y + 25.0f, 0.099999994f,
                                     this->nok220 * 130.0f);
                Math_SmoothScaleMaxF(&this->nok290.z, player->actor.posRot.pos.z - 65.0f, 0.049999997f,
                                     this->nok220 * 30.0f);
                Math_SmoothScaleMaxF(&this->nok220, 0.29999998f, 1.0f, 0.0050000004f);
                if (this->nok1D4 == 0) {
                    Math_SmoothScaleMaxF(&this->nok29C.y, player->actor.posRot.pos.y + 35.0f, 0.099999994f,
                                         this->nok220 * 30.0f);
                }
                this->nok29C.x = player->actor.posRot.pos.x;
                this->nok29C.z = player->actor.posRot.pos.z;
            }
            func_800C04D8(globalCtx, 0, &this->nok29C, &this->nok290);
            if (this->nok194 == 0xB0) {
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x2E, 164.72f, -480.0f, 397.68002f, 0,
                                   -0x705C, 0, 0x180);
            }
            if (this->nok194 == 0xB0) {
                globalCtx->envCtx.unk_BF = 3;
                globalCtx->envCtx.unk_D6 = 0xFFFF;
            }
            if (this->nok194 == 0xBE) {
                func_8002DF54(globalCtx, &this->actor, 2);
            }
            if (this->nok194 >= 0xE4) {
                cam = Gameplay_GetCamera(globalCtx, 0);
                cam->eye = this->nok290;
                cam->eyeNext = this->nok290;
                cam->at = this->nok29C;
                func_800C08AC(globalCtx, this->nok1BC, 0);
                this->nok1BC = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->nok1D0 = 3;
            }
            break;
        case 3:
            if (fabsf(this->actor.projectedPos.x) < 150.0f && fabsf(this->actor.projectedPos.y) < 250.0f &&
                this->actor.projectedPos.z < 800.0f && this->actor.projectedPos.z > 0.0f) {
                this->nok1C6++;
                Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
                Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor) + 0x8000, 2,
                                     0xBB8);
                this->nok198 = this->nok19A = this->nok19E = this->nok1A0 = 0;
            } else {
                this->nok1C6 = 0;
                func_809168B0(this, globalCtx, 0.0f, -5.0f, 1);
            }
            if (this->nok1C6 >= 0x10) {
                func_80916AEC(this, globalCtx);
            }
            break;
        case 4:
            if (func_800A56C8(&this->nok14C, 15.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DEMO_EYE);
            }
            if (this->nok1D2 < 0x29) {
                Math_SmoothScaleMaxF(&this->nok290.x, this->actor.posRot.pos.x + 22.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->nok290.y, this->actor.posRot.pos.y - 25.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->nok290.z, this->actor.posRot.pos.z + 45.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->nok29C.x, this->actor.posRot.pos.x, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->nok29C.y, this->actor.posRot.pos.y + 5.0f, 0.2f, 100.0f);
                Math_SmoothScaleMaxF(&this->nok29C.z, this->actor.posRot.pos.z, 0.2f, 100.0f);
                if (this->nok1D2 == 0x1E) {
                    globalCtx->envCtx.unk_BF = 4;
                }
                if (this->nok1D2 < 0x14) {
                    SkelAnime_FrameUpdateMatrix(&this->nok14C);
                    Math_SmoothScaleMaxF(&this->nok1F8, 1.0f, 0.8f, 0.4f);
                    Math_SmoothScaleMaxF(&this->nok224, 1.0f, 0.8f, 0.4f);
                    if (func_800A56C8(&this->nok14C, 36.0f)) {
                        this->nok1F8 = 1.8f;
                        this->nok224 = 1.8f;
                    }
                    if (func_800A56C8(&this->nok14C, this->nok21C)) {
                        this->nok1D0 = 5;
                        SkelAnime_ChangeAnim(&this->nok14C, &D_06002360, 2.0f, 0.0f,
                                             SkelAnime_GetFrameCount(&D_06002360.genericHeader), 0, -5.0f);
                        this->nok1D2 = 0x1E;
                        this->nok220 = 0.0f;
                    }
                }
            }
            break;
        case 5:
            Math_SmoothScaleMaxF(&this->nok290.x, this->actor.posRot.pos.x + 8.0f + 90.0f, 0.1f, this->nok220 * 30.0f);
            Math_SmoothScaleMaxF(&this->nok290.y, player->actor.posRot.pos.y, 0.1f, this->nok220 * 30.0f);
            Math_SmoothScaleMaxF(&this->nok290.z, this->actor.posRot.pos.z + 45.0f + 40.0f, 0.1f, this->nok220 * 30.0f);
            Math_SmoothScaleMaxF(&this->nok220, 1.0f, 1.0f, 0.05f);
            this->nok29C.x = this->actor.posRot.pos.x;
            this->nok29C.y = this->actor.posRot.pos.y;
            this->nok29C.z = this->actor.posRot.pos.z;
            if (this->nok1D2 < 0) {
                SkelAnime_FrameUpdateMatrix(&this->nok14C);
                Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 1.0f, 2.0f);
            } else {
                func_809168B0(this, globalCtx, 0.0f, -7.5f, 0);
            }
            if (this->nok1D2 == 0) {
                SkelAnime_ChangeAnim(&this->nok14C, &D_0600193C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600193C.genericHeader), 0, -5.0f);
            }
            if (this->nok1D2 == 0) {
                this->nok1D0 = 9;
                this->actor.speedXZ = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = -2.0f;
                SkelAnime_ChangeAnim(&this->nok14C, &D_0600F70C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600F70C.genericHeader), 2, -5.0f);
                player->actor.posRot.pos.x = 0.0f;
                player->actor.posRot.pos.z = -30.0f;
            }
            break;
        case 9:
            Math_SmoothScaleMaxF(&this->nok290.x, this->actor.posRot.pos.x + 8.0f + 90.0f, 0.1f, this->nok220 * 30.0f);
            Math_SmoothScaleMaxF(&this->nok290.y, player->actor.posRot.pos.y + 10.0f, 0.1f, this->nok220 * 30.0f);
            Math_SmoothScaleMaxF(&this->nok290.z, this->actor.posRot.pos.z + 45.0f + 40.0f, 0.1f, this->nok220 * 30.0f);
            this->nok29C.x = this->actor.posRot.pos.x;
            this->nok29C.y = this->actor.posRot.pos.y;
            this->nok29C.z = this->actor.posRot.pos.z;
            SkelAnime_FrameUpdateMatrix(&this->nok14C);
            Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 2, 0x7D0);
            if (this->actor.bgCheckFlags & 1) {
                this->nok1D0 = 0x82;
                this->actor.velocity.y = 0.0f;
                SkelAnime_ChangeAnim(&this->nok14C, &D_0600F70C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600F70C.genericHeader), 2, -2.0f);
                this->nok21C = SkelAnime_GetFrameCount(&D_0600F70C.genericHeader);
                func_80915DF8(this, globalCtx, 0, 5);
                this->nok1D2 = 0xF;
                func_800A9F6C(0.0f, 0xC8, 0x14, 0x14);
            }
            break;
        case 0x82:
            Math_SmoothScaleMaxF(&this->nok290.x, this->actor.posRot.pos.x + 8.0f + 90.0f, 0.1f, this->nok220 * 30.0f);
            Math_SmoothScaleMaxF(&this->nok290.y, player->actor.posRot.pos.y + 10.0f, 0.1f, this->nok220 * 30.0f);
            Math_SmoothScaleMaxF(&this->nok290.z, this->actor.posRot.pos.z + 45.0f + 40.0f, 0.1f, this->nok220 * 30.0f);
            Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 2, 0x7D0);
            SkelAnime_FrameUpdateMatrix(&this->nok14C);
            this->nok29C.x = this->actor.posRot.pos.x;
            this->nok29C.z = this->actor.posRot.pos.z;
            if (this->nok1D2 != 0) {
                f32 s = sinf(this->nok1D2 * 3.1415f * 0.5f);
                this->nok29C.y = this->nok1D2 * s * 0.7f + this->actor.posRot.pos.y;
            } else {
                Math_SmoothScaleMaxF(&this->nok29C.y, this->actor.posRot2.pos.y, 0.1f, 10.0f);
            }
            if (func_800A56C8(&this->nok14C, 40.0f)) {
                Audio_PlayActorSound2(&this->actor, 0x380E);
                if (!(gSaveContext.eventChkInf[7] & 1)) {
                    TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(D_06019BA8),
                                           0xA0, 0xB4, 0x80, 0x28);
                }
                Audio_SetBGM(0x1B);
                gSaveContext.eventChkInf[7] |= 1;
            }
            if (func_800A56C8(&this->nok14C, this->nok21C)) {
                this->nok1D0 = 0x8C;
                SkelAnime_ChangeAnim(&this->nok14C, &D_06000AE8, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06000AE8.genericHeader), 0, -10.0f);
                this->nok1D2 = 0x14;
            }
            break;
        case 0x8C:
            SkelAnime_FrameUpdateMatrix(&this->nok14C);
            Math_SmoothScaleMaxF(&this->nok29C.y, this->actor.posRot2.pos.y, 0.1f, 10.0f);
            if (this->nok1D2 == 0) {
                this->nok1D2 = 0x1E;
                this->nok1D0 = 0x96;
                Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
            }
            break;
        case 0x96:
            SkelAnime_FrameUpdateMatrix(&this->nok14C);
            Math_SmoothScaleMaxMinF(&this->nok290.x, this->actor.posRot.pos.x + 150.0f, 0.2f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok290.y, this->actor.posRot.pos.y + 20.0f, 0.2f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok290.z, this->actor.posRot.pos.z + 220.0f, 0.2f, 100.0f, 0.1f);
            if (this->nok1D2 == 0) {
                cam = Gameplay_GetCamera(globalCtx, 0);
                cam->eye = this->nok290;
                cam->eyeNext = this->nok290;
                cam->at = this->nok29C;
                func_800C08AC(globalCtx, this->nok1BC, 0);
                this->nok1BC = 0;
                func_809164AC(this);
                this->nok1BE = 0;
                this->nok196 = 0xC8;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
            }
            break;
    }

    if (this->nok1BC != 0) {
        func_800C04D8(globalCtx, this->nok1BC, &this->nok29C, &this->nok290);
    }
}

Vec3f D_8091B2D8 = { 0, 0, 0 };
Vec3f D_8091B2E4 = { 0, 1, 0 };
Color_RGBA8_n D_8091B2F0 = { 255, 255, 255, 255 };
Color_RGBA8_n D_8091B2F4 = { 0, 100, 255, 255 };
Vec3f D_8091B2F8 = { 0, 0, 0 };
Vec3f D_8091B304 = { 0, -0.5f, 0 };
Vec3f D_8091B310 = { -150, 0, -350 };

#ifdef NON_MATCHING
void func_80917D98(BossGoma* this, GlobalContext* globalCtx) {
    f32 sr;
    f32 cr;
    s16 j;
    Vec3f vel1 = D_8091B2D8;
    Vec3f accel1 = D_8091B2E4;
    Color_RGBA8_n color1 = D_8091B2F0;
    Color_RGBA8_n color2 = D_8091B2F4;
    Vec3f vel2 = D_8091B2F8;
    Vec3f accel2 = D_8091B304;
    Vec3f pos;
    Camera* camera;
    Player* player = PLAYER;
    Vec3f childPos;
    s16 i;

    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);

    if (func_800A56C8(&this->nok14C, 107.0f)) {
        func_80915DF8(this, globalCtx, 0, 8);
        func_800A9F6C(0.0f, 0x96, 0x14, 0x14);
    }

    this->nok1B8 = 2;
    this->nok1B4 = 1;

    if (this->nok1D2 == 0x3E9) {
        for (i = 0; i < 0x5A; i++) {
            if (D_8091B244[i] != 0) {
                this->nok758[i] = 1;
            }
        }
    }

    if (this->nok1D2 < 0x4B0 && this->nok1D2 >= 0x44D && (this->nok1D2 & 7) == 0) {
        func_800299AC(globalCtx, &this->actor.posRot2.pos);
    }

    if (this->nok1D2 < 0x438 && this->nok1D0 < 3) {
        if (this->nok1D2 < 0x42E) {
            Audio_PlayActorSound2(&this->actor, 0x301C);
        }
        for (i = 0; i < 4; i++) {
            j = (s16)(Math_Rand_ZeroOne() * 85.0f);
            if (this->nok2A8[j].y < 10000.0f) {
                pos.x = Math_Rand_CenteredFloat(20.0f) + this->nok2A8[j].x;
                pos.y = Math_Rand_CenteredFloat(10.0f) + this->nok2A8[j].y;
                pos.z = Math_Rand_CenteredFloat(20.0f) + this->nok2A8[j].z;
                func_8002836C(globalCtx, &pos, &vel1, &accel1, &color1, &color2, 0x1F4, 0xA, 0xA);
            }
        }
        for (i = 0; i < 0xF; i++) {
            j = (s16)(Math_Rand_ZeroOne() * 85.0f);
            if (this->nok2A8[j].y < 10000.0f) {
                pos.x = Math_Rand_CenteredFloat(20.0f) + this->nok2A8[j].x;
                pos.y = Math_Rand_CenteredFloat(10.0f) + this->nok2A8[j].y;
                pos.z = Math_Rand_CenteredFloat(20.0f) + this->nok2A8[j].z;
                func_80029724(globalCtx, &pos, &vel2, &accel2, 0, (s16)(Math_Rand_ZeroOne() * 5.0f) + 0xA, -1, 0xA, 0);
            }
        }
    }

    switch (this->nok1D0) {
        case 0:
            this->nok1D0 = 1;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->nok1BC = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
            Gameplay_ChangeCameraStatus(globalCtx, this->nok1BC, 7);
            camera = Gameplay_GetCamera(globalCtx, 0);
            this->nok290.x = camera->eye.x;
            this->nok290.y = camera->eye.y;
            this->nok290.z = camera->eye.z;
            this->nok29C.x = camera->at.x;
            this->nok29C.y = camera->at.y;
            this->nok29C.z = camera->at.z;
            this->nok228 =
                sqrtf(SQ(this->nok290.x - this->actor.posRot.pos.x) + SQ(this->nok290.z - this->actor.posRot.pos.z));
            this->nok22C =
                Math_atan2f(this->nok290.x - this->actor.posRot.pos.x, this->nok290.z - this->actor.posRot.pos.z);
            this->nok1D4 = 0x10E;
            break;
        case 1:
            sr = Math_Sins(this->actor.shape.rot.y) * 100.0f;
            cr = Math_Coss(this->actor.shape.rot.y) * 100.0f;
            Math_SmoothScaleMaxF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x + sr, 0.5f, 5.0f);
            Math_SmoothScaleMaxF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z + cr, 0.5f, 5.0f);
            if (this->nok1D2 < 1080) {
                this->nok1C2 = 1;
                for (i = 0; i < 4; i++) {
                    func_80915A94(D_8091B044, this->nok1C0);
                    if (this->nok1C0 < 0x100) {
                        this->nok1C0++;
                    }
                }
            }
            if (this->nok1D2 < 1070 && (this->nok194 & 3) == 0 && Math_Rand_ZeroOne() < 0.5f) {
                this->nok1C4 = 3;
            }
            this->nok22C += 0.022f;
            Math_SmoothScaleMaxF(&this->nok228, 150.0f, 0.1f, 5.0f);
            sr = this->nok228 * sinf(this->nok22C);
            cr = this->nok228 * cosf(this->nok22C);
            Math_SmoothScaleMaxMinF(&this->nok290.x, this->actor.posRot.pos.x + sr, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok290.y, this->actor.posRot.pos.y + 20.0f, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok290.z, this->actor.posRot.pos.z + cr, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok29C.x, this->nok26C.x, 0.2f, 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok29C.y, this->actor.posRot2.pos.y, 0.5f, 100.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok29C.z, this->nok26C.z, 0.2f, 50.0f, 0.1f);
            if (this->nok1D4 == 80) {
                Audio_SetBGM(0x21);
            }
            if (this->nok1D4 == 0) {
                this->nok1D0 = 2;
                Gameplay_ChangeCameraStatus(globalCtx, 0, 3);
                this->nok1D4 = 70;
                this->nok1C0 = 0;
                this->nok220 = 0.0f;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            }
            break;
        case 2:
            camera = Gameplay_GetCamera(globalCtx, 0);
            Math_SmoothScaleMaxMinF(&this->nok290.x, camera->eye.x, 0.2f, this->nok220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok290.y, camera->eye.y, 0.2f, this->nok220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok290.z, camera->eye.z, 0.2f, this->nok220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok29C.x, camera->at.x, 0.2f, this->nok220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok29C.y, camera->at.y, 0.2f, this->nok220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok29C.z, camera->at.z, 0.2f, this->nok220 * 50.0f, 0.1f);
            Math_SmoothScaleMaxMinF(&this->nok220, 1.0f, 1.0f, 0.02f, 0.0f);
            if (this->nok1D4 == 0) {
                childPos = D_8091B310;
                this->nok1D4 = 0x1E;
                this->nok1D0 = 3;
                for (i = 0; i < 10000; i++) {
                    if ((fabsf(childPos.x - player->actor.posRot.pos.x) < 100.0f &&
                         fabsf(childPos.z - player->actor.posRot.pos.z) < 100.0f) ||
                        (fabsf(childPos.x - this->actor.posRot.pos.x) < 150.0f &&
                         fabsf(childPos.z - this->actor.posRot.pos.z) < 150.0f)) {
                        childPos.x = Math_Rand_CenteredFloat(400.0f) + -150.0f;
                        childPos.z = Math_Rand_CenteredFloat(400.0f) + -350.0f;
                    } else {
                        break;
                    }
                }
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, childPos.x,
                                   this->actor.posRot.pos.y, childPos.z, 0, 0, 0, 0);
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
            }
            for (i = 0; i < 4; i++) {
                func_80915A94(D_8091B144, this->nok1C0);
                if (this->nok1C0 < 0x100) {
                    this->nok1C0++;
                }
            }
            break;
        case 3:
            for (i = 0; i < 4; i++) {
                func_80915A94(D_8091B144, this->nok1C0);
                if (this->nok1C0 < 0x100) {
                    this->nok1C0++;
                }
            }
            if (this->nok1D4 == 0) {
                if (Math_SmoothScaleMaxMinF(&this->actor.scale.y, 0, 1.0f, 0.00075f, 0.0f) <= 0.001f) {
                    camera = Gameplay_GetCamera(globalCtx, 0);
                    camera->eye = this->nok290;
                    camera->eyeNext = this->nok290;
                    camera->at = this->nok29C;
                    func_800C08AC(globalCtx, this->nok1BC, 0);
                    this->nok1BC = 0;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 7);
                    Actor_Kill(&this->actor);
                }
                this->actor.scale.x = this->actor.scale.z = this->actor.scale.y;
            }
            break;
    }

    if (this->nok1BC != 0) {
        func_800C04D8(globalCtx, this->nok1BC, &this->nok29C, &this->nok290);
    }

    if (this->nok1C4 != 0) {
        this->nok1C4--;
        globalCtx->envCtx.unk_8C[0][0] += 0x28;
        globalCtx->envCtx.unk_8C[0][1] += 0x28;
        globalCtx->envCtx.unk_8C[0][2] += 0x50;
        globalCtx->envCtx.unk_8C[2][0] += 0xA;
        globalCtx->envCtx.unk_8C[2][1] += 0xA;
        globalCtx->envCtx.unk_8C[2][2] += 0x14;
    } else {
        globalCtx->envCtx.unk_8C[0][0] -= 0x14;
        globalCtx->envCtx.unk_8C[0][1] -= 0x14;
        globalCtx->envCtx.unk_8C[0][2] -= 0x28;
        globalCtx->envCtx.unk_8C[2][0] -= 5;
        globalCtx->envCtx.unk_8C[2][1] -= 5;
        globalCtx->envCtx.unk_8C[2][2] -= 0xA;
    }

    if (globalCtx->envCtx.unk_8C[0][0] >= 0xC9) {
        globalCtx->envCtx.unk_8C[0][0] = 0xC8;
    }
    if (globalCtx->envCtx.unk_8C[0][1] >= 0xC9) {
        globalCtx->envCtx.unk_8C[0][1] = 0xC8;
    }
    if (globalCtx->envCtx.unk_8C[0][2] >= 0xC9) {
        globalCtx->envCtx.unk_8C[0][2] = 0xC8;
    }
    if (globalCtx->envCtx.unk_8C[2][0] >= 0x47) {
        globalCtx->envCtx.unk_8C[2][0] = 0x46;
    }
    if (globalCtx->envCtx.unk_8C[2][1] >= 0x47) {
        globalCtx->envCtx.unk_8C[2][1] = 0x46;
    }
    if (globalCtx->envCtx.unk_8C[2][2] >= 0x8D) {
        globalCtx->envCtx.unk_8C[2][2] = 0x8C;
    }

    if (globalCtx->envCtx.unk_8C[0][0] < 0) {
        globalCtx->envCtx.unk_8C[0][0] = 0;
    }
    if (globalCtx->envCtx.unk_8C[0][1] < 0) {
        globalCtx->envCtx.unk_8C[0][1] = 0;
    }
    if (globalCtx->envCtx.unk_8C[0][2] < 0) {
        globalCtx->envCtx.unk_8C[0][2] = 0;
    }
    if (globalCtx->envCtx.unk_8C[2][0] < 0) {
        globalCtx->envCtx.unk_8C[2][0] = 0;
    }
    if (globalCtx->envCtx.unk_8C[2][1] < 0) {
        globalCtx->envCtx.unk_8C[2][1] = 0;
    }
    if (globalCtx->envCtx.unk_8C[2][2] < 0) {
        globalCtx->envCtx.unk_8C[2][2] = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Goma/func_80917D98.s")
#endif

void func_80918C08(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    if (this->nok14C.animCurrentFrame >= (19.0f + 1.0f / 3.0f) && this->nok14C.animCurrentFrame <= 30.0f) {
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, func_8002DA78(&this->actor, &PLAYER->actor), 3, 0xBB8);
    }
    if (func_800A56C8(&this->nok14C, SkelAnime_GetFrameCount(&D_0600C468.genericHeader))) {
        if (this->actor.xzDistFromLink < 250.0f) {
            func_8091674C(this);
        } else {
            func_809164AC(this);
        }
    }
    this->nok1B4 = 2;
    this->nok1B8 = 0;
}

void func_80918D10(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    if (this->nok1D2 == 0) {
        func_809167C0(this);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY1);
    }
    this->nok1B4 = 2;
    this->nok1B8 = 0;
}

void func_80918D6C(BossGoma* this, GlobalContext* globalCtx) {
    s16 i;

    this->actor.flags |= 0x1000000;
    SkelAnime_FrameUpdateMatrix(&this->nok14C);

    switch (this->nok1D0) {
        case 0:
            for (i = 0; i < this->nok7BC.count; i++) {
                if (this->nok7BC.list[i].body.toucherFlags & 2) {
                    this->nok1D2 = 0xA;
                    break;
                }
            }
            if (func_800A56C8(&this->nok14C, 10.0f)) {
                func_80915DF8(this, globalCtx, 3, 5);
                func_80033E88(&this->actor, globalCtx, 5, 0xF);
            }
            if (func_800A56C8(&this->nok14C, SkelAnime_GetFrameCount(&D_06004318.genericHeader))) {
                this->nok1D0 = 1;
                SkelAnime_ChangeAnim(&this->nok14C, &D_06004A20, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06004A20.genericHeader), 0, -1.0f);
                if (this->nok1D2 == 0) {
                    this->nok1D4 = (s16)(Math_Rand_ZeroOne() * 30.0f) + 0x1E;
                }
            }
            break;
        case 1:
            if (func_800A56C8(&this->nok14C, 3.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_UNARI2);
            }
            if (this->nok1D4 == 0) {
                this->nok1D0 = 2;
                SkelAnime_ChangeAnim(&this->nok14C, &D_06005330, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_06005330.genericHeader), 2, -5.0f);
            }
            break;
        case 2:
            if (func_800A56C8(&this->nok14C, SkelAnime_GetFrameCount(&D_06005330.genericHeader))) {
                func_809160A4(this);
            }
            break;
    }

    this->nok1B4 = 2;
    this->nok1B8 = 0;
}

void func_80918FBC(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    if (func_800A56C8(&this->nok14C, SkelAnime_GetFrameCount(&D_06006E60.genericHeader))) {
        func_80916668(this);
        this->nok196 = 0;
    }
    this->nok1B4 = 1;
    Math_SmoothScaleMaxF(&this->nok1F8, 0.4f, 0.5f, 0.2f);
    this->nok1B8 = 5;
}

void func_80919054(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    if (func_800A56C8(&this->nok14C, this->nok21C)) {
        func_80916668(this);
        this->nok1D6 = 0x5C;
        this->nok196 = 0;
        this->nok1D2 = 0x96;
    }
    func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 55.0f, 4, 8.0f, 500, 10, 1);
}

void func_809190F8(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    if (func_800A56C8(&this->nok14C, this->nok21C)) {
        func_809160A4(this);
        this->nok196 = 0xC8;
    }
}

void func_80919150(BossGoma* this, GlobalContext* globalCtx) {
    if (this->nok1D6 < 0x5B) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_FAINT & ~0x800);
    }
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    if (this->nok1D4 == 1) {
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 55.0f, 4, 8.0f, 500, 10, 1);
    }
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 1.0f);
    if (this->nok1D2 == 0) {
        func_809164AC(this);
        if (this->nok196 == 0) {
            if (this->actor.xzDistFromLink < 130.0f) {
                this->nok1D4 = 0x14;
            }
        }
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    this->nok1B4 = 1;
    Math_SmoothScaleMaxF(&this->nok1F8, 0.4f, 0.5f, 0.2f);
    this->nok1B8 = 4;
}

void func_80919278(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
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
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
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

    SkelAnime_FrameUpdateMatrix(&this->nok14C);

    if ((this->nok194 & 0xF) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_UNARI);
    }

    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    this->nok1B2++;

    switch (this->nok1B2) {
        case 0x18:
            this->nok1AA[3] = 10;
            break;
        case 0x20:
            this->nok1AA[2] = 10;
            break;
        case 0x28:
            this->nok1AA[1] = 10;
            break;
        case 0x30:
            this->nok1AA[0] = 10;
            break;
    }

    if (this->nok1AA[0] == 2) {
        for (i = 0; i < ARRAY_COUNT(this->nok1A4); i++) {
            if (this->nok1A4[i] == 0) {
                func_8091ADA8(this, globalCtx, i);
                break;
            }
        }
        if (this->nok1A4[0] == 0 || this->nok1A4[1] == 0 || this->nok1A4[2] == 0) {
            this->nok1B2 = 0x17;
        }
    }

    if (this->nok1B2 >= 0x40) {
        func_8091612C(this);
    }

    this->nok1B4 = 1;
}

void func_80919548(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    if (this->nok1D2 == 0) {
        func_809162A8(this);
    }
    this->nok1B4 = 1;
    this->nok1B8 = 0;
}

void func_809195A4(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, 0, 2, 0xBB8);
    if (this->nok1D2 == 0) {
        func_809164AC(this);
    }
}

void func_8091960C(BossGoma* this, GlobalContext* globalCtx) {
    s16 i;

    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 2.0f);
    if (this->nok1D2 == 0) {
        if (this->nok1A4[0] == 0 && this->nok1A4[1] == 0 && this->nok1A4[2] == 0) {
            func_8091631C(this);
        } else if (this->nok1A4[0] < 0 && this->nok1A4[1] < 0 && this->nok1A4[2] < 0) {
            func_809161B0(this);
        } else {
            for (i = 0; i < ARRAY_COUNT(this->nok1A4); i++) {
                if (this->nok1A4[i] == 0) {
                    func_809162A8(this);
                    return;
                }
            }
            func_80916418(this);
        }
    }
}

void func_80919704(BossGoma* this, GlobalContext* globalCtx) {
    s16 rot;

    SkelAnime_FrameUpdateMatrix(&this->nok14C);

    if (func_800A56C8(&this->nok14C, 1.0f)) {
        this->nok1B6 = 1;
    } else if (func_800A56C8(&this->nok14C, 30.0f)) {
        this->nok1B6 = 1;
    } else if (func_800A56C8(&this->nok14C, 15.0f)) {
        this->nok1B6 = 1;
    } else if (func_800A56C8(&this->nok14C, 16.0f)) {
        this->nok1B6 = 1;
    }

    if (func_800A56C8(&this->nok14C, 15.0f)) {
        func_80915DF8(this, globalCtx, 1, 3);
    } else if (func_800A56C8(&this->nok14C, 30.0f)) {
        func_80915DF8(this, globalCtx, 2, 3);
    }

    if ((this->nok194 & 0x3F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CRY2);
    }

    if (this->nok1B6 == 0) {
        rot = func_8002DA78(&this->actor, &PLAYER->actor);
        if (this->nok196 != 0) {
            this->nok196--;
            if (this->actor.xzDistFromLink < 150.0f) {
                func_809166D8(this);
            }
            Math_SmoothScaleMaxF(&this->actor.speedXZ, 3.3333333f, 0.5f, 2.0f);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, rot, 5, 0x3E8);
        } else {
            if (this->nok1D4 != 0) {
                Math_SmoothScaleMaxF(&this->actor.speedXZ, -10.0f, 0.5f, 2.0f);
                this->nok14C.animPlaybackSpeed = -3.0f;
                if (this->nok1D4 == 1) {
                    this->actor.speedXZ = 0.0f;
                }
            } else {
                Math_SmoothScaleMaxF(&this->actor.speedXZ, 6.6666665f, 0.5f, 2.0f);
                this->nok14C.animPlaybackSpeed = 2.0f;
                rot += 0x8000;
            }
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, rot, 3, 0x9C4);
        }
    }

    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
    }

    if (this->actor.bgCheckFlags & 8) {
        func_80916394(this);
    }

    if (this->nok1D2 == 0 && this->nok196 != 0) {
        func_809160A4(this);
    }
}

void func_80919974(BossGoma* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->nok14C);
    if ((this->nok194 & 7) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_CLIM);
    }
    Math_SmoothScaleMaxF(&this->actor.velocity.y, 5.0f, 0.5f, 2.0f);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, -0x4000, 2, 0x7D0);
    Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, this->actor.wallPolyRot + 0x8000, 2, 0x5DC);
    if (this->actor.posRot.pos.y > -320.0f) {
        func_80916418(this);
        this->nok1A4[0] = this->nok1A4[1] = this->nok1A4[2] = 0;
    }
}

void func_80919A40(BossGoma* this, GlobalContext* globalCtx) {
    s16 angle;
    s16 absDiff;

    func_809168B0(this, globalCtx, 0.0f, -5.0f, 1);
    if ((this->nok194 & 0x3F) == 0) {
        Audio_PlayActorSound2(&this->actor, 0x380F);
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.x, -0x8000, 3, 0x3E8);

    if (this->actor.bgCheckFlags & 8) {
        angle = this->actor.shape.rot.y + 0x8000;
        if (angle < this->actor.wallPolyRot) {
            absDiff = this->actor.wallPolyRot - angle;
            angle = angle + absDiff / 2;
        } else {
            absDiff = angle - this->actor.wallPolyRot;
            angle = this->actor.wallPolyRot + absDiff / 2;
        }
        this->actor.posRot.pos.z +=
            Math_Coss(angle) * (5.0f + Math_Rand_ZeroOne() * 5.0f) + Math_Rand_CenteredFloat(2.0f);
        this->actor.posRot.pos.x +=
            Math_Sins(angle) * (5.0f + Math_Rand_ZeroOne() * 5.0f) + Math_Rand_CenteredFloat(2.0f);
    }

    if (this->nok1D2 == 0 && fabsf(-150.0f - this->actor.posRot.pos.x) < 100.0f &&
        fabsf(-350.0f - this->actor.posRot.pos.z) < 100.0f) {
        func_8091612C(this);
    }
}

void func_80919C38(BossGoma* this, GlobalContext* globalCtx) {
    s16 phi_t0;
    s16 phi_a1;
    Player* temp_v0;

    if (this->nok1BE == 0) {
        temp_v0 = PLAYER;
        if (this->nok1B4 == 0) {
            if (temp_v0->unk_A73 != 0) {
                temp_v0->unk_A73 = 0;
                this->nok19C = 0xC;
            }
            if ((this->nok194 & 0xF) == 0 && Math_Rand_ZeroOne() < 0.3f) {
                this->nok19C = 7;
            }
        }
        if (this->nok1A4[0] > 0 || this->nok1A4[1] > 0 || this->nok1A4[2] > 0) {
            this->nok19C = 7;
        }
        if (this->nok19C != 0) {
            this->nok19C--;
            Math_SmoothScaleMaxS(&this->nok198, -0xA98, 1, 0x7D0);
            Math_SmoothScaleMaxS(&this->nok19A, 0x1600, 1, 0x7D0);
        } else {
            Math_SmoothScaleMaxS(&this->nok198, 0, 1, 0x7D0);
            Math_SmoothScaleMaxS(&this->nok19A, 0, 1, 0x7D0);
        }
        if (this->nok1B4 != 1) {
            phi_a1 = func_8002DA78(&this->actor, &PLAYER->actor) - this->actor.shape.rot.y;
            phi_t0 = func_8002DAE0(&this->actor, &PLAYER->actor) - this->actor.shape.rot.x;
            if (this->actor.shape.rot.x > 0x4000 || this->actor.shape.rot.x < -0x4000) {
                phi_a1 = -(s16)(phi_a1 + 0x8000);
                phi_t0 = -0xBB8;
            }
            if (phi_a1 >= 0x1771) {
                phi_a1 = 0x1770;
            }
            if (phi_a1 < -0x1770) {
                phi_a1 = -0x1770;
            }
            Math_SmoothScaleMaxS(&this->nok1A0, phi_a1, 3, 0x7D0);
            Math_SmoothScaleMaxS(&this->nok19E, phi_t0, 3, 0x7D0);
        } else {
            Math_SmoothScaleMaxS(&this->nok1A0, 0, 3, 0x3E8);
            Math_SmoothScaleMaxS(&this->nok19E, 0, 3, 0x3E8);
        }
        Math_SmoothScaleMaxF(&this->nok1F8, 1.0f, 0.2f, 0.07f);
        Math_SmoothScaleMaxF(&this->nok224, 1.0f, 0.2f, 0.07f);
    }
}

void func_80919E80(BossGoma* this) {
    s16 i;

    if ((this->nok194 & 0x7F) == 0) {
        this->nok1A2++;
        if (this->nok1A2 >= 3) {
            this->nok1A2 = 0;
        }
    }

    for (i = 0; i < ARRAY_COUNT(this->nok1AA); i++) {
        if (this->nok1AA[i] != 0) {
            this->nok1AA[i]--;
            Math_SmoothScaleMaxF(&this->nok1E8[i], 1.5f, 0.2f, 0.1f);
        } else {
            Math_SmoothScaleMaxF(&this->nok1E8[i], 1.0f, 0.2f, 0.1f);
        }
    }
}

void func_80919F8C(BossGoma* this, GlobalContext* globalCtx) {
    ColliderBody* sp2C;
    s32 temp_v0_3;

    if (this->nok1BA != 0) {
        this->nok1BA--;
    } else {
        sp2C = this->nok7BC.list->body.acHitItem;
        if (this->nok19C == 0 && this->nok190 != func_809193EC && (this->nok7BC.list->body.bumperFlags & 2)) {
            this->nok7BC.list->body.bumperFlags &= ~2;
            if (this->nok190 == func_80919A40 || this->nok190 == func_8091960C || this->nok190 == func_80919548) {
                func_8091622C(this);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM2);
            } else if (this->nok190 == func_80919150 && (temp_v0_3 = func_800635D0(sp2C->toucher.flags)) != 0) {
                this->actor.colChkInfo.health -= temp_v0_3;
                if ((s8)this->actor.colChkInfo.health > 0) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM1);
                    func_8091683C(this);
                    func_800299AC(globalCtx, &this->actor.posRot2.pos);
                } else {
                    func_80915F38(this, globalCtx);
                    func_80032C7C(globalCtx, &this->actor);
                }
                this->nok1BA = 0xA;
            } else if (this->nok190 != func_80919150 && this->nok196 != 0 && (sp2C->toucher.flags & 5) != 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_DAM2);
                func_800F8D04(0x380E);
                this->nok1BA = 0xA;
                func_80916668(this);
                this->nok1D6 = 0x64;
                if (sp2C->toucher.flags & 1) {
                    this->nok1D2 = 0x28;
                } else {
                    this->nok1D2 = 0x5A;
                }
                this->nok1D4 = 4;
                func_80033E88(&this->actor, globalCtx, 4, 0xC);
            }
        }
    }
}

void func_8091A16C(BossGoma* this) {
    static Vec3f D_8091B31C[] = { { 255, 17, 0 },  { 0, 255, 170 }, { 50, 50, 50 },
                                  { 0, 255, 170 }, { 0, 255, 170 }, { 0, 255, 170 } };
    static Vec3f D_8091B364[] = { { 255, 17, 0 },  { 0, 255, 170 }, { 50, 50, 50 },
                                  { 0, 255, 170 }, { 0, 0, 255 },   { 255, 17, 0 } };

    if (this->nok1B8 == 1 && this->nok194 & 0x10) {
        Math_SmoothScaleMaxF(&this->nok204[0], 50.0f, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->nok204[1], 50.0f, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->nok204[2], 50.0f, 0.5f, 20.0f);
    } else if (this->nok1BA != 0) {
        if (this->nok1BA & 2) {
            this->nok204[0] = D_8091B364[this->nok1B8].x;
            this->nok204[1] = D_8091B364[this->nok1B8].y;
            this->nok204[2] = D_8091B364[this->nok1B8].z;
        } else {
            this->nok204[0] = D_8091B31C[this->nok1B8].x;
            this->nok204[1] = D_8091B31C[this->nok1B8].y;
            this->nok204[2] = D_8091B31C[this->nok1B8].z;
        }
    } else {
        Math_SmoothScaleMaxF(&this->nok204[0], D_8091B31C[this->nok1B8].x, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->nok204[1], D_8091B31C[this->nok1B8].y, 0.5f, 20.0f);
        Math_SmoothScaleMaxF(&this->nok204[2], D_8091B31C[this->nok1B8].z, 0.5f, 20.0f);
    }
}

void func_8091A2E8(BossGoma* this) {
    static Vec3f D_8091B3AC[] = { { 255, 17, 0 },  { 255, 255, 255 }, { 50, 50, 50 },
                                  { 0, 255, 170 }, { 0, 255, 170 },   { 0, 255, 170 } };

    Math_SmoothScaleMaxF(&this->nok210[0], D_8091B3AC[this->nok1B8].x, 0.5f, 20.0f);
    Math_SmoothScaleMaxF(&this->nok210[1], D_8091B3AC[this->nok1B8].y, 0.5f, 20.0f);
    Math_SmoothScaleMaxF(&this->nok210[2], D_8091B3AC[this->nok1B8].z, 0.5f, 20.0f);
}

void BossGoma_Update(BossGoma* this, GlobalContext* globalCtx) {
    s32 pad;

    this->nok1B8 = 1;
    this->nok194++;
    DECR(this->nok1D2);
    DECR(this->nok1D4);
    DECR(this->nok1D6);
    this->nok1B4 = 0;
    this->nok190(this, globalCtx);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;

    if (this->nok1B6 == 0) {
        Actor_MoveForward(&this->actor);
    } else {
        this->nok1B6 = 0;
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

    if (this->nok1BE == 0) {
        func_80919F8C(this, globalCtx);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->nok7BC.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->nok7BC.base);
        if (this->nok190 != func_80919150 && this->nok190 != func_80918FBC &&
            (this->nok190 != func_80919704 || this->nok1D4 == 0)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->nok7BC.base);
        }
    }
}

s32 func_8091A560(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    BossGoma* this = THIS;
    s32 res = 0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4685);

    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, (s16)this->nok204[0], (s16)this->nok204[1], (s16)this->nok204[2], 255);

    if (this->nok758[limbIndex] >= 2) {
        *dList = NULL;
    }

    switch (limbIndex) {
        case 5:
            if (this->nok1B4 == 0 && this->nok198 < -0xA8C) {
                *dList = NULL;
            } else if (this->nok1BA != 0) {
                gDPSetEnvColor(oGfxCtx->polyOpa.p++, (s16)(Math_Rand_ZeroOne() * 255.0f),
                               (s16)(Math_Rand_ZeroOne() * 255.0f), (s16)(Math_Rand_ZeroOne() * 255.0f), 63);
            } else {
                gDPSetEnvColor(oGfxCtx->polyOpa.p++, (s16)this->nok210[0], (s16)this->nok210[1], (s16)this->nok210[2],
                               63);
            }
            break;
        case 32:
            rot->x += this->nok198;
            break;
        case 35:
            rot->x += this->nok19A;
            break;
        case 38:
            rot->x += this->nok19E;
            rot->y += this->nok1A0;
            break;
        case 39:
            if (this->nok1B4 == 0 && this->nok198 < -0xA8C) {
                *dList = NULL;
            } else {
                if (this->nok1B8 == 2) {
                    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 50, 50, 50, 255);
                } else {
                    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 255, 255, 255, 255);
                }
                Matrix_JointPosition(pos, rot);
                if (*dList != NULL) {
                    Matrix_Push();
                    Matrix_Scale(this->nok1F8, this->nok224, 1.0f, 1);
                    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4815),
                              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    gSPDisplayList(oGfxCtx->polyOpa.p++, *dList);
                    Matrix_Pull();
                }
                res = 1;
            }
            break;
        case 11:
        case 12:
        case 13:
        case 14:
            Matrix_JointPosition(pos, rot);
            if (*dList != NULL) {
                Matrix_Push();
                Matrix_Scale(this->nok1E8[limbIndex - 11], this->nok1E8[limbIndex - 11], this->nok1E8[limbIndex - 11],
                             1);
                gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4836),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(oGfxCtx->polyOpa.p++, *dList);
                Matrix_Pull();
            }
            res = 1;
            break;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4858);

    return res;
}

void func_8091A9E8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    static Vec3f D_8091B3F4 = { 0, 0, 0 };
    static Vec3f D_8091B400 = { 0, 0, 0 };
    static Vec3f D_8091B40C = { 0, 300, 2650 };
    static Vec3f D_8091B418 = { 0, 0, 0 };

    Vec3f childPos;
    Vec3s childRot;
    Actor* childActor;
    BossGoma* this = THIS;
    s32 pad;
    MtxF mtx;

    if (limbIndex == 0xB) {
        Matrix_MultVec3f(&D_8091B3F4, &this->nok260);
    } else if (limbIndex == 0xE) {
        Matrix_MultVec3f(&D_8091B3F4, &this->nok26C);
    } else if (limbIndex == 5) {
        Matrix_MultVec3f(&D_8091B40C, &this->actor.posRot2.pos);
    } else if (limbIndex == 0x15) {
        Matrix_MultVec3f(&D_8091B400, &this->nok278);
    } else if (limbIndex == 0x49) {
        Matrix_MultVec3f(&D_8091B400, &this->nok284);
    }

    if (this->nok1B8 == 2) {
        if (*dList != NULL) {
            Matrix_MultVec3f(&D_8091B400, &this->nok2A8[limbIndex]);
        } else {
            this->nok2A8[limbIndex].y = 10000.0f;
        }
    }
    if (this->nok758[limbIndex] == 1) {
        this->nok758[limbIndex] = 2;
        Matrix_MultVec3f(&D_8091B418, &childPos);
        Matrix_Get(&mtx);
        func_800D20CC(&mtx, &childRot, 0);
        childActor =
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GOMA, childPos.x, childPos.y,
                               childPos.z, childRot.x, childRot.y, childRot.z, D_8091B244[limbIndex] + 0x64);
        if (childActor != NULL) {
            *(Gfx**)((s32)childActor + 0x308) = *dList;
            childActor->objBankIndex = this->actor.objBankIndex;
        }
    }
    func_800628A4(limbIndex, &this->nok7BC);
}

Gfx* func_8091ABEC(GraphicsContext* gfxCtx) {
    Gfx* dList;
    Gfx* dListHead;

    dList = Graph_Alloc(gfxCtx, sizeof(Gfx) * 1);
    dListHead = dList;

    gSPEndDisplayList(dList++);

    return dListHead;
}

Gfx* func_8091AC18(GraphicsContext* gfxCtx) {
    Gfx* dList;
    Gfx* dListHead;

    dList = Graph_Alloc(gfxCtx, sizeof(Gfx) * 4);
    dListHead = dList;

    gDPPipeSync(dList++);
    gDPSetRenderMode(dList++,
                     AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | CVG_X_ALPHA | ALPHA_CVG_SEL |
                         GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1),
                     G_RM_AA_ZB_TEX_EDGE2);
    gSPClearGeometryMode(dList++, G_CULL_BACK);
    gSPEndDisplayList(dList++);

    return dListHead;
}

void BossGoma_Draw(BossGoma* this, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_goma.c", 4991);

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Translate(0.0f, -4000.0f, 0.0f, 1);

    if (this->nok1C2 != 0) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_8091AC18(globalCtx->state.gfxCtx));
    } else {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_8091ABEC(globalCtx->state.gfxCtx));
    }

    SkelAnime_Draw(globalCtx, this->nok14C.skeleton, this->nok14C.limbDrawTbl, func_8091A560, func_8091A9E8,
                   &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_goma.c", 5012);
}

void func_8091ADA8(BossGoma* this, GlobalContext* globalCtx, s16 arg2) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_GOMA, this->nok260.x,
                       this->nok260.y - 50.0f, this->nok260.z, 0, arg2 * 0x5555, 0, arg2);
    this->nok1A4[arg2] = 1;
}
