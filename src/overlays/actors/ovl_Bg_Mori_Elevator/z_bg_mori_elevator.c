#include "z_bg_mori_elevator.h"
#include "assets/objects/object_mori_objects/object_mori_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgMoriElevator_Init(Actor* thisx, PlayState* play);
void BgMoriElevator_Destroy(Actor* thisx, PlayState* play);
void BgMoriElevator_Update(Actor* thisx, PlayState* play);

void BgMoriElevator_SetupWaitAfterInit(BgMoriElevator* this);
void BgMoriElevator_WaitAfterInit(BgMoriElevator* this, PlayState* play);
void BgMoriElevator_SetupSetPosition(BgMoriElevator* this);
void BgMoriElevator_SetPosition(BgMoriElevator* this, PlayState* play);
void BgMoriElevator_Draw(Actor* thisx, PlayState* play);
void BgMoriElevator_StopMovement(BgMoriElevator* this);
void func_808A2008(BgMoriElevator* this, PlayState* play);
void BgMoriElevator_MoveIntoGround(BgMoriElevator* this, PlayState* play);
void BgMoriElevator_MoveAboveGround(BgMoriElevator* this, PlayState* play);

static s16 sIsSpawned = false;

ActorProfile Bg_Mori_Elevator_Profile = {
    /**/ ACTOR_BG_MORI_ELEVATOR,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_MORI_OBJECTS,
    /**/ sizeof(BgMoriElevator),
    /**/ BgMoriElevator_Init,
    /**/ BgMoriElevator_Destroy,
    /**/ BgMoriElevator_Update,
    /**/ NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 3000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

f32 func_808A1800(f32* pValue, f32 target, f32 scale, f32 maxStep, f32 minStep) {
    f32 var = (target - *pValue) * scale;

    if (*pValue < target) {
        if (maxStep < var) {
            var = maxStep;
        } else {
            if (var < minStep) {
                var = minStep;
            }
        }
        *pValue = (*pValue + var);

        if (target < *pValue) {
            *pValue = target;
        }
    } else {
        if (target < *pValue) {
            if (var < (-maxStep)) {
                var = (-maxStep);
            } else {
                if ((-minStep) < var) {
                    var = (-minStep);
                }
            }
            *pValue = (*pValue + var);
            if (*pValue < target) {
                *pValue = target;
            }
        } else {
            var = 0.0f;
        }
    }
    return var;
}

void func_808A18FC(BgMoriElevator* this, f32 distTo) {
    f32 temp;

    temp = fabsf(distTo) * 0.09f;
    func_800F436C(&this->dyna.actor.projectedPos, NA_SE_EV_ELEVATOR_MOVE2 - SFX_FLAG, CLAMP(temp, 0.0f, 1.0f));
}

void BgMoriElevator_Init(Actor* thisx, PlayState* play) {
    BgMoriElevator* this = (BgMoriElevator*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    this->unk_172 = sIsSpawned;
    this->moriTexObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_MORI_TEX);

#if DEBUG_FEATURES
    if (this->moriTexObjectSlot < 0) {
        Actor_Kill(thisx);
        // "Forest Temple obj elevator Bank Danger!"
        PRINTF("Error : 森の神殿 obj elevator バンク危険！(%s %d)\n", "../z_bg_mori_elevator.c", 277);
        return;
    }
#endif

    switch (sIsSpawned) {
        case false:
            // "Forest Temple elevator CT"
            PRINTF("森の神殿 elevator CT\n");
            sIsSpawned = true;
            this->dyna.actor.room = -1;
            Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
            DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
            CollisionHeader_GetVirtual(&gMoriElevatorCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
            BgMoriElevator_SetupWaitAfterInit(this);
            break;
        case true:
            Actor_Kill(thisx);
            break;
    }
}

void BgMoriElevator_Destroy(Actor* thisx, PlayState* play) {
    BgMoriElevator* this = (BgMoriElevator*)thisx;

    if (this->unk_172 == 0) {
        // "Forest Temple elevator DT"
        PRINTF("森の神殿 elevator DT\n");
        DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
        sIsSpawned = false;
    }
}

int BgMoriElevator_IsPlayerRiding(BgMoriElevator* this, PlayState* play) {
    return ((this->dyna.interactFlags & DYNA_INTERACT_PLAYER_ON_TOP) &&
            !(this->unk_170 & DYNA_INTERACT_PLAYER_ON_TOP) &&
            ((GET_PLAYER(play)->actor.world.pos.y - this->dyna.actor.world.pos.y) < 80.0f));
}

void BgMoriElevator_SetupWaitAfterInit(BgMoriElevator* this) {
    this->actionFunc = BgMoriElevator_WaitAfterInit;
}

void BgMoriElevator_WaitAfterInit(BgMoriElevator* this, PlayState* play) {
    if (Object_IsLoaded(&play->objectCtx, this->moriTexObjectSlot)) {
        if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
            if (play->roomCtx.curRoom.num == 2) {
                this->dyna.actor.world.pos.y = 73.0f;
                BgMoriElevator_SetupSetPosition(this);
            } else {
                // "Error: Forest Temple obj elevator Room setting is dangerous"
                PRINTF("Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n", "../z_bg_mori_elevator.c", 371);
            }
        } else {
            BgMoriElevator_SetupSetPosition(this);
        }
        this->dyna.actor.draw = BgMoriElevator_Draw;
    }
}

void func_808A1C30(BgMoriElevator* this) {
    this->actionFunc = BgMoriElevator_MoveIntoGround;
}

void BgMoriElevator_MoveIntoGround(BgMoriElevator* this, PlayState* play) {
    f32 distToTarget;

    func_808A1800(&this->dyna.actor.velocity.y, 2.0f, 0.05f, 1.0f, 0.0f);
    distToTarget = func_808A1800(&this->dyna.actor.world.pos.y, 73.0f, 0.08f, this->dyna.actor.velocity.y, 1.5f);
    if (fabsf(distToTarget) < 0.001f) {
        BgMoriElevator_SetupSetPosition(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_ELEVATOR_STOP);
    } else {
        func_808A18FC(this, distToTarget);
    }
}

void func_808A1CF4(BgMoriElevator* this, PlayState* play) {
    this->actionFunc = BgMoriElevator_MoveAboveGround;
    OnePointCutscene_Init(play, 3230, 70, &this->dyna.actor, CAM_ID_MAIN);
    OnePointCutscene_Init(play, 1020, 15, &this->dyna.actor, CAM_ID_MAIN);
}

void BgMoriElevator_MoveAboveGround(BgMoriElevator* this, PlayState* play) {
    f32 distToTarget;

    func_808A1800(&this->dyna.actor.velocity.y, 2.0f, 0.05f, 1.0f, 0.0f);
    distToTarget = func_808A1800(&this->dyna.actor.world.pos.y, 233.0f, 0.08f, this->dyna.actor.velocity.y, 1.5f);
    if (fabsf(distToTarget) < 0.001f) {
        BgMoriElevator_SetupSetPosition(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_ELEVATOR_STOP);
    } else {
        func_808A18FC(this, distToTarget);
    }
}

void BgMoriElevator_SetupSetPosition(BgMoriElevator* this) {
    this->actionFunc = BgMoriElevator_SetPosition;
}

void BgMoriElevator_SetPosition(BgMoriElevator* this, PlayState* play) {
    s32 pad;

    if (BgMoriElevator_IsPlayerRiding(this, play)) {
        if (play->roomCtx.curRoom.num == 2) {
            this->targetY = -779.0f;
            BgMoriElevator_StopMovement(this);
        } else if (play->roomCtx.curRoom.num == 17) {
            this->targetY = 233.0f;
            BgMoriElevator_StopMovement(this);
        } else {
            // "Error:Forest Temple obj elevator Room setting is dangerous(%s %d)"
            PRINTF("Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n", "../z_bg_mori_elevator.c", 479);
        }
    } else if ((play->roomCtx.curRoom.num == 2) && (this->dyna.actor.world.pos.y < -275.0f)) {
        this->targetY = 233.0f;
        BgMoriElevator_StopMovement(this);
    } else if ((play->roomCtx.curRoom.num == 17) && (-275.0f < this->dyna.actor.world.pos.y)) {
        this->targetY = -779.0f;
        BgMoriElevator_StopMovement(this);
    } else if ((play->roomCtx.curRoom.num == 2) && Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6)) &&
               (this->unk_16C == 0)) {
        this->targetY = 73.0f;
        func_808A1C30(this);
    } else if ((play->roomCtx.curRoom.num == 2) &&
               !Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6)) && (this->unk_16C != 0)) {
        this->targetY = 233.0f;
        func_808A1CF4(this, play);
    }
}

