/*
 * File: z_boss_fd2.c
 * Overlay: ovl_Boss_Fd2
 * Description: Volvagia, hole form
 */

#include "z_boss_fd2.h"
#include "assets/objects/object_fd2/object_fd2.h"
#include "overlays/actors/ovl_Boss_Fd/z_boss_fd.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"
#include "terminal.h"

#define FLAGS                                                                                 \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_DRAW_CULLING_DISABLED)

typedef enum BossFd2CutsceneState {
    /* 0 */ DEATH_START,
    /* 1 */ DEATH_RETREAT,
    /* 2 */ DEATH_HANDOFF,
    /* 3 */ DEATH_FD_BODY,
    /* 4 */ DEATH_FD_SKULL,
    /* 5 */ DEATH_FINISH
} BossFd2CutsceneState;

typedef enum BossFd2EyeState {
    /* 0 */ EYE_OPEN,
    /* 1 */ EYE_HALF,
    /* 2 */ EYE_CLOSED
} BossFd2EyeState;

void BossFd2_Init(Actor* thisx, PlayState* play);
void BossFd2_Destroy(Actor* thisx, PlayState* play);
void BossFd2_Update(Actor* thisx, PlayState* play2);
void BossFd2_Draw(Actor* thisx, PlayState* play);

void BossFd2_SetupEmerge(BossFd2* this, PlayState* play);
void BossFd2_Emerge(BossFd2* this, PlayState* play);
void BossFd2_SetupIdle(BossFd2* this, PlayState* play);
void BossFd2_Idle(BossFd2* this, PlayState* play);
void BossFd2_Burrow(BossFd2* this, PlayState* play);
void BossFd2_SetupBreatheFire(BossFd2* this, PlayState* play);
void BossFd2_BreatheFire(BossFd2* this, PlayState* play);
void BossFd2_SetupClawSwipe(BossFd2* this, PlayState* play);
void BossFd2_ClawSwipe(BossFd2* this, PlayState* play);
void BossFd2_Vulnerable(BossFd2* this, PlayState* play);
void BossFd2_Damaged(BossFd2* this, PlayState* play);
void BossFd2_Death(BossFd2* this, PlayState* play);
void BossFd2_Wait(BossFd2* this, PlayState* play);

ActorProfile Boss_Fd2_Profile = {
    /**/ ACTOR_BOSS_FD2,
    /**/ ACTORCAT_BOSS,
    /**/ FLAGS,
    /**/ OBJECT_FD2,
    /**/ sizeof(BossFd2),
    /**/ BossFd2_Init,
    /**/ BossFd2_Destroy,
    /**/ BossFd2_Update,
    /**/ BossFd2_Draw,
};

#include "z_boss_fd2_colchk.inc.c"

static Vec3f sHoleLocations[] = {
    { 0.0f, 90.0f, -243.0f },    { 0.0f, 90.0f, 0.0f },    { 0.0f, 90.0f, 243.0f },
    { -243.0f, 90.0f, -243.0f }, { -243.0f, 90.0f, 0.0f }, { -243.0f, 90.0f, 243.0f },
    { 243.0f, 90.0f, -243.0f },  { 243.0f, 90.0f, 0.0f },  { 243.0f, 90.0f, 243.0f },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(attentionRangeType, ATTENTION_RANGE_5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, NAVI_ENEMY_VOLVAGIA, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 0, ICHAIN_STOP),
};

void BossFd2_SpawnDebris(PlayState* play, BossFdEffect* effect, Vec3f* position, Vec3f* velocity, Vec3f* acceleration,
                         f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == BFD_FX_NONE) {
            effect->type = BFD_FX_DEBRIS;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->scale = scale / 1000.0f;
            effect->vFdFxRotX = Rand_ZeroFloat(100.0f);
            effect->vFdFxRotY = Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd2_SpawnFireBreath(PlayState* play, BossFdEffect* effect, Vec3f* position, Vec3f* velocity,
                             Vec3f* acceleration, f32 scale, s16 alpha, s16 kbAngle) {
    s16 i;

    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == BFD_FX_NONE) {
            effect->type = BFD_FX_FIRE_BREATH;
            effect->timer1 = 0;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->pos.x -= effect->velocity.x;
            effect->pos.y -= effect->velocity.y;
            effect->pos.z -= effect->velocity.z;
            effect->vFdFxScaleMod = 0.0f;
            effect->alpha = alpha;
            effect->vFdFxYStop = Rand_ZeroFloat(10.0f);
            effect->timer2 = 0;
            effect->scale = scale / 400.0f;
            effect->kbAngle = kbAngle;
            break;
        }
    }
}

void BossFd2_SpawnEmber(PlayState* play, BossFdEffect* effect, Vec3f* position, Vec3f* velocity, Vec3f* acceleration,
                        f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == 0) {
            effect->type = BFD_FX_EMBER;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->scale = scale / 1000.0f;
            effect->alpha = 255;
            effect->timer1 = (s16)Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

void BossFd2_SpawnSkullPiece(PlayState* play, BossFdEffect* effect, Vec3f* position, Vec3f* velocity,
                             Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == BFD_FX_NONE) {
            effect->type = BFD_FX_SKULL_PIECE;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->scale = scale / 1000.0f;
            effect->vFdFxRotX = Rand_ZeroFloat(100.0f);
            effect->vFdFxRotY = Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd2_SpawnDust(BossFdEffect* effect, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i;

    for (i = 0; i < 180; i++, effect++) {
        if (effect->type == BFD_FX_NONE) {
            effect->type = BFD_FX_DUST;
            effect->pos = *position;
            effect->velocity = *velocity;
            effect->accel = *acceleration;
            effect->timer2 = 0;
            effect->scale = scale / 400.0f;
            break;
        }
    }
}

void BossFd2_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BossFd2* this = (BossFd2*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.0069999993f);
    this->actor.world.pos.y = -850.0f;
    ActorShape_Init(&this->actor.shape, -580.0f / this->actor.scale.y, NULL, 0.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gHoleVolvagiaSkel, &gHoleVolvagiaIdleAnim, NULL, NULL, 0);
    if (this->actor.params == BFD_CS_NONE) {
        BossFd2_SetupEmerge(this, play);
    } else {
        this->actionFunc = BossFd2_Wait;
    }
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, &this->actor, &sJntSphInit, this->elements);
}

void BossFd2_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    BossFd2* this = (BossFd2*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
    Collider_DestroyJntSph(play, &this->collider);
}

