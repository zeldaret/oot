/*
 * File: z_bg_ice_shutter.c
 * Overlay: ovl_Bg_Ice_Shutter
 * Description: Vertical Ice Bars (Doors) in Ice Cavern
 */

#include "z_bg_ice_shutter.h"

#define FLAGS 0x00000010

#define THIS ((BgIceShutter*)thisx)

void BgIceShutter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIceShutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIceShutter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIceShutter_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80891CF4(BgIceShutter* thisx, GlobalContext* globalCtx);
void func_80891D6C(BgIceShutter* thisx, GlobalContext* globalCtx);
void func_80891DD4(BgIceShutter* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Ice_Shutter_InitVars = {
    ACTOR_BG_ICE_SHUTTER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceShutter),
    (ActorFunc)BgIceShutter_Init,
    (ActorFunc)BgIceShutter_Destroy,
    (ActorFunc)BgIceShutter_Update,
    (ActorFunc)BgIceShutter_Draw,
};

extern UNK_TYPE D_06002854;
extern Gfx D_06002740[];

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void func_80891AC0(BgIceShutter* this) {
    f32 sp24;

    sp24 = Math_SinS(this->dyna.actor.shape.rot.x) * this->dyna.actor.velocity.y;
    this->dyna.actor.posRot.pos.y =
        (Math_CosS(this->dyna.actor.shape.rot.x) * this->dyna.actor.velocity.y) + this->dyna.actor.initPosRot.pos.y;
    this->dyna.actor.posRot.pos.x =
        (Math_SinS(this->dyna.actor.shape.rot.y) * sp24) + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z =
        (Math_CosS(this->dyna.actor.shape.rot.y) * sp24) + this->dyna.actor.initPosRot.pos.z;
}

void BgIceShutter_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgIceShutter* this = THIS;
    f32 sp24;
    s32 localC;
    s32 sp28;
    f32 temp_f6;

    localC = 0;
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    sp28 = this->dyna.actor.params & 0xFF;
    this->dyna.actor.params = (this->dyna.actor.params >> 8) & 0xFF;
    DynaPolyInfo_Alloc(&D_06002854, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
    if (sp28 == 2) {
        this->dyna.actor.shape.rot.x = -0x4000;
    }

    if (sp28 != 1) {
        if (Flags_GetClear(globalCtx, this->dyna.actor.room)) {
            Actor_Kill(&this->dyna.actor);
        } else {
            this->actionFunc = func_80891CF4;
        }

    } else {
        if (Flags_GetSwitch(globalCtx, this->dyna.actor.params)) {
            Actor_Kill(&this->dyna.actor);
        } else {
            this->actionFunc = func_80891D6C;
        }
    }

    if (sp28 == 2) {
        temp_f6 = Math_SinS(this->dyna.actor.shape.rot.x) * 50.0f;
        this->dyna.actor.posRot2.pos.x =
            (Math_SinS(this->dyna.actor.shape.rot.y) * temp_f6) + this->dyna.actor.initPosRot.pos.x;
        this->dyna.actor.posRot2.pos.y = this->dyna.actor.initPosRot.pos.y;
        this->dyna.actor.posRot2.pos.z =
            this->dyna.actor.initPosRot.pos.z + (Math_CosS(this->dyna.actor.shape.rot.y) * temp_f6);
    } else {
        Actor_SetHeight(&this->dyna.actor, 50.0f);
    }
}

void BgIceShutter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgIceShutter* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80891CF4(BgIceShutter* this, GlobalContext* globalCtx) {
    if (Flags_GetTempClear(globalCtx, this->dyna.actor.room)) {
        Flags_SetClear(globalCtx, this->dyna.actor.room);
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 30, NA_SE_EV_SLIDE_DOOR_OPEN);
        this->actionFunc = func_80891DD4;
        if (this->dyna.actor.shape.rot.x == 0) {
            func_80080480(globalCtx, &this->dyna.actor);
        }
    }
}

void func_80891D6C(BgIceShutter* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params)) {
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 30, NA_SE_EV_SLIDE_DOOR_OPEN);
        this->actionFunc = func_80891DD4;
        func_80080480(globalCtx, &this->dyna.actor);
    }
}

void func_80891DD4(BgIceShutter* this, GlobalContext* globalCtx) {
    Math_StepToF(&this->dyna.actor.speedXZ, 30.0f, 2.0f);
    if (Math_StepToF(&this->dyna.actor.velocity.y, 210.0f, this->dyna.actor.speedXZ)) {
        Actor_Kill(&this->dyna.actor);
        return;
    }

    func_80891AC0(this);
}

void BgIceShutter_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgIceShutter* this = THIS;
    this->actionFunc(this, globalCtx);
}

void BgIceShutter_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_06002740);
}
