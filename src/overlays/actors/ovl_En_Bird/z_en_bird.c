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

void EnBird_SetupMove(EnBird* this, s16 params);
void EnBird_Move(EnBird* this, PlayState* play);
void EnBird_Idle(EnBird* this, PlayState* play);
void EnBird_SetupIdle(EnBird* this, s16 params);

ActorInit En_Bird_InitVars = {
    /**/ ACTOR_EN_BIRD,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_BIRD,
    /**/ sizeof(EnBird),
    /**/ EnBird_Init,
    /**/ EnBird_Destroy,
    /**/ EnBird_Update,
    /**/ EnBird_Draw,
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
    this->speedTarget = 1.5f;
    this->speedStep = 0.5f;
    this->posYMag = 0.0f;
    this->rotYMag = 0.0f;
    this->posYPhaseStep = 0.0f;
    this->flightDistance = 40.0f;
    this->unk_1BC = 70.0f;
    EnBird_SetupIdle(this, this->actor.params);
}

void EnBird_Destroy(Actor* thisx, PlayState* play) {
}

void EnBird_SetupIdle(EnBird* this, s16 params) {
    f32 frameCount = Animation_GetLastFrame(&gBirdFlyAnim);
    f32 playbackSpeed = this->scaleAnimSpeed ? 0.0f : 1.0f;

    this->timer = Rand_S16Offset(5, 35);
    Animation_Change(&this->skelAnime, &gBirdFlyAnim, playbackSpeed, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    EnBird_SetupAction(this, EnBird_Idle);
}

void EnBird_Idle(EnBird* this, PlayState* play) {
    this->actor.shape.yOffset += sinf(this->posYPhase) * this->posYMag;
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 0.1f, 0.5f, 0.0f);

    if (this->scaleAnimSpeed) {
        this->skelAnime.playSpeed = this->actor.speed * 2.0f;
    }

    SkelAnime_Update(&this->skelAnime);
    this->timer--;

    if (this->timer <= 0) {
        EnBird_SetupMove(this, this->actor.params);
    }
}

void EnBird_SetupMove(EnBird* this, s16 params) {
    this->timer = Rand_S16Offset(20, 45);
    EnBird_SetupAction(this, EnBird_Move);
}

void EnBird_Move(EnBird* this, PlayState* play) {
    this->actor.shape.yOffset += sinf(this->posYPhase) * this->posYMag;
    Math_SmoothStepToF(&this->actor.speed, this->speedTarget, 0.1f, this->speedStep, 0.0f);

    if (this->flightDistance < Math_Vec3f_DistXZ(&this->actor.world.pos, &this->actor.home.pos) || this->timer < 4) {
        Math_StepToAngleS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos),
                          this->rotYStep);
    } else {
        this->actor.world.rot.y += (s16)(sinf(this->posYPhase) * this->rotYMag);
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    SkelAnime_Update(&this->skelAnime);
    this->timer--;
    if (this->timer < 0) {
        EnBird_SetupIdle(this, this->actor.params);
    }
}

void EnBird_Update(Actor* thisx, PlayState* play) {
    EnBird* this = (EnBird*)thisx;

    this->posYPhase += this->posYPhaseStep;
    this->actionFunc(this, play);
}

void EnBird_Draw(Actor* thisx, PlayState* play) {
    EnBird* this = (EnBird*)thisx;

    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, NULL);
}
