#include "z_arms_hook.h"
#include "assets/objects/object_link_boy/object_link_boy.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void ArmsHook_Init(Actor* thisx, PlayState* play);
void ArmsHook_Destroy(Actor* thisx, PlayState* play);
void ArmsHook_Update(Actor* thisx, PlayState* play);
void ArmsHook_Draw(Actor* thisx, PlayState* play);

void ArmsHook_Wait(ArmsHook* this, PlayState* play);
void ArmsHook_Shoot(ArmsHook* this, PlayState* play);

ActorProfile Arms_Hook_Profile = {
    /**/ ACTOR_ARMS_HOOK,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_LINK_BOY,
    /**/ sizeof(ArmsHook),
    /**/ ArmsHook_Init,
    /**/ ArmsHook_Destroy,
    /**/ ArmsHook_Update,
    /**/ ArmsHook_Draw,
};

static ColliderQuadInit sQuadInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_PLAYER,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_PLAYER,
        COLSHAPE_QUAD,
    },
    {
        ELEM_MATERIAL_UNK2,
        { 0x00000080, 0x00, 0x01 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_NEAREST | ATELEM_SFX_NORMAL,
        ACELEM_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static Vec3f sUnusedVec1 = { 0.0f, 0.5f, 0.0f };
static Vec3f sUnusedVec2 = { 0.0f, 0.5f, 0.0f };

static Color_RGB8 sUnusedColors[] = {
    { 255, 255, 100 },
    { 255, 255, 50 },
};

static Vec3f D_80865B70 = { 0.0f, 0.0f, 0.0f };
static Vec3f D_80865B7C = { 0.0f, 0.0f, 900.0f };
static Vec3f D_80865B88 = { 0.0f, 500.0f, -3000.0f };
static Vec3f D_80865B94 = { 0.0f, -500.0f, -3000.0f };
static Vec3f D_80865BA0 = { 0.0f, 500.0f, 1200.0f };
static Vec3f D_80865BAC = { 0.0f, -500.0f, 1200.0f };

void ArmsHook_SetupAction(ArmsHook* this, ArmsHookActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ArmsHook_Init(Actor* thisx, PlayState* play) {
    ArmsHook* this = (ArmsHook*)thisx;

    Collider_InitQuad(play, &this->collider);
    Collider_SetQuad(play, &this->collider, &this->actor, &sQuadInit);
    ArmsHook_SetupAction(this, ArmsHook_Wait);
    this->unk_1E8 = this->actor.world.pos;
}

void ArmsHook_Destroy(Actor* thisx, PlayState* play) {
    ArmsHook* this = (ArmsHook*)thisx;

    if (this->attachedActor != NULL) {
        this->attachedActor->flags &= ~ACTOR_FLAG_HOOKSHOT_ATTACHED;
    }

    Collider_DestroyQuad(play, &this->collider);
}

void ArmsHook_Wait(ArmsHook* this, PlayState* play) {
    if (this->actor.parent == NULL) {
        Player* player = GET_PLAYER(play);
        // get correct timer length for hookshot or longshot
        s32 length = (player->heldItemAction == PLAYER_IA_HOOKSHOT) ? 13 : 26;

        ArmsHook_SetupAction(this, ArmsHook_Shoot);
        Actor_SetProjectileSpeed(&this->actor, 20.0f);
        this->actor.parent = &GET_PLAYER(play)->actor;
        this->timer = length;
    }
}

/**
 * Start pulling Player so he flies toward the hookshot's current location.
 * Setting Player's parent pointer indicates that he should begin flying.
 * See `Player_UpdateUpperBody` and `Player_Action_HookshotFly` for Player's side of the interation.
 */
void ArmsHook_PullPlayer(ArmsHook* this) {
    this->actor.child = this->actor.parent;
    this->actor.parent->parent = &this->actor;
}

s32 ArmsHook_AttachToPlayer(ArmsHook* this, Player* player) {
    player->actor.child = &this->actor;
    player->heldActor = &this->actor;
    if (this->actor.child != NULL) {
        player->actor.parent = NULL;
        this->actor.child = NULL;
        return true;
    }
    return false;
}

void ArmsHook_DetachFromActor(ArmsHook* this) {
    if (this->attachedActor != NULL) {
        this->attachedActor->flags &= ~ACTOR_FLAG_HOOKSHOT_ATTACHED;
        this->attachedActor = NULL;
    }
}

s32 ArmsHook_CheckForCancel(ArmsHook* this) {
    Player* player = (Player*)this->actor.parent;

    if (Player_HoldsHookshot(player)) {
        if ((player->itemAction != player->heldItemAction) || (player->actor.flags & ACTOR_FLAG_TALK) ||
            ((player->stateFlags1 & (PLAYER_STATE1_DEAD | PLAYER_STATE1_26)))) {
            this->timer = 0;
            ArmsHook_DetachFromActor(this);
            Math_Vec3f_Copy(&this->actor.world.pos, &player->unk_3C8);
            return 1;
        }
    }
    return 0;
}

void ArmsHook_AttachToActor(ArmsHook* this, Actor* actor) {
    actor->flags |= ACTOR_FLAG_HOOKSHOT_ATTACHED;
    this->attachedActor = actor;
    Math_Vec3f_Diff(&actor->world.pos, &this->actor.world.pos, &this->attachPointOffset);
}

void ArmsHook_Shoot(ArmsHook* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((this->actor.parent == NULL) || (!Player_HoldsHookshot(player))) {
        ArmsHook_DetachFromActor(this);
        Actor_Kill(&this->actor);
        return;
    }

    Actor_PlaySfx_Flagged2(&player->actor, NA_SE_IT_HOOKSHOT_CHAIN - SFX_FLAG);
    ArmsHook_CheckForCancel(this);

    if ((this->timer != 0) && (this->collider.base.atFlags & AT_HIT) &&
        (this->collider.elem.atHitElem->elemMaterial != ELEM_MATERIAL_UNK4)) {
        Actor* touchedActor = this->collider.base.at;

        if ((touchedActor->update != NULL) &&
            (touchedActor->flags & (ACTOR_FLAG_HOOKSHOT_PULLS_ACTOR | ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER))) {
            if (this->collider.elem.atHitElem->acElemFlags & ACELEM_HOOKABLE) {
                ArmsHook_AttachToActor(this, touchedActor);

                if (CHECK_FLAG_ALL(touchedActor->flags, ACTOR_FLAG_HOOKSHOT_PULLS_PLAYER)) {
                    ArmsHook_PullPlayer(this);
                }
            }
        }
        this->timer = 0;
        Audio_PlaySfxGeneral(NA_SE_IT_ARROW_STICK_CRE, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        return;
    }

    if (DECR(this->timer) == 0) {
        Actor* attachedActor;
        Vec3f bodyDistDiffVec;
        Vec3f newPos;
        f32 bodyDistDiff;
        f32 phi_f16;
        s32 pad1;
        f32 curActorOffsetXYZ;
        f32 attachPointOffsetXYZ;
        f32 velocity;

        attachedActor = this->attachedActor;

        if (attachedActor != NULL) {
            if ((attachedActor->update == NULL) ||
                !CHECK_FLAG_ALL(attachedActor->flags, ACTOR_FLAG_HOOKSHOT_ATTACHED)) {
                attachedActor = NULL;
                this->attachedActor = NULL;
            } else if (this->actor.child != NULL) {
                curActorOffsetXYZ = Actor_WorldDistXYZToActor(&this->actor, attachedActor);
                attachPointOffsetXYZ = sqrtf(SQ(this->attachPointOffset.x) + SQ(this->attachPointOffset.y) +
                                             SQ(this->attachPointOffset.z));

                // Keep the hookshot actor at the same relative offset as the initial attachment even if the actor moves
                Math_Vec3f_Diff(&attachedActor->world.pos, &this->attachPointOffset, &this->actor.world.pos);

                // If the actor the hookshot is attached to is moving, the hookshot's current relative
                // position will be different than the initial attachment position.
                // If the distance between those two points is larger than 50 units, detach the hookshot.
                if ((curActorOffsetXYZ - attachPointOffsetXYZ) > 50.0f) {
                    ArmsHook_DetachFromActor(this);
                    attachedActor = NULL;
                }
            }
        }

        bodyDistDiff = Math_Vec3f_DistXYZAndStoreDiff(&player->unk_3C8, &this->actor.world.pos, &bodyDistDiffVec);

        if (bodyDistDiff < 30.0f) {
            velocity = 0.0f;
            phi_f16 = 0.0f;
        } else {
            if (this->actor.child != NULL) {
                velocity = 30.0f;
            } else if (attachedActor != NULL) {
                velocity = 50.0f;
            } else {
                velocity = 200.0f;
            }
            phi_f16 = bodyDistDiff - velocity;
            if (bodyDistDiff <= velocity) {
                phi_f16 = 0.0f;
            }
            velocity = phi_f16 / bodyDistDiff;
        }

        newPos.x = bodyDistDiffVec.x * velocity;
        newPos.y = bodyDistDiffVec.y * velocity;
        newPos.z = bodyDistDiffVec.z * velocity;

        if (this->actor.child == NULL) {
            // Not pulling Player
            if ((attachedActor != NULL) && (attachedActor->id == ACTOR_BG_SPOT06_OBJECTS)) {
                Math_Vec3f_Diff(&attachedActor->world.pos, &this->attachPointOffset, &this->actor.world.pos);
                phi_f16 = 1.0f;
            } else {
                Math_Vec3f_Sum(&player->unk_3C8, &newPos, &this->actor.world.pos);
                if (attachedActor != NULL) {
                    Math_Vec3f_Sum(&this->actor.world.pos, &this->attachPointOffset, &attachedActor->world.pos);
                }
            }
        } else {
            // Pulling Player
            Math_Vec3f_Diff(&bodyDistDiffVec, &newPos, &player->actor.velocity);
            player->actor.world.rot.x =
                Math_Atan2S(sqrtf(SQ(bodyDistDiffVec.x) + SQ(bodyDistDiffVec.z)), -bodyDistDiffVec.y);
        }

        if (phi_f16 < 50.0f) {
            ArmsHook_DetachFromActor(this);
            if (phi_f16 == 0.0f) {
                ArmsHook_SetupAction(this, ArmsHook_Wait);
                if (ArmsHook_AttachToPlayer(this, player)) {
                    Math_Vec3f_Diff(&this->actor.world.pos, &player->actor.world.pos, &player->actor.velocity);
                    player->actor.velocity.y -= 20.0f;
                }
            }
        }
    } else {
        CollisionPoly* poly;
        s32 bgId;
        Vec3f intersectPos;
        Vec3f prevFrameDiff;
        Vec3f sp60;

        Actor_MoveXZGravity(&this->actor);
        Math_Vec3f_Diff(&this->actor.world.pos, &this->actor.prevPos, &prevFrameDiff);
        Math_Vec3f_Sum(&this->unk_1E8, &prevFrameDiff, &this->unk_1E8);
        this->actor.shape.rot.x = Math_Atan2S(this->actor.speed, -this->actor.velocity.y);
        sp60.x = this->unk_1F4.x - (this->unk_1E8.x - this->unk_1F4.x);
        sp60.y = this->unk_1F4.y - (this->unk_1E8.y - this->unk_1F4.y);
        sp60.z = this->unk_1F4.z - (this->unk_1E8.z - this->unk_1F4.z);
        if (BgCheck_EntityLineTest1(&play->colCtx, &sp60, &this->unk_1E8, &intersectPos, &poly, true, true, true, true,
                                    &bgId) &&
            !func_8002F9EC(play, &this->actor, poly, bgId, &intersectPos)) {
            f32 polyNormalX = COLPOLY_GET_NORMAL(poly->normal.x);
            f32 polyNormalZ = COLPOLY_GET_NORMAL(poly->normal.z);
            s32 pad;

            Math_Vec3f_Copy(&this->actor.world.pos, &intersectPos);
            this->actor.world.pos.x += 10.0f * polyNormalX;
            this->actor.world.pos.z += 10.0f * polyNormalZ;
            this->timer = 0;
            if (SurfaceType_CanHookshot(&play->colCtx, poly, bgId)) {
                DynaPolyActor* dynaPolyActor;

                if (bgId != BGCHECK_SCENE) {
                    dynaPolyActor = DynaPoly_GetActor(&play->colCtx, bgId);

                    if (dynaPolyActor != NULL) {
                        ArmsHook_AttachToActor(this, &dynaPolyActor->actor);
                    }
                }
                ArmsHook_PullPlayer(this);
                Audio_PlaySfxGeneral(NA_SE_IT_HOOKSHOT_STICK_OBJ, &this->actor.projectedPos, 4,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            } else {
                CollisionCheck_SpawnShieldParticlesMetal(play, &this->actor.world.pos);
                Audio_PlaySfxGeneral(NA_SE_IT_HOOKSHOT_REFLECT, &this->actor.projectedPos, 4,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
        } else if (CHECK_BTN_ANY(play->state.input[0].press.button,
                                 (BTN_A | BTN_B | BTN_R | BTN_CUP | BTN_CDOWN | BTN_CLEFT | BTN_CRIGHT))) {
            this->timer = 0;
        }
    }
}

void ArmsHook_Update(Actor* thisx, PlayState* play) {
    ArmsHook* this = (ArmsHook*)thisx;

    this->actionFunc(this, play);
    this->unk_1F4 = this->unk_1E8;
}

void ArmsHook_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    ArmsHook* this = (ArmsHook*)thisx;
    Player* player = GET_PLAYER(play);
    Vec3f sp78;
    Vec3f hookNewTip;
    Vec3f hookNewBase;
    f32 sp5C;
    f32 sp58;

    if ((player->actor.draw != NULL) && (player->rightHandType == PLAYER_MODELTYPE_RH_HOOKSHOT)) {
        OPEN_DISPS(play->state.gfxCtx, "../z_arms_hook.c", 850);

        if (1) {}

        if ((ArmsHook_Shoot != this->actionFunc) || (this->timer <= 0)) {
            Matrix_MultVec3f(&D_80865B70, &this->unk_1E8);
            Matrix_MultVec3f(&D_80865B88, &hookNewTip);
            Matrix_MultVec3f(&D_80865B94, &hookNewBase);
            this->hookInfo.active = 0;
        } else {
            Matrix_MultVec3f(&D_80865B7C, &this->unk_1E8);
            Matrix_MultVec3f(&D_80865BA0, &hookNewTip);
            Matrix_MultVec3f(&D_80865BAC, &hookNewBase);
        }

        func_80090480(play, &this->collider, &this->hookInfo, &hookNewTip, &hookNewBase);
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_arms_hook.c", 895);
        gSPDisplayList(POLY_OPA_DISP++, gLinkAdultHookshotTipDL);
        Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, MTXMODE_NEW);
        Math_Vec3f_Diff(&player->unk_3C8, &this->actor.world.pos, &sp78);
        sp58 = SQ(sp78.x) + SQ(sp78.z);
        sp5C = sqrtf(sp58);
        Matrix_RotateY(Math_FAtan2F(sp78.x, sp78.z), MTXMODE_APPLY);
        Matrix_RotateX(Math_FAtan2F(-sp78.y, sp5C), MTXMODE_APPLY);
        Matrix_Scale(0.015f, 0.015f, sqrtf(SQ(sp78.y) + sp58) * 0.01f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_arms_hook.c", 910);
        gSPDisplayList(POLY_OPA_DISP++, gLinkAdultHookshotChainDL);

        CLOSE_DISPS(play->state.gfxCtx, "../z_arms_hook.c", 913);
    }
}
