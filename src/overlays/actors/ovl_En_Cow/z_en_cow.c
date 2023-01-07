/*
 * File: z_en_cow.c
 * Overlay: ovl_En_Cow
 * Description: Cow
 */

#include "z_en_cow.h"
#include "assets/objects/object_cow/object_cow.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3)

void EnCow_Init(Actor* thisx, PlayState* play);
void EnCow_Destroy(Actor* thisx, PlayState* play);
void EnCow_Update(Actor* thisx, PlayState* play2);
void EnCow_Draw(Actor* thisx, PlayState* play);
void EnCow_DrawTail(Actor* thisx, PlayState* play);

void EnCow_Animate(EnCow* this, PlayState* play);
void EnCow_AnimateTail(Actor* thisx, PlayState* play);

void EnCow_ProduceMilk(EnCow* this, PlayState* play);
void EnCow_CheckForBottle(EnCow* this, PlayState* play);
void EnCow_FillEmptyBottle(EnCow* this, PlayState* play);
void EnCow_GiveMilk(EnCow* this, PlayState* play);
void EnCow_NoEmptyBottle(EnCow* this, PlayState* play);
void EnCow_Behavior(EnCow* this, PlayState* play);
void EnCow_CowTailBehavior(EnCow* this, PlayState* play);

ActorInit En_Cow_InitVars = {
    ACTOR_EN_COW,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_COW,
    sizeof(EnCow),
    (ActorFunc)EnCow_Init,
    (ActorFunc)EnCow_Destroy,
    (ActorFunc)EnCow_Update,
    (ActorFunc)EnCow_Draw,
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

static Vec3f D_809E010C = { 0.0f, -1300.0f, 1100.0f };

void EnCow_ApplyRotToVec(Vec3f* vec, s16 rotY) {
    f32 xCalc;
    f32 rotCalcTemp;

    rotCalcTemp = Math_CosS(rotY);
    xCalc = (Math_SinS(rotY) * vec->z) + (rotCalcTemp * vec->x);
    rotCalcTemp = Math_SinS(rotY);
    vec->z = (Math_CosS(rotY) * vec->z) + (-rotCalcTemp * vec->x);
    vec->x = xCalc;
}

void EnCow_PositionCow(EnCow* this) {
    Vec3f vec;

    vec.y = 0.0f;
    vec.x = 0.0f;
    vec.z = 30.0f;
    EnCow_ApplyRotToVec(&vec, this->actor.shape.rot.y);
    this->colliders[0].dim.pos.x = this->actor.world.pos.x + vec.x;
    this->colliders[0].dim.pos.y = this->actor.world.pos.y;
    this->colliders[0].dim.pos.z = this->actor.world.pos.z + vec.z;

    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = -20.0f;
    EnCow_ApplyRotToVec(&vec, this->actor.shape.rot.y);
    this->colliders[1].dim.pos.x = this->actor.world.pos.x + vec.x;
    this->colliders[1].dim.pos.y = this->actor.world.pos.y;
    this->colliders[1].dim.pos.z = this->actor.world.pos.z + vec.z;
}

void EnCow_PositionTail(EnCow* this) {
    Vec3f vec;

    VEC_SET(vec, 0.0f, 57.0f, -36.0f);

    EnCow_ApplyRotToVec(&vec, this->actor.shape.rot.y);
    this->actor.world.pos.x += vec.x;
    this->actor.world.pos.y += vec.y;
    this->actor.world.pos.z += vec.z;
}

void EnCow_Init(Actor* thisx, PlayState* play) {
    EnCow* this = (EnCow*)thisx;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 72.0f);
    switch (this->actor.params) {
        case 0:
            SkelAnime_InitFlex(play, &this->skelAnime, &gCowBodySkel, NULL, this->jointTable, this->morphTable, 6);
            Animation_PlayLoop(&this->skelAnime, &gCowBodyChewAnim);
            Collider_InitCylinder(play, &this->colliders[0]);
            Collider_SetCylinder(play, &this->colliders[0], &this->actor, &sCylinderInit);
            Collider_InitCylinder(play, &this->colliders[1]);
            Collider_SetCylinder(play, &this->colliders[1], &this->actor, &sCylinderInit);
            EnCow_PositionCow(this);
            this->actionFunc = EnCow_Behavior;
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
                               this->actor.world.pos.y, this->actor.world.pos.z, 0, this->actor.shape.rot.y, 0, 1);
            this->animTimer = Rand_ZeroFloat(1000.0f) + 40.0f;
            this->breathTimer = 0;
            this->actor.targetMode = 6;
            R_PLAYED_EPONAS_SONG = 0;
            break;
        case 1:
            SkelAnime_InitFlex(play, &this->skelAnime, &gCowTailSkel, NULL, this->jointTable, this->morphTable, 6);
            Animation_PlayLoop(&this->skelAnime, &gCowTailIdleAnim);
            this->actor.update = EnCow_AnimateTail;
            this->actor.draw = EnCow_DrawTail;
            this->actionFunc = EnCow_CowTailBehavior;
            EnCow_PositionTail(this);
            this->actor.flags &= ~ACTOR_FLAG_0;
            this->animTimer = ((u32)(Rand_ZeroFloat(1000.0f)) & 0xFFFF) + 40.0f;
            break;
    }
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);
    this->stateFlags = 0;
}

