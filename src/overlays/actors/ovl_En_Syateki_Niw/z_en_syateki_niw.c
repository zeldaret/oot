/*
 * File: z_en_syateki_niw.c
 * Overlay: ovl_En_Syateki_Niw
 * Description: Hopping Cucco
 */

#include "z_en_syateki_niw.h"
#include "assets/objects/object_niw/object_niw.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_4

void EnSyatekiNiw_Init(Actor* thisx, PlayState* play);
void EnSyatekiNiw_Destroy(Actor* thisx, PlayState* play);
void EnSyatekiNiw_Update(Actor* thisx, PlayState* play);
void EnSyatekiNiw_Draw(Actor* thisx, PlayState* play);

void EnSyatekiNiw_SetupDefault(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_UpdateEffects(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_Remove(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_DrawEffects(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_SetupArchery(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_Default(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_Archery(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_ExitArchery(EnSyatekiNiw* this, PlayState* play);

void EnSyatekiNiw_SpawnFeather(EnSyatekiNiw* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale);

ActorInit En_Syateki_Niw_InitVars = {
    /**/ ACTOR_EN_SYATEKI_NIW,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_NIW,
    /**/ sizeof(EnSyatekiNiw),
    /**/ EnSyatekiNiw_Init,
    /**/ EnSyatekiNiw_Destroy,
    /**/ EnSyatekiNiw_Update,
    /**/ EnSyatekiNiw_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_HIT5,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 10, 20, 4, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(targetMode, 1, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -1000, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 0, ICHAIN_STOP),
};

void EnSyatekiNiw_Init(Actor* thisx, PlayState* play) {
    EnSyatekiNiw* this = (EnSyatekiNiw*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.flags &= ~ACTOR_FLAG_0;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 25.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gCuccoSkel, &gCuccoAnim, this->jointTable, this->morphTable, 16);

    this->minigameType = this->actor.params;
    if (this->minigameType < 0) {
        this->minigameType = SYATEKI_MINIGAME_ARCHERY;
    }

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    if (this->minigameType == SYATEKI_MINIGAME_ARCHERY) {
        osSyncPrintf("\n\n");
        // "Archery range chicken"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 射的場鶏 ☆☆☆☆☆ \n" VT_RST);
        Actor_SetScale(&this->actor, 0.01f);
    } else {
        osSyncPrintf("\n\n");
        // "Bomb chicken"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ボムにわ！ ☆☆☆☆☆ \n" VT_RST);
        this->actor.colChkInfo.mass = MASS_IMMOVABLE;
        Actor_SetScale(&this->actor, 0.01f);
    }

    this->initPos = this->actor.world.pos;
    this->targetPos = this->actor.world.pos;
    this->actionFunc = EnSyatekiNiw_SetupDefault;
}

void EnSyatekiNiw_Destroy(Actor* thisx, PlayState* play) {
    EnSyatekiNiw* this = (EnSyatekiNiw*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnSyatekiNiw_UpdateRotations(EnSyatekiNiw* this, PlayState* play, s16 animationType) {
    if (this->peckTimer == 0) {
        if (animationType == 0) {
            this->headRotXTarget = 0.0f;
        } else {
            this->headRotXTarget = -10000.0f;
        }

        this->headRotXState++;
        this->peckTimer = 3;
        if (!(this->headRotXState & 1)) {
            this->headRotXTarget = 0.0f;
            if (animationType == 0) {
                this->peckTimer = Rand_ZeroFloat(30.0f);
            }
        }
    }

    if (this->flapTimer == 0) {
        this->wingsRotState++;
        this->wingsRotState &= 1;
        switch (animationType) {
            case 0:
                this->leftWingRotXTarget = 0.0f;
                this->rightWingRotXTarget = 0.0f;
                break;

            case 1:
                this->flapTimer = 3;
                this->leftWingRotXTarget = 7000.0f;
                this->rightWingRotXTarget = 7000.0f;
                if (this->wingsRotState == 0) {
                    this->leftWingRotXTarget = 0.0f;
                    this->rightWingRotXTarget = 0.0f;
                }
                break;

            case 2:
                this->flapTimer = 2;
                this->rightWingRotXTarget = this->leftWingRotXTarget = -10000.0f;
                this->leftWingRotYTarget = this->rightWingRotYTarget = 25000.0f;
                this->leftWingRotZTarget = this->rightWingRotZTarget = 6000.0f;
                if (this->wingsRotState == 0) {
                    this->rightWingRotYTarget = 8000.0f;
                    this->leftWingRotYTarget = 8000.0f;
                }
                break;

            case 3:
                this->flapTimer = 2;
                this->rightWingRotYTarget = 10000.0f;
                this->leftWingRotYTarget = 10000.0f;
                if (this->wingsRotState == 0) {
                    this->rightWingRotYTarget = 3000.0f;
                    this->leftWingRotYTarget = 3000.0f;
                }
                break;

            case 4:
                this->peckTimer = this->timer1 = 5;
                break;

            case 5:
                this->flapTimer = 5;
                this->rightWingRotYTarget = 14000.0f;
                this->leftWingRotYTarget = 14000.0f;
                if (this->wingsRotState == 0) {
                    this->rightWingRotYTarget = 10000.0f;
                    this->leftWingRotYTarget = 10000.0f;
                }
                break;
        }
    }

    if (this->headRotXTarget != this->headRot.x) {
        Math_ApproachF(&this->headRot.x, this->headRotXTarget, 0.5f, 4000.0f);
    }

    if (this->leftWingRotXTarget != this->leftWingRot.x) {
        Math_ApproachF(&this->leftWingRot.x, this->leftWingRotXTarget, 0.8f, 7000.0f);
    }

    if (this->leftWingRotYTarget != this->leftWingRot.y) {
        Math_ApproachF(&this->leftWingRot.y, this->leftWingRotYTarget, 0.8f, 7000.0f);
    }

    if (this->leftWingRotZTarget != this->leftWingRot.z) {
        Math_ApproachF(&this->leftWingRot.z, this->leftWingRotZTarget, 0.8f, 7000.0f);
    }

    if (this->rightWingRotXTarget != this->rightWingRot.x) {
        Math_ApproachF(&this->rightWingRot.x, this->rightWingRotXTarget, 0.8f, 7000.0f);
    }

    if (this->rightWingRotYTarget != this->rightWingRot.y) {
        Math_ApproachF(&this->rightWingRot.y, this->rightWingRotYTarget, 0.8f, 7000.0f);
    }

    if (this->rightWingRotZTarget != this->rightWingRot.z) {
        Math_ApproachF(&this->rightWingRot.z, this->rightWingRotZTarget, 0.8f, 7000.0f);
    }
}

void EnSyatekiNiw_SetupDefault(EnSyatekiNiw* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gCuccoAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gCuccoAnim), ANIMMODE_LOOP,
                     -10.0f);
    if (this->minigameType != SYATEKI_MINIGAME_ARCHERY) {
        Actor_SetScale(&this->actor, this->scale);
    }

    this->actionFunc = EnSyatekiNiw_Default;
}

void EnSyatekiNiw_Default(EnSyatekiNiw* this, PlayState* play) {
    Vec3f dustVelocity = { 0.0f, 0.0f, 0.0f };
    Vec3f dustAccel = { 0.0f, 0.2f, 0.0f };
    Color_RGBA8 dustPrimColor = { 0, 0, 0, 255 };
    Color_RGBA8 dustEnvColor = { 0, 0, 0, 255 };
    Vec3f dustPos;
    f32 posZDiff;
    f32 posZMod;
    f32 posXMod;
    f32 posXDiff;
    s16 animationType;

    if (this->isFalling && (this->minigameType == SYATEKI_MINIGAME_ARCHERY) &&
        (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        this->isFalling = false;
        this->actionFunc = EnSyatekiNiw_SetupArchery;
        return;
    }

    animationType = 0;
    if ((this->movementTimer == 0) && (this->hopTimer == 0)) {
        this->targetPosTimer++;
        if (this->targetPosTimer >= 8) {
            this->movementTimer = Rand_ZeroFloat(30.0f);
            this->targetPosTimer = Rand_ZeroFloat(3.99f);

            switch (this->minigameType) {
                case SYATEKI_MINIGAME_ARCHERY:
                    posXMod = Rand_CenteredFloat(100.0f);
                    if (posXMod < 0.0f) {
                        posXMod -= 100.0f;
                    } else {
                        posXMod += 100.0f;
                    }

                    posZMod = Rand_CenteredFloat(100.0f);
                    if (posZMod < 0.0f) {
                        posZMod -= 100.0f;
                    } else {
                        posZMod += 100.0f;
                    }

                    this->targetPos.x = this->initPos.x + posXMod;
                    this->targetPos.z = this->initPos.z + posZMod;

                    if (this->targetPos.x < -150.0f) {
                        this->targetPos.x = -150.0f;
                    }

                    if (this->targetPos.x > 150.0f) {
                        this->targetPos.x = 150.0f;
                    }

                    if (this->targetPos.z < -60.0f) {
                        this->targetPos.z = -60.0f;
                    }

                    if (this->targetPos.z > -40.0f) {
                        this->targetPos.z = -40.0f;
                    }
                    break;

                case SYATEKI_MINIGAME_ALLEY:
                    posXMod = Rand_CenteredFloat(50.0f);
                    if (posXMod < 0.0f) {
                        posXMod -= 50.0f;
                    } else {
                        posXMod += 50.0f;
                    }

                    posZMod = Rand_CenteredFloat(30.0f);
                    if (posZMod < 0.0f) {
                        posZMod -= 30.0f;
                    } else {
                        posZMod += 30.0f;
                    }

                    this->targetPos.x = this->initPos.x + posXMod;
                    this->targetPos.z = this->initPos.z + posZMod;
                    break;
            }
        } else {
            this->hopTimer = 4;
            if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
                this->actor.velocity.y = 2.5f;
                if ((Rand_ZeroFloat(10.0f) < 1.0f) && (this->minigameType == SYATEKI_MINIGAME_ARCHERY)) {
                    this->hopTimer = 12;
                    this->actor.velocity.y = 10.0f;
                }
            }
        }
    }
    if (this->hopTimer != 0) {
        animationType = 1;
        Math_ApproachF(&this->actor.world.pos.x, this->targetPos.x, 1.0f, this->posRotStep.y);
        Math_ApproachF(&this->actor.world.pos.z, this->targetPos.z, 1.0f, this->posRotStep.y);
        Math_ApproachF(&this->posRotStep.y, 3.0f, 1.0f, 0.3f);
        posXDiff = this->targetPos.x - this->actor.world.pos.x;
        posZDiff = this->targetPos.z - this->actor.world.pos.z;

        if (fabsf(posXDiff) < 10.0f) {
            posXDiff = 0;
        }

        if (fabsf(posZDiff) < 10.0f) {
            posZDiff = 0.0f;
        }

        if ((posXDiff == 0.0f) && (posZDiff == 0.0f)) {
            this->hopTimer = 0;
            this->targetPosTimer = 7;
        }

        Math_SmoothStepToS(&this->actor.world.rot.y, RAD_TO_BINANG(Math_FAtan2F(posXDiff, posZDiff)), 3,
                           this->posRotStep.z, 0);
        Math_ApproachF(&this->posRotStep.z, 10000.0f, 1.0f, 1000.0f);
    }

    if (this->sootTimer == 0) {
        EnSyatekiNiw_UpdateRotations(this, play, animationType);
    } else if ((play->gameplayFrames % 4) == 0) { // draw smoke from bombchu hit
        dustVelocity.y = Rand_CenteredFloat(5.0f);
        dustAccel.y = 0.2f;
        dustPos = this->actor.world.pos;
        func_8002836C(play, &dustPos, &dustVelocity, &dustAccel, &dustPrimColor, &dustEnvColor, 600, 40, 30);
    }
}

void EnSyatekiNiw_SetupArchery(EnSyatekiNiw* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gCuccoAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gCuccoAnim), ANIMMODE_LOOP,
                     -10.0f);
    this->rightWingRotZTarget = 6000.0f;
    this->unkArcheryFloat = -10000.0f;
    this->rightWingRot.z = 6000.0f;
    this->rightWingRot.y = 10000.0f;
    this->actionFunc = EnSyatekiNiw_Archery;
    this->leftWingRot.z = 6000.0f;
    this->leftWingRotZTarget = 6000.0f;
    this->rightWingRot.x = -10000.0f;
    this->rightWingRotXTarget = -10000.0f;
    this->leftWingRot.y = -10000.0f;
    this->leftWingRot.x = -10000.0f;
    this->leftWingRotXTarget = -10000.0f;
}

void EnSyatekiNiw_Archery(EnSyatekiNiw* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 rotYTargetOffset = 0.0f;

    player->actor.freezeTimer = 10;
    switch (this->archeryState) {
        case 0:
            this->archeryAnimationType = 2;
            this->posRotStep.y = 0.0f;
            this->archeryState = 1;
            break;

        case 1:
            this->actor.speed = 2.0f;
            if (this->hopTimer == 0) {
                this->hopTimer = 3;
                this->actor.velocity.y = 3.5f;
            }

            if (this->archeryTimer == 0) {
                this->rotYFlip++;
                this->rotYFlip &= 1;
                this->archeryTimer = 5;
            }

            rotYTargetOffset = (this->rotYFlip == 0) ? 5000.0f : -5000.0f;
            if (this->actor.world.pos.z > 100.0f) {
                this->actor.speed = 2.0f;
                this->actor.gravity = -0.3f;
                this->actor.velocity.y = 5.0f;
                this->archeryState = 2;
            }
            break;

        case 2:
            if ((player->actor.world.pos.z - 40.0f) < this->actor.world.pos.z) {
                this->actor.speed = 0.0f;
            }

            if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) && (this->actor.world.pos.z > 110.0f)) {
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                this->leftWingRotZTarget = 0.0f;
                this->rightWingRotZTarget = 0.0f;
                this->rightWingRotYTarget = 0.0f;
                this->leftWingRotYTarget = 0.0f;
                this->unkArcheryFloat = 0.0f;
                this->actor.speed = 0.5f;
                this->peckTimer = this->timer1 = 0;
                this->headRotXState = this->unk_290 = 0;
                this->archeryAnimationType = 1;
                this->archeryState = 3;
            }
            break;

        case 3:
            if ((player->actor.world.pos.z - 50.0f) < this->actor.world.pos.z) {
                this->actor.speed = 0.0f;
                this->cluckTimer = 60;
                this->archeryTimer = 20;
                this->headRotXTarget = 10000.0f;
                this->archeryState = 4;
            }
            break;

        case 4:
            if (this->archeryTimer == 0) {
                this->archeryAnimationType = 4;
                this->headRotXTarget = 5000.0f;
                this->leftWingRotXTarget = 0.0f;
                this->rightWingRotXTarget = 0.0f;
                this->leftWingRotZTarget = 0.0f;
                this->rightWingRotZTarget = 0.0f;
                this->leftWingRotYTarget = 14000.0f;
                this->rightWingRotYTarget = 14000.0f;
                Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
                this->peckTimer = this->timer1 = this->archeryTimer = 30;
                this->archeryState = 5;
            }
            break;

        case 5:
            if (this->archeryTimer == 1) {
                this->flapTimer = 0;
                this->archeryAnimationType = 5;
                this->timer1 = this->flapTimer;
                this->peckTimer = this->flapTimer;
                this->actor.speed = 1.0f;
            }

            if ((this->archeryTimer == 0) && ((player->actor.world.pos.z - 30.0f) < this->actor.world.pos.z)) {
                Audio_PlaySfxGeneral(NA_SE_VO_LI_DOWN, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->movementTimer = 20;
                this->archeryState = 6;
                this->actor.speed = 0.0f;
            }
            break;

        case 6:
            if (this->movementTimer == 1) {
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->nextEntranceIndex = gSaveContext.save.entranceIndex;
                play->shootingGalleryStatus = 0;
                player->actor.freezeTimer = 20;
                this->movementTimer = 20;
                this->actionFunc = EnSyatekiNiw_ExitArchery;
            }
            break;
    }

    Math_SmoothStepToS(&this->actor.world.rot.y,
                       RAD_TO_BINANG(Math_FAtan2F(player->actor.world.pos.x - this->actor.world.pos.x,
                                                  player->actor.world.pos.z - this->actor.world.pos.z)) +
                           rotYTargetOffset,
                       5, this->posRotStep.y, 0);
    Math_ApproachF(&this->posRotStep.y, 3000.0f, 1.0f, 500.0f);
    if (this->archeryAnimationType == 2) {
        this->peckTimer = this->timer1 = 10;
    }

    EnSyatekiNiw_UpdateRotations(this, play, this->archeryAnimationType);
}

void EnSyatekiNiw_ExitArchery(EnSyatekiNiw* this, PlayState* play) {
    if (this->movementTimer == 1) {
        gSaveContext.timerState = TIMER_STATE_OFF;
    }
}

void EnSyatekiNiw_SetupRemove(EnSyatekiNiw* this, PlayState* play) {
    s16 screenX;
    s16 screenY;

    Actor_SetFocus(&this->actor, this->focusYOffset);
    Actor_GetScreenPos(play, &this->actor, &screenX, &screenY);
    if ((this->actor.projectedPos.z > 200.0f) && (this->actor.projectedPos.z < 800.0f) && (screenX > 0) &&
        (screenX < SCREEN_WIDTH) && (screenY > 0) && (screenY < SCREEN_HEIGHT)) {
        this->actor.speed = 5.0f;
        this->rotYFlip = Rand_ZeroFloat(1.99f);
        this->removeStateYaw = Rand_CenteredFloat(8000.0f) + -10000.0f;
        this->cluckTimer = 30;
        this->movementTimer = 100;
        this->actionFunc = EnSyatekiNiw_Remove;
    }
}

void EnSyatekiNiw_Remove(EnSyatekiNiw* this, PlayState* play) {
    s32 pad;
    f32 rotYTargetOffset;
    s16 screenX;
    s16 screenY;
    f32 rotYTarget;

    Actor_SetFocus(&this->actor, this->focusYOffset);
    Actor_GetScreenPos(play, &this->actor, &screenX, &screenY);
    if ((this->movementTimer == 0) || (this->actor.projectedPos.z < -70.0f) || (screenX < 0) ||
        (screenX > SCREEN_WIDTH) || (screenY < 0) || (screenY > SCREEN_HEIGHT)) {
        Actor_Kill(&this->actor);
        return;
    }

    this->spawnFeathers = true;
    if (this->hopTimer == 0) {
        this->rotYFlip++;
        this->rotYFlip &= 1;
        this->hopTimer = (s16)Rand_CenteredFloat(4.0f) + 5;
        if ((Rand_ZeroFloat(5.0f) < 1.0f) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            this->actor.velocity.y = 4.0f;
        }
    }

    rotYTargetOffset = (this->rotYFlip == 0) ? 5000.0f : -5000.0f;
    rotYTarget = this->removeStateYaw + rotYTargetOffset;
    Math_SmoothStepToS(&this->actor.world.rot.y, rotYTarget, 3, this->posRotStep.y, 0);
    Math_ApproachF(&this->posRotStep.y, 3000.0f, 1.0f, 500.0f);
    EnSyatekiNiw_UpdateRotations(this, play, 2);
}

void EnSyatekiNiw_CheckHit(EnSyatekiNiw* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        switch (this->minigameType) {
            case SYATEKI_MINIGAME_ARCHERY:
                if (!this->isFalling) {
                    this->cluckTimer = 30;
                    Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
                    this->isFalling = true;
                    this->spawnFeathers = true;
                    this->actionFunc = EnSyatekiNiw_SetupArchery;
                    this->actor.gravity = -3.0f;
                }
                break;

            case SYATEKI_MINIGAME_ALLEY:
                this->cluckTimer = 30;
                this->unkAlleyHitByte = 1;
                Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
                this->sootTimer = 100;
                this->spawnFeathers = true;
                this->movementTimer = this->sootTimer;
                break;
        }
    }
}

void EnSyatekiNiw_Update(Actor* thisx, PlayState* play) {
    EnSyatekiNiw* this = (EnSyatekiNiw*)thisx;
    s32 pad;
    s16 i;
    Vec3f sp90 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp84 = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;
    Vec3f vel;
    Vec3f accel;

    if (1) {}
    if (1) {}
    if (1) {}

    EnSyatekiNiw_UpdateEffects(this, play);
    this->lifetime++;
    if (this->peckTimer != 0) {
        this->peckTimer--;
    }

    if (this->flapTimer != 0) {
        this->flapTimer--;
    }

    if (this->archeryTimer != 0) {
        this->archeryTimer--;
    }

    if (this->hopTimer != 0) {
        this->hopTimer--;
    }

    if (this->movementTimer != 0) {
        this->movementTimer--;
    }

    if (this->cluckTimer != 0) {
        this->cluckTimer--;
    }

    if (this->sootTimer != 0) {
        this->sootTimer--;
    }

    this->actor.shape.rot = this->actor.world.rot;
    this->actor.shape.shadowScale = 15.0f;

    this->actionFunc(this, play);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 60.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);

    if (this->spawnFeathers) {
        for (i = 0; i < 20; i++) {
            pos.x = Rand_CenteredFloat(10.0f) + this->actor.world.pos.x;
            pos.y = Rand_CenteredFloat(10.0f) + (this->actor.world.pos.y + 20.0f);
            pos.z = Rand_CenteredFloat(10.0f) + this->actor.world.pos.z;
            vel.x = Rand_CenteredFloat(3.0f);
            vel.y = (Rand_ZeroFloat(2.0f) * 0.5f) + 2.0f;
            vel.z = Rand_CenteredFloat(3.0f);
            accel.z = accel.x = 0.0f;
            accel.y = -0.15f;
            EnSyatekiNiw_SpawnFeather(this, &pos, &vel, &accel, Rand_ZeroFloat(8.0f) + 8.0f);
        }

        this->spawnFeathers = false;
    }

    EnSyatekiNiw_CheckHit(this, play);
    if (this->cluckTimer == 0) {
        if (this->actionFunc == EnSyatekiNiw_Default) {
            this->cluckTimer = 300;
            Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_N);
        } else {
            this->cluckTimer = 30;
            Actor_PlaySfx(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
        }
    }

    // here, "i" doubles as boolean value.
    i = false;
    switch (this->minigameType) {
        case SYATEKI_MINIGAME_ARCHERY:
            if (play->shootingGalleryStatus != 0) {
                i = true;
            }
            break;

        case SYATEKI_MINIGAME_ALLEY:
            i = true;
            break;
    }

    if (i) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

s32 SyatekiNiw_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnSyatekiNiw* this = (EnSyatekiNiw*)thisx;
    Vec3f unusedZeroVec = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 13) {
        rot->y += (s16)this->headRot.x;
    }

    if (limbIndex == 11) {
        rot->x += (s16)this->rightWingRot.z;
        rot->y += (s16)this->rightWingRot.y;
        rot->z += (s16)this->rightWingRot.x;
    }

    if (limbIndex == 7) {
        rot->x += (s16)this->leftWingRot.z;
        rot->y += (s16)this->leftWingRot.y;
        rot->z += (s16)this->leftWingRot.x;
    }

    return false;
}

void EnSyatekiNiw_Draw(Actor* thisx, PlayState* play) {
    EnSyatekiNiw* this = (EnSyatekiNiw*)thisx;
    Color_RGBA8 sootShade = { 0, 0, 0, 255 };

    if (this->actionFunc != EnSyatekiNiw_SetupRemove) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        if (this->sootTimer != 0) {
            func_80026230(play, &sootShade, 0, 20);
        }

        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              SyatekiNiw_OverrideLimbDraw, NULL, this);
        func_80026608(play);
        EnSyatekiNiw_DrawEffects(this, play);
    }
}

