/*
 * File: z_en_heishi3.c
 * Overlay: ovl_En_Heishi3
 * Description: Hyrule Castle Guard
 */

#include "z_en_heishi3.h"
#include "assets/objects/object_sd/object_sd.h"
#include "terminal.h"
#include "versions.h"

#define FLAGS 0

void EnHeishi3_Init(Actor* thisx, PlayState* play);
void EnHeishi3_Destroy(Actor* thisx, PlayState* play);
void EnHeishi3_Update(Actor* thisx, PlayState* play);
void EnHeishi3_Draw(Actor* thisx, PlayState* play);

void EnHeishi3_SetupGuardType(EnHeishi3* this, PlayState* play);
void EnHeishi3_StandSentinelInGrounds(EnHeishi3* this, PlayState* play);
void EnHeishi3_StandSentinelInCastle(EnHeishi3* this, PlayState* play);
void EnHeishi3_CatchStart(EnHeishi3* this, PlayState* play);
void EnHeishi3_ResetAnimationToIdle(EnHeishi3* this, PlayState* play);
void func_80A55D00(EnHeishi3* this, PlayState* play);
void func_80A55BD4(EnHeishi3* this, PlayState* play);

static s16 sPlayerCaught = 0;

ActorProfile En_Heishi3_Profile = {
    /**/ ACTOR_EN_HEISHI3,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_SD,
    /**/ sizeof(EnHeishi3),
    /**/ EnHeishi3_Init,
    /**/ EnHeishi3_Destroy,
    /**/ EnHeishi3_Update,
    /**/ EnHeishi3_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 15, 70, 0, { 0, 0, 0 } },
};

void EnHeishi3_Init(Actor* thisx, PlayState* play) {
    EnHeishi3* this = (EnHeishi3*)thisx;

    sPlayerCaught = 0;
    if (this->actor.params <= 0) {
        this->unk_278 = 0;
    } else {
        this->unk_278 = 1;
        if (this->actor.world.pos.x < -290.0f) {
            this->unk_278 = 2;
        }
    }
    Actor_SetScale(&this->actor, 0.01f);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
    SkelAnime_Init(play, &this->skelAnime, &gEnHeishiSkel, &gEnHeishiIdleAnim, this->jointTable, this->morphTable, 17);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    // "Castle Gate Soldier - Power Up"
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 城門兵パワーアップ ☆☆☆☆☆ \n" VT_RST);

    this->actor.gravity = -3.0f;
    this->actor.focus.pos = this->actor.world.pos;
    this->actionFunc = EnHeishi3_SetupGuardType;
}

void EnHeishi3_Destroy(Actor* thisx, PlayState* play) {
    EnHeishi3* this = (EnHeishi3*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnHeishi3_SetupGuardType(EnHeishi3* this, PlayState* play) {
    f32 frameCount = Animation_GetLastFrame(&gEnHeishiIdleAnim);

    Animation_Change(&this->skelAnime, &gEnHeishiIdleAnim, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    if (this->unk_278 == 0) {
        this->actionFunc = EnHeishi3_StandSentinelInGrounds;
    } else {
        this->actionFunc = EnHeishi3_StandSentinelInCastle;
    }
}

/**
 * Handles the guards standing on Hyrule Castle Grounds.
 **/
void EnHeishi3_StandSentinelInGrounds(EnHeishi3* this, PlayState* play) {
    Player* player;
    s16 yawDiff;
    s16 yawDiffNew;
    f32 sightRange;

    player = GET_PLAYER(play);
    SkelAnime_Update(&this->skelAnime);
    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    yawDiffNew = ABS(yawDiff);
    if (yawDiffNew < 0x4300) {
        if (IS_DAY) {
            sightRange = 250.0f;
        } else {
            sightRange = 200.0f;
        }
    } else {
        if (IS_DAY) {
            sightRange = 150.0f;
        } else {
            sightRange = 100.0f;
        }
    }
    if ((this->actor.xzDistToPlayer < sightRange) &&
        (fabsf(player->actor.world.pos.y - this->actor.world.pos.y) < 100.0f) && (sPlayerCaught == 0)) {
        sPlayerCaught = 1;
        Message_StartTextbox(play, 0x702D, &this->actor);
        Sfx_PlaySfxCentered(NA_SE_SY_FOUND);
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST); // "Discovered!"
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#if OOT_PAL_N64
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_UPDATE_CULLING_DISABLED;
#endif
        this->actionFunc = EnHeishi3_CatchStart;
    }
}

/**
 * Handles the guards standing in front of Hyrule Castle.
 **/
void EnHeishi3_StandSentinelInCastle(EnHeishi3* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);
    if ((player->actor.world.pos.x < -190.0f) && (player->actor.world.pos.x > -380.0f) &&
        (fabsf(player->actor.world.pos.y - this->actor.world.pos.y) < 100.0f) &&
        (player->actor.world.pos.z < 1020.0f) && (player->actor.world.pos.z > 700.0f) && (sPlayerCaught == 0)) {
        if (this->unk_278 == 1) {
            if (player->actor.world.pos.x < -290.0f) {
                return;
            }
        } else {
            if (player->actor.world.pos.x > -290.0f) {
                return;
            }
        }
        sPlayerCaught = 1;
        Message_StartTextbox(play, 0x702D, &this->actor);
        Sfx_PlaySfxCentered(NA_SE_SY_FOUND);
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST); // "Discovered!"
        Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_1);
#if OOT_PAL_N64
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_UPDATE_CULLING_DISABLED;
#endif
        this->actionFunc = EnHeishi3_CatchStart;
    }
}