void EnCow_Destroy(Actor* thisx, PlayState* play) {
    EnCow* this = (EnCow*)thisx;

    if (this->actor.params == 0) {
        Collider_DestroyCylinder(play, &this->colliders[0]);
        Collider_DestroyCylinder(play, &this->colliders[1]);
    }
}

void EnCow_Animate(EnCow* this, PlayState* play) {
    if (this->animTimer > 0) {
        this->animTimer -= 1;
    } else {
        this->animTimer = Rand_ZeroFloat(500.0f) + 40.0f;
        Animation_Change(&this->skelAnime, &gCowBodyChewAnim, 1.0f, this->skelAnime.curFrame,
                         Animation_GetLastFrame(&gCowBodyChewAnim), ANIMMODE_ONCE, 1.0f);
    }

    if ((this->actor.xzDistToPlayer < 150.0f) && !(this->stateFlags & COW_ACTIVE)) {
        this->stateFlags |= COW_ACTIVE;
        if (this->skelAnime.animation == &gCowBodyChewAnim) {
            this->animTimer = 0;
        }
    }

    this->breathTimer++;
    if (this->breathTimer >= 0x31) {
        this->breathTimer = 0;
    }

    // (1.0f / 100.0f) instead of 0.01f below is necessary so 0.01f doesn't get reused mistakenly
    if (this->breathTimer < 0x20) {
        this->actor.scale.x = ((Math_SinS(this->breathTimer << 0xA) * (1.0f / 100.0f)) + 1.0f) * 0.01f;
    } else {
        this->actor.scale.x = 0.01f;
    }

    if (this->breathTimer >= 0x11) {
        this->actor.scale.y = ((Math_SinS((this->breathTimer << 0xA) - 0x4000) * (1.0f / 100.0f)) + 1.0f) * 0.01f;
    } else {
        this->actor.scale.y = 0.01f;
    }
}

void EnCow_NoEmptyBottle(EnCow* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->actor.flags &= ~ACTOR_FLAG_16;
        Message_CloseTextbox(play);
        this->actionFunc = EnCow_Behavior;
    }
}

void EnCow_ResetBehavior(EnCow* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actor.flags &= ~ACTOR_FLAG_16;
        this->actionFunc = EnCow_Behavior;
    }
}

void EnCow_GiveMilk(EnCow* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = EnCow_ResetBehavior;
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_MILK, 10000.0f, 100.0f);
    }
}

void EnCow_FillEmptyBottle(EnCow* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        this->actor.flags &= ~ACTOR_FLAG_16;
        Message_CloseTextbox(play);
        this->actionFunc = EnCow_GiveMilk;
        Actor_OfferGetItem(&this->actor, play, GI_MILK, 10000.0f, 100.0f);
    }
}

