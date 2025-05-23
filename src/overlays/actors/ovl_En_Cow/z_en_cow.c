/*
 * File: z_en_cow.c
 * Overlay: ovl_En_Cow
 * Description: Cow
 */

#include "z_en_cow.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "rand.h"
#include "regs.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64ocarina.h"
#include "z64play.h"
#include "z64player.h"
#include "z64save.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnCow_Init(Actor* thisx, PlayState* play);
void EnCow_Destroy(Actor* thisx, PlayState* play);
void EnCow_Update(Actor* thisx, PlayState* play2);
void EnCow_Draw(Actor* thisx, PlayState* play);

void EnCow_TalkEnd(EnCow* this, PlayState* play);
void EnCow_GiveMilkEnd(EnCow* this, PlayState* play);
void EnCow_GiveMilkWait(EnCow* this, PlayState* play);
void EnCow_GiveMilk(EnCow* this, PlayState* play);
void EnCow_CheckForEmptyBottle(EnCow* this, PlayState* play);
void EnCow_UpdateAnimation(EnCow* this, PlayState* play);
void EnCow_Talk(EnCow* this, PlayState* play);
void EnCow_Idle(EnCow* this, PlayState* play);

void EnCow_DrawTail(Actor* thisx, PlayState* play);
void EnCow_UpdateTail(Actor* thisx, PlayState* play);
void EnCow_IdleTail(EnCow* this, PlayState* play);

ActorProfile En_Cow_Profile = {
    /**/ ACTOR_EN_COW,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_COW,
    /**/ sizeof(EnCow),
    /**/ EnCow_Init,
    /**/ EnCow_Destroy,
    /**/ EnCow_Update,
    /**/ EnCow_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 30, 40, 0, { 0, 0, 0 } },
};

static Vec3f sHeadFocusOffset = { 0.0f, -1300.0f, 1100.0f };

void EnCow_RotateY(Vec3f* vec, s16 rotY) {
    f32 xCalc;
    f32 rotCalcTemp;

    rotCalcTemp = Math_CosS(rotY);
    xCalc = (Math_SinS(rotY) * vec->z) + (rotCalcTemp * vec->x);
    rotCalcTemp = Math_SinS(rotY);

    vec->z = (Math_CosS(rotY) * vec->z) + (-rotCalcTemp * vec->x);
    vec->x = xCalc;
}

void EnCow_SetColliderPos(EnCow* this) {
    Vec3f vec;

    vec.y = 0.0f;
    vec.x = 0.0f;
    vec.z = 30.0f;

    EnCow_RotateY(&vec, this->actor.shape.rot.y);

    this->colliders[COW_COLLIDER_FRONT].dim.pos.x = this->actor.world.pos.x + vec.x;
    this->colliders[COW_COLLIDER_FRONT].dim.pos.y = this->actor.world.pos.y;
    this->colliders[COW_COLLIDER_FRONT].dim.pos.z = this->actor.world.pos.z + vec.z;

    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = -20.0f;

    EnCow_RotateY(&vec, this->actor.shape.rot.y);

    this->colliders[COW_COLLIDER_REAR].dim.pos.x = this->actor.world.pos.x + vec.x;
    this->colliders[COW_COLLIDER_REAR].dim.pos.y = this->actor.world.pos.y;
    this->colliders[COW_COLLIDER_REAR].dim.pos.z = this->actor.world.pos.z + vec.z;
}

void EnCow_SetTailPos(EnCow* this) {
    Vec3f vec;

    VEC_SET(vec, 0.0f, 57.0f, -36.0f);
    EnCow_RotateY(&vec, this->actor.shape.rot.y);

    this->actor.world.pos.x += vec.x;
    this->actor.world.pos.y += vec.y;
    this->actor.world.pos.z += vec.z;
}