void BossFd2_SetupEmerge(BossFd2* this, PlayState* play) {
    BossFd* bossFd = (BossFd*)this->actor.parent;
    s16 temp_rand;
    s8 health;

    PRINTF("UP INIT 1\n");
    Animation_PlayOnce(&this->skelAnime, &gHoleVolvagiaEmergeAnim);
    this->actionFunc = BossFd2_Emerge;
    this->skelAnime.playSpeed = 0.0f;
    temp_rand = Rand_ZeroFloat(8.9f);
    this->actor.world.pos.x = sHoleLocations[temp_rand].x;
    this->actor.world.pos.z = sHoleLocations[temp_rand].z;
    this->work[FD2_ACTION_STATE] = 0;
    PRINTF("UP INIT 2\n");
    this->timers[0] = 10;
    if (bossFd != NULL) {
        health = bossFd->actor.colChkInfo.health;
        if (health >= 18) {
            this->work[FD2_FAKEOUT_COUNT] = 0;
        } else if (health >= 12) {
            this->work[FD2_FAKEOUT_COUNT] = 1;
        } else if (health >= 6) {
            this->work[FD2_FAKEOUT_COUNT] = 2;
        } else {
            this->work[FD2_FAKEOUT_COUNT] = 3;
        }
    }
}

void BossFd2_Emerge(BossFd2* this, PlayState* play) {
    s16 holeTime;
    BossFd* bossFd = (BossFd*)this->actor.parent;
    Player* player = GET_PLAYER(play);
    s16 i;

    PRINTF("UP 1    mode %d\n", this->work[FD2_ACTION_STATE]);
    SkelAnime_Update(&this->skelAnime);
    PRINTF("UP 1.5 \n");
    switch (this->work[FD2_ACTION_STATE]) {
        case 0:
            PRINTF("UP time %d \n", this->timers[0]);
            PRINTF("PL time %x \n", player);
            PRINTF("MT time %x \n", bossFd);
            if ((this->timers[0] == 0) && (player->actor.world.pos.y > 70.0f)) {
                s8 health;

                PRINTF("UP 1.6 \n");
                bossFd->faceExposed = 0;
                bossFd->holePosition.x = this->actor.world.pos.x;
                bossFd->holePosition.z = this->actor.world.pos.z;
                Actor_RequestQuakeWithSpeed(play, 1, 50, 0x5000);
                this->work[FD2_ACTION_STATE] = 1;
                this->work[FD2_HOLE_COUNTER]++;
                this->actor.world.pos.y = -200.0f;
                health = bossFd->actor.colChkInfo.health;
                if (health == 24) {
                    holeTime = 30;
                } else if (health >= 18) {
                    holeTime = 25;
                } else if (health >= 12) {
                    holeTime = 20;
                } else if (health >= 6) {
                    holeTime = 10;
                } else {
                    holeTime = 5;
                }
                this->timers[0] = holeTime;
                bossFd->timers[4] = this->timers[0] + 10;
                PRINTF("UP 1.7 \n");
            }
            break;
        case 1:
            if (this->timers[0] == 0) {
                if (this->work[FD2_FAKEOUT_COUNT] != 0) {
                    this->work[FD2_FAKEOUT_COUNT]--;
                    i = Rand_ZeroFloat(8.9f);
                    this->actor.world.pos.x = sHoleLocations[i].x;
                    this->actor.world.pos.z = sHoleLocations[i].z;
                    this->work[FD2_ACTION_STATE] = 0;
                    this->timers[0] = 10;
                } else {
                    this->skelAnime.playSpeed = 1.0f;
                    this->fwork[FD2_END_FRAME] = Animation_GetLastFrame(&gHoleVolvagiaEmergeAnim);
                    this->work[FD2_ACTION_STATE] = 2;
                    Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_ROAR);
                    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
                    this->timers[0] = 15;
                    this->actor.world.pos.y = 150.0f;
                    for (i = 0; i < 10; i++) {
                        this->rightMane.pos[i].x += Rand_CenteredFloat(100.0f);
                        this->rightMane.pos[i].z += Rand_CenteredFloat(100.0f);
                        this->leftMane.pos[i].x += Rand_CenteredFloat(100.0f);
                        this->leftMane.pos[i].z += Rand_CenteredFloat(100.0f);
                    }
                    bossFd->work[BFD_SPLASH_TIMER] = 5;
                }
            }
            break;
        case 2:
            Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 0x7D0);
            if ((this->timers[0] == 1) && (this->actor.xzDistToPlayer < 120.0f)) {
                Actor_SetPlayerKnockbackLarge(play, &this->actor, 3.0f, this->actor.yawTowardsPlayer, 2.0f, 0x20);
                Actor_PlaySfx(&player->actor, NA_SE_PL_BODY_HIT);
            }
            if (Animation_OnFrame(&this->skelAnime, this->fwork[FD2_END_FRAME])) {
                BossFd2_SetupIdle(this, play);
            }
            break;
    }
    PRINTF("UP 2\n");
}

void BossFd2_SetupIdle(BossFd2* this, PlayState* play) {
    BossFd* bossFd = (BossFd*)this->actor.parent;
    s8 health;
    s16 idleTime;

    PRINTF("UP INIT 1\n");
    Animation_PlayLoop(&this->skelAnime, &gHoleVolvagiaTurnAnim);
    this->actionFunc = BossFd2_Idle;
    health = bossFd->actor.colChkInfo.health;
    if (health == 24) {
        idleTime = 50;
    } else if (health >= 18) {
        idleTime = 40;
    } else if (health >= 12) {
        idleTime = 40;
    } else if (health >= 6) {
        idleTime = 30;
    } else {
        idleTime = 20;
    }
    this->timers[0] = idleTime;
}

void BossFd2_Idle(BossFd2* this, PlayState* play) {
    s16 prevToLink;

    SkelAnime_Update(&this->skelAnime);
    prevToLink = this->work[FD2_TURN_TO_LINK];
    this->work[FD2_TURN_TO_LINK] =
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 3, 0x7D0, 0);
    PRINTF("SW1 = %d\n", prevToLink);
    PRINTF("SW2 = %d\n", this->work[FD2_TURN_TO_LINK]);
    if ((fabsf(prevToLink) <= 1000.0f) && (1000.0f < fabsf(this->work[FD2_TURN_TO_LINK]))) {
        Animation_MorphToLoop(&this->skelAnime, &gHoleVolvagiaTurnAnim, -5.0f);
    }
    if ((1000.0f < fabsf(prevToLink)) && (fabsf(this->work[FD2_TURN_TO_LINK]) <= 1000.0f)) {
        Animation_MorphToLoop(&this->skelAnime, &gHoleVolvagiaIdleAnim, -5.0f);
    }
    if (this->timers[0] == 0) {
        if (this->actor.xzDistToPlayer < 200.0f) {
            BossFd2_SetupClawSwipe(this, play);
        } else {
            BossFd2_SetupBreatheFire(this, play);
        }
    }
}

