/*
 * File: z_bg_hidan_fslift.c
 * Overlay: ovl_Bg_Hidan_Fslift
 * Description: Hookshot Elevator
 */

#include "z_bg_hidan_fslift.h"
#include "assets/objects/object_hidan_objects/object_hidan_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgHidanFslift_Init(Actor* thisx, PlayState* play);
void BgHidanFslift_Destroy(Actor* thisx, PlayState* play);
void BgHidanFslift_Update(Actor* thisx, PlayState* play);
void BgHidanFslift_Draw(Actor* thisx, PlayState* play);

void BgHidanFslift_Idle(BgHidanFslift* this, PlayState* play);
void BgHidanFslift_Descend(BgHidanFslift* this, PlayState* play);
void BgHidanFslift_Ascend(BgHidanFslift* this, PlayState* play);

ActorProfile Bg_Hidan_Fslift_Profile = {
    /**/ ACTOR_BG_HIDAN_FSLIFT,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HIDAN_OBJECTS,
    /**/ sizeof(BgHidanFslift),
    /**/ BgHidanFslift_Init,
    /**/ BgHidanFslift_Destroy,
    /**/ BgHidanFslift_Update,
    /**/ BgHidanFslift_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 300, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 350, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 2000, ICHAIN_STOP),
};

void BgHidanFslift_Init(Actor* thisx, PlayState* play) {
    s32 pad1;
    BgHidanFslift* this = (BgHidanFslift*)thisx;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    CollisionHeader_GetVirtual(&gFireTempleHookshotElevatorCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
    if (Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_OBJ_HSBLOCK, this->dyna.actor.world.pos.x,
                           this->dyna.actor.world.pos.y + 40.0f, this->dyna.actor.world.pos.z + -28.0f, 0, 0, 0,
                           2) == NULL) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    this->actionFunc = BgHidanFslift_Idle;
}

void BgHidanFslift_SetHookshotTargetPos(BgHidanFslift* this) {
    if (this->dyna.actor.child != NULL && this->dyna.actor.child->update != NULL) {
        this->dyna.actor.child->world.pos.x = this->dyna.actor.world.pos.x;
        this->dyna.actor.child->world.pos.y = this->dyna.actor.world.pos.y + 40.0f;
        this->dyna.actor.child->world.pos.z = this->dyna.actor.world.pos.z + -28.0f;
    } else {
        this->dyna.actor.child = NULL;
    }
}

void BgHidanFslift_Destroy(Actor* thisx, PlayState* play) {
    BgHidanFslift* this = (BgHidanFslift*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgHidanFslift_SetupIdle(BgHidanFslift* this) {
    this->timer = 40;
    this->actionFunc = BgHidanFslift_Idle;
}

void BgHidanFslift_Idle(BgHidanFslift* this, PlayState* play) {
    s32 nearHomePos;

    if (this->timer) {
        this->timer--;
    }

    if (this->timer == 0) {
        nearHomePos = false;
        if ((this->dyna.actor.world.pos.y - this->dyna.actor.home.pos.y) < 0.5f) {
            nearHomePos = true;
        }
        if (DynaPolyActor_IsPlayerAbove(&this->dyna) && nearHomePos) {
            this->actionFunc = BgHidanFslift_Ascend;
        } else if (!nearHomePos) {
            this->actionFunc = BgHidanFslift_Descend;
        }
    }
}

void BgHidanFslift_Descend(BgHidanFslift* this, PlayState* play) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 4.0f)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        BgHidanFslift_SetupIdle(this);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE3 - SFX_FLAG);
    }
    BgHidanFslift_SetHookshotTargetPos(this);
}

void BgHidanFslift_Ascend(BgHidanFslift* this, PlayState* play) {
    if (DynaPolyActor_IsPlayerAbove(&this->dyna)) {
        if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 790.0f, 4.0f)) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
            BgHidanFslift_SetupIdle(this);
        } else {
            Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE3 - SFX_FLAG);
        }
    } else {
        BgHidanFslift_SetupIdle(this);
    }
    BgHidanFslift_SetHookshotTargetPos(this);
}

void BgHidanFslift_Update(Actor* thisx, PlayState* play) {
    BgHidanFslift* this = (BgHidanFslift*)thisx;

    this->actionFunc(this, play);
    if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
        if (this->cameraSetting == CAM_SET_NONE) {
            this->cameraSetting = CAM_SET_DUNGEON0;
        }
        Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_ELEVATOR_PLATFORM);
    } else if (!DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
        if (this->cameraSetting != CAM_SET_NONE) {
            // Given the values that get set to `cameraSetting`, it seems likely that it was intended to be
            // passed to the function call below. But instead `CAM_SET_DUNGEON0` is used directly.
            Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_DUNGEON0);
        }
        this->cameraSetting = CAM_SET_NONE;
    }
}

void BgHidanFslift_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gFireTempleHookshotElevatorDL);
}
