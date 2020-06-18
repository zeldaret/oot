/*
 * File: z_bg_jya_lift.c
 * Overlay: ovl_Bg_Jya_Lift
 * Description: Chain Platform (Spirit Temple)
 */

#include "z_bg_jya_lift.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaLift*)thisx)

void BgJyaLift_Init(Actor* thisx, GlobalContext* globalCtx);
//void BgJyaLift_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaLift_Destroy(BgJyaLift* this, GlobalContext* globalCtx);
void BgJyaLift_Update(Actor* thisx, GlobalContext* globalCtx);

void BgJyaLift_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgJyaLiftInitHelper(BgJyaLift* this, GlobalContext* globalCtx, u32 arg2, DynaPolyMoveFlag moveFlag);
void BgJyaLiftSetFinalPosY(BgJyaLift* this);
void BgJyaLiftSetInitPosY(BgJyaLift* this);
void func_80899D38(BgJyaLift* this, GlobalContext* globalCtx);
void func_80899DBC(BgJyaLift* this);
void BgJyaLiftMovementHandler(BgJyaLift* this, GlobalContext* globalCtx);
/*
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
*/

    extern s16      D_8089A020;
    extern s32      D_8089A044;
    extern s32      D_0600D7E8;
    extern UNK_TYPE D_0600CCE0;
  //#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899BA0.s")

void BgJyaLiftInitHelper(BgJyaLift* this, GlobalContext* globalCtx, u32 arg2, DynaPolyMoveFlag moveFlag) { //seems to help set up the actor
    s32 pad1; // padding that makes everything match nicely
    u32 localConst;
    localConst = 0U;
    DynaPolyInfo_SetActorMove(&this->dyna, moveFlag);
    DynaPolyInfo_Alloc(arg2, (void*)&localConst);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna, localConst);
}

    //#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/BgJyaLift_Init.s")
void BgJyaLift_Init(Actor* thisx, GlobalContext* globalCtx) {
     BgJyaLift* this = THIS;
    THIS->unk16A = 0;
    if ((D_8089A020) != 0) {
        Actor_Kill(thisx);
        return;
    }

    osSyncPrintf( "女神リフト CT\n"); //Goddess lift CT
    BgJyaLiftInitHelper(THIS, globalCtx, &D_0600D7E8, 0);
    Actor_ProcessInitChain(thisx, &D_8089A044);
    if (Flags_GetSwitch(globalCtx, (thisx->params & 0x3F)) != 0) {
        BgJyaLiftSetFinalPosY(thisx); //Set final position
    } else {
        BgJyaLiftSetInitPosY(thisx);//Set initial position
    }
    thisx->room = -1;
    D_8089A020 = 1;
    THIS->unk16A = 1;
}

//prragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/BgJyaLift_Destroy.s")
void BgJyaLift_Destroy(BgJyaLift* this, GlobalContext* globalCtx) {
    if (this->unk16A != 0) {
        osSyncPrintf("女神リフト DT\n");//Goddess Lift DT
        D_8089A020 = 0;
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899D18.s")
void BgJyaLiftSetInitPosY(BgJyaLift* this) {
    this->actionFunc = &func_80899D38;
    
    this->dyna.actor.posRot.pos.y = 1613.0f;
    this->unk168 = 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899D38.s")
void func_80899D38(BgJyaLift* this, GlobalContext* globalCtx) {
    if ((Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0) || (this->unk168 > 0)) {

        this->unk168 = (this->unk168 + 1);
        if (this->unk168 >= 0x14) {

            func_800800F8(globalCtx, 0xD66, -0x63, &this->dyna.actor, 0);
            func_80899DBC(this);
        }
    } else {
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899DBC.s")
void func_80899DBC(BgJyaLift* this) {
    this->actionFunc = &BgJyaLiftMovementHandler;
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899DCC.s")
void BgJyaLiftMovementHandler(BgJyaLift* this, GlobalContext* globalCtx) {
    f32 distFromBottom;
    {//Using a scope here made it match.  Not the best solution but it works.
        f32 tempVelocity;
        Math_SmoothScaleMaxMinF(&this->dyna.actor.velocity.y, 4.0f, 0.1f, 1.0f, 0.0f); // 0.10000000149011612f
        tempVelocity = (this->dyna.actor.velocity.y < 0.2f) ? 0.2f : this->dyna.actor.velocity.y;
        distFromBottom = Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.y, 973.0f, 0.1f, tempVelocity, 0.2f); // 0.10000000149011612f 0.20000000298023224f
    }
    if ((this->dyna.actor.posRot.pos.y < 1440.0f) && (1440.0f <= this->dyna.actor.pos4.y)) {
            func_8005B1A4(ACTIVE_CAM);
        // Likely moves the camera down into the main room when the platform moves to y=1440;
    }
    if (fabsf(distFromBottom) < 0.001f) { //0.0010000000474974513f
        BgJyaLiftSetFinalPosY(this);
        Audio_PlayActorSound2(&this->dyna.actor, 0x287AU);
        return;
    }

    func_8002F974((Actor*)this, 0x200CU);
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/func_80899EF0.s")
void BgJyaLiftSetFinalPosY(BgJyaLift* this) { //Sets final position after it falls to the bottom of its travel
    this->actionFunc = 0;
    this->dyna.actor.posRot.pos.y = 973.0f;
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/BgJyaLift_Update.s")
void BgJyaLift_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaLift* this = THIS;

    GlobalContext* globalCtx2 = globalCtx;
    
   // u8 u8Temp2; //Originally called phi_v0
    if (this->actionFunc) {
        (this->actionFunc)(this);
    }
    if ((((this->dyna.unk_160) & 4) != 0) && ((this->unk16B & 4) == 0)) {
        func_8005A77C((Camera*)globalCtx2->cameraPtrs[0], 0x3F);
    } else {
        if (((this->dyna.unk_160) & 4) == 0 && ((this->unk16B & 4) != 0) && (globalCtx2->cameraPtrs[0]->setting == 0x3F)) {
        func_8005A77C((Camera*)globalCtx2->cameraPtrs[0], 3);
        }
    }
    this->unk16B = this->dyna.unk_160;
    if ((globalCtx2->roomCtx.curRoom.num != 5) && (globalCtx2->roomCtx.curRoom.num != 25)) { 
            Actor_Kill(thisx);
       //Room 5 is the main room with the statue and room 25 is the room with the lift in it
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Lift/BgJyaLift_Draw.s")
void BgJyaLift_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, &D_0600CCE0); // 0x0601CCE0
}