void BossFd2_SetupBurrow(BossFd2* this, PlayState* play) {
    BossFd* bossFd = (BossFd*)this->actor.parent;

    Animation_MorphToPlayOnce(&this->skelAnime, &gHoleVolvagiaBurrowAnim, -5.0f);
    this->actionFunc = BossFd2_Burrow;
    this->fwork[FD2_END_FRAME] = Animation_GetLastFrame(&gHoleVolvagiaBurrowAnim);
    bossFd->timers[4] = 30;
    this->work[FD2_ACTION_STATE] = 0;
}

void BossFd2_Burrow(BossFd2* this, PlayState* play) {
    BossFd* bossFd = (BossFd*)this->actor.parent;

    if (this->work[FD2_ACTION_STATE] == 0) {
        SkelAnime_Update(&this->skelAnime);
        if (Animation_OnFrame(&this->skelAnime, this->fwork[FD2_END_FRAME])) {
            this->work[FD2_ACTION_STATE] = 1;
            this->timers[0] = 25;
        }
    } else {
        Math_ApproachF(&this->actor.world.pos.y, -100.0f, 1.0f, 10.0f);
        if (this->timers[0] == 0) {
            if ((this->work[FD2_HOLE_COUNTER] >= 3) && ((s8)bossFd->actor.colChkInfo.health < 24)) {
                this->work[FD2_HOLE_COUNTER] = 0;
                this->actionFunc = BossFd2_Wait;
                bossFd->handoffSignal = FD2_SIGNAL_FLY;
            } else {
                BossFd2_SetupEmerge(this, play);
            }
        }
    }
}

void BossFd2_SetupBreatheFire(BossFd2* this, PlayState* play) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gHoleVolvagiaBreatheFireAnim, -5.0f);
    this->actionFunc = BossFd2_BreatheFire;
    this->fwork[FD2_END_FRAME] = Animation_GetLastFrame(&gHoleVolvagiaBreatheFireAnim);
    this->work[FD2_ACTION_STATE] = 0;
}

static Vec3f sUnkVec = { 0.0f, 0.0f, 50.0f }; // Unused? BossFd uses a similar array for its fire breath sfx.

void BossFd2_BreatheFire(BossFd2* this, PlayState* play) {
    s16 i;
    Vec3f toLink;
    s16 angleX;
    s16 angleY;
    s16 breathOpacity = 0;
    BossFd* bossFd = (BossFd*)this->actor.parent;
    Player* player = GET_PLAYER(play);
    f32 tempX;
    f32 tempY;

    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, this->fwork[FD2_END_FRAME])) {
        BossFd2_SetupBurrow(this, play);
    }
    if ((25.0f <= this->skelAnime.curFrame) && (this->skelAnime.curFrame < 70.0f)) {
        if (this->skelAnime.curFrame == 25.0f) {
            play->envCtx.lightBlend = 0.0f;
        }
        Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_FIRE - SFX_FLAG);
        if (this->skelAnime.curFrame > 50) {
            breathOpacity = (70.0f - this->skelAnime.curFrame) * 12.0f;
        } else {
            breathOpacity = 255;
        }
        toLink.x = player->actor.world.pos.x - this->headPos.x;
        toLink.y = player->actor.world.pos.y - this->headPos.y;
        toLink.z = player->actor.world.pos.z - this->headPos.z;
        angleY = Math_Atan2S(toLink.z, toLink.x);
        angleX = -Math_Atan2S(sqrtf(SQ(toLink.x) + SQ(toLink.z)), toLink.y);
        angleY -= this->actor.shape.rot.y;
        if (angleY > 0x1F40) {
            angleY = 0x1F40;
        }
        if (angleY < -0x1F40) {
            angleY = -0x1F40;
        }
        angleX += (-0x1B58);
        if (angleX > 0x3E8) {
            angleX = 0x3E8;
        }
        if (angleX < -0xFA0) {
            angleX = -0xFA0;
        }
        Math_ApproachS(&this->headRot.y, angleY, 5, 0x7D0);
        Math_ApproachS(&this->headRot.x, angleX, 5, 0x7D0);
    } else {
        Math_ApproachS(&this->headRot.y, 0, 5, 0x7D0);
        Math_ApproachS(&this->headRot.x, 0, 5, 0x7D0);
    }
    if (breathOpacity != 0) {
        f32 breathScale;
        Vec3f spawnSpeed = { 0.0f, 0.0f, 0.0f };
        Vec3f spawnVel;
        Vec3f spawnAccel = { 0.0f, 0.0f, 0.0f };
        Vec3f spawnPos;

        bossFd->fogMode = 2;
        spawnSpeed.z = 30.0f;
        spawnPos = this->headPos;

        tempY = BINANG_TO_RAD_ALT(this->actor.shape.rot.y + this->headRot.y);
        tempX = BINANG_TO_RAD_ALT(this->headRot.x) + 1.0f / 2;
        Matrix_RotateY(tempY, MTXMODE_NEW);
        Matrix_RotateX(tempX, MTXMODE_APPLY);
        Matrix_MultVec3f(&spawnSpeed, &spawnVel);

        breathScale = 300.0f + 50.0f * Math_SinS(this->work[FD2_VAR_TIMER] * 0x2000);
        BossFd2_SpawnFireBreath(play, bossFd->effects, &spawnPos, &spawnVel, &spawnAccel, breathScale, breathOpacity,
                                this->actor.shape.rot.y + this->headRot.y);

        spawnPos.x += spawnVel.x * 0.5f;
        spawnPos.y += spawnVel.y * 0.5f;
        spawnPos.z += spawnVel.z * 0.5f;

        breathScale = 300.0f + 50.0f * Math_SinS(this->work[FD2_VAR_TIMER] * 0x2000);
        BossFd2_SpawnFireBreath(play, bossFd->effects, &spawnPos, &spawnVel, &spawnAccel, breathScale, breathOpacity,
                                this->actor.shape.rot.y + this->headRot.y);

        spawnSpeed.x = 0.0f;
        spawnSpeed.y = 17.0f;
        spawnSpeed.z = 0.0f;

        for (i = 0; i < 6; i++) {
            tempY = Rand_ZeroFloat(2.0f * M_PI);
            tempX = Rand_ZeroFloat(2.0f * M_PI);
            Matrix_RotateY(tempY, MTXMODE_NEW);
            Matrix_RotateX(tempX, MTXMODE_APPLY);
            Matrix_MultVec3f(&spawnSpeed, &spawnVel);

            spawnAccel.x = (spawnVel.x * -10.0f) / 100.0f;
            spawnAccel.y = (spawnVel.y * -10.0f) / 100.0f;
            spawnAccel.z = (spawnVel.z * -10.0f) / 100.0f;

            BossFd2_SpawnEmber(play, bossFd->effects, &this->headPos, &spawnVel, &spawnAccel,
                               (s16)Rand_ZeroFloat(2.0f) + 8);
        }
    }
}