void EnSyatekiNiw_SpawnFeather(EnSyatekiNiw* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale) {
    s16 i;
    EnSyatekiNiwEffect* effect = &this->effects[0];

    for (i = 0; i < EN_SYATEKI_NIW_EFFECT_COUNT; i++, effect++) {
        if (effect->state == 0) {
            effect->state = 1;
            effect->pos = *pos;
            effect->vel = *vel;
            effect->accel = *accel;
            effect->timer = 0;
            effect->scale = (scale / 1000.0f);
            effect->lifespan = (s16)Rand_ZeroFloat(20.0f) + 40;
            effect->rotPulse = Rand_ZeroFloat(1000.0f);
            return;
        }
    }
}

void EnSyatekiNiw_UpdateEffects(EnSyatekiNiw* this, PlayState* play) {
    s16 i;
    EnSyatekiNiwEffect* effect = &this->effects[0];

    for (i = 0; i < EN_SYATEKI_NIW_EFFECT_COUNT; i++, effect++) {
        if (effect->state != 0) {
            effect->pos.x += effect->vel.x;
            effect->pos.y += effect->vel.y;
            effect->pos.z += effect->vel.z;
            effect->timer++;
            effect->vel.x += effect->accel.x;
            effect->vel.y += effect->accel.y;
            effect->vel.z += effect->accel.z;
            if (effect->state == 1) {
                effect->rotPulse++;
                Math_ApproachF(&effect->vel.x, 0.0f, 1.0f, 0.05f);
                Math_ApproachF(&effect->vel.z, 0.0f, 1.0f, 0.05f);
                if (effect->vel.y < -0.5f) {
                    effect->vel.y = 0.5f;
                }

                effect->rot = (Math_SinS(effect->rotPulse * 3000) * M_PI) * 0.2f;
                if (effect->lifespan < effect->timer) {
                    effect->state = 0;
                }
            }
        }
    }
}

void EnSyatekiNiw_DrawEffects(EnSyatekiNiw* this, PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s16 i;
    EnSyatekiNiwEffect* effect = &this->effects[0];
    u8 materialFlag = 0;

    OPEN_DISPS(gfxCtx, "../z_en_syateki_niw.c", 1234);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    for (i = 0; i < EN_SYATEKI_NIW_EFFECT_COUNT; i++, effect++) {
        if (effect->state == 1) {
            if (materialFlag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, gCuccoEffectFeatherMaterialDL);
                materialFlag++;
            }

            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_ReplaceRotation(&play->billboardMtxF);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(effect->rot, MTXMODE_APPLY);
            Matrix_Translate(0.0f, -1000.0f, 0.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_syateki_niw.c", 1251),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gCuccoEffectFeatherModelDL);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_en_syateki_niw.c", 1257);
}