void EnCow_Init(Actor* thisx, PlayState* play) {
    EnCow* this = (EnCow*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 72.0f);

    switch (COW_GET_TYPE(this)) {
        case COW_TYPE_BODY:
            SkelAnime_InitFlex(play, &this->skelAnime, &gCowBodySkel, NULL, this->jointTable, this->morphTable,
                               COW_LIMB_MAX);
            Animation_PlayLoop(&this->skelAnime, &gCowBodyChewAnim);

            Collider_InitCylinder(play, &this->colliders[COW_COLLIDER_FRONT]);
            Collider_SetCylinder(play, &this->colliders[COW_COLLIDER_FRONT], &this->actor, &sCylinderInit);

            Collider_InitCylinder(play, &this->colliders[COW_COLLIDER_REAR]);
            Collider_SetCylinder(play, &this->colliders[COW_COLLIDER_REAR], &this->actor, &sCylinderInit);

            EnCow_SetColliderPos(this);

            this->actionFunc = EnCow_Idle;

            if (play->sceneId == SCENE_LINKS_HOUSE) {
                if (!LINK_IS_ADULT) {
                    Actor_Kill(&this->actor);
                    return;
                }

                if (!GET_EVENTCHKINF(EVENTCHKINF_HORSE_RACE_COW_UNLOCK)) {
                    Actor_Kill(&this->actor);
                    return;
                }
            }

            Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_COW, this->actor.world.pos.x,
                               this->actor.world.pos.y, this->actor.world.pos.z, 0, this->actor.shape.rot.y, 0,
                               COW_TYPE_TAIL);
            this->animationTimer = Rand_ZeroFloat(1000.0f) + 40.0f;
            this->breathTimer = 0;
            this->actor.attentionRangeType = ATTENTION_RANGE_6;
            R_EPONAS_SONG_PLAYED = false;
            break;

        case COW_TYPE_TAIL:
            SkelAnime_InitFlex(play, &this->skelAnime, &gCowTailSkel, NULL, this->jointTable, this->morphTable,
                               COW_TAIL_LIMB_MAX);
            Animation_PlayLoop(&this->skelAnime, &gCowTailIdleAnim);
            this->actor.update = EnCow_UpdateTail;
            this->actor.draw = EnCow_DrawTail;
            this->actionFunc = EnCow_IdleTail;
            EnCow_SetTailPos(this);
            this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
            this->animationTimer = (u16)Rand_ZeroFloat(1000.0f) + 40.0f;
            break;
    }

    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    this->cowFlags = 0;
}

void EnCow_Destroy(Actor* thisx, PlayState* play) {
    EnCow* this = (EnCow*)thisx;

    if (COW_GET_TYPE(this) == COW_TYPE_BODY) {
        Collider_DestroyCylinder(play, &this->colliders[COW_COLLIDER_FRONT]);
        Collider_DestroyCylinder(play, &this->colliders[COW_COLLIDER_REAR]);
    }
}

void EnCow_UpdateAnimation(EnCow* this, PlayState* play) {
    if (this->animationTimer > 0) {
        this->animationTimer--;
    } else {
        this->animationTimer = Rand_ZeroFloat(500.0f) + 40.0f;
        Animation_Change(&this->skelAnime, &gCowBodyChewAnim, 1.0f, this->skelAnime.curFrame,
                         Animation_GetLastFrame(&gCowBodyChewAnim), ANIMMODE_ONCE, 1.0f);
    }

    if (this->actor.xzDistToPlayer < 150.0f) {
        if (!(this->cowFlags & COW_FLAG_PLAYER_NEARBY)) {
            this->cowFlags |= COW_FLAG_PLAYER_NEARBY;

            if (this->skelAnime.animation == &gCowBodyChewAnim) {
                this->animationTimer = 0;
            }
        }
    }

    this->breathTimer++;

    if (this->breathTimer > 48) {
        this->breathTimer = 0;
    }

    if (this->breathTimer < 32) {
        this->actor.scale.x = ((Math_SinS(this->breathTimer * 0x0400) * (1.0f / 100.0f)) + 1.0f) * 0.01f;
    } else {
        this->actor.scale.x = 0.01f;
    }

    if (this->breathTimer > 16) {
        this->actor.scale.y = ((Math_SinS((this->breathTimer * 0x0400) - 0x4000) * (1.0f / 100.0f)) + 1.0f) * 0.01f;
    } else {
        this->actor.scale.y = 0.01f;
    }
}