void BossFd2_SetupClawSwipe(BossFd2* this, PlayState* play) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gHoleVolvagiaClawSwipeAnim, -5.0f);
    this->actionFunc = BossFd2_ClawSwipe;
    this->fwork[FD2_END_FRAME] = Animation_GetLastFrame(&gHoleVolvagiaClawSwipeAnim);
}

void BossFd2_ClawSwipe(BossFd2* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_ROAR);
        Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_SW_NAIL);
    }
    if (Animation_OnFrame(&this->skelAnime, this->fwork[FD2_END_FRAME])) {
        BossFd2_SetupBurrow(this, play);
    }
}

void BossFd2_SetupVulnerable(BossFd2* this, PlayState* play) {
    Animation_PlayOnce(&this->skelAnime, &gHoleVolvagiaKnockoutAnim);
    this->fwork[FD2_END_FRAME] = Animation_GetLastFrame(&gHoleVolvagiaKnockoutAnim);
    this->actionFunc = BossFd2_Vulnerable;
    this->work[FD2_ACTION_STATE] = 0;
}

void BossFd2_Vulnerable(BossFd2* this, PlayState* play) {
    BossFd* bossFd = (BossFd*)this->actor.parent;
    s16 i;

    this->disableAT = true;
    this->actor.flags |= ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER;
    SkelAnime_Update(&this->skelAnime);
    switch (this->work[FD2_ACTION_STATE]) {
        case 0:
            if (Animation_OnFrame(&this->skelAnime, 13.0f)) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_MAHI2);
            }
            if (Animation_OnFrame(&this->skelAnime, this->fwork[FD2_END_FRAME] - 3.0f)) {
                for (i = 0; i < 25; i++) {
                    Vec3f spawnVel;
                    Vec3f spawnAccel = { 0.0f, 0.0f, 0.0f };
                    Vec3f spawnPos;

                    spawnVel.x = Rand_CenteredFloat(8.0f);
                    spawnVel.y = Rand_ZeroFloat(1.0f);
                    spawnVel.z = Rand_CenteredFloat(8.0f);

                    spawnAccel.y = 0.5f;

                    spawnPos.x = Rand_CenteredFloat(10.0f) + this->actor.focus.pos.x;
                    spawnPos.y = Rand_CenteredFloat(10.0f) + this->actor.focus.pos.y;
                    spawnPos.z = Rand_CenteredFloat(10.0f) + this->actor.focus.pos.z;

                    BossFd2_SpawnDust(bossFd->effects, &spawnPos, &spawnVel, &spawnAccel,
                                      Rand_ZeroFloat(100.0f) + 300.0f);
                }
                Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_LAND);
            }
            if (Animation_OnFrame(&this->skelAnime, this->fwork[FD2_END_FRAME])) {
                Animation_MorphToLoop(&this->skelAnime, &gHoleVolvagiaVulnerableAnim, -5.0f);
                this->work[FD2_ACTION_STATE] = 1;
                this->timers[0] = 60;
            }
            break;
        case 1:
            if ((this->work[FD2_VAR_TIMER] & 0xF) == 0xF) {
                Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_KNOCKOUT);
            }
            if (this->timers[0] == 0) {
                BossFd2_SetupBurrow(this, play);
            }
            break;
    }
}

void BossFd2_SetupDamaged(BossFd2* this, PlayState* play) {
    Animation_PlayOnce(&this->skelAnime, &gHoleVolvagiaHitAnim);
    this->fwork[FD2_END_FRAME] = Animation_GetLastFrame(&gHoleVolvagiaHitAnim);
    this->actionFunc = BossFd2_Damaged;
    this->work[FD2_ACTION_STATE] = 0;
}

void BossFd2_Damaged(BossFd2* this, PlayState* play) {
    BossFd* bossFd = (BossFd*)this->actor.parent;

    SkelAnime_Update(&this->skelAnime);
    this->disableAT = true;
    if (this->work[FD2_ACTION_STATE] == 0) {
        if (Animation_OnFrame(&this->skelAnime, this->fwork[FD2_END_FRAME])) {
            Animation_PlayOnce(&this->skelAnime, &gHoleVolvagiaDamagedAnim);
            this->fwork[FD2_END_FRAME] = Animation_GetLastFrame(&gHoleVolvagiaDamagedAnim);
            this->work[FD2_ACTION_STATE] = 1;
        }
    } else if (this->work[FD2_ACTION_STATE] == 1) {
        if (Animation_OnFrame(&this->skelAnime, 6.0f)) {
            Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_DAMAGE2);
        }
        if (Animation_OnFrame(&this->skelAnime, 20.0f)) {
            bossFd->timers[4] = 30;
        }
        if (Animation_OnFrame(&this->skelAnime, this->fwork[FD2_END_FRAME])) {
            this->work[FD2_ACTION_STATE] = 2;
            this->timers[0] = 25;
        }
    } else {
        Math_ApproachF(&this->actor.world.pos.y, -100.0f, 1.0f, 10.0f);
        if (this->timers[0] == 0) {
            this->actionFunc = BossFd2_Wait;
            bossFd->handoffSignal = FD2_SIGNAL_FLY;
        }
    }
}

void BossFd2_SetupDeath(BossFd2* this, PlayState* play) {
    this->fwork[FD2_END_FRAME] = Animation_GetLastFrame(&gHoleVolvagiaDamagedAnim);
    Animation_Change(&this->skelAnime, &gHoleVolvagiaDamagedAnim, 1.0f, 0.0f, this->fwork[FD2_END_FRAME],
                     ANIMMODE_ONCE_INTERP, -3.0f);
    this->actionFunc = BossFd2_Death;
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->deathState = DEATH_START;
}

void BossFd2_UpdateCamera(BossFd2* this, PlayState* play) {
    if (this->subCamId != SUB_CAM_ID_DONE) {
        Math_ApproachF(&this->subCamEye.x, this->subCamEyeNext.x, this->subCamEyeMaxVelFrac.x,
                       this->subCamEyeVel.x * this->subCamVelFactor);
        Math_ApproachF(&this->subCamEye.y, this->subCamEyeNext.y, this->subCamEyeMaxVelFrac.y,
                       this->subCamEyeVel.y * this->subCamVelFactor);
        Math_ApproachF(&this->subCamEye.z, this->subCamEyeNext.z, this->subCamEyeMaxVelFrac.z,
                       this->subCamEyeVel.z * this->subCamVelFactor);
        Math_ApproachF(&this->subCamAt.x, this->subCamAtNext.x, this->subCamAtMaxVelFrac.x,
                       this->subCamAtVel.x * this->subCamVelFactor);
        Math_ApproachF(&this->subCamAt.y, this->subCamAtNext.y, this->subCamAtMaxVelFrac.y,
                       this->subCamAtVel.y * this->subCamVelFactor);
        Math_ApproachF(&this->subCamAt.z, this->subCamAtNext.z, this->subCamAtMaxVelFrac.z,
                       this->subCamAtVel.z * this->subCamVelFactor);
        Math_ApproachF(&this->subCamVelFactor, 1.0f, 1.0f, this->subCamAccel);
        this->subCamAt.y += this->subCamAtYOffset;
        Play_SetCameraAtEye(play, this->subCamId, &this->subCamAt, &this->subCamEye);
        Math_ApproachF(&this->subCamAtYOffset, 0.0f, 1.0f, 0.1f);
    }
}

