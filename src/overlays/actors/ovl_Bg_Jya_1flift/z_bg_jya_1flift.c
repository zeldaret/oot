#include "z_bg_jya_1flift.h"

#define FLAGS 0x00000010

#define THIS ((BgJya1flift*)thisx)

void BgJya1flift_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJya1flift_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgJya1flift_InitDynapoly(BgJya1flift* this, GlobalContext* globalCtx, void* arg2, s32 arg3);
void BgJya1flift_InitCollision(Actor* thisx, GlobalContext* globalCtx);


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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892B60.s")
void BgJya1flift_InitDynapoly(BgJya1flift* this, GlobalContext* globalCtx, void* arg2, s32 moveFlag) {
    s32 pad;
    s32 sp30;
    u32 temp_v0;

    sp30 = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, moveFlag);
    DynaPolyInfo_Alloc(arg2, (void*)&sp30);
    temp_v0 = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);
    this->dyna.dynaPolyId = temp_v0;
    if (temp_v0 == 0x32) {
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
        func_80892DB0(thisx);
    }
    thisx->room = -1;
    D_808930E0 = 1;
    this->hasInitialized = 1;
}



#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/BgJya1flift_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892E0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892E28.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892E34.s")
void func_80892E34(BgJya1flift* this) {
    this->actionFunc = &func_80892E58;
    this->unk_1B6 = (this->unk_1B6 ^ 1);
    this->dyna.actor.velocity.y = 0.0f;
}



//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892E58.s")
void func_80892E58(BgJya1flift* this, GlobalContext* globalCtx) {
    f32 tempVelocity;

    Math_ApproxF(&this->dyna.actor.velocity.y, 6.0f, 0.4f);
    this->dyna.actor.velocity.y < 1.0f ? (tempVelocity = 1.0f) : (tempVelocity = this->dyna.actor.velocity.y);
    if (fabsf(Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.y,(D_80893130[this->unk_1B6]), 0.5f, tempVelocity, 1.0f)) <
        0.001f) {
        this->dyna.actor.posRot.pos.y =  D_80893130[this->unk_1B6];
        func_80892F3C(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        return;
    }
    func_8002F974(&this->dyna.actor, 0x20B9U);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892F3C.s")
void func_80892F3C(BgJya1flift* this) {
    this->actionFunc = &func_80892F50;
    this->unk_1B4 = 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/func_80892F50.s")
void func_80892F50(BgJya1flift* this,GlobalContext* globalCtx) {
    //arg1 = ERROR(Read from unset register $a1);
    this->unk_1B4++;
    if (this->unk_1B4 >= 21) {
        func_80892E34(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/BgJya1flift_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_1flift/BgJya1flift_Draw.s")
