/*
 * File: z_en_ge3.c
 * Overlay: ovl_En_Ge3
 * Description: Gerudo giving you membership card
 */

#include "z_en_ge3.h"

#include "attributes.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "segmented_address.h"
#include "sys_matrix.h"
#include "versions.h"
#include "z_lib.h"
#include "item.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_geldb/object_geldb.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnGe3_Init(Actor* thisx, PlayState* play);
void EnGe3_Destroy(Actor* thisx, PlayState* play);
void EnGe3_UpdateTalking(Actor* thisx, PlayState* play);
void EnGe3_Draw(Actor* thisx, PlayState* play);

void EnGe3_Idle(EnGe3* this, PlayState* play);
void EnGe3_StartTalk(EnGe3* this, PlayState* play);
void EnGe3_UpdateIdle(Actor* thisx, PlayState* play);

#define EN_GE3_STATE_FLAG_NO_SKELANIME_UPDATE (1 << 1)
#define EN_GE3_STATE_FLAG_PLAYER_CS_ACTION_STARTED (1 << 2)

ActorProfile En_Ge3_Profile = {
    /**/ ACTOR_EN_GE3,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GELDB,
    /**/ sizeof(EnGe3),
    /**/ EnGe3_Init,
    /**/ EnGe3_Destroy,
    /**/ EnGe3_UpdateTalking,
    /**/ EnGe3_Draw,
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
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000722, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 50, 0, { 0, 0, 0 } },
};

static void (*sActionFuncs[1])(EnGe3*, PlayState*) = { EnGe3_Idle };
static AnimationHeader* sAnims[1] = { &gGerudoRedStandAnim };
static u8 sAnimModes[1] = { ANIMMODE_LOOP };

void EnGe3_SetupAction(EnGe3* this, s32 action) {
    this->actionFunc = sActionFuncs[action];
    Animation_Change(&this->skelAnime, sAnims[action], 1.0f, 0.0f, Animation_GetLastFrame(sAnims[action]),
                     sAnimModes[action], -8.0f);
    this->stateFlags &= ~EN_GE3_STATE_FLAG_NO_SKELANIME_UPDATE;
}

void EnGe3_Init(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gGerudoRedSkel, NULL, this->jointTable, this->morphTable, 24);
    Animation_PlayLoop(&this->skelAnime, &gGerudoRedStandAnim);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.world.rot.z = 0;
    this->actor.shape.rot.z = 0;
    EnGe3_SetupAction(this, 0);
    this->actionFunc = EnGe3_StartTalk;
    this->stateFlags = 0;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
}

void EnGe3_Destroy(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnGe3_TrackPlayer(EnGe3* this, PlayState* play) {
    s16 relYawTowardsPlayer;
    s32 pad;

    relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (ABS(relYawTowardsPlayer) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 6, 0xFA0, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    } else {
        if (relYawTowardsPlayer < 0) {
            Math_SmoothStepToS(&this->headRot.y, -0x2000, 6, 0x1838, 0x100);
        } else {
            Math_SmoothStepToS(&this->headRot.y, 0x2000, 6, 0x1838, 0x100);
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 12, 0x3E8, 0x64);
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }
}

void EnGe3_TrackPlayerIfNear(EnGe3* this, PlayState* play) {
    s16 relYawTowardsPlayer;

    relYawTowardsPlayer = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(relYawTowardsPlayer) <= 0x2300) && (this->actor.xzDistToPlayer < 100.0f)) {
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->headRot.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->headRot.y, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->torsoRot.x, 0, 6, 0x1838, 0x64);
        Math_SmoothStepToS(&this->torsoRot.y, 0, 6, 0x1838, 0x64);
    }
}

void EnGe3_WaitTalkEnd(EnGe3* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe3_Idle;
        this->actor.update = EnGe3_UpdateIdle;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    }
    EnGe3_TrackPlayer(this, play);
}

