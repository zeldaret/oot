/*
 * File: z_en_mm.c
 * Overlay: ovl_En_Mm
 * Description: Running Man (adult)
 */

#include "z_en_mm2.h"
#include "terminal.h"
#include "assets/objects/object_mm/object_mm.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

typedef enum RunningManAnimIndex {
    /* 0 */ RM2_ANIM_RUN,
    /* 1 */ RM2_ANIM_SIT,
    /* 2 */ RM2_ANIM_SIT_WAIT,
    /* 3 */ RM2_ANIM_STAND,
    /* 4 */ RM2_ANIM_SPRINT,
    /* 5 */ RM2_ANIM_EXCITED, // plays when talking to him with bunny hood on
    /* 6 */ RM2_ANIM_HAPPY    // plays when you sell him the bunny hood
} RunningManAnimIndex;

typedef enum RunningManMouthTex {
    /* 0 */ RM2_MOUTH_CLOSED,
    /* 1 */ RM2_MOUTH_OPEN
} RunningManMouthTex;

void EnMm2_Init(Actor* thisx, PlayState* play2);
void EnMm2_Destroy(Actor* thisx, PlayState* play);
void EnMm2_Update(Actor* thisx, PlayState* play);
void EnMm2_Draw(Actor* thisx, PlayState* play);
void func_80AAF3C0(EnMm2* this, PlayState* play);
void func_80AAF57C(EnMm2* this, PlayState* play);
void func_80AAF668(EnMm2* this, PlayState* play);
s32 EnMm2_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void EnMm2_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

ActorProfile En_Mm2_Profile = {
    /**/ ACTOR_EN_MM2,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_MM,
    /**/ sizeof(EnMm2),
    /**/ EnMm2_Init,
    /**/ EnMm2_Destroy,
    /**/ EnMm2_Update,
    /**/ EnMm2_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000004, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 18, 63, 0, { 0, 0, 0 } },
};

static AnimationSpeedInfo sAnimationInfo[] = {
    { &gRunningManRunAnim, 1.0f, ANIMMODE_LOOP, -7.0f },     { &gRunningManSitStandAnim, -1.0f, ANIMMODE_ONCE, -7.0f },
    { &gRunningManSitWaitAnim, 1.0f, ANIMMODE_LOOP, -7.0f }, { &gRunningManSitStandAnim, 1.0f, ANIMMODE_ONCE, -7.0f },
    { &gRunningManSprintAnim, 1.0f, ANIMMODE_LOOP, -7.0f },  { &gRunningManExcitedAnim, 1.0f, ANIMMODE_LOOP, -12.0f },
    { &gRunningManHappyAnim, 1.0f, ANIMMODE_LOOP, -12.0f },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 4000, ICHAIN_STOP),
};

void EnMm2_ChangeAnim(EnMm2* this, s32 index, s32* currentIndex) {
    f32 phi_f0;

    if ((*currentIndex < 0) || (index == *currentIndex)) {
        phi_f0 = 0.0f;
    } else {
        phi_f0 = sAnimationInfo[index].morphFrames;
    }

    if (sAnimationInfo[index].playSpeed >= 0.0f) {
        Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, sAnimationInfo[index].playSpeed, 0.0f,
                         (f32)Animation_GetLastFrame(sAnimationInfo[index].animation), sAnimationInfo[index].mode,
                         phi_f0);
    } else {
        Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, sAnimationInfo[index].playSpeed,
                         (f32)Animation_GetLastFrame(sAnimationInfo[index].animation), 0.0f, sAnimationInfo[index].mode,
                         phi_f0);
    }
    *currentIndex = index;
}

