#include "z_bg_mori_elevator.h"

#define FLAGS 0x00000010

#define THIS ((BgMoriElevator*)thisx)

void BgMoriElevator_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriElevator_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriElevator_Update(Actor* thisx, GlobalContext* globalCtx);

f32 func_808A1800(f32* posY, f32 curYpos, f32 arg2, f32 yVel, f32 arg4);
void func_808A18FC(BgMoriElevator* this, f32 arg1);
void func_808A1B60(BgMoriElevator* this);
void BgMoriElevator_PlaceInGround(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A1E04(BgMoriElevator* this);
 void BgMoriElevator_setPosition(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A210C(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A1FF0(BgMoriElevator* this);
void func_808A2008(BgMoriElevator* this, GlobalContext* globalCtx);
s16 D_808A2210 = 0;

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
    // D_808A2234
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 3000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

extern UNK_TYPE D_060035F8;

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1800.s")
f32 func_808A1800(f32* posY, f32 target, f32 arg2, f32 yVel, f32 arg4) {
    f32 phi_f2;
    phi_f2 = (target - *posY) * arg2;
    if (*posY < target) {
        if (yVel <phi_f2) {
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
            phi_f2= 0.0f;
            if (phi_f2) {}
            return phi_f2;
        }
    }
    
    //return phi_f2;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A18FC.s")
void func_808A18FC(BgMoriElevator* this, f32 distTo) {
    f32 phi_f12;
    f32 temp_f2;
    f32 temp1;

    // clang-format off/
    do { temp_f2 = fabsf(distTo) * 0.09f; if (temp_f2 < 0.0f) { phi_f12 = 0.0f; } else { temp1 = (temp_f2 > 1.0f) ? (1.0f) : (temp_f2); phi_f12 = temp1; }  func_800F436C(&this->dyna.actor.projectedPos, 0x2079, phi_f12); } while (0);
    // clang-format on/
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/BgMoriElevator_Init.s")
void BgMoriElevator_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgMoriElevator* this = THIS;
    s32 pad;
    s32 sp24;
    sp24 = 0;

    this->flag2 = D_808A2210;
    this->objectIndex = Object_GetIndex(&globalCtx->objectCtx, 0x73);
    if ((s8)this->objectIndex < 0) {
        Actor_Kill(thisx);
        // Forest Temple obj elevator Bank Danger!
        osSyncPrintf("Error : 森の神殿 obj elevator バンク危険！(%s %d)\n", "../z_bg_mori_elevator.c", 0x115);
        return;
    }
    switch (D_808A2210) {
        case 0:
            // Forest Temple elevator CT
            osSyncPrintf("森の神殿 elevator CT\n");
            D_808A2210 = 1;
            this->dyna.actor.room = -1;
            Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
            DynaPolyInfo_SetActorMove(&this->dyna, 1);
            DynaPolyInfo_Alloc(&D_060035F8, (void*)&sp24);
            this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp24);
            func_808A1B60(this);
            break;
        case 1:
            Actor_Kill(thisx);
            break;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/BgMoriElevator_Destroy.s")

s32 BgMoriElevator_IsLinkRiding(BgMoriElevator* this, GlobalContext* globalCtx) {
    return ((this->dyna.unk_160 & 2) && !(this->isRiding & (u8)2) &&
            ((PLAYER->actor.posRot.pos.y - this->dyna.actor.posRot.pos.y) < 80.0f));
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1B60.s")
void func_808A1B60(BgMoriElevator* this) {
    this->actionFunc = BgMoriElevator_PlaceInGround;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1B70.s")
void BgMoriElevator_PlaceInGround(BgMoriElevator* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, (s8)this->objectIndex)) {
        if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F))) {
            if (globalCtx->roomCtx.curRoom.num == 2) {
                this->dyna.actor.posRot.pos.y = 73.0f;
                func_808A1E04(this);
            } else {
                // Error: Forest Temple obj elevator Room setting is dangerous
                osSyncPrintf("Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n", "../z_bg_mori_elevator.c", 0x173);
            }
        } else {
            func_808A1E04(this);
        }
        this->dyna.actor.draw = func_808A210C;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1C30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1C40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1CF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1D50.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1E04.s")
void func_808A1E04(BgMoriElevator* this) {
    this->actionFunc = BgMoriElevator_setPosition;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1E14.s")
void BgMoriElevator_setPosition(BgMoriElevator* this, GlobalContext* globalCtx) {
    s32 pad;
    if (BgMoriElevator_IsLinkRiding(this, globalCtx) != 0) {
        if (globalCtx->roomCtx.curRoom.num == 2) {
            this->targetYPos = -779.0f;
            func_808A1FF0(this);
        } else if (globalCtx->roomCtx.curRoom.num == 17) {
            this->targetYPos = 233.0f;
            func_808A1FF0(this);
        } else {
            // Error:Forest Temple obj elevator Room setting is dangerous(% s % d)
            osSyncPrintf("Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n", "../z_bg_mori_elevator.c", 479);
        }
        
    }else if ((globalCtx->roomCtx.curRoom.num == 2) && (this->dyna.actor.posRot.pos.y < -275.0f)) {
        this->targetYPos = 233.0f;//Position before seeing poe cutscene and after defeating them
        func_808A1FF0(this);
    } else if ((globalCtx->roomCtx.curRoom.num == 17) && (-275.0f < this->dyna.actor.posRot.pos.y)) {
        this->targetYPos = -779.0f;
        func_808A1FF0(this);
    } else if ((( globalCtx->roomCtx.curRoom.num == 2) && (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0)) && (this->unk_16C == 0)) {// Poes not defeated a
        this->targetYPos = 73.0f;//In the ground before 4 poes are found
        func_808A1C30(this);
    } else if ((((globalCtx->roomCtx.curRoom.num == 2)) && (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) == 0)) && (this->unk_16C != 0)) { //Poes defeated and link on 
        this->targetYPos = 233.0f;
        func_808A1CF4(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1FF0.s")
void func_808A1FF0(BgMoriElevator* this) {
    this->actionFunc = func_808A2008;
    this->dyna.actor.velocity.y = 0.0f;
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A2008.s")
void func_808A2008(BgMoriElevator* this, GlobalContext* globalCtx) {
    f32 distTo;


    func_808A1800(&this->dyna.actor.velocity.y, 12.0f, 0.1f, 1.0f, 0.0f);
    distTo = func_808A1800(&this->dyna.actor.posRot.pos.y, this->targetYPos, 0.1f,
                            this->dyna.actor.velocity.y, 0.3f);
    
    if (fabsf(distTo) < 0.001f) {
        func_808A1E04(this);
        Audio_PlayActorSound2((Actor*)this, (u16)0x287AU);
        return;
    }
    func_808A18FC(this, distTo);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/BgMoriElevator_Update.s")
void BgMoriElevator_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgMoriElevator* this = THIS;
    this->actionFunc(this,globalCtx);
    this->isRiding = this->dyna.unk_160;
    this->unk_16C = Flags_GetSwitch(globalCtx, (s32)(thisx->params & 0x3F));
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A210C.s")
