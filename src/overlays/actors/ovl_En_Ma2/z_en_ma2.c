/*
 * File: z_en_ma2.c
 * Overlay: En_Ma2
 * Description: Adult Malon (Stables / Ranch Pre-Epona)
 */

#include "z_en_ma2.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "segmented_address.h"
#include "sequence.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "audio.h"
#include "face_reaction.h"
#include "ocarina.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_ma2/object_ma2.h"

#define FLAGS                                                                                  \
    (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED | \
     ACTOR_FLAG_DRAW_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA)

void EnMa2_Init(Actor* thisx, PlayState* play);
void EnMa2_Destroy(Actor* thisx, PlayState* play);
void EnMa2_Update(Actor* thisx, PlayState* play);
void EnMa2_Draw(Actor* thisx, PlayState* play);

void EnMa2_UpdateTracking(EnMa2* this, PlayState* play);
s32 EnMa2_IsSinging(EnMa2* this);
void EnMa2_UpdateEyes(EnMa2* this);
void EnMa2_UpdateSinging(EnMa2* this, PlayState* play);
void EnMa2_WaitToEndTalk(EnMa2* this, PlayState* play);
void EnMa2_WaitForOcarina(EnMa2* this, PlayState* play);
void EnMa2_WaitForEponasSong(EnMa2* this, PlayState* play);
void EnMa2_ForceTalkAfterSong(EnMa2* this, PlayState* play);

ActorProfile En_Ma2_Profile = {
    /**/ ACTOR_EN_MA2,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_MA2,
    /**/ sizeof(EnMa2),
    /**/ EnMa2_Init,
    /**/ EnMa2_Destroy,
    /**/ EnMa2_Update,
    /**/ EnMa2_Draw,
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
    { 18, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

typedef enum EnMa2Animation {
    /* 0 */ MALON_ADULT_ANIM_IDLE,
    /* 1 */ MALON_ADULT_ANIM_IDLE_NOMORPH,
    /* 2 */ MALON_ADULT_ANIM_STANDING,
    /* 3 */ MALON_ADULT_ANIM_SING,
    /* 4 */ MALON_ADULT_ANIM_SING_NOMORPH
} EnMa2Animation;

static AnimationFrameCountInfo sAnimationInfo[] = {
    { &gMalonAdultIdleAnim, 1.0f, ANIMMODE_LOOP, 0.0f },       { &gMalonAdultIdleAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
    { &gMalonAdultStandStillAnim, 1.0f, ANIMMODE_LOOP, 0.0f }, { &gMalonAdultSingAnim, 1.0f, ANIMMODE_LOOP, 0.0f },
    { &gMalonAdultSingAnim, 1.0f, ANIMMODE_LOOP, -10.0f },
};

u16 EnMa2_GetTextId(PlayState* play, Actor* thisx) {
    u16 textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_MALON);

    if (textId != 0) {
        return textId;
    }
    if (GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
        return 0x2056;
    }
    if (IS_NIGHT) {
        if (GET_INFTABLE(INFTABLE_TALKED_TO_ADULT_MALON_AFTER_SONG)) {
            return 0x2052;
        } else if (GET_INFTABLE(INFTABLE_PLAYED_SONG_FOR_ADULT_MALON)) {
            return 0x2051;
        } else {
            return 0x2050;
        }
    }
    return 0x204C;
}

s16 EnMa2_UpdateTalkState(PlayState* play, Actor* thisx) {
    s16 talkState = NPC_TALK_STATE_TALKING;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_CLOSING:
            switch (thisx->textId) {
                case 0x2051:
                    SET_INFTABLE(INFTABLE_TALKED_TO_ADULT_MALON_AFTER_SONG);
                    talkState = NPC_TALK_STATE_ACTION;
                    break;
                // unreachable, 0x2053 is a text id for Gossip Stones, which EnMa2 never sets
                case 0x2053:
                    SET_INFTABLE(INFTABLE_8D);
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
                default:
                    talkState = NPC_TALK_STATE_IDLE;
                    break;
            }
            break;
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
        case TEXT_STATE_DONE_FADING:
        case TEXT_STATE_CHOICE:
        case TEXT_STATE_EVENT:
        case TEXT_STATE_DONE:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_9:
            break;
    }
    return talkState;
}

void EnMa2_UpdateTracking(EnMa2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 trackingMode;

    if ((this->interactInfo.talkState == NPC_TALK_STATE_IDLE) && (this->skelAnime.animation == &gMalonAdultSingAnim)) {
        trackingMode = NPC_TRACKING_NONE;
    } else {
        trackingMode = NPC_TRACKING_PLAYER_AUTO_TURN;
    }

    this->interactInfo.trackPos = player->actor.world.pos;
    this->interactInfo.yOffset = 0.0f;

    Npc_TrackPoint(&this->actor, &this->interactInfo, 0, trackingMode);
}

typedef enum {
    MALON_ADULT_SPAWN_NONE = 0,
    MALON_ADULT_SPAWN_DAY_STABLES_NO_EPONA,
    MALON_ADULT_SPAWN_NIGHT_RANCH_NO_EPONA,
    MALON_ADULT_SPAWN_ALWAYS
} EnMa2SpawnIndex;

u16 EnMa2_GetSpawnIndex(EnMa2* this, PlayState* play) {
    if (LINK_IS_CHILD) {
        return MALON_ADULT_SPAWN_NONE;
    }
    if (!GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED) && (play->sceneId == SCENE_STABLE) && IS_DAY &&
        (this->actor.shape.rot.z == 5)) {
        return MALON_ADULT_SPAWN_DAY_STABLES_NO_EPONA;
    }
    if (!GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED) && (play->sceneId == SCENE_LON_LON_RANCH) && IS_NIGHT &&
        (this->actor.shape.rot.z == 6)) {
        return MALON_ADULT_SPAWN_NIGHT_RANCH_NO_EPONA;
    }
    if (!GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED) || (play->sceneId != SCENE_LON_LON_RANCH)) {
        return MALON_ADULT_SPAWN_NONE;
    }
    if ((this->actor.shape.rot.z == 7) && IS_DAY) {
        return MALON_ADULT_SPAWN_ALWAYS;
    }
    if ((this->actor.shape.rot.z == 8) && IS_NIGHT) {
        return MALON_ADULT_SPAWN_ALWAYS;
    }
    return MALON_ADULT_SPAWN_NONE;
}

