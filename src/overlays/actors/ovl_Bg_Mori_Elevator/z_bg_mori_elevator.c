#include "z_bg_mori_elevator.h"

#define FLAGS 0x00000010

#define THIS ((BgMoriElevator*)thisx)

void BgMoriElevator_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriElevator_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriElevator_Update(Actor* thisx, GlobalContext* globalCtx);

void func_808A1B60(BgMoriElevator* this);
void BgMoriElevator_PlaceInGround(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A1E04(BgMoriElevator* this);
void BgMoriElevator_setPosition(BgMoriElevator* this, GlobalContext* globalCtx);
void func_808A210C(BgMoriElevator* this, GlobalContext* globalCtx);

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A18FC.s")

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
            this->currentYPos = -779.0f;
            func_808A1FF0(this);
        } else if (globalCtx->roomCtx.curRoom.num == 17) {
            this->currentYPos = 233.0f;
            func_808A1FF0(this);
        } else {
            // Error:Forest Temple obj elevator Room setting is dangerous(% s % d)
            osSyncPrintf("Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n", "../z_bg_mori_elevator.c", 479);
        }
        
    }else if ((globalCtx->roomCtx.curRoom.num == 2) && (this->dyna.actor.posRot.pos.y < -275.0f)) {
        this->currentYPos = 233.0f;//Position before seeing poe cutscene and after defeating them
        func_808A1FF0(this);
    } else if ((globalCtx->roomCtx.curRoom.num == 17) && (-275.0f < this->dyna.actor.posRot.pos.y)) {
        this->currentYPos = -779.0f;
        func_808A1FF0(this);
    } else if ((( globalCtx->roomCtx.curRoom.num == 2) && (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0)) && (this->unk_16C == 0)) {// Poes not defeated a
        this->currentYPos = 73.0f;//In the ground before 4 poes are found
        func_808A1C30(this);
    } else if ((((globalCtx->roomCtx.curRoom.num == 2)) && (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) == 0)) && (this->unk_16C != 0)) { //Poes defeated and link on 
        this->currentYPos = 233.0f;
        func_808A1CF4(this, globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A1FF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A2008.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/BgMoriElevator_Update.s")
void BgMoriElevator_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgMoriElevator* this = THIS;
    this->actionFunc(this,globalCtx);
    this->isRiding = this->dyna.unk_160;
    this->unk_16C = Flags_GetSwitch(globalCtx, (s32)(thisx->params & 0x3F));
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Mori_Elevator/func_808A210C.s")
