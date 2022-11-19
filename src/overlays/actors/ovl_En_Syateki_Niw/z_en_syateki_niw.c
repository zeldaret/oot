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
void func_80B129EC(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_DrawEffects(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_SetupArchery(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_Default(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_Archery(EnSyatekiNiw* this, PlayState* play);
void EnSyatekiNiw_ExitArchery(EnSyatekiNiw* this, PlayState* play);

void EnSyatekiNiw_SpawnFeather(EnSyatekiNiw* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale);

ActorInit En_Syateki_Niw_InitVars = {
    ACTOR_EN_SYATEKI_NIW,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_NIW,
    sizeof(EnSyatekiNiw),
    (ActorFunc)EnSyatekiNiw_Init,
    (ActorFunc)EnSyatekiNiw_Destroy,
    (ActorFunc)EnSyatekiNiw_Update,
    (ActorFunc)EnSyatekiNiw_Draw,
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
    if (this->minigameType < MINIGAME_ARCHERY) {
        this->minigameType = MINIGAME_ARCHERY;
    }

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    if (this->minigameType == MINIGAME_ARCHERY) {
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

void func_80B11A94(EnSyatekiNiw* this, PlayState* play, s16 arg2) {
    if (this->timer0 == 0) {
        if (arg2 == 0) {
            this->limbDRotXTarget = 0.0f;
        } else {
            this->limbDRotXTarget = -10000.0f;
        }

        this->unk_28E += 1;
        this->timer0 = 3;
        if (!(this->unk_28E & 1)) {
            this->limbDRotXTarget = 0.0f;
            if (arg2 == 0) {
                this->timer0 = Rand_ZeroFloat(30.0f);
            }
        }
    }

    if (this->timer2 == 0) {
        this->unk_292++;
        this->unk_292 &= 1;
        switch (arg2) {
            case 0:
                this->limb7RotXTarget = 0.0f;
                this->limbBRotXTarget = 0.0f;
                break;

            case 1:
                this->timer2 = 3;
                this->limb7RotXTarget = 7000.0f;
                this->limbBRotXTarget = 7000.0f;
                if (this->unk_292 == 0) {
                    this->limb7RotXTarget = 0.0f;
                    this->limbBRotXTarget = 0.0f;
                }
                break;

            case 2:
                this->timer2 = 2;
                this->limbBRotXTarget = this->limb7RotXTarget = -10000.0f;
                this->limb7RotYTarget = this->limbBRotYTarget = 25000.0f;
                this->limb7RotZTarget = this->limbBRotZTarget = 6000.0f;
                if (this->unk_292 == 0) {
                    this->limbBRotYTarget = 8000.0f;
                    this->limb7RotYTarget = 8000.0f;
                }
                break;

            case 3:
                this->timer2 = 2;
                this->limbBRotYTarget = 10000.0f;
                this->limb7RotYTarget = 10000.0f;
                if (this->unk_292 == 0) {
                    this->limbBRotYTarget = 3000.0f;
                    this->limb7RotYTarget = 3000.0f;
                }
                break;

            case 4:
                this->timer0 = this->timer1 = 5;
                break;

            case 5:
                this->timer2 = 5;
                this->limbBRotYTarget = 14000.0f;
                this->limb7RotYTarget = 14000.0f;
                if (this->unk_292 == 0) {
                    this->limbBRotYTarget = 10000.0f;
                    this->limb7RotYTarget = 10000.0f;
                }
                break;
        }
    }

    if (this->limbDRotXTarget != this->limbDRot.x) {
        Math_ApproachF(&this->limbDRot.x, this->limbDRotXTarget, 0.5f, 4000.0f);
    }

    if (this->limb7RotXTarget != this->limb7Rot.x) {
        Math_ApproachF(&this->limb7Rot.x, this->limb7RotXTarget, 0.8f, 7000.0f);
    }

    if (this->limb7RotYTarget != this->limb7Rot.y) {
        Math_ApproachF(&this->limb7Rot.y, this->limb7RotYTarget, 0.8f, 7000.0f);
    }

    if (this->limb7RotZTarget != this->limb7Rot.z) {
        Math_ApproachF(&this->limb7Rot.z, this->limb7RotZTarget, 0.8f, 7000.0f);
    }

    if (this->limbBRotXTarget != this->limbBRot.x) {
        Math_ApproachF(&this->limbBRot.x, this->limbBRotXTarget, 0.8f, 7000.0f);
    }

    if (this->limbBRotYTarget != this->limbBRot.y) {
        Math_ApproachF(&this->limbBRot.y, this->limbBRotYTarget, 0.8f, 7000.0f);
    }

    if (this->limbBRotZTarget != this->limbBRot.z) {
        Math_ApproachF(&this->limbBRot.z, this->limbBRotZTarget, 0.8f, 7000.0f);
    }
}

void EnSyatekiNiw_SetupDefault(EnSyatekiNiw* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gCuccoAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gCuccoAnim), ANIMMODE_LOOP,
                     -10.0f);
    if (this->minigameType != MINIGAME_ARCHERY) {
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
    s16 sp4A;

    if ((this->unkArcheryBool) && (this->minigameType == MINIGAME_ARCHERY) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        this->unkArcheryBool = false;
        this->actionFunc = EnSyatekiNiw_SetupArchery;
        return;
    }

    sp4A = 0;
    if ((this->unk_25E == 0) && (this->unk_25C == 0)) {
        this->unk_294++;
        if (this->unk_294 >= 8) {
            this->unk_25E = Rand_ZeroFloat(30.0f);
            this->unk_294 = Rand_ZeroFloat(3.99f);

            switch (this->minigameType) {
                case MINIGAME_ARCHERY:
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

                case MINIGAME_ALLEY:
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
            this->unk_25C = 4;
            if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
                this->actor.velocity.y = 2.5f;
                if ((Rand_ZeroFloat(10.0f) < 1.0f) && (this->minigameType == MINIGAME_ARCHERY)) {
                    this->unk_25C = 0xC;
                    this->actor.velocity.y = 10.0f;
                }
            }
        }
    }
    if (this->unk_25C != 0) {
        sp4A = 1;
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
            this->unk_25C = 0;
            this->unk_294 = 7;
        }

        Math_SmoothStepToS(&this->actor.world.rot.y, RAD_TO_BINANG(Math_FAtan2F(posXDiff, posZDiff)), 3, this->posRotStep.z, 0);
        Math_ApproachF(&this->posRotStep.z, 10000.0f, 1.0f, 1000.0f);
    }

    if (this->sootTimer == 0) {
        func_80B11A94(this, play, sp4A);
        return;
    }

    if ((play->gameplayFrames % 4) == 0) { // draw smoke from bombhu hit
        dustVelocity.y = Rand_CenteredFloat(5.0f);
        dustAccel.y = 0.2f;
        dustPos = this->actor.world.pos;
        func_8002836C(play, &dustPos, &dustVelocity, &dustAccel, &dustPrimColor, &dustEnvColor, 600, 40, 30);
    }
}

void EnSyatekiNiw_SetupArchery(EnSyatekiNiw* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gCuccoAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gCuccoAnim), ANIMMODE_LOOP,
                     -10.0f);
    this->limbBRotZTarget = 6000.0f;
    this->unk_288 = -10000.0f;
    this->limbBRot.z = 6000.0f;
    this->limbBRot.y = 10000.0f;
    this->actionFunc = EnSyatekiNiw_Archery;
    this->limb7Rot.z = 6000.0f;
    this->limb7RotZTarget = 6000.0f;
    this->limbBRot.x = -10000.0f;
    this->limbBRotXTarget = -10000.0f;
    this->limb7Rot.y = -10000.0f;
    this->limb7Rot.x = -10000.0f;
    this->limb7RotXTarget = -10000.0f;
}

void EnSyatekiNiw_Archery(EnSyatekiNiw* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 phi_f16 = 0.0f;

    player->actor.freezeTimer = 10;
    switch (this->archeryState) {
        case 0:
            this->unk_296 = 2;
            this->posRotStep.y = 0.0f;
            this->archeryState = 1;
            break;

        case 1:
            this->actor.speedXZ = 2.0f;
            if (this->unk_25C == 0) {
                this->unk_25C = 3;
                this->actor.velocity.y = 3.5f;
            }

            if (this->archeryTimer == 0) {
                this->rotYFlip++;
                this->rotYFlip &= 1;
                this->archeryTimer = 5;
            }

            phi_f16 = (this->rotYFlip == 0) ? 5000.0f : -5000.0f;
            if (this->actor.world.pos.z > 100.0f) {
                this->actor.speedXZ = 2.0f;
                this->actor.gravity = -0.3f;
                this->actor.velocity.y = 5.0f;
                this->archeryState = 2;
            }
            break;

        case 2:
            if ((player->actor.world.pos.z - 40.0f) < this->actor.world.pos.z) {
                this->actor.speedXZ = 0.0f;
            }

            if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) && (this->actor.world.pos.z > 110.0f)) {
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                this->limb7RotZTarget = 0.0f;
                this->limbBRotZTarget = 0.0f;
                this->limbBRotYTarget = 0.0f;
                this->limb7RotYTarget = 0.0f;
                this->unk_288 = 0.0f;
                this->actor.speedXZ = 0.5f;
                this->timer0 = this->timer1 = 0;
                this->unk_28E = this->unk_290 = 0;
                this->unk_296 = 1;
                this->archeryState = 3;
            }
            break;

        case 3:
            if ((player->actor.world.pos.z - 50.0f) < this->actor.world.pos.z) {
                this->actor.speedXZ = 0.0f;
                this->cluckTimer = 60;
                this->archeryTimer = 20;
                this->limbDRotXTarget = 10000.0f;
                this->archeryState = 4;
            }
            break;

        case 4:
            if (this->archeryTimer == 0) {
                this->unk_296 = 4;
                this->limbDRotXTarget = 5000.0f;
                this->limb7RotXTarget = 0.0f;
                this->limbBRotXTarget = 0.0f;
                this->limb7RotZTarget = 0.0f;
                this->limbBRotZTarget = 0.0f;
                this->limb7RotYTarget = 14000.0f;
                this->limbBRotYTarget = 14000.0f;
                Audio_PlayActorSfx2(&this->actor, NA_SE_EV_CHICKEN_CRY_M);
                this->timer0 = this->timer1 = this->archeryTimer = 30;
                this->archeryState = 5;
            }
            break;

        case 5:
            if (this->archeryTimer == 1) {
                this->timer2 = 0;
                this->unk_296 = 5;
                this->timer1 = this->timer2;
                this->timer0 = this->timer2;
                this->actor.speedXZ = 1.0f;
            }

            if ((this->archeryTimer == 0) && ((player->actor.world.pos.z - 30.0f) < this->actor.world.pos.z)) {
                Audio_PlaySfxGeneral(NA_SE_VO_LI_DOWN, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->unk_25E = 20;
                this->archeryState = 6;
                this->actor.speedXZ = 0.0f;
            }
            break;

        case 6:
            if (this->unk_25E == 1) {
                play->transitionTrigger = TRANS_TRIGGER_START;
                play->nextEntranceIndex = gSaveContext.entranceIndex;
                play->shootingGalleryStatus = 0;
                player->actor.freezeTimer = 20;
                this->unk_25E = 20;
                this->actionFunc = EnSyatekiNiw_ExitArchery;
            }
            break;
    }

    Math_SmoothStepToS(&this->actor.world.rot.y,
                       RAD_TO_BINANG(Math_FAtan2F(player->actor.world.pos.x - this->actor.world.pos.x,
                                                  player->actor.world.pos.z - this->actor.world.pos.z)) +
                           phi_f16,
                       5, this->posRotStep.y, 0);
    Math_ApproachF(&this->posRotStep.y, 3000.0f, 1.0f, 500.0f);
    if (this->unk_296 == 2) {
        this->timer1 = 10;
        this->timer0 = this->timer1;
    }

    func_80B11A94(this, play, this->unk_296);
}

void EnSyatekiNiw_ExitArchery(EnSyatekiNiw* this, PlayState* play) {
    if (this->unk_25E == 1) {
        gSaveContext.timerState = TIMER_STATE_OFF;
    }
}

void func_80B128F8(EnSyatekiNiw* this, PlayState* play) {
    s16 sp26;
    s16 sp24;

    Actor_SetFocus(&this->actor, this->focusYOffset);
    Actor_GetScreenPos(play, &this->actor, &sp26, &sp24);
    if ((this->actor.projectedPos.z > 200.0f) && (this->actor.projectedPos.z < 800.0f) && (sp26 > 0) &&
        (sp26 < SCREEN_WIDTH) && (sp24 > 0) && (sp24 < SCREEN_HEIGHT)) {
        this->actor.speedXZ = 5.0f;
        this->rotYFlip = Rand_ZeroFloat(1.99f);
        this->unkRotY = Rand_CenteredFloat(8000.0f) + -10000.0f;
        this->cluckTimer = 30;
        this->unk_25E = 100;
        this->actionFunc = func_80B129EC;
    }
}

void func_80B129EC(EnSyatekiNiw* this, PlayState* play) {
    s32 pad;
    f32 phi_f2;
    s16 screenX;
    s16 screenY;
    f32 rotYTarget;

    Actor_SetFocus(&this->actor, this->focusYOffset);
    Actor_GetScreenPos(play, &this->actor, &screenX, &screenY);
    if ((this->unk_25E == 0) || (this->actor.projectedPos.z < -70.0f) || (screenX < 0) || (screenX > SCREEN_WIDTH) ||
        (screenY < 0) || (screenY > SCREEN_HEIGHT)) {
        Actor_Kill(&this->actor);
        return;
    }

    this->spawnFeathers = true;
    if (this->unk_25C == 0) {
        this->rotYFlip++;
        this->rotYFlip &= 1;
        this->unk_25C = (s16)Rand_CenteredFloat(4.0f) + 5;
        if ((Rand_ZeroFloat(5.0f) < 1.0f) && (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
            this->actor.velocity.y = 4.0f;
        }
    }

    phi_f2 = (this->rotYFlip == 0) ? 5000.0f : -5000.0f;
    rotYTarget = this->unkRotY + phi_f2;
    Math_SmoothStepToS(&this->actor.world.rot.y, rotYTarget, 3, this->posRotStep.y, 0);
    Math_ApproachF(&this->posRotStep.y, 3000.0f, 1.0f, 500.0f);
    func_80B11A94(this, play, 2);
}

void EnSyatekiNiw_CheckHit(EnSyatekiNiw* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        switch (this->minigameType) {
            case MINIGAME_ARCHERY:
                if (!this->unkArcheryBool) {
                    this->cluckTimer = 30;
                    Audio_PlayActorSfx2(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
                    this->unkArcheryBool = true;
                    this->spawnFeathers = true;
                    this->actionFunc = EnSyatekiNiw_SetupArchery;
                    this->actor.gravity = -3.0f;
                }
                break;

            case MINIGAME_ALLEY:
                this->cluckTimer = 30;
                this->unkAlleyHitByte = 1;
                Audio_PlayActorSfx2(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
                this->sootTimer = 100;
                this->spawnFeathers = true;
                this->unk_25E = this->sootTimer;
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
    if (this->timer0 != 0) {
        this->timer0--;
    }

    if (this->timer2 != 0) {
        this->timer2--;
    }

    if (this->archeryTimer != 0) {
        this->archeryTimer--;
    }

    if (this->unk_25C != 0) {
        this->unk_25C--;
    }

    if (this->unk_25E != 0) {
        this->unk_25E--;
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
    Actor_MoveForward(&this->actor);
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
            Audio_PlayActorSfx2(&this->actor, NA_SE_EV_CHICKEN_CRY_N);
        } else {
            this->cluckTimer = 30;
            Audio_PlayActorSfx2(&this->actor, NA_SE_EV_CHICKEN_CRY_A);
        }
    }

    i = 0;
    switch (this->minigameType) {
        case MINIGAME_ARCHERY:
            if (play->shootingGalleryStatus != 0) {
                i = 1;
            }
            break;

        case MINIGAME_ALLEY:
            i = 1;
            break;
    }

    if (i != 0) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

s32 SyatekiNiw_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnSyatekiNiw* this = (EnSyatekiNiw*)thisx;
    Vec3f sp0 = { 0.0f, 0.0f, 0.0f };

    if (limbIndex == 13) {
        rot->y += (s16)this->limbDRot.x;
    }

    if (limbIndex == 11) {
        rot->x += (s16)this->limbBRot.z;
        rot->y += (s16)this->limbBRot.y;
        rot->z += (s16)this->limbBRot.x;
    }

    if (limbIndex == 7) {
        rot->x += (s16)this->limb7Rot.z;
        rot->y += (s16)this->limb7Rot.y;
        rot->z += (s16)this->limb7Rot.x;
    }

    return false;
}

void EnSyatekiNiw_Draw(Actor* thisx, PlayState* play) {
    EnSyatekiNiw* this = (EnSyatekiNiw*)thisx;
    Color_RGBA8 sootShade = { 0, 0, 0, 255 };

    if (this->actionFunc != func_80B128F8) {
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
            effect->rotZPulse = Rand_ZeroFloat(1000.0f);
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
                effect->rotZPulse++;
                Math_ApproachF(&effect->vel.x, 0.0f, 1.0f, 0.05f);
                Math_ApproachF(&effect->vel.z, 0.0f, 1.0f, 0.05f);
                if (effect->vel.y < -0.5f) {
                    effect->vel.y = 0.5f;
                }

                effect->rotZ = (Math_SinS(effect->rotZPulse * 3000) * M_PI) * 0.2f;
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
            Matrix_RotateZ(effect->rotZ, MTXMODE_APPLY);
            Matrix_Translate(0.0f, -1000.0f, 0.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_en_syateki_niw.c", 1251),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, gCuccoEffectFeatherModelDL);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_en_syateki_niw.c", 1257);
}