s32 EnMa2_IsSinging(EnMa2* this) {
    if (this->skelAnime.animation != &gMalonAdultSingAnim) {
        return false;
    }

    if (this->interactInfo.talkState != NPC_TALK_STATE_IDLE) {
        return false;
    }

    this->blinkTimer = 0;

    if (this->eyeIndex != 2) {
        return false;
    }

    this->mouthIndex = 2;
    return true;
}

void EnMa2_UpdateEyes(EnMa2* this) {
    if ((!EnMa2_IsSinging(this)) && (DECR(this->blinkTimer) == 0)) {
        this->eyeIndex++;
        if (this->eyeIndex >= 3) {
            this->blinkTimer = Rand_S16Offset(30, 30);
            this->eyeIndex = 0;
        }
    }
}

void EnMa2_ChangeAnim(EnMa2* this, s32 index) {
    f32 frameCount = Animation_GetLastFrame(sAnimationInfo[index].animation);

    Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, 1.0f, 0.0f, frameCount,
                     sAnimationInfo[index].mode, sAnimationInfo[index].morphFrames);
}

void EnMa2_UpdateSinging(EnMa2* this, PlayState* play) {
    if (this->skelAnime.animation == &gMalonAdultSingAnim) {
        if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
            if (this->singingDisabled) {
                // Turn on singing
                Audio_ToggleMalonSinging(false);
                this->singingDisabled = false;
            }
        } else {
            if (!this->singingDisabled) {
                // Turn off singing
                Audio_ToggleMalonSinging(true);
                this->singingDisabled = true;
            }
        }
    }
}

void EnMa2_Init(Actor* thisx, PlayState* play) {
    EnMa2* this = (EnMa2*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 18.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gMalonAdultSkel, NULL, NULL, NULL, 0);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, DamageTable_Get(22), &sColChkInfoInit);

    switch (EnMa2_GetSpawnIndex(this, play)) {
        case MALON_ADULT_SPAWN_DAY_STABLES_NO_EPONA:
            EnMa2_ChangeAnim(this, MALON_ADULT_ANIM_STANDING);
            this->actionFunc = EnMa2_WaitToEndTalk;
            break;
        case MALON_ADULT_SPAWN_NIGHT_RANCH_NO_EPONA:
            EnMa2_ChangeAnim(this, MALON_ADULT_ANIM_SING);
            this->actionFunc = EnMa2_WaitForOcarina;
            break;
        case MALON_ADULT_SPAWN_ALWAYS:
            if (GET_INFTABLE(INFTABLE_8D)) {
                EnMa2_ChangeAnim(this, MALON_ADULT_ANIM_IDLE);
            } else {
                EnMa2_ChangeAnim(this, MALON_ADULT_ANIM_SING);
            }
            this->actionFunc = EnMa2_WaitToEndTalk;
            break;
        case MALON_ADULT_SPAWN_NONE:
            Actor_Kill(&this->actor);
            return;
    }

    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
}

void EnMa2_Destroy(Actor* thisx, PlayState* play) {
    EnMa2* this = (EnMa2*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
    Collider_DestroyCylinder(play, &this->collider);
}

void EnMa2_WaitToEndTalk(EnMa2* this, PlayState* play) {
    if (this->interactInfo.talkState == NPC_TALK_STATE_ACTION) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->interactInfo.talkState = NPC_TALK_STATE_IDLE;
    }
}

