/*
 * File: z_en_ma3.c
 * Overlay: En_Ma3
 * Description: Adult Malon (Ranch)
 */

#include "z_en_ma3.h"
#include "assets/objects/object_ma2/object_ma2.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3 | ACTOR_FLAG_4 | ACTOR_FLAG_5)

void EnMa3_Init(Actor* thisx, PlayState* play);
void EnMa3_Destroy(Actor* thisx, PlayState* play);
void EnMa3_Update(Actor* thisx, PlayState* play);
void EnMa3_Draw(Actor* thisx, PlayState* play);

u16 func_80AA2AA0(PlayState* play, Actor* thisx);
s16 func_80AA2BD4(PlayState* play, Actor* thisx);

void func_80AA2E54(EnMa3* this, PlayState* play);
s32 func_80AA2EC8(EnMa3* this, PlayState* play);
s32 func_80AA2F28(EnMa3* this);
void EnMa3_UpdateEyes(EnMa3* this);
void func_80AA3200(EnMa3* this, PlayState* play);

ActorInit En_Ma3_InitVars = {
    ACTOR_EN_MA3,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_MA2,
    sizeof(EnMa3),
    (ActorFunc)EnMa3_Init,
    (ActorFunc)EnMa3_Destroy,
    (ActorFunc)EnMa3_Update,
    (ActorFunc)EnMa3_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 18, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

typedef enum {
    /* 0 */ ENMA3_ANIM_0,
    /* 1 */ ENMA3_ANIM_1,
    /* 2 */ ENMA3_ANIM_2,
    /* 3 */ ENMA3_ANIM_3,
    /* 4 */ ENMA3_ANIM_4
} EnMa3Animation;

static AnimationFrameCountInfo sAnimationInfo[] = {
    { &gMalonAdultIdleAnim, 1.0f, ANIMMODE_LOOP, 0.0f },       { &gMalonAdultIdleAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gMalonAdultStandStillAnim, 1.0f, ANIMMODE_LOOP, 0.0f }, { &gMalonAdultSingAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gMalonAdultSingAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
};

u16 func_80AA2AA0(PlayState* play, Actor* thisx) {
    Player* player = GET_PLAYER(play);

    if (!GET_INFTABLE(INFTABLE_B8)) {
        return 0x2000;
    }

    if (GET_EVENTINF(EVENTINF_HORSES_0A)) {
        gSaveContext.timerSeconds = gSaveContext.timerSeconds;
        thisx->flags |= ACTOR_FLAG_16;

        if (((void)0, gSaveContext.timerSeconds) > 210) {
            return 0x208E;
        }

        if ((HIGH_SCORE(HS_HORSE_RACE) == 0) || (HIGH_SCORE(HS_HORSE_RACE) >= 180)) {
            HIGH_SCORE(HS_HORSE_RACE) = 180;
        }

        if (!GET_EVENTCHKINF(EVENTCHKINF_1E) && (((void)0, gSaveContext.timerSeconds) < 50)) {
            return 0x208F;
        }

        if (HIGH_SCORE(HS_HORSE_RACE) > ((void)0, gSaveContext.timerSeconds)) {
            return 0x2012;
        }

        return 0x2004;
    }

    if (!(player->stateFlags1 & PLAYER_STATE1_23) &&
        (Actor_FindNearby(play, thisx, ACTOR_EN_HORSE, 1, 1200.0f) == NULL)) {
        return 0x2001;
    }

    if (!GET_INFTABLE(INFTABLE_B9)) {
        return 0x2002;
    }

    return 0x2003;
}

s16 func_80AA2BD4(PlayState* play, Actor* thisx) {
    s16 ret = 1;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play)) {
                play->nextEntranceIndex = ENTR_SPOT20_0;
                gSaveContext.nextCutsceneIndex = 0xFFF0;
                play->transitionType = TRANS_TYPE_CIRCLE(TCA_STARBURST, TCC_BLACK, TCS_FAST);
                play->transitionTrigger = TRANS_TRIGGER_START;
                SET_EVENTINF(EVENTINF_HORSES_0A);
                gSaveContext.timerState = TIMER_STATE_UP_FREEZE;
            }
            break;
        case TEXT_STATE_CHOICE:
            if (Message_ShouldAdvance(play)) {
                SET_INFTABLE(INFTABLE_B9);
                if (play->msgCtx.choiceIndex == 0) {
                    if (GET_EVENTCHKINF(EVENTCHKINF_1E)) {
                        Message_ContinueTextbox(play, 0x2091);
                    } else if (HIGH_SCORE(HS_HORSE_RACE) == 0) {
                        Message_ContinueTextbox(play, 0x2092);
                    } else {
                        Message_ContinueTextbox(play, 0x2090);
                    }
                }
            }
            break;
        case TEXT_STATE_CLOSING:
            switch (thisx->textId) {
                case 0x2000:
                    SET_INFTABLE(INFTABLE_B8);
                    ret = 0;
                    break;
                case 0x208F:
                    SET_EVENTCHKINF(EVENTCHKINF_1E);
                    FALLTHROUGH;
                case 0x2004:
                case 0x2012:
                    if (HIGH_SCORE(HS_HORSE_RACE) > gSaveContext.timerSeconds) {
                        HIGH_SCORE(HS_HORSE_RACE) = gSaveContext.timerSeconds;
                    }
                    FALLTHROUGH;
                case 0x208E:
                    CLEAR_EVENTINF(EVENTINF_HORSES_0A);
                    thisx->flags &= ~ACTOR_FLAG_16;
                    ret = 0;
                    gSaveContext.timerState = TIMER_STATE_STOP;
                    break;
                case 0x2002:
                    SET_INFTABLE(INFTABLE_B9);
                    FALLTHROUGH;
                case 0x2003:
                    if (!GET_EVENTINF(EVENTINF_HORSES_0A)) {
                        ret = 0;
                    }
                    break;
                default:
                    ret = 0;
                    break;
            }
            break;
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
        case TEXT_STATE_DONE_FADING:
        case TEXT_STATE_DONE:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            break;
    }
    return ret;
}