void func_80AAEF70(EnMm2* this, PlayState* play) {
    if (!GET_EVENTCHKINF_CARPENTERS_ALL_RESCUED()) {
        this->actor.textId = 0x6086;
    } else if (GET_INFTABLE(INFTABLE_17F)) {
        if (GET_EVENTINF(EVENTINF_MARATHON_ACTIVE)) {
            this->actor.textId = 0x6082;
        } else if (gSaveContext.subTimerState != SUBTIMER_STATE_OFF) {
            this->actor.textId = 0x6076;
        } else if (HIGH_SCORE(HS_MARATHON) == 158) {
            this->actor.textId = 0x607E;
        } else {
            this->actor.textId = 0x6081;
        }
    } else if (gSaveContext.subTimerState != SUBTIMER_STATE_OFF) {
        this->actor.textId = 0x6076;
    } else {
        this->actor.textId = 0x607D;
        CLEAR_EVENTINF(EVENTINF_MARATHON_ACTIVE);
        HIGH_SCORE(HS_MARATHON) = 158;
    }
}

void EnMm2_Init(Actor* thisx, PlayState* play2) {
    EnMm2* this = (EnMm2*)thisx;
    PlayState* play = play2;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 21.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gRunningManSkel, NULL, this->jointTable, this->morphTable, 16);
    Animation_Change(&this->skelAnime, sAnimationInfo[RM2_ANIM_SIT_WAIT].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationInfo[RM2_ANIM_SIT_WAIT].animation),
                     sAnimationInfo[RM2_ANIM_SIT_WAIT].mode, sAnimationInfo[RM2_ANIM_SIT_WAIT].morphFrames);
    this->previousAnimation = RM2_ANIM_SIT_WAIT;
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->mouthTexIndex = RM2_MOUTH_CLOSED;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->unk_1F4 |= 1;
    this->actor.gravity = -1.0f;
    if (this->actor.params == 1) {
        this->actionFunc = func_80AAF668;
    } else {
        func_80AAEF70(this, play);
        this->actionFunc = func_80AAF57C;
    }
    if (!LINK_IS_ADULT) {
        Actor_Kill(&this->actor);
    }
    if (this->actor.params == 1) {
        if (!GET_INFTABLE(INFTABLE_17F) || !GET_EVENTINF(EVENTINF_MARATHON_ACTIVE)) {
            PRINTF(VT_FGCOL(CYAN) " マラソン 開始されていない \n" VT_RST "\n");
            Actor_Kill(&this->actor);
        }
    }
}

void EnMm2_Destroy(Actor* thisx, PlayState* play) {
    EnMm2* this = (EnMm2*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

s32 func_80AAF224(EnMm2* this, PlayState* play, EnMm2ActionFunc actionFunc) {
    s16 yawDiff;

    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = actionFunc;
        return 1;
    }
    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(yawDiff) <= 0x4300) && (this->actor.xzDistToPlayer < 100.0f)) {
        Actor_OfferTalk(&this->actor, play, 100.0f);
    }
    return 0;
}

void func_80AAF2BC(EnMm2* this, PlayState* play) {
    if (this->unk_1F6 > 60) {
        Actor_Kill(&this->actor);
    }
    SkelAnime_Update(&this->skelAnime);
    this->unk_1F6++;
    Math_SmoothStepToF(&this->actor.speed, 10.0f, 0.6f, 2.0f, 0.0f);
}

void func_80AAF330(EnMm2* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->actionFunc = func_80AAF2BC;
        EnMm2_ChangeAnim(this, RM2_ANIM_RUN, &this->previousAnimation);
        this->mouthTexIndex = RM2_MOUTH_OPEN;
        if (!(this->unk_1F4 & 2)) {
            Message_CloseTextbox(play);
        }
        gSaveContext.subTimerState = SUBTIMER_STATE_OFF;
        CLEAR_EVENTINF(EVENTINF_MARATHON_ACTIVE);
    }
}

