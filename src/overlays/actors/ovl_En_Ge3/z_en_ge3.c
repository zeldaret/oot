/*
 * File: z_en_ge3.c
 * Overlay: ovl_En_Ge3
 * Description: Gerudo giving you membership card
 */

#include "z_en_ge3.h"
#include "assets/objects/object_geldb/object_geldb.h"
#include "versions.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnGe3_Init(Actor* thisx, PlayState* play2);
void EnGe3_Destroy(Actor* thisx, PlayState* play);
void EnGe3_Update(Actor* thisx, PlayState* play);
void EnGe3_Draw(Actor* thisx, PlayState* play2);

void EnGe3_WaitLookAtPlayer(EnGe3* this, PlayState* play);
void EnGe3_ForceTalk(EnGe3* this, PlayState* play);
void EnGe3_UpdateWhenNotTalking(Actor* thisx, PlayState* play);

ActorProfile En_Ge3_Profile = {
    /**/ ACTOR_EN_GE3,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_GELDB,
    /**/ sizeof(EnGe3),
    /**/ EnGe3_Init,
    /**/ EnGe3_Destroy,
    /**/ EnGe3_Update,
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
        { 0x00000000, 0x00, 0x00 },
        { 0x00000722, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 20, 50, 0, { 0, 0, 0 } },
};

static EnGe3ActionFunc sActionFuncs[] = { EnGe3_WaitLookAtPlayer };
static AnimationHeader* sAnimations[] = { &gGerudoRedStandAnim }; // Idle with right hand on hip and left over mouth
static u8 sAnimationModes[] = { ANIMMODE_LOOP };

void EnGe3_ChangeAction(EnGe3* this, s32 i) {
    this->actionFunc = sActionFuncs[i];

    Animation_Change(&this->skelAnime, sAnimations[i], 1.0f, 0.0f, (f32)Animation_GetLastFrame(sAnimations[i]),
                     sAnimationModes[i], -8.0f);

    this->unk_30C &= ~2;
}

void EnGe3_Init(Actor* thisx, PlayState* play2) {
    EnGe3* this = (EnGe3*)thisx;
    PlayState* play = play2;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gGerudoRedSkel, NULL, this->jointTable, this->morphTable,
                       GELDB_LIMB_MAX);
    Animation_PlayLoop(&this->skelAnime, &gGerudoRedStandAnim);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.world.rot.z = 0;
    this->actor.shape.rot.z = 0;
    EnGe3_ChangeAction(this, 0);
    this->actionFunc = EnGe3_ForceTalk;
    this->unk_30C = 0;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
}

void EnGe3_Destroy(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void EnGe3_TurnToFacePlayer(EnGe3* this, PlayState* play) {
    s32 pad;
    s16 angleDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

    if (ABS(angleDiff) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 6, 4000, 100);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->unk_306, this->actor.focus.pos);
    } else {
        if (angleDiff < 0) {
            Math_SmoothStepToS(&this->headRot.y, -0x2000, 6, 6200, 0x100);
        } else {
            Math_SmoothStepToS(&this->headRot.y, 0x2000, 6, 6200, 0x100);
        }

        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 12, 1000, 100);
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }
}

void EnGe3_LookAtPlayer(EnGe3* this, PlayState* play) {
    if ((ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) <= 0x2300) &&
        (this->actor.xzDistToPlayer < 100.0f)) {
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->unk_306, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->headRot.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->headRot.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_306.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_306.y, 0, 6, 6200, 100);
    }
}

void EnGe3_Wait(EnGe3* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = EnGe3_WaitLookAtPlayer;
        this->actor.update = EnGe3_UpdateWhenNotTalking;
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
    }
    EnGe3_TurnToFacePlayer(this, play);
}

void EnGe3_WaitLookAtPlayer(EnGe3* this, PlayState* play) {
    EnGe3_LookAtPlayer(this, play);
}

void EnGe3_WaitTillCardGiven(EnGe3* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnGe3_Wait;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void EnGe3_GiveCard(EnGe3* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actionFunc = EnGe3_WaitTillCardGiven;
        Actor_OfferGetItem(&this->actor, play, GI_GERUDOS_CARD, 10000.0f, 50.0f);
    }
}