void BossFd2_Death(BossFd2* this, PlayState* play) {
    f32 retreatSpeed;
    Vec3f sp70;
    Vec3f sp64;
    BossFd* bossFd = (BossFd*)this->actor.parent;
    Camera* mainCam = Play_GetCamera(play, CAM_ID_MAIN);
    f32 pad3;
    f32 pad2;
    f32 pad1;
    SkelAnime* skelAnime = &this->skelAnime;

    SkelAnime_Update(skelAnime);
    switch (this->deathState) {
        case DEATH_START:
            this->deathState = DEATH_RETREAT;
            Cutscene_StartManual(play, &play->csCtx);
            Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
            this->subCamId = Play_CreateSubCamera(play);
            Play_ChangeCameraStatus(play, CAM_ID_MAIN, CAM_STAT_WAIT);
            Play_ChangeCameraStatus(play, this->subCamId, CAM_STAT_ACTIVE);
            this->subCamEye = mainCam->eye;
            this->subCamAt = mainCam->at;
            this->subCamEyeVel.x = 100.0f;
            this->subCamEyeVel.y = 100.0f;
            this->subCamEyeVel.z = 100.0f;
            this->subCamAtVel.x = 100.0f;
            this->subCamAtVel.y = 100.0f;
            this->subCamAtVel.z = 100.0f;
            this->subCamAccel = 0.02f;
            this->timers[0] = 0;
            this->work[FD2_HOLE_COUNTER] = 0;
            this->subCamEyeMaxVelFrac.x = 0.1f;
            this->subCamEyeMaxVelFrac.y = 0.1f;
            this->subCamEyeMaxVelFrac.z = 0.1f;
            this->subCamAtMaxVelFrac.x = 0.1f;
            this->subCamAtMaxVelFrac.y = 0.1f;
            this->subCamAtMaxVelFrac.z = 0.1f;
            FALLTHROUGH;
        case DEATH_RETREAT:
            this->work[FD2_HOLE_COUNTER]++;
            if (this->work[FD2_HOLE_COUNTER] < 15) {
                retreatSpeed = 1.0f;
            } else if (this->work[FD2_HOLE_COUNTER] < 20) {
                retreatSpeed = 0.5f;
            } else {
                retreatSpeed = 0.25f;
            }
            if ((this->work[FD2_HOLE_COUNTER] == 1) || (this->work[FD2_HOLE_COUNTER] == 40)) {
                this->work[FD2_SCREAM_TIMER] = 20;
                if (this->work[FD2_HOLE_COUNTER] == 40) {
                    Audio_StopSfxById(NA_SE_EN_VALVAISA_DEAD);
                }

                Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_DAMAGE2);
            }
            Math_ApproachF(&this->skelAnime.playSpeed, retreatSpeed, 1.0f, 1.0f);
            Matrix_RotateY(BINANG_TO_RAD_ALT(this->actor.yawTowardsPlayer) + 0.2f, MTXMODE_NEW);
            sp70.x = 0.0f;
            sp70.y = 0.0f;
            sp70.z = 250.0f;
            Matrix_MultVec3f(&sp70, &sp64);
            this->subCamEyeNext.x = this->actor.world.pos.x + sp64.x;
            this->subCamEyeNext.y = 140.0f;
            this->subCamEyeNext.z = this->actor.world.pos.z + sp64.z;
            if (this->actor.focus.pos.y >= 90.0f) {
                this->subCamAtNext.y = this->actor.focus.pos.y;
                this->subCamAtNext.x = this->actor.focus.pos.x;
                this->subCamAtNext.z = this->actor.focus.pos.z;
            }
            if (this->timers[0] == 0) {
                if (Animation_OnFrame(skelAnime, 20.0f)) {
                    bossFd->timers[4] = 60;
                }
                if (this->work[FD2_HOLE_COUNTER] >= 100) {
                    this->deathState = DEATH_HANDOFF;
                    this->timers[0] = 50;
                }
            } else if (Animation_OnFrame(skelAnime, 15.0f)) {
                Animation_MorphToPlayOnce(skelAnime, &gHoleVolvagiaDamagedAnim, -10.0f);
            }
            break;
        case DEATH_HANDOFF:
            if (this->timers[0] == 0) {
                this->actor.draw = NULL;
                this->deathState = DEATH_FD_BODY;
                bossFd->handoffSignal = FD2_SIGNAL_DEATH;
                this->work[FD2_ACTION_STATE] = 0;
                this->subCamVelFactor = 0.0f;
            } else {
                Math_ApproachF(&this->actor.world.pos.y, -100.0f, 1.0f, 5.0f);
            }
            break;
        case DEATH_FD_BODY:
            if (bossFd->actor.world.pos.y < 80.0f) {
                if (bossFd->actor.world.rot.x > 0x3000) {
                    this->subCamAtNext = bossFd->actor.world.pos;
                    this->subCamAtNext.y = 80.0f;
                    this->subCamEyeNext.x = bossFd->actor.world.pos.x;
                    this->subCamEyeNext.y = 150.0f;
                    this->subCamEyeNext.z = bossFd->actor.world.pos.z + 300.0f;
                }
            } else {
                this->subCamAtNext = bossFd->actor.world.pos;
                this->subCamEyeNext.x = this->actor.world.pos.x;
                Math_ApproachF(&this->subCamEyeNext.y, 200.0f, 1.0f, 2.0f);
                Math_ApproachF(&this->subCamEyeNext.z, bossFd->actor.world.pos.z + 200.0f, 1.0f, 3.0f);
                if (this->work[FD2_ACTION_STATE] == 0) {
                    this->work[FD2_ACTION_STATE]++;
                    this->subCamVelFactor = 0.0f;
                    this->subCamAccel = 0.02f;
                    Player_SetCsActionWithHaltedActors(play, &bossFd->actor, PLAYER_CSACTION_1);
                }
            }
            if ((bossFd->work[BFD_ACTION_STATE] == BOSSFD_BONES_FALL) && (bossFd->timers[0] == 5)) {
                this->deathState = DEATH_FD_SKULL;
                this->subCamVelFactor = 0.0f;
                this->subCamAccel = 0.02f;
                this->subCamEyeNext.y = 150.0f;
                this->subCamEyeNext.z = bossFd->actor.world.pos.z + 300.0f;
            }
            break;
        case DEATH_FD_SKULL:
            Math_ApproachF(&this->subCamAtNext.y, 100.0, 1.0f, 100.0f);
            this->subCamAtNext.x = 0.0f;
            this->subCamAtNext.z = 0.0f;
            this->subCamEyeNext.x = 0.0f;
            this->subCamEyeNext.y = 140.0f;
            Math_ApproachF(&this->subCamEyeNext.z, 220.0f, 0.5f, 1.15f);
            if (bossFd->work[BFD_CAM_SHAKE_TIMER] != 0) {
                f32 cameraShake;

                bossFd->work[BFD_CAM_SHAKE_TIMER]--;
                cameraShake = bossFd->work[BFD_CAM_SHAKE_TIMER] / 0.5f;
                if (cameraShake >= 20.0f) {
                    cameraShake = 20.0f;
                }
                this->subCamAtYOffset = (bossFd->work[BFD_CAM_SHAKE_TIMER] & 1) ? cameraShake : -cameraShake;
            }
            if (bossFd->work[BFD_ACTION_STATE] == BOSSFD_SKULL_BURN) {
                this->deathState = DEATH_FINISH;
                mainCam->eye = this->subCamEye;
                mainCam->eyeNext = this->subCamEye;
                mainCam->at = this->subCamAt;
                Play_ReturnToMainCam(play, this->subCamId, 0);
                this->subCamId = SUB_CAM_ID_DONE;
                Cutscene_StopManual(play, &play->csCtx);
                Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
                Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_DOOR_WARP1, 0.0f, 100.0f, 0.0f, 0, 0, 0,
                                   WARP_DUNGEON_ADULT);
                Flags_SetClear(play, play->roomCtx.curRoom.num);
            }
            break;
        case DEATH_FINISH:
            break;
    }
    BossFd2_UpdateCamera(this, play);
}