void EnCow_TalkEnd(EnCow* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Message_CloseTextbox(play);
        this->actionFunc = EnCow_Idle;
    }
}

void EnCow_GiveMilkEnd(EnCow* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actionFunc = EnCow_Idle;
    }
}

void EnCow_GiveMilkWait(EnCow* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnCow_GiveMilkEnd;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_MILK, 10000.0f, 100.0f);
    }
}

void EnCow_GiveMilk(EnCow* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Message_CloseTextbox(play);
        this->actionFunc = EnCow_GiveMilkWait;
        Actor_OfferGetItem(&this->actor, play, GI_MILK, 10000.0f, 100.0f);
    }
}

void EnCow_CheckForEmptyBottle(EnCow* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        if (Inventory_HasEmptyBottle()) {
            Message_ContinueTextbox(play, 0x2007);
            this->actionFunc = EnCow_GiveMilk;
        } else {
            Message_ContinueTextbox(play, 0x2013);
            this->actionFunc = EnCow_TalkEnd;
        }
    }
}

void EnCow_Talk(EnCow* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = EnCow_CheckForEmptyBottle;
    } else {
        this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        Actor_OfferTalk(&this->actor, play, 170.0f);
        this->actor.textId = 0x2006;
    }

    EnCow_UpdateAnimation(this, play);
}

void EnCow_Idle(EnCow* this, PlayState* play) {
    if ((play->msgCtx.ocarinaMode == OCARINA_MODE_00) || (play->msgCtx.ocarinaMode == OCARINA_MODE_04)) {
        // There is a complex interaction between `R_EPONAS_SONG_PLAYED` and `COW_FLAG_FAILED_TO_GIVE_MILK` to allow
        // multiple cows to try and give milk on the same frame.
        // `COW_FLAG_FAILED_TO_GIVE_MILK` gets set if this cow is not in range with the player to interact.
        // In the case of a failure, `R_EPONAS_SONG_PLAYED` is not set to false in case another cow can succeed.
        // On the following frame, if both `R_EPONAS_SONG_PLAYED` and `COW_FLAG_FAILED_TO_GIVE_MILK` are set, the
        // first cow that updates can assume all other cows also failed and can safely unset `R_EPONAS_SONG_PLAYED`.
        // All cows also unset their own `COW_FLAG_FAILED_TO_GIVE_MILK` flag.
        if (R_EPONAS_SONG_PLAYED) {
            if (this->cowFlags & COW_FLAG_FAILED_TO_GIVE_MILK) {
                this->cowFlags &= ~COW_FLAG_FAILED_TO_GIVE_MILK;
                R_EPONAS_SONG_PLAYED = false;
            } else {
                if ((this->actor.xzDistToPlayer < 150.0f) &&
                    (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) < 25000)) {
                    R_EPONAS_SONG_PLAYED = false;
                    this->actionFunc = EnCow_Talk;
                    this->actor.flags |= ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
                    Actor_OfferTalk(&this->actor, play, 170.0f);
                    this->actor.textId = 0x2006;
                } else {
                    this->cowFlags |= COW_FLAG_FAILED_TO_GIVE_MILK;
                }
            }
        } else {
            this->cowFlags &= ~COW_FLAG_FAILED_TO_GIVE_MILK;
        }
    }

    EnCow_UpdateAnimation(this, play);
}

void EnCow_IdleTail(EnCow* this, PlayState* play) {
    if (this->animationTimer > 0) {
        this->animationTimer--;
    } else {
        this->animationTimer = Rand_ZeroFloat(200.0f) + 40.0f;
        Animation_Change(&this->skelAnime, &gCowTailIdleAnim, 1.0f, this->skelAnime.curFrame,
                         Animation_GetLastFrame(&gCowTailIdleAnim), ANIMMODE_ONCE, 1.0f);
    }

    if ((this->actor.xzDistToPlayer < 150.0f) &&
        (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) > 25000)) {
        if (!(this->cowFlags & COW_FLAG_PLAYER_NEARBY)) {
            this->cowFlags |= COW_FLAG_PLAYER_NEARBY;

            if (this->skelAnime.animation == &gCowTailIdleAnim) {
                this->animationTimer = 0;
            }
        }
    }
}