void EnGe3_ForceTalk(EnGe3* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe3_GiveCard;
    } else {
        if (!(this->unk_30C & 4)) {
            Player_SetCsActionWithHaltedActors(play, &this->actor, PLAYER_CSACTION_7);
            this->unk_30C |= 4;
        }
        this->actor.textId = 0x6004;
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Actor_OfferTalkExchange(&this->actor, play, 300.0f, 300.0f, EXCH_ITEM_NONE);
    }
    EnGe3_LookAtPlayer(this, play);
}

void EnGe3_UpdateCollision(EnGe3* this, PlayState* play) {
    s32 pad;
    s32 pad2;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_UpdateBgCheckInfo(play, &this->actor, 40.0f, 25.0f, 40.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);

    if (!(this->unk_30C & 2) && SkelAnime_Update(&this->skelAnime)) {
        this->unk_30C |= 2;
    }
}

void EnGe3_MoveAndBlink(EnGe3* this, PlayState* play) {

    Actor_MoveXZGravity(&this->actor);

    if (DECR(this->blinkTimer) == 0) {
        this->blinkTimer = Rand_S16Offset(60, 60);
    }

    this->eyeIndex = this->blinkTimer;

    if (this->eyeIndex >= 3) {
        this->eyeIndex = 0;
    }
}

void EnGe3_UpdateWhenNotTalking(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    EnGe3_UpdateCollision(this, play);
    this->actionFunc(this, play);

    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnGe3_Wait;
        this->actor.update = EnGe3_Update;
    } else {
        this->actor.textId = 0x6005;
        if (this->actor.xzDistToPlayer < 100.0f) {
            Actor_OfferTalk(&this->actor, play, 100.0f);
        }
    }

    EnGe3_MoveAndBlink(this, play);
}

void EnGe3_Update(Actor* thisx, PlayState* play) {
    EnGe3* this = (EnGe3*)thisx;

    EnGe3_UpdateCollision(this, play);
    this->actionFunc(this, play);
    EnGe3_MoveAndBlink(this, play);
}

s32 EnGe3_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGe3* this = (EnGe3*)thisx;

    switch (limbIndex) {
        // Hide swords and veil from object_geldb
        case GELDB_LIMB_VEIL:
        case GELDB_LIMB_R_SWORD:
        case GELDB_LIMB_L_SWORD:
            *dList = NULL;
            return false;
        // Turn head
        case GELDB_LIMB_HEAD:
            rot->x += this->headRot.y;
#if OOT_VERSION >= PAL_1_1
            FALLTHROUGH;
        default:
            // This is a hack to fix a bug present before PAL 1.1, where the actor's clothes can change color
            // depending on what was drawn earlier in the frame.
            OPEN_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 547);
            switch (limbIndex) {
                case GELDB_LIMB_NECK:
                    break;
                case GELDB_LIMB_HEAD:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 80, 60, 10, 255);
                    break;
                case GELDB_LIMB_R_SWORD:
                case GELDB_LIMB_L_SWORD:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 170, 230, 255);
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
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
    return false;
}

void EnGe3_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGe3* this = (EnGe3*)thisx;
    Vec3f D_80A351C8 = { 600.0f, 700.0f, 0.0f };

    if (limbIndex == GELDB_LIMB_HEAD) {
        Matrix_MultVec3f(&D_80A351C8, &this->actor.focus.pos);
    }
}

void EnGe3_Draw(Actor* thisx, PlayState* play2) {
    static void* eyeTextures[] = {
        gGerudoRedEyeOpenTex,
        gGerudoRedEyeHalfTex,
        gGerudoRedEyeShutTex,
    };
    EnGe3* this = (EnGe3*)thisx;
    PlayState* play = play2;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 614);

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeIndex]));
    func_8002EBCC(&this->actor, play, 0);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnGe3_OverrideLimbDraw, EnGe3_PostLimbDraw, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_ge3.c", 631);
}