void BossFd2_Wait(BossFd2* this, PlayState* play) {
    BossFd* bossFd = (BossFd*)this->actor.parent;

    if (bossFd->handoffSignal == FD2_SIGNAL_GROUND) {
        bossFd->handoffSignal = FD2_SIGNAL_NONE;
        BossFd2_SetupEmerge(this, play);
        this->timers[0] = 20;
        this->work[FD2_HOLE_COUNTER] = 0;
    }
}

void BossFd2_CollisionCheck(BossFd2* this, PlayState* play) {
    s16 i;
    ColliderElement* acHitElem;
    BossFd* bossFd = (BossFd*)this->actor.parent;

    if (this->actionFunc == BossFd2_ClawSwipe) {
        Player* player = GET_PLAYER(play);

        for (i = 0; i < ARRAY_COUNT(this->elements); i++) {
            if (this->collider.elements[i].base.atElemFlags & ATELEM_HIT) {
                this->collider.elements[i].base.atElemFlags &= ~ATELEM_HIT;
                Actor_PlaySfx(&player->actor, NA_SE_PL_BODY_HIT);
            }
        }
    }
    if (!bossFd->faceExposed) {
        this->collider.elements[0].base.elemMaterial = ELEM_MATERIAL_UNK2;
        this->collider.base.colMaterial = COL_MATERIAL_METAL;
    } else {
        this->collider.elements[0].base.elemMaterial = ELEM_MATERIAL_UNK3;
        this->collider.base.colMaterial = COL_MATERIAL_HIT3;
    }

    if (this->collider.elements[0].base.acElemFlags & ACELEM_HIT) {
        this->collider.elements[0].base.acElemFlags &= ~ACELEM_HIT;

        acHitElem = this->collider.elements[0].base.acHitElem;
        if (!bossFd->faceExposed) {
            if (acHitElem->atDmgInfo.dmgFlags & DMG_HAMMER) {
                bossFd->actor.colChkInfo.health -= 2;
                if ((s8)bossFd->actor.colChkInfo.health <= 2) {
                    bossFd->actor.colChkInfo.health = 1;
                }
                bossFd->faceExposed = true;
                BossFd2_SetupVulnerable(this, play);
                this->work[FD2_INVINC_TIMER] = 30;
                this->work[FD2_DAMAGE_FLASH_TIMER] = 5;
                Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_MAHI1);
                for (i = 0; i < 30; i++) {
                    Vec3f debrisVel = { 0.0f, 0.0f, 0.0f };
                    Vec3f debrisAccel = { 0.0f, -1.0f, 0.0f };
                    Vec3f debrisPos;

                    debrisVel.x = Rand_CenteredFloat(10.0f);
                    debrisVel.y = Rand_ZeroFloat(5.0f) + 8.0f;
                    debrisVel.z = Rand_CenteredFloat(10.0f);

                    debrisPos.x = this->actor.focus.pos.x;
                    debrisPos.y = this->actor.focus.pos.y;
                    debrisPos.z = this->actor.focus.pos.z;

                    BossFd2_SpawnDebris(play, bossFd->effects, &debrisPos, &debrisVel, &debrisAccel,
                                        (s16)Rand_ZeroFloat(10.0) + 10);
                }
            }
        } else {
            u8 canKill = false;
            u8 damage;

            if ((damage = CollisionCheck_GetSwordDamage(acHitElem->atDmgInfo.dmgFlags)) == 0) {
                damage = (acHitElem->atDmgInfo.dmgFlags & DMG_ARROW_ICE) ? 4 : 2;
            } else {
                canKill = true;
            }
            if (acHitElem->atDmgInfo.dmgFlags & DMG_HOOKSHOT) {
                damage = 0;
            }
            if (((s8)bossFd->actor.colChkInfo.health > 2) || canKill) {
                bossFd->actor.colChkInfo.health -= damage;
                PRINTF_COLOR_GREEN();
                PRINTF("damage   %d\n", damage);
            }
            PRINTF_RST();
            PRINTF("hp %d\n", bossFd->actor.colChkInfo.health);

            if ((s8)bossFd->actor.colChkInfo.health <= 0) {
                bossFd->actor.colChkInfo.health = 0;
                BossFd2_SetupDeath(this, play);
                this->work[FD2_DAMAGE_FLASH_TIMER] = 10;
                this->work[FD2_INVINC_TIMER] = 30000;
                SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 1);
                Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_DEAD);
                Enemy_StartFinishingBlow(play, &this->actor);
            } else if (damage) {
                BossFd2_SetupDamaged(this, play);
                this->work[FD2_DAMAGE_FLASH_TIMER] = 10;
                this->work[FD2_INVINC_TIMER] = 100;
                Actor_PlaySfx(&this->actor, NA_SE_EN_VALVAISA_DAMAGE1);
            }
            if (damage) {
                for (i = 0; i < 30; i++) {
                    Vec3f pieceVel = { 0.0f, 0.0f, 0.0f };
                    Vec3f pieceAccel = { 0.0f, -1.0f, 0.0f };
                    Vec3f piecePos;

                    pieceVel.x = Rand_CenteredFloat(6.0f);
                    pieceVel.y = Rand_ZeroFloat(4.0f) + 6.0f;
                    pieceVel.z = Rand_CenteredFloat(6.0f);

                    piecePos.x = this->actor.focus.pos.x;
                    piecePos.y = this->actor.focus.pos.y;
                    piecePos.z = this->actor.focus.pos.z;

                    BossFd2_SpawnSkullPiece(play, bossFd->effects, &piecePos, &pieceVel, &pieceAccel,
                                            (s16)Rand_ZeroFloat(6.0f) + 10);
                }
            }
        }
    }
}