void func_80AAF3C0(EnMm2* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);

    switch (this->actor.textId) {
        case 0x607D:
        case 0x607E:
            if ((Message_GetState(&play->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(play)) {
                switch (play->msgCtx.choiceIndex) {
                    case 0:
                        Message_ContinueTextbox(play, 0x607F);
                        this->actor.textId = 0x607F;
                        SET_EVENTINF(EVENTINF_MARATHON_ACTIVE);
                        break;
                    case 1:
                        Message_ContinueTextbox(play, 0x6080);
                        this->actor.textId = 0x6080;
                        break;
                }

                if (this->unk_1F4 & 4) {
                    this->unk_1F4 &= ~4;
                    HIGH_SCORE(HS_MARATHON)++;
                }
            }
            break;

        case 0x6081:
            if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
                this->unk_1F4 |= 4;
                HIGH_SCORE(HS_MARATHON)--;
                Message_ContinueTextbox(play, 0x607E);
                this->actor.textId = 0x607E;
            }
            break;

        default:
            if (Actor_TextboxIsClosing(&this->actor, play)) {
                if (this->actor.textId == 0x607F) {
                    Interface_SetSubTimer(0);
                    this->actionFunc = func_80AAF57C;
                } else {
                    this->actionFunc = func_80AAF57C;
                }
                this->actionFunc = func_80AAF57C;
                func_80AAEF70(this, play);
            }
            break;
    }
}

void func_80AAF57C(EnMm2* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    func_80AAEF70(this, play);
    if ((func_80AAF224(this, play, func_80AAF3C0)) && (this->actor.textId == 0x607D)) {
        SET_INFTABLE(INFTABLE_17F);
    }
}

void func_80AAF5EC(EnMm2* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->unk_1F4 &= ~1;
        EnMm2_ChangeAnim(this, RM2_ANIM_STAND, &this->previousAnimation);
        this->actionFunc = func_80AAF330;
    }
}

void func_80AAF668(EnMm2* this, PlayState* play) {
    this->actor.world.rot.y = -0x3E80;
    this->actor.shape.rot.y = this->actor.world.rot.y;
    SkelAnime_Update(&this->skelAnime);
    if (((void)0, gSaveContext.subTimerSeconds) < HIGH_SCORE(HS_MARATHON)) {
        this->actor.textId = 0x6085;
    } else {
        this->actor.textId = 0x6084;
    }
    if (func_80AAF224(this, play, func_80AAF5EC)) {
        this->unk_1F6 = 0;
        if (((void)0, gSaveContext.subTimerSeconds) < HIGH_SCORE(HS_MARATHON)) {
            HIGH_SCORE(HS_MARATHON) = gSaveContext.subTimerSeconds;
        }
    } else {
        LOG_HEX("((z_common_data.event_inf[1]) & (0x0001))", GET_EVENTINF(EVENTINF_MARATHON_ACTIVE), "../z_en_mm2.c",
                541);
        if (!GET_EVENTINF(EVENTINF_MARATHON_ACTIVE)) {
            this->unk_1F4 |= 2;
            this->unk_1F4 &= ~1;
            EnMm2_ChangeAnim(this, RM2_ANIM_STAND, &this->previousAnimation);
            this->actionFunc = func_80AAF330;
        }
    }
}

void EnMm2_Update(Actor* thisx, PlayState* play) {
    EnMm2* this = (EnMm2*)thisx;
    s32 pad;

    if (this->unk_1F4 & 1) {
        Actor_TrackPlayer(play, &this->actor, &this->unk_1E8, &this->unk_1EE, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->unk_1E8.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_1E8.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_1EE.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_1EE.y, 0, 6, 6200, 100);
    }
    this->actionFunc(this, play);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
}

void EnMm2_Draw(Actor* thisx, PlayState* play) {
    static void* mouthTextures[] = { gRunningManMouthOpenTex, gRunningManMouthClosedTex };
    EnMm2* this = (EnMm2*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_mm2.c", 634);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(mouthTextures[this->mouthTexIndex]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnMm2_OverrideLimbDraw, EnMm2_PostLimbDraw, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_mm2.c", 654);
}

s32 EnMm2_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnMm2* this = (EnMm2*)thisx;

    switch (limbIndex) {
        case 8:
            rot->x += this->unk_1EE.y;
            rot->y -= this->unk_1EE.x;
            break;
        case 15:
            rot->x += this->unk_1E8.y;
            rot->z += this->unk_1E8.x + 0xFA0;
            break;
    }

    return 0;
}

void EnMm2_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f headOffset = { 200.0f, 800.0f, 0.0f };
    EnMm2* this = (EnMm2*)thisx;

    if (limbIndex == 15) {
        Matrix_MultVec3f(&headOffset, &this->actor.focus.pos);
    }
}