void func_80AA2E54(EnMa3* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 phi_a3;

    if ((this->unk_1E0.unk_00 == 0) && (this->skelAnime.animation == &gMalonAdultSingAnim)) {
        phi_a3 = 1;
    } else {
        phi_a3 = 0;
    }

    this->unk_1E0.unk_18 = player->actor.world.pos;
    this->unk_1E0.unk_14 = 0.0f;
    func_80034A14(&this->actor, &this->unk_1E0, 0, phi_a3);
}

s32 func_80AA2EC8(EnMa3* this, PlayState* play) {
    if (LINK_IS_CHILD) {
        return 2;
    }
    if (!GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
        return 2;
    }
    if (GET_EVENTINF(EVENTINF_HORSES_0A)) {
        return 1;
    }
    return 0;
}

s32 func_80AA2F28(EnMa3* this) {
    if (this->skelAnime.animation != &gMalonAdultSingAnim) {
        return 0;
    }
    if (this->unk_1E0.unk_00 != 0) {
        return 0;
    }
    this->blinkTimer = 0;
    if (this->eyeIndex != 2) {
        return 0;
    }
    this->mouthIndex = 2;
    return 1;
}

void EnMa3_UpdateEyes(EnMa3* this) {
    if ((!func_80AA2F28(this)) && (DECR(this->blinkTimer) == 0)) {
        this->eyeIndex += 1;
        if (this->eyeIndex >= 3) {
            this->blinkTimer = Rand_S16Offset(30, 30);
            this->eyeIndex = 0;
        }
    }
}

void EnMa3_ChangeAnim(EnMa3* this, s32 index) {
    f32 frameCount = Animation_GetLastFrame(sAnimationInfo[index].animation);

    Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, 1.0f, 0.0f, frameCount,
                     sAnimationInfo[index].mode, sAnimationInfo[index].morphFrames);
}

void EnMa3_Init(Actor* thisx, PlayState* play) {
    EnMa3* this = (EnMa3*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 18.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gMalonAdultSkel, NULL, NULL, NULL, 0);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, DamageTable_Get(22), &sColChkInfoInit);

    switch (func_80AA2EC8(this, play)) {
        case 0:
            EnMa3_ChangeAnim(this, ENMA3_ANIM_0);
            this->actionFunc = func_80AA3200;
            break;
        case 1:
            EnMa3_ChangeAnim(this, ENMA3_ANIM_0);
            this->actionFunc = func_80AA3200;
            break;
        case 2:
            Actor_Kill(&this->actor);
            return;
    }

    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_1E0.unk_00 = (u16)0;
}

