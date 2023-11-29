/*
 * File: z_en_fu.c
 * Overlay: ovl_En_Fu
 * Description: Windmill Man
 */

#include "z_en_fu.h"
#include "assets/objects/object_fu/object_fu.h"
#include "assets/scenes/indoors/hakasitarelay/hakasitarelay_scene.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3 | ACTOR_FLAG_4 | ACTOR_FLAG_25)

#define FU_RESET_LOOK_ANGLE (1 << 0)
#define FU_WAIT (1 << 1)

void EnFu_Init(Actor* thisx, PlayState* play);
void EnFu_Destroy(Actor* thisx, PlayState* play);
void EnFu_Update(Actor* thisx, PlayState* play);
void EnFu_Draw(Actor* thisx, PlayState* play);

void EnFu_WaitChild(EnFu* this, PlayState* play);
void func_80A1DA04(EnFu* this, PlayState* play);

void EnFu_WaitAdult(EnFu* this, PlayState* play);
void EnFu_TeachSong(EnFu* this, PlayState* play);
void EnFu_WaitForPlayback(EnFu* this, PlayState* play);
void func_80A1DBA0(EnFu* this, PlayState* play);
void func_80A1DBD4(EnFu* this, PlayState* play);
void func_80A1DB60(EnFu* this, PlayState* play);

ActorInit En_Fu_InitVars = {
    /**/ ACTOR_EN_FU,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_FU,
    /**/ sizeof(EnFu),
    /**/ EnFu_Init,
    /**/ EnFu_Destroy,
    /**/ EnFu_Update,
    /**/ EnFu_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
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
    { 30, 40, 0, { 0, 0, 0 } },
};

static Vec3f sMtxSrc = {
    700.0f,
    700.0f,
    0.0f,
};

typedef enum {
    /* 0x00 */ FU_FACE_CALM,
    /* 0x01 */ FU_FACE_MAD
} EnFuFace;

void EnFu_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnFu* this = (EnFu*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->skelanime, &gWindmillManSkel, &gWindmillManPlayStillAnim, this->jointTable,
                       this->morphTable, FU_LIMB_MAX);
    Animation_PlayLoop(&this->skelanime, &gWindmillManPlayStillAnim);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    if (!LINK_IS_ADULT) {
        this->actionFunc = EnFu_WaitChild;
        this->facialExpression = FU_FACE_CALM;
    } else {
        this->actionFunc = EnFu_WaitAdult;
        this->facialExpression = FU_FACE_MAD;
        this->skelanime.playSpeed = 2.0f;
    }
    this->behaviorFlags = 0;
    this->actor.targetMode = 6;
}

void EnFu_Destroy(Actor* thisx, PlayState* play) {
    EnFu* this = (EnFu*)thisx;
    Collider_DestroyCylinder(play, &this->collider);
}

s32 func_80A1D94C(EnFu* this, PlayState* play, u16 textID, EnFuActionFunc actionFunc) {
    s16 yawDiff;

    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = actionFunc;
        return true;
    }
    this->actor.textId = textID;
    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if ((ABS(yawDiff) < 0x2301) && (this->actor.xzDistToPlayer < 100.0f)) {
        Actor_OfferTalk(&this->actor, play, 100.0f);
    } else {
        this->behaviorFlags |= FU_RESET_LOOK_ANGLE;
    }
    return false;
}

void func_80A1DA04(EnFu* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->behaviorFlags &= ~FU_WAIT;
        this->actionFunc = EnFu_WaitChild;

        if (this->skelanime.animation == &gWindmillManPlayAndMoveHeadAnim) {
            Animation_Change(&this->skelanime, &gWindmillManPlayStillAnim, 1.0f, 0.0f,
                             Animation_GetLastFrame(&gWindmillManPlayStillAnim), ANIMMODE_ONCE, -4.0f);
        }
    }
}

void EnFu_WaitChild(EnFu* this, PlayState* play) {
    u16 textID = Text_GetFaceReaction(play, 0xB);

    if (textID == 0) {
        textID = GET_EVENTCHKINF(EVENTCHKINF_67) ? 0x5033 : 0x5032;
    }

    // if ACTOR_FLAG_TALK is set and textID is 0x5033, change animation
    // if func_80A1D94C returns 1, actionFunc is set to func_80A1DA04
    if (func_80A1D94C(this, play, textID, func_80A1DA04)) {
        if (textID == 0x5033) {
            Animation_Change(&this->skelanime, &gWindmillManPlayAndMoveHeadAnim, 1.0f, 0.0f,
                             Animation_GetLastFrame(&gWindmillManPlayAndMoveHeadAnim), ANIMMODE_ONCE, -4.0f);
        }
    }
}

void func_80A1DB60(EnFu* this, PlayState* play) {
    if (play->csCtx.state == CS_STATE_IDLE) {
        this->actionFunc = EnFu_WaitAdult;
        SET_EVENTCHKINF(EVENTCHKINF_5B);
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
    }
}

void func_80A1DBA0(EnFu* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnFu_WaitAdult;
    }
}