void BossFd2_UpdateFace(BossFd2* this, PlayState* play) {
    f32 maxOpen;
    f32 openRate;
    s16 eyeStates[5] = { EYE_OPEN, EYE_HALF, EYE_CLOSED, EYE_CLOSED, EYE_HALF };

    if (((this->work[FD2_VAR_TIMER] % 8) == 0) && (Rand_ZeroOne() < 0.3f)) {
        this->work[FD2_BLINK_TIMER] = 4;
    }
    if ((this->actionFunc == BossFd2_Vulnerable) || (this->actionFunc == BossFd2_Damaged)) {
        if (this->work[FD2_VAR_TIMER] & 0x10) {
            this->eyeState = EYE_HALF;
        } else {
            this->eyeState = EYE_CLOSED;
        }
    } else {
        this->eyeState = eyeStates[this->work[FD2_BLINK_TIMER]];
    }

    if (this->work[FD2_BLINK_TIMER] != 0) {
        this->work[FD2_BLINK_TIMER]--;
    }

    if (this->work[FD2_SCREAM_TIMER] != 0) {
        maxOpen = 6000.0f;
        openRate = 1300.0f;
    } else {
        maxOpen = (this->work[FD2_VAR_TIMER] & 0x10) ? 1000.0f : 0.0f;
        openRate = 700.0f;
    }
    Math_ApproachF(&this->jawOpening, maxOpen, 0.3f, openRate);

    if (this->work[FD2_SCREAM_TIMER] != 0) {
        this->work[FD2_SCREAM_TIMER]--;
    }
}

void BossFd2_Update(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BossFd2* this = (BossFd2*)thisx;
    s16 i;

    PRINTF("FD2 move start \n");
    this->disableAT = false;
    this->actor.flags &= ~ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER;
    this->work[FD2_VAR_TIMER]++;
    this->work[FD2_UNK_TIMER]++;

    this->actionFunc(this, play);

    for (i = 0; i < ARRAY_COUNT(this->timers); i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }
    if (this->work[FD2_DAMAGE_FLASH_TIMER] != 0) {
        this->work[FD2_DAMAGE_FLASH_TIMER]--;
    }
    if (this->work[FD2_INVINC_TIMER] != 0) {
        this->work[FD2_INVINC_TIMER]--;
    }

    if (this->deathState == DEATH_START) {
        if (this->work[FD2_INVINC_TIMER] == 0) {
            BossFd2_CollisionCheck(this, play);
        }
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        if (!this->disableAT) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }
    }

    BossFd2_UpdateFace(this, play);
    this->fwork[FD2_TEX1_SCROLL_X] += 4.0f;
    this->fwork[FD2_TEX1_SCROLL_Y] = 120.0f;
    this->fwork[FD2_TEX2_SCROLL_X] += 3.0f;
    this->fwork[FD2_TEX2_SCROLL_Y] -= 2.0f;
    if (this->actor.focus.pos.y < 90.0f) {
        this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    } else {
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
    }
}

s32 BossFd2_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BossFd2* this = (BossFd2*)thisx;
    BossFd* bossFd = (BossFd*)this->actor.parent;

    if (limbIndex == 31) {
        rot->y -= (f32)this->headRot.y;
        rot->z += (f32)this->headRot.x;
    }
    switch (limbIndex) {
        case 35:
        case 36:
            rot->z -= this->jawOpening * 0.1f;
            break;
        case 32:
            rot->z += this->jawOpening;
            break;
    }
    if ((bossFd->faceExposed == 1) && (limbIndex == 35)) {
        *dList = gHoleVolvagiaBrokenFaceDL;
    }

    if ((limbIndex == 32) || (limbIndex == 35) || (limbIndex == 36)) {
        OPEN_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2165);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, (s8)bossFd->fwork[BFD_HEAD_TEX2_ALPHA]);
        CLOSE_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2172);
    } else {
        OPEN_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2174);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, (s8)bossFd->fwork[BFD_BODY_TEX2_ALPHA]);
        CLOSE_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2181);
    }
    if ((0 < limbIndex) && (limbIndex < 16)) {
        *dList = NULL;
    }
    return false;
}

void BossFd2_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f targetMod = { 4500.0f, 0.0f, 0.0f };
    static Vec3f headMod = { 4000.0f, 0.0f, 0.0f };
    static Vec3f centerManeMod = { 4000.0f, -2900.0, 2000.0f };
    static Vec3f rightManeMod = { 4000.0f, -1600.0, 0.0f };
    static Vec3f leftManeMod = { 4000.0f, -1600.0, -2000.0f };
    BossFd2* this = (BossFd2*)thisx;

    if (limbIndex == 35) {
        Matrix_MultVec3f(&targetMod, &this->actor.focus.pos);
        Matrix_MultVec3f(&headMod, &this->headPos);
        Matrix_MultVec3f(&centerManeMod, &this->centerMane.head);
        Matrix_MultVec3f(&rightManeMod, &this->rightMane.head);
        Matrix_MultVec3f(&leftManeMod, &this->leftMane.head);
    }
    Collider_UpdateSpheres(limbIndex, &this->collider);
}

