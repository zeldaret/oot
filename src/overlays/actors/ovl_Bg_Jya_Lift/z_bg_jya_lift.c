/*
 * File: z_bg_jya_lift.c
 * Overlay: ovl_Bg_Jya_Lift
 * Description: Chain Platform (Spirit Temple)
 */

#include "z_bg_jya_lift.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaLift*)thisx)

void BgJyaLift_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaLift_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaLift_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaLift_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgJyaLift_InitDynapoly(BgJyaLift* this, GlobalContext* globalCtx, CollisionHeader* collisionHeader,
                            DynaPolyMoveFlag moveFlag);
void BgJyaLift_SetFinalPosY(BgJyaLift* this);
void BgJyaLift_SetInitPosY(BgJyaLift* this);
void BgJyaLift_DelayMove(BgJyaLift* this, GlobalContext* globalCtx);
void BgJyaLift_SetupMove(BgJyaLift* this);
void BgJyaLift_Move(BgJyaLift* this, GlobalContext* globalCtx);

static s16 sIsSpawned = false;

const ActorInit Bg_Jya_Lift_InitVars = {
    ACTOR_BG_JYA_LIFT,
    ACTORTYPE_BG,
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

extern CollisionHeader D_0600D7E8;
extern Gfx D_0600CCE0[];

void BgJyaLift_InitDynapoly(BgJyaLift* this, GlobalContext* globalCtx, CollisionHeader* collisionHeader,
                            DynaPolyMoveFlag moveFlag) {
    s32 pad1;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, moveFlag);
    CollisionHeader_GetVirtual(collisionHeader, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
}

void BgJyaLift_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaLift* this = THIS;
    this->unk_16A = 0;

    if (sIsSpawned) {
        Actor_Kill(thisx);
        return;
    }

    // Goddess lift CT
    osSyncPrintf("女神リフト CT\n");
    BgJyaLift_InitDynapoly(this, globalCtx, &D_0600D7E8, 0);
    Actor_ProcessInitChain(thisx, sInitChain);
    if (Flags_GetSwitch(globalCtx, (thisx->params & 0x3F))) {
        BgJyaLift_SetFinalPosY(this);
    } else {
        BgJyaLift_SetInitPosY(this);
    }
    thisx->room = -1;
    sIsSpawned = true;
    this->unk_16A = 1;
}

void BgJyaLift_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaLift* this = THIS;

    if (this->unk_16A != 0) {

        // Goddess Lift DT
        osSyncPrintf("女神リフト DT\n");
        sIsSpawned = false;
        DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    }
}

void BgJyaLift_SetInitPosY(BgJyaLift* this) {
    this->actionFunc = BgJyaLift_DelayMove;
    this->dyna.actor.posRot.pos.y = 1613.0f;
    this->moveDelay = 0;
}

void BgJyaLift_DelayMove(BgJyaLift* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F) || (this->moveDelay > 0)) {
        this->moveDelay++;
        if (this->moveDelay >= 20) {
            func_800800F8(globalCtx, 0xD66, -0x63, &this->dyna.actor, 0);
            BgJyaLift_SetupMove(this);
        }
    }
}

void BgJyaLift_SetupMove(BgJyaLift* this) {
    this->actionFunc = BgJyaLift_Move;
}

void BgJyaLift_Move(BgJyaLift* this, GlobalContext* globalCtx) {
    f32 distFromBottom;
    f32 tempVelocity;

    Math_SmoothStepToF(&this->dyna.actor.velocity.y, 4.0f, 0.1f, 1.0f, 0.0f);
    tempVelocity = (this->dyna.actor.velocity.y < 0.2f) ? 0.2f : this->dyna.actor.velocity.y;
    distFromBottom = Math_SmoothStepToF(&this->dyna.actor.posRot.pos.y, 973.0f, 0.1f, tempVelocity, 0.2f);
    if ((this->dyna.actor.posRot.pos.y < 1440.0f) && (1440.0f <= this->dyna.actor.pos4.y)) {
        func_8005B1A4(ACTIVE_CAM);
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
    this->dyna.actor.posRot.pos.y = 973.0f;
}

void BgJyaLift_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaLift* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
    if ((this->dyna.unk_160 & 4) && ((this->unk_16B & 4) == 0)) {
        Camera_ChangeSetting(globalCtx2->cameraPtrs[0], CAM_SET_TEPPEN);
    } else if (((this->dyna.unk_160) & 4) == 0 && ((this->unk_16B & 4)) &&
               (globalCtx2->cameraPtrs[0]->setting == 0x3F)) {
        Camera_ChangeSetting(globalCtx2->cameraPtrs[0], CAM_SET_DUNGEON0);
    }
    this->unk_16B = this->dyna.unk_160;

    // Spirit Temple room 5 is the main room with the statue room 25 is directly above room 5
    if ((globalCtx2->roomCtx.curRoom.num != 5) && (globalCtx2->roomCtx.curRoom.num != 25)) {
        Actor_Kill(thisx);
    }
}

void BgJyaLift_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_0600CCE0);
}