void BgMoriElevator_StopMovement(BgMoriElevator* this) {
    this->actionFunc = func_808A2008;
    this->dyna.actor.velocity.y = 0.0f;
}

void func_808A2008(BgMoriElevator* this, PlayState* play) {
    f32 distTo;

    func_808A1800(&this->dyna.actor.velocity.y, 12.0f, 0.1f, 1.0f, 0.0f);
    distTo = func_808A1800(&this->dyna.actor.world.pos.y, this->targetY, 0.1f, this->dyna.actor.velocity.y, 0.3f);
    if (fabsf(distTo) < 0.001f) {
        BgMoriElevator_SetupSetPosition(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_ELEVATOR_STOP);

    } else {
        func_808A18FC(this, distTo);
    }
}

void BgMoriElevator_Update(Actor* thisx, PlayState* play) {
    BgMoriElevator* this = (BgMoriElevator*)thisx;

    this->actionFunc(this, play);
    this->unk_170 = this->dyna.interactFlags;
    this->unk_16C = Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 0, 6));
}

void BgMoriElevator_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMoriElevator* this = (BgMoriElevator*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_mori_elevator.c", 575);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, play->objectCtx.slots[this->moriTexObjectSlot].segment);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_mori_elevator.c", 580);
    gSPDisplayList(POLY_OPA_DISP++, gMoriElevatorDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_mori_elevator.c", 584);
}
