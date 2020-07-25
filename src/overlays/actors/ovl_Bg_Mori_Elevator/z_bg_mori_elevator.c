#include "z_bg_mori_elevator.h"

#define FLAGS 0x00000010

#define THIS ((BgMoriElevator*)thisx)

void BgMoriElevator_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriElevator_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriElevator_Update(Actor* thisx, GlobalContext* globalCtx);

f32 func_808A1800(f32* posY, f32 target, f32 arg2, f32 yVel, f32 arg4);
void func_808A18FC(BgMoriElevator* this, f32 arg1);
void func_808A1B60(BgMoriElevator* this);
void BgMoriElevator_PlaceInGround(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A1E04(BgMoriElevator* this);
void BgMoriElevator_SetPosition(BgMoriElevator* this, GlobalContext* globalCtx);
void BgMoriElevator_Draw(Actor* thisx, GlobalContext* globalCtx);
void BgMoriElevator_StopMovement(BgMoriElevator* this);
void func_808A2008(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A1C40(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A1CF4(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A1D50(BgMoriElevator* this, GlobalContext* globalCtx);

s16 sIsSpawned = false;

const ActorInit Bg_Mori_Elevator_InitVars = {
    ACTOR_BG_MORI_ELEVATOR,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriElevator),
    (ActorFunc)BgMoriElevator_Init,
    (ActorFunc)BgMoriElevator_Destroy,
    (ActorFunc)BgMoriElevator_Update,
    NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 3000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

extern UNK_TYPE D_060035F8;
extern Gfx D_06002AD0[];

// Couldnt get a mov.s to go into a delay slot
#ifdef NON_MATCHING
f32 func_808A1800(f32* posY, f32 target, f32 arg2, f32 yVel, f32 arg4) {
    f32 phi_f2;
    phi_f2 = (target - *posY) * arg2;
    if (*posY < target) {
        if (yVel < phi_f2) {
            phi_f2 = yVel;
        } else {
            if (phi_f2 < arg4) {
                phi_f2 = arg4;
            }
        }
        *posY = (*posY + phi_f2);

        if (target < *posY) {
            *posY = target;
            return phi_f2;
        }
    } else {
        if (target < *posY) {
            if (phi_f2 < (-yVel)) {
                phi_f2 = (-yVel);
            } else {
                if ((-arg4) < phi_f2) {
                    phi_f2 = (-arg4);
                }
            }
            *posY = (*posY + phi_f2);
            if (*posY < target) {
                *posY = target;
                return phi_f2;
            }
        } else {
            phi_f2 = 0.0f;
            if (phi_f2) {}
            return phi_f2;
        }
    }

    // return phi_f2;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1800.s")
#endif

void func_808A18FC(BgMoriElevator* this, f32 distTo) {
    f32 phi_f12;
    f32 temp_f2;
    f32 temp1;

    // clang-format off
    do {temp_f2 = fabsf(distTo) * 0.09f; if (temp_f2 < 0.0f) { phi_f12 = 0.0f; } else { temp1 = (temp_f2 > 1.0f) ? (1.0f) : (temp_f2);phi_f12 = temp1;} func_800F436C(&this->dyna.actor.projectedPos, 0x2079, phi_f12);} while (0);
    // clang-format on
}

void BgMoriElevator_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgMoriElevator* this = THIS;
    s32 pad;
    s32 sp24;
    sp24 = 0;

    this->unk_172 = sIsSpawned;
    this->objectIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_MORI_TEX);
    if (this->objectIndex < 0) {
        Actor_Kill(thisx);
        // Forest Temple obj elevator Bank Danger!
        osSyncPrintf("Error : 森の神殿 obj elevator バンク危険！(%s %d)\n", "../z_bg_mori_elevator.c", 277);

    } else {
        switch (sIsSpawned) {
            case false:
                // Forest Temple elevator CT
                osSyncPrintf("森の神殿 elevator CT\n");
                sIsSpawned = true;
                this->dyna.actor.room = -1;
                Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
                DynaPolyInfo_SetActorMove(&this->dyna, DPM_PLAYER);
                DynaPolyInfo_Alloc(&D_060035F8, &sp24);
                this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp24);
                func_808A1B60(this);
                break;
            case true:
                Actor_Kill(thisx);
                break;
        }
    }
}

void BgMoriElevator_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgMoriElevator* this = THIS;
    if (this->unk_172 == 0) {
        // Forest Temple elevator DT
        osSyncPrintf("森の神殿 elevator DT\n");
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        sIsSpawned = false;
    }
}

s32 BgMoriElevator_IsLinkRiding(BgMoriElevator* this, GlobalContext* globalCtx) {
    return ((this->dyna.unk_160 & 2) && !(this->isRiding & 2) &&
            ((PLAYER->actor.posRot.pos.y - this->dyna.actor.posRot.pos.y) < 80.0f));
}

void func_808A1B60(BgMoriElevator* this) {
    this->actionFunc = BgMoriElevator_PlaceInGround;
}

void BgMoriElevator_PlaceInGround(BgMoriElevator* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objectIndex)) {
        if (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F)) {
            if (globalCtx->roomCtx.curRoom.num == 2) {
                this->dyna.actor.posRot.pos.y = 73.0f;
                func_808A1E04(this);
            } else {
                // Error: Forest Temple obj elevator Room setting is dangerous
                osSyncPrintf("Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n", "../z_bg_mori_elevator.c", 371);
            }
        } else {
            func_808A1E04(this);
        }
        this->dyna.actor.draw = BgMoriElevator_Draw;
    }
}