void EnCow_Update(Actor* thisx, PlayState* play2) {
    EnCow* this = (EnCow*)thisx;
    PlayState* play = play2;
    s16 targetX;
    s16 targetY;
    Player* player = GET_PLAYER(play);

    CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliders[COW_COLLIDER_FRONT].base);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliders[COW_COLLIDER_REAR].base);

    Actor_MoveXZGravity(thisx);
    Actor_UpdateBgCheckInfo(play, thisx, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->skelAnime.animation == &gCowBodyChewAnim) {
            Actor_PlaySfx(thisx, NA_SE_EV_COW_CRY);
            Animation_Change(&this->skelAnime, &gCowBodyMoveHeadAnim, 1.0f, 0.0f,
                             Animation_GetLastFrame(&gCowBodyMoveHeadAnim), ANIMMODE_ONCE, 1.0f);
        } else {
            Animation_Change(&this->skelAnime, &gCowBodyChewAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gCowBodyChewAnim),
                             ANIMMODE_LOOP, 1.0f);
        }
    }

    this->actionFunc(this, play);

    if ((thisx->xzDistToPlayer < 150.0f) &&
        (ABS(Math_Vec3f_Yaw(&thisx->world.pos, &player->actor.world.pos)) < 0xC000)) {
        targetX = Math_Vec3f_Pitch(&thisx->focus.pos, &player->actor.focus.pos);
        targetY = Math_Vec3f_Yaw(&thisx->focus.pos, &player->actor.focus.pos) - thisx->shape.rot.y;

        if (targetX > 0x1000) {
            targetX = 0x1000;
        } else if (targetX < -0x1000) {
            targetX = -0x1000;
        }

        if (targetY > 0x2500) {
            targetY = 0x2500;
        } else if (targetY < -0x2500) {
            targetY = -0x2500;
        }
    } else {
        targetY = 0;
        targetX = 0;
    }

    Math_SmoothStepToS(&this->headRot.x, targetX, 10, 200, 10);
    Math_SmoothStepToS(&this->headRot.y, targetY, 10, 200, 10);
}

void EnCow_UpdateTail(Actor* thisx, PlayState* play) {
    EnCow* this = (EnCow*)thisx;
    s32 pad;

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->skelAnime.animation == &gCowTailIdleAnim) {
            Animation_Change(&this->skelAnime, &gCowTailSwishAnim, 1.0f, 0.0f,
                             Animation_GetLastFrame(&gCowTailSwishAnim), ANIMMODE_ONCE, 1.0f);
        } else {
            Animation_Change(&this->skelAnime, &gCowTailIdleAnim, 1.0f, 0.0f, Animation_GetLastFrame(&gCowTailIdleAnim),
                             ANIMMODE_LOOP, 1.0f);
        }
    }

    this->actionFunc(this, play);
}

s32 EnCow_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnCow* this = (EnCow*)thisx;

    if (limbIndex == COW_LIMB_HEAD) {
        rot->y += this->headRot.y;
        rot->x += this->headRot.x;
    }

    if (limbIndex == COW_LIMB_NOSE_RING) {
        *dList = NULL;
    }

    return false;
}

void EnCow_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnCow* this = (EnCow*)thisx;

    if (limbIndex == COW_LIMB_HEAD) {
        Matrix_MultVec3f(&sHeadFocusOffset, &this->actor.focus.pos);
    }
}

void EnCow_Draw(Actor* thisx, PlayState* play) {
    EnCow* this = (EnCow*)thisx;

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnCow_OverrideLimbDraw, EnCow_PostLimbDraw, this);
}

void EnCow_DrawTail(Actor* thisx, PlayState* play) {
    EnCow* this = (EnCow*)thisx;

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, this);
}