void EnGe3_Idle(EnGe3* this, PlayState* play) {
    EnGe3_TrackPlayerIfNear(this, play);
}

void EnGe3_GiveGerudosCard(EnGe3* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnGe3_WaitTalkEnd;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void EnGe3_Talking(EnGe3* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actionFunc = EnGe3_GiveGerudosCard;
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void EnGe3_StartTalk(EnGe3* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe3_Talking;
    } else {
        if (!(this->stateFlags & EN_GE3_STATE_FLAG_PLAYER_CS_ACTION_STARTED)) {
            Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
            this->stateFlags |= EN_GE3_STATE_FLAG_PLAYER_CS_ACTION_STARTED;
        }
        this->actor.textId = 0x6004;
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Actor_OfferTalkExchange(&this->actor, play, 300.0f, 300.0f, EXCH_ITEM_NONE);
    }
    EnGe3_TrackPlayerIfNear(this, play);
}

void EnGe3_UpdateImplPre(EnGe3* this, PlayState* play) {
    s32 pad[2];

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
    if (!(this->stateFlags & EN_GE3_STATE_FLAG_NO_SKELANIME_UPDATE) && SkelAnime_Update(&this->skelAnime)) {
        this->stateFlags |= EN_GE3_STATE_FLAG_NO_SKELANIME_UPDATE;
    }
}

void EnGe3_UpdateImplPost(EnGe3* this, PlayState* play) {
    Actor_MoveXZGravity(&this->actor);
    if (DECR(this->eyeTimer) == 0) {
        this->eyeTimer = Rand_S16Offset(60, 60);
    }
    this->eyeTexIndex = this->eyeTimer;
    if (this->eyeTexIndex >= 3) {
        this->eyeTexIndex = 0;
    }
}

void EnGe3_UpdateIdle(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    EnGe3_UpdateImplPre(this, play);
    this->actionFunc(this, play);
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe3_WaitTalkEnd;
        this->actor.update = EnGe3_UpdateTalking;
    } else {
        this->actor.textId = 0x6005;
        if (this->actor.xzDistToPlayer < 100.0f) {
            Actor_OfferTalk(&this->actor, play, 100.0f);
        }
    }
    EnGe3_UpdateImplPost(this, play);
}

void EnGe3_UpdateTalking(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    EnGe3_UpdateImplPre(this, play);
    this->actionFunc(this, play);
    EnGe3_UpdateImplPost(this, play);
}

s32 EnGe3_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGe3* this = thisx;

    switch (limbIndex) {
        case 5:
        case 0xB:
        case 0x10:
            *dList = NULL;
            return 0;

        case 6:
            rot->x += this->headRot.y;
#if OOT_VERSION >= PAL_1_1
            FALLTHROUGH;
        default:
            // This is a hack to fix a bug present before PAL 1.1, where the actor's clothes can change color
            // depending on what was drawn earlier in the frame.
            OPEN_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 547);
            switch (limbIndex) {
                case 3:
                    break;

                case 6:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 80, 60, 10, 255);
                    break;

                case 11:
                case 16:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 170, 230, 255);
                    gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, 255, 255, 255, 255);
                    break;

                default:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 0, 0, 255);
                    break;
            }
            CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 566);
#endif
            break;
    }
    return 0;
}

void EnGe3_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGe3* this = thisx;
    Vec3f focusOffset = { 600.0f, 700.0f, 0.0f };

    if (limbIndex == 6) {
        Matrix_MultVec3f(&focusOffset, &this->actor.focus.pos);
    }
}

void EnGe3_Draw(Actor* thisx, PlayState* play) {
    static void* sEyeTextures[] = {
        gGerudoRedEyeOpenTex,
        gGerudoRedEyeHalfTex,
        gGerudoRedEyeShutTex,
    };
    s32 pad;
    EnGe3* this = (EnGe3*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 614);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
    func_8002EBCC(&this->actor, play, 0);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnGe3_OverrideLimbDraw, EnGe3_PostLimbDraw, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 631);
}