void func_808A1C30(BgMoriElevator* this) {
    this->actionFunc = func_808A1C40;
}

void func_808A1C40(BgMoriElevator* this, GlobalContext* globalCtx) {
    f32 distToTarget;

    func_808A1800(&this->dyna.actor.velocity.y, 2.0f, 0.05f, 1.0f, 0.0f);
    distToTarget = func_808A1800(&this->dyna.actor.posRot.pos.y, 73.0f, 0.08f, this->dyna.actor.velocity.y, 1.5f);
    if (fabsf(distToTarget) < 0.001f) {
        func_808A1E04(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ELEVATOR_STOP);
    } else {
        func_808A18FC(this, distToTarget);
    }
}

void func_808A1CF4(BgMoriElevator* this, GlobalContext* globalCtx) {
    this->actionFunc = func_808A1D50;
    func_800800F8(globalCtx, 0xC9E, 0x46, &this->dyna.actor, 0);
    func_800800F8(globalCtx, 0x3FC, 0xF, &this->dyna.actor, 0);
}

void func_808A1D50(BgMoriElevator* this, GlobalContext* globalCtx) {
    f32 distToTarget;

    func_808A1800(&this->dyna.actor.velocity.y, 2.0f, 0.05f, 1.0f, 0.0f);
    distToTarget = func_808A1800(&this->dyna.actor.posRot.pos.y, 233.0f, 0.08f, this->dyna.actor.velocity.y, 1.5f);
    if (fabsf(distToTarget) < 0.001f) {
        func_808A1E04(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ELEVATOR_STOP);
    } else {
        func_808A18FC(this, distToTarget);
    }
}

void func_808A1E04(BgMoriElevator* this) {
    this->actionFunc = BgMoriElevator_SetPosition;
}

void BgMoriElevator_SetPosition(BgMoriElevator* this, GlobalContext* globalCtx) {
    s32 pad;
    if (BgMoriElevator_IsLinkRiding(this, globalCtx)) {
        if (globalCtx->roomCtx.curRoom.num == 2) {
            this->targetYPos = -779.0f;
            BgMoriElevator_StopMovement(this);
        } else if (globalCtx->roomCtx.curRoom.num == 17) {
            this->targetYPos = 233.0f;
            BgMoriElevator_StopMovement(this);
        } else {
            // Error:Forest Temple obj elevator Room setting is dangerous(% s % d)
            osSyncPrintf("Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n", "../z_bg_mori_elevator.c", 479);
        }

    } else if ((globalCtx->roomCtx.curRoom.num == 2) && (this->dyna.actor.posRot.pos.y < -275.0f)) {
        this->targetYPos = 233.0f;
        BgMoriElevator_StopMovement(this);
    } else if ((globalCtx->roomCtx.curRoom.num == 17) && (-275.0f < this->dyna.actor.posRot.pos.y)) {
        this->targetYPos = -779.0f;
        BgMoriElevator_StopMovement(this);
    } else if (((globalCtx->roomCtx.curRoom.num == 2) &&
                (Flags_GetSwitch(globalCtx, this->dyna.actor.params & 0x3F))) &&
               (this->unk_16C == 0)) {
        this->targetYPos = 73.0f;
        func_808A1C30(this);
    } else if (((globalCtx->roomCtx.curRoom.num == 2)) &&
               !(Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F))) && (this->unk_16C != 0)) {
        this->targetYPos = 233.0f;
        func_808A1CF4(this, globalCtx);
    }
}

void BgMoriElevator_StopMovement(BgMoriElevator* this) {
    this->actionFunc = func_808A2008;
    this->dyna.actor.velocity.y = 0.0f;
}

void func_808A2008(BgMoriElevator* this, GlobalContext* globalCtx) {
    f32 distTo;

    func_808A1800(&this->dyna.actor.velocity.y, 12.0f, 0.1f, 1.0f, 0.0f);
    distTo = func_808A1800(&this->dyna.actor.posRot.pos.y, this->targetYPos, 0.1f, this->dyna.actor.velocity.y, 0.3f);
    if (fabsf(distTo) < 0.001f) {
        func_808A1E04(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ELEVATOR_STOP);

    } else {
        func_808A18FC(this, distTo);
    }
}

void BgMoriElevator_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgMoriElevator* this = THIS;
    this->actionFunc(this, globalCtx);
    this->isRiding = this->dyna.unk_160;
    this->unk_16C = Flags_GetSwitch(globalCtx, (thisx->params & 0x3F));
}

void BgMoriElevator_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriElevator* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_mori_elevator.c", 575);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 8, globalCtx->objectCtx.status[this->objectIndex].segment);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mori_elevator.c", 580),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_06002AD0);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_mori_elevator.c", 584);
}
