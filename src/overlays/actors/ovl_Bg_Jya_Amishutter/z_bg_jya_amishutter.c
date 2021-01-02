/*
 * File: z_bg_jya_amishutter.c
 * Overlay: Bg_Jya_Amishutter
 * Description: Circular metal grate. Lifts up when you get close to it.
 */

#include "z_bg_jya_amishutter.h"
#include "objects/object_jya_obj/object_jya_obj.h"

#define FLAGS 0x00000000

#define THIS ((BgJyaAmishutter*)thisx)

void BgJyaAmishutter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaAmishutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaAmishutter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaAmishutter_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgJyaAmishutter_SetupWaitForPlayer(BgJyaAmishutter* this);
void BgJyaAmishutter_WaitForPlayer(BgJyaAmishutter* this);
void func_80893428(BgJyaAmishutter* this);
void func_80893438(BgJyaAmishutter* this);
void func_808934B0(BgJyaAmishutter* this);
void func_808934C0(BgJyaAmishutter* this);
void func_808934FC(BgJyaAmishutter* this);
void func_8089350C(BgJyaAmishutter* this);

const ActorInit Bg_Jya_Amishutter_InitVars = {
    ACTOR_BG_JYA_AMISHUTTER,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaAmishutter),
    (ActorFunc)BgJyaAmishutter_Init,
    (ActorFunc)BgJyaAmishutter_Destroy,
    (ActorFunc)BgJyaAmishutter_Update,
    (ActorFunc)BgJyaAmishutter_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void BgJyaAmishutter_InitDynaPoly(BgJyaAmishutter* this, GlobalContext* globalCtx, u32 collision,
                                  DynaPolyMoveFlag flag) {
    s16 pad1;
    u32 local_c = 0;
    s16 pad2;

    DynaPolyInfo_SetActorMove(&this->dyna, flag);
    DynaPolyInfo_Alloc(collision, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, local_c);
    if (this->dyna.dynaPolyId == 0x32) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_amishutter.c", 129,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void BgJyaAmishutter_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaAmishutter* this = THIS;

    BgJyaAmishutter_InitDynaPoly(this, globalCtx, &gAmishutterCol, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    BgJyaAmishutter_SetupWaitForPlayer(this);
}

void BgJyaAmishutter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaAmishutter* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgJyaAmishutter_SetupWaitForPlayer(BgJyaAmishutter* this) {
    this->actionFunc = BgJyaAmishutter_WaitForPlayer;
}

void BgJyaAmishutter_WaitForPlayer(BgJyaAmishutter* this) {
    if ((this->dyna.actor.xzDistFromLink < 60.0f) && (fabsf(this->dyna.actor.yDistFromLink) < 30.0f)) {
        func_80893428(this);
    }
}

void func_80893428(BgJyaAmishutter* this) {
    this->actionFunc = func_80893438;
}

void func_80893438(BgJyaAmishutter* this) {
    if (Math_StepToF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y + 100.0f, 3.0f)) {
        func_808934B0(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void func_808934B0(BgJyaAmishutter* this) {
    this->actionFunc = func_808934C0;
}

void func_808934C0(BgJyaAmishutter* this) {
    if (this->dyna.actor.xzDistFromLink > 300.0f) {
        func_808934FC(this);
    }
}

void func_808934FC(BgJyaAmishutter* this) {
    this->actionFunc = func_8089350C;
}

void func_8089350C(BgJyaAmishutter* this) {
    if (Math_StepToF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 3.0f)) {
        BgJyaAmishutter_SetupWaitForPlayer(this);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_METALDOOR_STOP);
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_METALDOOR_SLIDE - SFX_FLAG);
    }
}

void BgJyaAmishutter_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaAmishutter* this = THIS;

    this->actionFunc(this);
}

void BgJyaAmishutter_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, gAmishutterDlist);
}