void EnHeishi3_CatchStart(EnHeishi3* this, PlayState* play) {
    f32 frameCount = Animation_GetLastFrame(&gEnHeishiWalkAnim);

    Animation_Change(&this->skelAnime, &gEnHeishiWalkAnim, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    this->caughtTimer = 20;
    this->actionFunc = func_80A55BD4;
    this->actor.speed = 2.5f;
}

void func_80A55BD4(EnHeishi3* this, PlayState* play) {

    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 1.0f) || Animation_OnFrame(&this->skelAnime, 17.0f)) {
        Actor_PlaySfx(&this->actor, NA_SE_EV_KNIGHT_WALK);
    }
    if (this->caughtTimer == 0) {
        this->actionFunc = EnHeishi3_ResetAnimationToIdle;
        this->actor.speed = 0.0f;
    } else {
        Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 5, 3000, 0);
    }
}

void EnHeishi3_ResetAnimationToIdle(EnHeishi3* this, PlayState* play) {
    f32 frameCount = Animation_GetLastFrame(&gEnHeishiIdleAnim);

    Animation_Change(&this->skelAnime, &gEnHeishiIdleAnim, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = func_80A55D00;
}

// This function initiates the respawn after the player gets caught.
void func_80A55D00(EnHeishi3* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play) &&
        (this->respawnFlag == 0)) {
        SET_EVENTCHKINF(EVENTCHKINF_CAUGHT_BY_CASTLE_GUARDS);
        play->nextEntranceIndex = ENTR_HYRULE_CASTLE_4;
        play->transitionTrigger = TRANS_TRIGGER_START;
        this->respawnFlag = 1;
        play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_WHITE, TCS_FAST);
        gSaveContext.nextTransitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_WHITE, TCS_FAST);
    }
}

void EnHeishi3_Update(Actor* thisx, PlayState* play) {
    EnHeishi3* this = (EnHeishi3*)thisx;
    s32 pad;

    Actor_SetFocus(&this->actor, 60.0f);
    this->unk_274++;
    if (this->caughtTimer != 0) {
        this->caughtTimer--;
    }
    this->actionFunc(this, play);
    this->actor.shape.rot = this->actor.world.rot;
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 50.0f,
                            UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

s32 EnHeishi3_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnHeishi3* this = (EnHeishi3*)thisx;

    if (limbIndex == 9) {
        rot->x += this->unk_26E;
    }

    if (limbIndex == 16) {
        rot->x += this->unk_262;
        rot->z += this->unk_264;
    }

    return false;
}

void EnHeishi3_Draw(Actor* thisx, PlayState* play) {
    EnHeishi3* this = (EnHeishi3*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnHeishi3_OverrideLimbDraw, NULL,
                      this);
}