void func_80A1DBD4(EnFu* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (play->msgCtx.ocarinaMode >= OCARINA_MODE_04) {
        this->actionFunc = EnFu_WaitAdult;
        play->msgCtx.ocarinaMode = OCARINA_MODE_04;
        this->actor.flags &= ~ACTOR_FLAG_16;
    } else if (play->msgCtx.ocarinaMode == OCARINA_MODE_03) {
        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
        this->actionFunc = func_80A1DB60;
        this->actor.flags &= ~ACTOR_FLAG_16;
        play->csCtx.script = SEGMENTED_TO_VIRTUAL(gSongOfStormsCs);
        gSaveContext.cutsceneTrigger = 1;
        Item_Give(play, ITEM_SONG_STORMS);
        play->msgCtx.ocarinaMode = OCARINA_MODE_00;
        SET_EVENTCHKINF(EVENTCHKINF_65);
    } else if (play->msgCtx.ocarinaMode == OCARINA_MODE_02) {
        player->stateFlags2 &= ~PLAYER_STATE2_24;
        this->actionFunc = EnFu_WaitAdult;
    } else if (play->msgCtx.ocarinaMode == OCARINA_MODE_01) {
        player->stateFlags2 |= PLAYER_STATE2_23;
    }
}

void EnFu_WaitForPlayback(EnFu* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    player->stateFlags2 |= PLAYER_STATE2_23;
    // if dialog state is 7, player has played back the song
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_SONG_DEMO_DONE) {
        Message_StartOcarina(play, OCARINA_ACTION_PLAYBACK_STORMS);
        this->actionFunc = func_80A1DBD4;
    }
}

void EnFu_TeachSong(EnFu* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    player->stateFlags2 |= PLAYER_STATE2_23;
    // if dialog state is 2, start song demonstration
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        this->behaviorFlags &= ~FU_WAIT;
        // Ocarina is set to harp here but is immediately overwritten to the grind organ in the message system
        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_HARP);
        Message_StartOcarina(play, OCARINA_ACTION_TEACH_STORMS);
        this->actionFunc = EnFu_WaitForPlayback;
    }
}

void EnFu_WaitAdult(EnFu* this, PlayState* play) {
    static s16 yawDiff;
    Player* player = GET_PLAYER(play);

    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (GET_EVENTCHKINF(EVENTCHKINF_5B)) {
        func_80A1D94C(this, play, 0x508E, func_80A1DBA0);
    } else if (player->stateFlags2 & PLAYER_STATE2_24) {
        this->actor.textId = 0x5035;
        Message_StartTextbox(play, this->actor.textId, NULL);
        this->actionFunc = EnFu_TeachSong;
        this->behaviorFlags |= FU_WAIT;
    } else if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = func_80A1DBA0;
    } else if (ABS(yawDiff) < 0x2301) {
        if (this->actor.xzDistToPlayer < 100.0f) {
            this->actor.textId = 0x5034;
            Actor_OfferTalk(&this->actor, play, 100.0f);
            player->stateFlags2 |= PLAYER_STATE2_23;
        }
    }
}

void EnFu_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnFu* this = (EnFu*)thisx;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    if (!(this->behaviorFlags & FU_WAIT) && SkelAnime_Update(&this->skelanime)) {
        Animation_Change(&this->skelanime, this->skelanime.animation, 1.0f, 0.0f,
                         Animation_GetLastFrame(this->skelanime.animation), ANIMMODE_ONCE, 0.0f);
    }
    this->actionFunc(this, play);
    if (this->behaviorFlags & FU_RESET_LOOK_ANGLE) {
        Math_SmoothStepToS(&this->lookAngleOffset.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->lookAngleOffset.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2A2.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2A2.y, 0, 6, 6200, 100);
        this->behaviorFlags &= ~FU_RESET_LOOK_ANGLE;
    } else {
        Actor_TrackPlayer(play, &this->actor, &this->lookAngleOffset, &this->unk_2A2, this->actor.focus.pos);
    }
}

s32 EnFu_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnFu* this = (EnFu*)thisx;
    s32 pad;

    if (limbIndex == FU_LIMB_UNK) {
        return false;
    }
    switch (limbIndex) {
        case FU_LIMB_HEAD:
            rot->x += this->lookAngleOffset.y;
            rot->z += this->lookAngleOffset.x;
            break;
        case FU_LIMB_CHEST_MUSIC_BOX:
            break;
    }

    if (!(this->behaviorFlags & FU_WAIT)) {
        return false;
    }

    if (limbIndex == FU_LIMB_CHEST_MUSIC_BOX) {
        rot->y += (Math_SinS((play->state.frames * (limbIndex * 50 + 0x814))) * 200.0f);
        rot->z += (Math_CosS((play->state.frames * (limbIndex * 50 + 0x940))) * 200.0f);
    }
    return false;
}

void EnFu_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnFu* this = (EnFu*)thisx;

    if (limbIndex == FU_LIMB_HEAD) {
        Matrix_MultVec3f(&sMtxSrc, &this->actor.focus.pos);
    }
}

void EnFu_Draw(Actor* thisx, PlayState* play) {
    static void* sEyesSegments[] = { gWindmillManEyeClosedTex, gWindmillManEyeAngryTex };
    static void* sMouthSegments[] = { gWindmillManMouthOpenTex, gWindmillManMouthAngryTex };
    s32 pad;
    EnFu* this = (EnFu*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_fu.c", 773);

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyesSegments[this->facialExpression]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthSegments[this->facialExpression]));
    SkelAnime_DrawFlexOpa(play, this->skelanime.skeleton, this->skelanime.jointTable, this->skelanime.dListCount,
                          EnFu_OverrideLimbDraw, EnFu_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_fu.c", 791);
}