void EnMa3_Destroy(Actor* thisx, PlayState* play) {
    EnMa3* this = (EnMa3*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
    Collider_DestroyCylinder(play, &this->collider);
}

void func_80AA3200(EnMa3* this, PlayState* play) {
    if (this->unk_1E0.unk_00 == 2) {
        this->actor.flags &= ~ACTOR_FLAG_16;
        this->unk_1E0.unk_00 = 0;
    }
}

void EnMa3_Update(Actor* thisx, PlayState* play) {
    EnMa3* this = (EnMa3*)thisx;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    EnMa3_UpdateEyes(this);
    this->actionFunc(this, play);
    func_80AA2E54(this, play);
    func_800343CC(play, &this->actor, &this->unk_1E0.unk_00, (f32)this->collider.dim.radius + 150.0f, func_80AA2AA0,
                  func_80AA2BD4);
    if (this->unk_1E0.unk_00 == 0) {
        if (this->isNotSinging) {
            // Turn on singing
            Audio_ToggleMalonSinging(false);
            this->isNotSinging = false;
        }
    } else if (!this->isNotSinging) {
        // Turn off singing
        Audio_ToggleMalonSinging(true);
        this->isNotSinging = true;
    }
}

s32 EnMa3_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnMa3* this = (EnMa3*)thisx;
    Vec3s vec;

    if ((limbIndex == MALON_ADULT_LIMB_LEFT_THIGH) || (limbIndex == MALON_ADULT_LIMB_RIGHT_THIGH)) {
        *dList = NULL;
    }
    if (limbIndex == MALON_ADULT_LIMB_HEAD) {
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        vec = this->unk_1E0.unk_08;
        Matrix_RotateX(BINANG_TO_RAD_ALT(vec.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(vec.x), MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == MALON_ADULT_LIMB_CHEST_AND_NECK) {
        vec = this->unk_1E0.unk_0E;
        Matrix_RotateY(BINANG_TO_RAD_ALT(-vec.y), MTXMODE_APPLY);
        Matrix_RotateX(BINANG_TO_RAD_ALT(-vec.x), MTXMODE_APPLY);
    }
    if ((limbIndex == MALON_ADULT_LIMB_CHEST_AND_NECK) || (limbIndex == MALON_ADULT_LIMB_LEFT_SHOULDER) ||
        (limbIndex == MALON_ADULT_LIMB_RIGHT_SHOULDER)) {
        rot->y += Math_SinS(this->unk_212[limbIndex].y) * 200.0f;
        rot->z += Math_CosS(this->unk_212[limbIndex].z) * 200.0f;
    }
    return false;
}

void EnMa3_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnMa3* this = (EnMa3*)thisx;
    Vec3f vec = { 900.0f, 0.0f, 0.0f };

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ma3.c", 927);

    if (limbIndex == MALON_ADULT_LIMB_HEAD) {
        Matrix_MultVec3f(&vec, &this->actor.focus.pos);
    }

    if ((limbIndex == MALON_ADULT_LIMB_LEFT_HAND) && (this->skelAnime.animation == &gMalonAdultStandStillAnim)) {
        gSPDisplayList(POLY_OPA_DISP++, gMalonAdultBasketDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ma3.c", 950);
}

void EnMa3_Draw(Actor* thisx, PlayState* play) {
    static void* sMouthTextures[] = { gMalonAdultMouthNeutralTex, gMalonAdultMouthSadTex, gMalonAdultMouthHappyTex };
    static void* sEyeTextures[] = { gMalonAdultEyeOpenTex, gMalonAdultEyeHalfTex, gMalonAdultEyeClosedTex };
    EnMa3* this = (EnMa3*)thisx;
    Camera* activeCam;
    f32 distFromCamEye;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ma3.c", 978);

    activeCam = GET_ACTIVE_CAM(play);
    distFromCamEye = Math_Vec3f_DistXZ(&this->actor.world.pos, &activeCam->eye);
    Audio_UpdateMalonSinging(distFromCamEye, NA_BGM_LONLON);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->mouthIndex]));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnMa3_OverrideLimbDraw, EnMa3_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ma3.c", 1013);
}