void EnMa2_WaitForOcarina(EnMa2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (player->stateFlags2 & PLAYER_STATE2_24) {
        player->stateFlags2 |= PLAYER_STATE2_25;
        player->unk_6A8 = &this->actor;
        Message_StartOcarina(play, OCARINA_ACTION_CHECK_EPONA);
        this->actionFunc = EnMa2_WaitForEponasSong;
    } else if (this->actor.xzDistToPlayer < 30.0f + this->collider.dim.radius) {
        player->stateFlags2 |= PLAYER_STATE2_23;
    }
}

void EnMa2_WaitForEponasSong(EnMa2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (play->msgCtx.ocarinaMode >= OCARINA_MODE_04) {
        this->actionFunc = EnMa2_WaitForOcarina;
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
    } else if (play->msgCtx.ocarinaMode == OCARINA_MODE_03) {
        Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        this->timer = 0x1E;
        SET_INFTABLE(INFTABLE_PLAYED_SONG_FOR_ADULT_MALON);
        this->actionFunc = EnMa2_ForceTalkAfterSong;
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
    } else {
        player->stateFlags2 |= PLAYER_STATE2_23;
    }
}

void EnMa2_ForceTalkAfterSong(EnMa2* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (DECR(this->timer)) {
        player->stateFlags2 |= PLAYER_STATE2_23;
    } else {
        if (this->interactInfo.talkState == NPC_TALK_STATE_IDLE) {
            this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
            Message_CloseTextbox(play);
        } else {
            this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
            this->actionFunc = EnMa2_WaitToEndTalk;
        }
    }
}

void EnMa2_Update(Actor* thisx, PlayState* play) {
    EnMa2* this = (EnMa2*)thisx;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    EnMa2_UpdateEyes(this);
    this->actionFunc(this, play);
    EnMa2_UpdateSinging(this, play);
    EnMa2_UpdateTracking(this, play);
    if (this->actionFunc != EnMa2_WaitForEponasSong) {
        Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, this->collider.dim.radius + 30.0f,
                          EnMa2_GetTextId, EnMa2_UpdateTalkState);
    }
}

s32 EnMa2_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnMa2* this = (EnMa2*)thisx;
    Vec3s limbRot;

    if ((limbIndex == MALON_ADULT_LEFT_THIGH_LIMB) || (limbIndex == MALON_ADULT_RIGHT_THIGH_LIMB)) {
        *dList = NULL;
    }
    if (limbIndex == MALON_ADULT_HEAD_LIMB) {
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        limbRot = this->interactInfo.headRot;
        Matrix_RotateX(BINANG_TO_RAD_ALT(limbRot.y), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD_ALT(limbRot.x), MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == MALON_ADULT_CHEST_AND_NECK_LIMB) {
        limbRot = this->interactInfo.torsoRot;
        Matrix_RotateY(BINANG_TO_RAD_ALT(-limbRot.y), MTXMODE_APPLY);
        Matrix_RotateX(BINANG_TO_RAD_ALT(-limbRot.x), MTXMODE_APPLY);
    }
    if ((limbIndex == MALON_ADULT_CHEST_AND_NECK_LIMB) || (limbIndex == MALON_ADULT_LEFT_SHOULDER_LIMB) ||
        (limbIndex == MALON_ADULT_RIGHT_SHOULDER_LIMB)) {
        rot->y += Math_SinS(this->upperBodyRot[limbIndex].y) * 200.0f;
        rot->z += Math_CosS(this->upperBodyRot[limbIndex].z) * 200.0f;
    }
    return false;
}

void EnMa2_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnMa2* this = (EnMa2*)thisx;
    Vec3f vec = { 900.0f, 0.0f, 0.0f };

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ma2.c", 904);

    if (limbIndex == MALON_ADULT_HEAD_LIMB) {
        Matrix_MultVec3f(&vec, &this->actor.focus.pos);
    }
    if ((limbIndex == MALON_ADULT_LEFT_HAND_LIMB) && (this->skelAnime.animation == &gMalonAdultStandStillAnim)) {
        gSPDisplayList(POLY_OPA_DISP++, gMalonAdultBasketDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ma2.c", 927);
}

void EnMa2_Draw(Actor* thisx, PlayState* play) {
    static void* sMouthTextures[] = { gMalonAdultMouthNeutralTex, gMalonAdultMouthSadTex, gMalonAdultMouthHappyTex };
    static void* sEyeTextures[] = { gMalonAdultEyeOpenTex, gMalonAdultEyeHalfTex, gMalonAdultEyeClosedTex };

    EnMa2* this = (EnMa2*)thisx;
    Camera* activeCam;
    f32 distFromCamEye;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ma2.c", 955);

    activeCam = GET_ACTIVE_CAM(play);
    distFromCamEye = Math_Vec3f_DistXZ(&this->actor.world.pos, &activeCam->eye);
    Audio_UpdateMalonSinging(distFromCamEye, NA_BGM_LONLON);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->mouthIndex]));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnMa2_OverrideLimbDraw, EnMa2_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ma2.c", 990);
}
