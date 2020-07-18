/*
 * File: z_bg_jya_1flift.c
 * Overlay: ovl_Bg_Jya_1flift
 * Description: Shortcut Elevator (Spirit Temple)
 */

#include "z_bg_jya_1flift.h"

#define FLAGS 0x00000010

#define THIS ((BgJya1flift*)thisx)

void BgJya1flift_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgJya1flift_InitDynapoly(BgJya1flift* this, GlobalContext* globalCtx, void* arg2, s32 arg3);
void BgJya1flift_InitCollision(Actor* thisx, GlobalContext* globalCtx);

void func_80892DB0(BgJya1flift* this);
void func_80892DCC(BgJya1flift* this, GlobalContext* globalCtx);
void func_80892E28(BgJya1flift* this, GlobalContext* globalCtx);

void func_80892E34(BgJya1flift* this);
void func_80892E58(BgJya1flift* this, GlobalContext* globalCtx);
void func_80892E0C(BgJya1flift* this);
void func_80892F3C(BgJya1flift* this);
void func_80892F50(BgJya1flift* this, GlobalContext* globalCtx);

extern u8 D_808930E0 = 0;


const ActorInit Bg_Jya_1flift_InitVars = {
    ACTOR_BG_JYA_1FLIFT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJya1flift),
    (ActorFunc)BgJya1flift_Init,
    (ActorFunc)BgJya1flift_Destroy,
    (ActorFunc)BgJya1flift_Update,
    (ActorFunc)BgJya1flift_Draw,
};

static ColliderCylinderInit sCylinderInit = { //D_80893104
    { COLTYPE_UNK0, 0x00, 0x01, 0x00, 0x00, 0x46 },
    { 0xFF, { 0x00000000, 0x43, 0xDD }, { 0xC2480000, 0xC8, 0x50 }, 0xB0, 0xF4, 0x04 },
    { -20232, 400, 12540, { 1200, 0, 0 } },
};


f32 D_80893130[] = { 443.0f, -50.0f };

static InitChainEntry sInitChain[] = { //D_80893138
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_STOP),
};

extern UNK_TYPE D_060004A8;

extern Gfx D_060001F0[];
    //#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892B60.s")
void BgJya1flift_InitDynapoly(BgJya1flift* this, GlobalContext* globalCtx, void* arg2, s32 moveFlag) {
    s32 pad;
    s32 sp30;
    u32 tempDynaID;

    sp30 = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, moveFlag);
    DynaPolyInfo_Alloc(arg2, (void*)&sp30);
    tempDynaID = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);
    this->dyna.dynaPolyId = tempDynaID;
    if (tempDynaID == 0x32) {
        osSyncPrintf( "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_1flift.c", 0xB3, this->dyna.actor.id, this->dyna.actor.params);
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892BE8.s")
void BgJya1flift_InitCollision(Actor* thisx, GlobalContext* globalCtx) {
    BgJya1flift* this = THIS;
    
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->dyna.actor, &sCylinderInit);
    this->dyna.actor.colChkInfo.mass = 0xFF;
}



//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/BgJya1flift_Init.s")
void BgJya1flift_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJya1flift* this = THIS;
                 //1 F lift
    osSyncPrintf("(１Ｆリフト)(flag %d)(room %d)\n", D_808930E0, globalCtx->roomCtx.curRoom.num);
    this->hasInitialized = 0;
    if (D_808930E0 != 0) {
        Actor_Kill(thisx);
        return;
    }
    BgJya1flift_InitDynapoly(this, globalCtx, &D_060004A8, 0);
    Actor_ProcessInitChain(thisx, sInitChain);
    BgJya1flift_InitCollision(thisx, globalCtx);
    if (Flags_GetSwitch(globalCtx, (thisx->params & 0x3F)) != 0) {
        LINK_AGE_IN_YEARS == YEARS_ADULT ? func_80892E34(this) : func_80892E0C(this);
    } else {
        func_80892DB0(this);
    }
    thisx->room = -1;
    D_808930E0 = 1;
    this->hasInitialized = 1;
}