void BossFd2_UpdateMane(BossFd2* this, PlayState* play, Vec3f* head, Vec3f* pos, Vec3f* rot, Vec3f* pull, f32* scale) {
    f32 sp138[10] = { 0.0f, 100.0f, 50.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
    f32 sp110[10] = { 0.0f, 5.0f, -10.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f };
    f32 spE8[10] = { 0.4f, 0.6f, 0.8f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f };
    s16 i;
    Vec3f temp_vec;
    f32 temp_radius;
    f32 phi_f0;
    f32 temp_angleX;
    f32 temp_angleY;
    Vec3f spBC;
    Vec3f spB0;
    f32 xyScale;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2389);
    Matrix_Push();
    gDPPipeSync(POLY_OPA_DISP++);

    for (i = 0; i < 10; i++) {
        if (i == 0) {
            (pos + i)->x = head->x;
            (pos + i)->y = head->y;
            (pos + i)->z = head->z;
        } else {
            Math_ApproachF(&(pull + i)->x, 0.0f, 1.0f, 1.0f);
            Math_ApproachF(&(pull + i)->y, 0.0f, 1.0f, 1.0f);
            Math_ApproachF(&(pull + i)->z, 0.0f, 1.0f, 1.0f);
        }
    }

    for (i = 1; i < 10; i++) {
        temp_vec.x = (pos + i)->x + (pull + i)->x - (pos + i - 1)->x;

        phi_f0 = (pos + i)->y + (pull + i)->y - 2.0f + sp138[i];
        if (phi_f0 > (pos + i - 1)->y + sp110[i]) {
            phi_f0 = (pos + i - 1)->y + sp110[i];
        }
        if ((head->y >= -910.0f) && (phi_f0 < 110.0f)) {
            phi_f0 = 110.0f;
        }
        temp_vec.y = phi_f0 - (pos + i - 1)->y;

        temp_vec.z = (pos + i)->z + (pull + i)->z - (pos + i - 1)->z;
        temp_angleY = Math_Atan2F(temp_vec.z, temp_vec.x);
        temp_radius = sqrtf(SQ(temp_vec.x) + SQ(temp_vec.z));
        temp_angleX = -Math_Atan2F(temp_radius, temp_vec.y);
        (rot + i - 1)->y = temp_angleY;
        (rot + i - 1)->x = temp_angleX;
        spBC.x = 0.0f;
        spBC.y = 0.0f;
        spBC.z = spE8[i] * 25.0f;
        Matrix_RotateY(temp_angleY, MTXMODE_NEW);
        Matrix_RotateX(temp_angleX, MTXMODE_APPLY);
        Matrix_MultVec3f(&spBC, &spB0);
        temp_vec.x = (pos + i)->x;
        temp_vec.y = (pos + i)->y;
        temp_vec.z = (pos + i)->z;
        (pos + i)->x = (pos + i - 1)->x + spB0.x;
        (pos + i)->y = (pos + i - 1)->y + spB0.y;
        (pos + i)->z = (pos + i - 1)->z + spB0.z;
        (pull + i)->x = (((pos + i)->x - temp_vec.x) * 88.0f) / 100.0f;
        (pull + i)->y = (((pos + i)->y - temp_vec.y) * 88.0f) / 100.0f;
        (pull + i)->z = (((pos + i)->z - temp_vec.z) * 88.0f) / 100.0f;
        if ((pull + i)->x > 30.0f) {
            (pull + i)->x = 30.0f;
        }
        if ((pull + i)->x < -30.0f) {
            (pull + i)->x = -30.0f;
        }
        if ((pull + i)->y > 30.0f) {
            (pull + i)->y = 30.0f;
        }
        if ((pull + i)->y < -30.0f) {
            (pull + i)->y = -30.0f;
        }
        if ((pull + i)->z > 30.0f) {
            (pull + i)->z = 30.0f;
        }
        if ((pull + i)->z < -30.0f) {
            (pull + i)->z = -30.0f;
        }
    }

    for (i = 0; i < 9; i++) {
        Matrix_Translate((pos + i)->x, (pos + i)->y, (pos + i)->z, MTXMODE_NEW);
        Matrix_RotateY((rot + i)->y, MTXMODE_APPLY);
        Matrix_RotateX((rot + i)->x, MTXMODE_APPLY);
        xyScale = (0.01f - (i * 0.0009f)) * spE8[i] * scale[i];
        Matrix_Scale(xyScale, xyScale, 0.01f * spE8[i], MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_boss_fd2.c", 2498);
        gSPDisplayList(POLY_XLU_DISP++, gHoleVolvagiaManeModelDL);
    }
    Matrix_Pop();
    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2503);
}

void BossFd2_DrawMane(BossFd2* this, PlayState* play) {
    s32 pad;
    BossFd* bossFd = (BossFd*)this->actor.parent;
    s16 i;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2515);
    if (1) {}
    for (i = 0; i < 10; i++) {
        this->centerMane.scale[i] = 1.5f + 0.3f * Math_SinS(5596.0f * this->work[FD2_VAR_TIMER] + i * 0x3200);
        this->rightMane.scale[i] = 1.5f + 0.3f * Math_SinS(5496.0f * this->work[FD2_VAR_TIMER] + i * 0x3200);
        this->leftMane.scale[i] = 1.5f + 0.3f * Math_CosS(5696.0f * this->work[FD2_VAR_TIMER] + i * 0x3200);
    }

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gSPDisplayList(POLY_XLU_DISP++, gHoleVolvagiaManeMaterialDL);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, bossFd->fwork[BFD_MANE_COLOR_CENTER], 0, 255);
    BossFd2_UpdateMane(this, play, &this->centerMane.head, this->centerMane.pos, this->centerMane.rot,
                       this->centerMane.pull, this->centerMane.scale);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, bossFd->fwork[BFD_MANE_COLOR_RIGHT], 0, 255);
    BossFd2_UpdateMane(this, play, &this->rightMane.head, this->rightMane.pos, this->rightMane.rot,
                       this->rightMane.pull, this->rightMane.scale);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, bossFd->fwork[BFD_MANE_COLOR_LEFT], 0, 255);
    BossFd2_UpdateMane(this, play, &this->leftMane.head, this->leftMane.pos, this->leftMane.rot, this->leftMane.pull,
                       this->leftMane.scale);

    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2601);
}

void BossFd2_Draw(Actor* thisx, PlayState* play) {
    static void* eyeTextures[] = { gHoleVolvagiaEyeOpenTex, gHoleVolvagiaEyeHalfTex, gHoleVolvagiaEyeClosedTex };
    s32 pad;
    BossFd2* this = (BossFd2*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2617);
    PRINTF("FD2 draw start \n");
    if (this->actionFunc != BossFd2_Wait) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        if (this->work[FD2_DAMAGE_FLASH_TIMER] & 2) {
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 255, 255, 0, 900, 1099);
        }
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeState]));

        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (s16)this->fwork[FD2_TEX1_SCROLL_X],
                                    (s16)this->fwork[FD2_TEX1_SCROLL_Y], 0x20, 0x20, 1,
                                    (s16)this->fwork[FD2_TEX2_SCROLL_X], (s16)this->fwork[FD2_TEX2_SCROLL_Y], 0x20,
                                    0x20));
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
        gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 128);

        SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                              BossFd2_OverrideLimbDraw, BossFd2_PostLimbDraw, &this->actor);
        BossFd2_DrawMane(this, play);
        POLY_OPA_DISP = Play_SetFog(play, POLY_OPA_DISP);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_boss_fd2.c", 2688);
}
