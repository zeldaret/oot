/*
 * File: z_en_bird.c
 * Overlay: ovl_En_Bird
 * Description: An unused brown bird
 */

#include "z_en_bird.h"
#include "assets/objects/object_bird/object_bird.h"

#define FLAGS 0

void EnBird_Init(Actor* thisx, PlayState* play);
void EnBird_Destroy(Actor* thisx, PlayState* play);
void EnBird_Update(Actor* thisx, PlayState* play);
void EnBird_Draw(Actor* thisx, PlayState* play);

void EnBird_StartMove(EnBird* this, s16 params);
void EnBird_Move(EnBird* this, PlayState* play);
void EnBird_StopMove(EnBird* this, PlayState* play);
void EnBird_Reset(EnBird* this, s16 params);

ActorInit En_Bird_InitVars = {
    ACTOR_EN_BIRD,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_BIRD,
    sizeof(EnBird),
    (ActorFunc)EnBird_Init,
    (ActorFunc)EnBird_Destroy,
    (ActorFunc)EnBird_Update,
    (ActorFunc)EnBird_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(targetArrowOffset, 5600, ICHAIN_STOP),
};

void EnBird_SetupAction(EnBird* this, EnBirdActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBird_Init(Actor* thisx, PlayState* play) {
    EnBird* this = (EnBird*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.01);
    SkelAnime_Init(play, &this->skelAnime, &gBirdSkel, &gBirdFlyAnim, NULL, NULL, 0);
    ActorShape_Init(&this->actor.shape, 5500, ActorShadow_DrawCircle, 4);
    this->unk_194 = 0;
    this->timer = 0;
    this->rotYStep = 2500;
    this->actor.colChkInfo.mass = 0;
    this->speedXZTarget = 1.5f;
    this->speedXZStep = 0.5f;
    this->posYMag = 0.0f;
    this->rotYMag = 0.0f;
    this->posYWaveDelta = 0.0f;
    this->flightDistance = 40.0f;
    this->unk_1BC = 70.0f;
    EnBird_Reset(this, this->actor.params);
}

void EnBird_Destroy(Actor* thisx, PlayState* play) {
}

void EnBird_Reset(EnBird* this, s16 params) {
    f32 frameCount = Animation_GetLastFrame(&gBirdFlyAnim);
    f32 playbackSpeed = this->unk_19C ? 0.0f : 1.0f;
    AnimationHeader* anim = &gBirdFlyAnim;

    this->timer = Rand_S16Offset(5, 35);
    Animation_Change(&this->skelAnime, anim, playbackSpeed, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    EnBird_SetupAction(this, EnBird_StopMove);
}

void EnBird_StopMove(EnBird* this, PlayState* play) {

    this->actor.shape.yOffset += sinf(this->posYWave) * this->posYMag;
    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);

    if (this->unk_19C != 0) {
        this->skelAnime.playSpeed = this->actor.speedXZ + this->actor.speedXZ;
    }

    SkelAnime_Update(&this->skelAnime);
    this->timer -= 1;

    if (this->timer <= 0) {
        EnBird_StartMove(this, this->actor.params);
    }
}

void EnBird_StartMove(EnBird* this, s16 params) {
    this->timer = Rand_S16Offset(20, 45);
    EnBird_SetupAction(this, EnBird_Move);
}

void EnBird_Move(EnBird* this, PlayState* play) {

    this->actor.shape.yOffset += sinf(this->posYWave) * this->posYMag;
    Math_SmoothStepToF(&this->actor.speedXZ, this->speedXZTarget, 0.1f, this->speedXZStep, 0.0f);

    if (this->flightDistance < Math_Vec3f_DistXZ(&this->actor.world.pos, &this->actor.home.pos) || this->timer < 4) {
        Math_StepToAngleS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos),
                          this->rotYStep);
    } else {
        this->actor.world.rot.y += (s16)(sinf(this->posYWave) * this->rotYMag);
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    SkelAnime_Update(&this->skelAnime);
    this->timer -= 1;
    if (this->timer < 0) {
        EnBird_Reset(this, this->actor.params);
    }
}

void EnBird_Update(Actor* thisx, PlayState* play) {
    EnBird* this = (EnBird*)thisx;

    this->posYWave += this->posYWaveDelta;
    this->actionFunc(this, play);
}

void EnBird_Draw(Actor* thisx, PlayState* play) {
    EnBird* this = (EnBird*)thisx;

    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, NULL);
}