//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/BgJya1flift_Destroy.s")
void BgJya1flift_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJya1flift* this = THIS;

    if (this->hasInitialized != 0) {
        D_808930E0 = 0;
        Collider_DestroyCylinder(globalCtx, &this->collider);
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

//.#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892DB0.s")
void func_80892DB0(BgJya1flift* this) {
    this->actionFunc = func_80892DCC;
    this->dyna.actor.posRot.pos.y = D_80893130[0];
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892DCC.s")
void func_80892DCC(BgJya1flift* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F)) != 0) {
        func_80892E34(this);
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892E0C.s")
void func_80892E0C(BgJya1flift* this) {
    this->actionFunc = func_80892E28;
    this->dyna.actor.posRot.pos.y = D_80893130[0];
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892E28.s")
void func_80892E28(BgJya1flift* this, GlobalContext* globalCtx) {
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892E34.s")
void func_80892E34(BgJya1flift* this) {
    this->actionFunc = func_80892E58;
    this->direction = (this->direction ^ 1);
    this->dyna.actor.velocity.y = 0.0f;
}



//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892E58.s")
void func_80892E58(BgJya1flift* this, GlobalContext* globalCtx) {
    f32 tempVelocity;

    Math_ApproxF(&this->dyna.actor.velocity.y, 6.0f, 0.4f);
    this->dyna.actor.velocity.y < 1.0f ? (tempVelocity = 1.0f) : (tempVelocity = this->dyna.actor.velocity.y);
    if (fabsf(Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.y,(D_80893130[this->direction]), 0.5f, tempVelocity, 1.0f)) <
        0.001f) {
        this->dyna.actor.posRot.pos.y =  D_80893130[this->direction];
        func_80892F3C(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        return;
    }
    func_8002F974(&this->dyna.actor, 0x20B9U);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892F3C.s")
void func_80892F3C(BgJya1flift* this) {
    this->actionFunc = func_80892F50;
    this->moveDelay = 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892F50.s")
void func_80892F50(BgJya1flift* this,GlobalContext* globalCtx) {
    this->moveDelay++;
    if (this->moveDelay >= 21) {
        func_80892E34(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/BgJya1flift_Update.s")
void BgJya1flift_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJya1flift* this = THIS;
    s32 sp24;
    ColliderCylinder* sp20;

    s32 phi_v1;
    u8 phi_v1_2;

    if (globalCtx->roomCtx.curRoom.num == 6 || globalCtx->roomCtx.curRoom.num == 0) {
//    block_2:
        this->actionFunc(this, globalCtx);
        phi_v1 = 0;
        if (func_8004356C(thisx) != 0) {
            phi_v1 = 1;
        }
        (phi_v1_2 = (u8)phi_v1);
        if ((func_80892E58 == this->actionFunc) || (func_80892F50 == this->actionFunc)) {
            if (phi_v1 != 0) {
                sp24 = phi_v1;
                func_8005A77C(globalCtx->cameraPtrs[0], 0x30);
            block_11:
                phi_v1_2 = (u8)sp24;
            } else {
                phi_v1_2 = (u8)phi_v1;
                if (phi_v1 == 0) {
                    phi_v1_2 = (u8)phi_v1;
                    if (this->isLinkRiding != 0) {
                        sp24 = phi_v1;
                        func_8005A77C(globalCtx->cameraPtrs[0], 3);
                        goto block_11;
                    }
                }
            }
        } else {
        }
        this->isLinkRiding = phi_v1_2;
        //temp_a2 = &this->collider;
        sp20 = &this->collider;
        
        Collider_CylinderUpdate(thisx, sp20);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, sp20);
        return;
    }
    /*if (globalCtx->roomCtx.curRoom.num == 0) {
        goto block_2;
    }*/
    Actor_Kill(thisx);
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/BgJya1flift_Draw.s")
void BgJya1flift_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_060001F0);
}
