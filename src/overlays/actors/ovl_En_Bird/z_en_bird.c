/*
 * File: z_en_bird.c
 * Overlay: ovl_En_Bird
 * Description: A brown bird. Tweet tweet.
 */

#include "z_en_bird.h"

#define FLAGS 0x00000000

#define THIS ((EnBird*)thisx)

void EnBird_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBird_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBird_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBird_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809C1E00(EnBird* this, s16 params);
void func_809C1E40(EnBird* this, GlobalContext* globalCtx);
void EnBird_SetupAction(EnBird* this, ActorFunc actionFunc);
void func_809C1D60(EnBird* this, GlobalContext* globalCtx);
void func_809C1CAC(EnBird* this, s16 params);

const ActorInit En_Bird_InitVars = {
    ACTOR_EN_BIRD,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_BIRD,
    sizeof(EnBird),
    (ActorFunc)EnBird_Init,
    (ActorFunc)EnBird_Destroy,
    (ActorFunc)EnBird_Update,
    (ActorFunc)EnBird_Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_F32(unk_4C, 5600, ICHAIN_STOP),
};

extern AnimationHeader D_0600006C;
extern SkeletonHeader D_06002190;

void EnBird_SetupAction(EnBird* this, ActorFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBird_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBird* this = THIS;

    Actor_ProcessInitChain(&this->actor, initChain);
    Actor_SetScale(&this->actor, 0.01);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002190, &D_0600006C, 0, 0, 0);
    ActorShape_Init(&this->actor.shape, 5500, ActorShadow_DrawFunc_Circle, 4);
    this->unk_194 = 0;
    this->unk_198 = 0;
    this->unk_1C0 = 0x9C4;
    this->actor.colChkInfo.mass = 0;
    this->unk_1A8 = 1.5f;
    this->unk_1AC = 0.5f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->unk_1B8 = 0.0f;
    this->unk_1B0 = 40.0f;
    this->unk_1BC = 70.0f;
    func_809C1CAC(this, this->actor.params);
}

void EnBird_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_809C1CAC(EnBird* this, s16 params) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_0600006C);
    f32 playbackSpeed = this->unk_19C ? 0.0f : 1.0f;
    AnimationHeader* anim = &D_0600006C;

    this->unk_198 = Math_Rand_S16Offset(5, 0x23);
    SkelAnime_ChangeAnim(&this->skelAnime, anim, playbackSpeed, 0.0f, frameCount, 0, 0.0f);
    EnBird_SetupAction(this, func_809C1D60);
}

void func_809C1D60(EnBird* this, GlobalContext* globalCtx) {
    f32 fVar2 = sinf(this->unk_1B4);

    this->actor.shape.unk_08 = this->actor.shape.unk_08 + fVar2 * this->unk_1A0;
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);

    if (this->unk_19C != 0) {
        this->skelAnime.animPlaybackSpeed = this->actor.speedXZ + this->actor.speedXZ;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_198 -= 1;

    if (this->unk_198 <= 0) {
        func_809C1E00(this, this->actor.params);
    }
}

void func_809C1E00(EnBird* this, s16 params) {
    this->unk_198 = Math_Rand_S16Offset(0x14, 0x2D);
    EnBird_SetupAction(this, (ActorFunc)func_809C1E40);
}

void func_809C1E40(EnBird* this, GlobalContext* globalCtx) {
    f32 fVar4 = sinf(this->unk_1B4);
    this->actor.shape.unk_08 += fVar4 * this->unk_1A0;
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, this->unk_1A8, 0.1f, this->unk_1AC, 0.0f);

    if (this->unk_1B0 < Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos) || this->unk_198 < 4) {
        func_80077B58(&this->actor.posRot.rot.y, Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos),
                      this->unk_1C0);
    } else {
        fVar4 = sinf(this->unk_1B4);
        this->actor.posRot.rot.y += (s16)(fVar4 * this->unk_1A4);
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_198 -= 1;
    if (this->unk_198 < 0) {
        func_809C1CAC(this, this->actor.params);
    }
}

void EnBird_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBird* this = THIS;

    this->unk_1B4 += this->unk_1B8;
    this->actionFunc(this, globalCtx);
}

void EnBird_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBird* this = THIS;

    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, 0, NULL, NULL);
}