void EnCow_CheckForBottle(EnCow* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        if (Inventory_HasEmptyBottle()) {
            Message_ContinueTextbox(play, 0x2007);
            this->actionFunc = EnCow_FillEmptyBottle;
        } else {
            Message_ContinueTextbox(play, 0x2013);
            this->actionFunc = EnCow_NoEmptyBottle;
        }
    }
}

void EnCow_ProduceMilk(EnCow* this, PlayState* play) {
    if (Actor_ProcessTalkRequest(&this->actor, play)) {
        this->actionFunc = EnCow_CheckForBottle;
    } else {
        this->actor.flags |= ACTOR_FLAG_16;
        func_8002F2CC(&this->actor, play, 170.0f);
        this->actor.textId = 0x2006;
    }
    EnCow_Animate(this, play);
}

void EnCow_Behavior(EnCow* this, PlayState* play) {
    if ((play->msgCtx.ocarinaMode == OCARINA_MODE_00) || (play->msgCtx.ocarinaMode == OCARINA_MODE_04)) {
        if (R_PLAYED_EPONAS_SONG) {
            if (this->stateFlags & COW_RESET_EPONAS_TRIGGER) {
                this->stateFlags &= ~COW_RESET_EPONAS_TRIGGER;
                R_PLAYED_EPONAS_SONG = 0;
            } else {
                if ((this->actor.xzDistToPlayer < 150.0f) &&
                    (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) < 0x61A8)) {
                    R_PLAYED_EPONAS_SONG = 0;
                    this->actionFunc = EnCow_ProduceMilk;
                    this->actor.flags |= ACTOR_FLAG_16;
                    func_8002F2CC(&this->actor, play, 170.0f);
                    this->actor.textId = 0x2006;
                } else {
                    this->stateFlags |= COW_RESET_EPONAS_TRIGGER;
                }
            }
        } else {
            this->stateFlags &= ~COW_RESET_EPONAS_TRIGGER;
        }
    }
    EnCow_Animate(this, play);
}

void EnCow_CowTailBehavior(EnCow* this, PlayState* play) {
    if (this->animTimer > 0) {
        this->animTimer--;
    } else {
        this->animTimer = Rand_ZeroFloat(200.0f) + 40.0f;
        Animation_Change(&this->skelAnime, &gCowTailIdleAnim, 1.0f, this->skelAnime.curFrame,
                         Animation_GetLastFrame(&gCowTailIdleAnim), ANIMMODE_ONCE, 1.0f);
    }

    if ((this->actor.xzDistToPlayer < 150.0f) &&
        (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) >= 0x61A9) && !(this->stateFlags & COW_ACTIVE)) {
        this->stateFlags |= COW_ACTIVE;
        if (this->skelAnime.animation == &gCowTailIdleAnim) {
            this->animTimer = 0;
        }
    }
}

void EnCow_Update(Actor* thisx, PlayState* play2) {
    EnCow* this = (EnCow*)thisx;
    PlayState* play = play2;
    s16 targetX;
    s16 targetY;
    Player* player = GET_PLAYER(play);

    CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliders[0].base);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliders[1].base);
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
    Math_SmoothStepToS(&this->headRot.x, targetX, 0xA, 0xC8, 0xA);
    Math_SmoothStepToS(&this->headRot.y, targetY, 0xA, 0xC8, 0xA);
}

void EnCow_AnimateTail(Actor* thisx, PlayState* play) {
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

    if (limbIndex == 2) {
        rot->y += this->headRot.y;
        rot->x += this->headRot.x;
    }
    if (limbIndex == 5) {
        *dList = NULL;
    }
    return false;
}

void EnCow_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnCow* this = (EnCow*)thisx;

    if (limbIndex == 2) {
        Matrix_MultVec3f(&D_809E010C, &this->actor.focus.pos);
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
