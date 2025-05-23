/*
 * File: z_bg_jya_1flift.c
 * Overlay: ovl_Bg_Jya_1flift
 * Description: Shortcut Elevator used in the vanilla version of the Spirit Temple
 */

#include "z_bg_jya_1flift.h"
#include "assets/objects/object_jya_obj/object_jya_obj.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgJya1flift_Init(Actor* thisx, PlayState* play);
void BgJya1flift_Destroy(Actor* thisx, PlayState* play);
void BgJya1flift_Update(Actor* thisx, PlayState* play2);
void BgJya1flift_Draw(Actor* thisx, PlayState* play);

void BgJya1flift_SetupWaitForSwitch(BgJya1flift* this);
void BgJya1flift_WaitForSwitch(BgJya1flift* this, PlayState* play);
void BgJya1flift_DoNothing(BgJya1flift* this, PlayState* play);
void BgJya1flift_ChangeDirection(BgJya1flift* this);
void BgJya1flift_Move(BgJya1flift* this, PlayState* play);
void BgJya1flift_SetupDoNothing(BgJya1flift* this);
void BgJya1flift_ResetMoveDelay(BgJya1flift* this);
void BgJya1flift_DelayMove(BgJya1flift* this, PlayState* play);

static u8 sIsSpawned = false;

ActorProfile Bg_Jya_1flift_Profile = {
    /**/ ACTOR_BG_JYA_1FLIFT,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_JYA_OBJ,
    /**/ sizeof(BgJya1flift),
    /**/ BgJya1flift_Init,
    /**/ BgJya1flift_Destroy,
    /**/ BgJya1flift_Update,
    /**/ BgJya1flift_Draw,
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
    { 70, 80, -82, { 0, 0, 0 } },
};

static f32 sFinalPositions[] = { 443.0f, -50.0f };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1200, ICHAIN_STOP),
};

void BgJya1flift_InitDynapoly(BgJya1flift* this, PlayState* play, CollisionHeader* collision, s32 moveFlag) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, moveFlag);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        // "Warning : move BG login failed"
        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_1flift.c", 179,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgJya1flift_InitCollision(Actor* thisx, PlayState* play) {
    BgJya1flift* this = (BgJya1flift*)thisx;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->dyna.actor, &sCylinderInit);
    this->dyna.actor.colChkInfo.mass = MASS_IMMOVABLE;
}

void BgJya1flift_Init(Actor* thisx, PlayState* play) {
    BgJya1flift* this = (BgJya1flift*)thisx;
    // "1 F lift"
    PRINTF("(１Ｆリフト)(flag %d)(room %d)\n", sIsSpawned, play->roomCtx.curRoom.num);
    this->hasInitialized = false;
    if (sIsSpawned) {
        Actor_Kill(thisx);
        return;
    }
    BgJya1flift_InitDynapoly(this, play, &g1fliftCol, 0);
    Actor_ProcessInitChain(thisx, sInitChain);
    BgJya1flift_InitCollision(thisx, play);
    if (Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 0, 6))) {
        LINK_AGE_IN_YEARS == YEARS_ADULT ? BgJya1flift_ChangeDirection(this) : BgJya1flift_SetupDoNothing(this);
    } else {
        BgJya1flift_SetupWaitForSwitch(this);
    }
    thisx->room = -1;
    sIsSpawned = true;
    this->hasInitialized = true;
}

void BgJya1flift_Destroy(Actor* thisx, PlayState* play) {
    BgJya1flift* this = (BgJya1flift*)thisx;

    if (this->hasInitialized) {
        sIsSpawned = false;
        Collider_DestroyCylinder(play, &this->collider);
        DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    }
}

void BgJya1flift_SetupWaitForSwitch(BgJya1flift* this) {
    this->actionFunc = BgJya1flift_WaitForSwitch;
    this->dyna.actor.world.pos.y = sFinalPositions[0];
}

void BgJya1flift_WaitForSwitch(BgJya1flift* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
        BgJya1flift_ChangeDirection(this);
    }
}

void BgJya1flift_SetupDoNothing(BgJya1flift* this) {
    this->actionFunc = BgJya1flift_DoNothing;
    this->dyna.actor.world.pos.y = sFinalPositions[0];
}

void BgJya1flift_DoNothing(BgJya1flift* this, PlayState* play) {
}

void BgJya1flift_ChangeDirection(BgJya1flift* this) {
    this->actionFunc = BgJya1flift_Move;
    this->isMovingDown ^= true;
    this->dyna.actor.velocity.y = 0.0f;
}

void BgJya1flift_Move(BgJya1flift* this, PlayState* play) {
    f32 tempVelocity;

    Math_StepToF(&this->dyna.actor.velocity.y, 6.0f, 0.4f);
    if (this->dyna.actor.velocity.y < 1.0f) {
        tempVelocity = 1.0f;
    } else {
        tempVelocity = this->dyna.actor.velocity.y;
    }
    if (fabsf(Math_SmoothStepToF(&this->dyna.actor.world.pos.y, (sFinalPositions[this->isMovingDown]), 0.5f,
                                 tempVelocity, 1.0f)) < 0.001f) {
        this->dyna.actor.world.pos.y = sFinalPositions[this->isMovingDown];
        BgJya1flift_ResetMoveDelay(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE3 - SFX_FLAG);
    }
}

void BgJya1flift_ResetMoveDelay(BgJya1flift* this) {
    this->actionFunc = BgJya1flift_DelayMove;
    this->moveDelay = 0;
}

void BgJya1flift_DelayMove(BgJya1flift* this, PlayState* play) {
    this->moveDelay++;
    if (this->moveDelay >= 21) {
        BgJya1flift_ChangeDirection(this);
    }
}

void BgJya1flift_Update(Actor* thisx, PlayState* play2) {
    BgJya1flift* this = (BgJya1flift*)thisx;
    PlayState* play = play2;
    s32 tempIsRiding;

    // Room 0 is the first room and 6 is the room that the lift starts on
    if (play->roomCtx.curRoom.num == 6 || play->roomCtx.curRoom.num == 0) {
        this->actionFunc(this, play);
        tempIsRiding = DynaPolyActor_IsPlayerOnTop(&this->dyna) ? true : false;
        if ((this->actionFunc == BgJya1flift_Move) || (this->actionFunc == BgJya1flift_DelayMove)) {
            if (tempIsRiding) {
                Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_ELEVATOR_PLATFORM);
            } else if (!tempIsRiding && this->isLinkRiding) {
                Camera_RequestSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_DUNGEON0);
            }
        }
        this->isLinkRiding = tempIsRiding;
        Collider_UpdateCylinder(thisx, &this->collider);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    } else {
        Actor_Kill(thisx);
    }
}

void BgJya1flift_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, g1fliftDL);
}
