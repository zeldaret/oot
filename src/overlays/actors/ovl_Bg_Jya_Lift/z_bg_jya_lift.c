/*
 * File: z_bg_jya_lift.c
 * Overlay: ovl_Bg_Jya_Lift
 * Description: Chain Platform (Spirit Temple)
 */

#include "z_bg_jya_lift.h"
#include "assets/objects/object_jya_obj/object_jya_obj.h"

#define FLAGS ACTOR_FLAG_4

void BgJyaLift_Init(Actor* thisx, PlayState* play);
void BgJyaLift_Destroy(Actor* thisx, PlayState* play);
void BgJyaLift_Update(Actor* thisx, PlayState* play2);
void BgJyaLift_Draw(Actor* thisx, PlayState* play);

void BgJyaLift_SetFinalPosY(BgJyaLift* this);
void BgJyaLift_SetInitPosY(BgJyaLift* this);
void BgJyaLift_DelayMove(BgJyaLift* this, PlayState* play);
void BgJyaLift_SetupMove(BgJyaLift* this);
void BgJyaLift_Move(BgJyaLift* this, PlayState* play);

static s16 sIsSpawned = false;

const ActorInit Bg_Jya_Lift_InitVars = {
    ACTOR_BG_JYA_LIFT,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaLift),
    (ActorFunc)BgJyaLift_Init,
    (ActorFunc)BgJyaLift_Destroy,
    (ActorFunc)BgJyaLift_Update,
    (ActorFunc)BgJyaLift_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2500, ICHAIN_STOP),
};

void BgJyaLift_InitDynapoly(BgJyaLift* this, PlayState* play, CollisionHeader* collisionHeader, s32 moveFlag) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, moveFlag);
    CollisionHeader_GetVirtual(collisionHeader, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
}

void BgJyaLift_Init(Actor* thisx, PlayState* play) {
    BgJyaLift* this = (BgJyaLift*)thisx;

    this->isSpawned = false;
    if (sIsSpawned) {
        Actor_Kill(thisx);
        return;
    }

    // "Goddess lift CT"
    osSyncPrintf("女神リフト CT\n");
    BgJyaLift_InitDynapoly(this, play, &gLiftCol, DPM_UNK);
    Actor_ProcessInitChain(thisx, sInitChain);
    if (Flags_GetSwitch(play, (thisx->params & 0x3F))) {
        BgJyaLift_SetFinalPosY(this);
    } else {
        BgJyaLift_SetInitPosY(this);
    }
    thisx->room = -1;
    sIsSpawned = true;
    this->isSpawned = true;
}

void BgJyaLift_Destroy(Actor* thisx, PlayState* play) {
    BgJyaLift* this = (BgJyaLift*)thisx;

    if (this->isSpawned) {

        // "Goddess Lift DT"
        osSyncPrintf("女神リフト DT\n");
        sIsSpawned = false;
        DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    }
}

void BgJyaLift_SetInitPosY(BgJyaLift* this) {
    this->actionFunc = BgJyaLift_DelayMove;
    this->dyna.actor.world.pos.y = 1613.0f;
    this->moveDelay = 0;
}

void BgJyaLift_DelayMove(BgJyaLift* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->dyna.actor.params & 0x3F) || (this->moveDelay > 0)) {
        this->moveDelay++;
        if (this->moveDelay >= 20) {
            OnePointCutscene_Init(play, 3430, -99, &this->dyna.actor, CAM_ID_MAIN);
            BgJyaLift_SetupMove(this);
        }
    }
}

void BgJyaLift_SetupMove(BgJyaLift* this) {
    this->actionFunc = BgJyaLift_Move;
}

void BgJyaLift_Move(BgJyaLift* this, PlayState* play) {
    f32 distFromBottom;
    f32 tempVelocity;

    Math_SmoothStepToF(&this->dyna.actor.velocity.y, 4.0f, 0.1f, 1.0f, 0.0f);
    tempVelocity = (this->dyna.actor.velocity.y < 0.2f) ? 0.2f : this->dyna.actor.velocity.y;
    distFromBottom = Math_SmoothStepToF(&this->dyna.actor.world.pos.y, 973.0f, 0.1f, tempVelocity, 0.2f);
    if ((this->dyna.actor.world.pos.y < 1440.0f) && (1440.0f <= this->dyna.actor.prevPos.y)) {
        func_8005B1A4(GET_ACTIVE_CAM(play));
    }
    if (fabsf(distFromBottom) < 0.001f) {
        BgJyaLift_SetFinalPosY(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ELEVATOR_STOP);
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_BRIDGE_OPEN - SFX_FLAG);
    }
}

void BgJyaLift_SetFinalPosY(BgJyaLift* this) {
    this->actionFunc = NULL;
    this->dyna.actor.world.pos.y = 973.0f;
}

void BgJyaLift_Update(Actor* thisx, PlayState* play2) {
    BgJyaLift* this = (BgJyaLift*)thisx;
    PlayState* play = play2;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, play);
    }
    if ((this->dyna.interactFlags & DYNA_INTERACT_PLAYER_ABOVE) && !(this->unk_16B & DYNA_INTERACT_PLAYER_ABOVE)) {
        Camera_ChangeSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_DIRECTED_YAW);
    } else if (!(this->dyna.interactFlags & DYNA_INTERACT_PLAYER_ABOVE) &&
               (this->unk_16B & DYNA_INTERACT_PLAYER_ABOVE) &&
               (play->cameraPtrs[CAM_ID_MAIN]->setting == CAM_SET_DIRECTED_YAW)) {
        Camera_ChangeSetting(play->cameraPtrs[CAM_ID_MAIN], CAM_SET_DUNGEON0);
    }
    this->unk_16B = this->dyna.interactFlags;

    // Spirit Temple room 5 is the main room with the statue room 25 is directly above room 5
    if ((play->roomCtx.curRoom.num != 5) && (play->roomCtx.curRoom.num != 25)) {
        Actor_Kill(thisx);
    }
}

void BgJyaLift_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gLiftDL);
}
