/*
 * File: z_bg_ice_shutter.c
 * Overlay: ovl_Bg_Ice_Shutter
 * Description: 2D Ice Bars
 */

#include "z_bg_ice_shutter.h"

#define FLAGS 0x00000010

#define THIS ((BgIceShutter*)thisx)

void BgIceShutter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIceShutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIceShutter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIceShutter_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80891CF4(BgIceShutter *thisx, GlobalContext* globalCtx);
void func_80891AC0(BgIceShutter *thisx);
void func_80891D6C(BgIceShutter *thisx, GlobalContext* globalCtx);
void func_80891DD4(BgIceShutter *thisx, GlobalContext* globalCtx);

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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void func_80891AC0(BgIceShutter *thisx) {
    f32 sp24;

    sp24 = Math_Sins(thisx->dyna.actor.shape.rot.x) * thisx->dyna.actor.velocity.y;
    thisx->dyna.actor.posRot.pos.y = (f32) ((Math_Coss(thisx->dyna.actor.shape.rot.x) * thisx->dyna.actor.velocity.y) + thisx->dyna.actor.initPosRot.pos.y);
    thisx->dyna.actor.posRot.pos.x = (f32) ((Math_Sins(thisx->dyna.actor.shape.rot.y) * sp24) + thisx->dyna.actor.initPosRot.pos.x);
    thisx->dyna.actor.posRot.pos.z = (f32) ((Math_Coss(thisx->dyna.actor.shape.rot.y) * sp24) + thisx->dyna.actor.initPosRot.pos.z);
}

extern UNK_TYPE D_06002854;

void BgIceShutter_Init(Actor* thisx, GlobalContext* globalCtx) {
    f32 temp_f10;
    f32 sp24;
    s32 localC;
    s32 sp28;
    f32 temp_f6;

    localC = 0;
    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyInfo_SetActorMove(&(THIS->dyna), 0);
    sp28 = thisx->params & 0xFF;
    thisx->params = ((thisx->params >> 8) & 0xFF);
    DynaPolyInfo_Alloc(&D_06002854, &localC);
    THIS->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localC);
    if (sp28 == 2) {
        thisx->shape.rot.x = (s16)-0x4000;
    }
    if (sp28 != 1) {
        if (Flags_GetClear(globalCtx, thisx->room) != 0) {
            Actor_Kill(thisx);
        } else {
            THIS->actionFunc = &func_80891CF4;
        }
    } else {
        if (Flags_GetSwitch(globalCtx, thisx->params) != 0) {
            Actor_Kill(thisx);
        } else {
            THIS->actionFunc = &func_80891D6C;
        }
    }
    if (sp28 == 2) {
        sp24 = Math_Sins(thisx->shape.rot.x) * 50.0f;
        temp_f10 = Math_Sins(thisx->shape.rot.y) * sp24;
        thisx->posRot2.pos.y = (f32) thisx->initPosRot.pos.y;
        thisx->posRot2.pos.x = (f32) (temp_f10 + thisx->initPosRot.pos.x);
        thisx->posRot2.pos.y = (f32) ((Math_Coss(thisx->shape.rot.y) * temp_f6) + thisx->initPosRot.pos.y);
        return;
    }
    Actor_SetHeight(thisx, 0x42480000);
}

void BgIceShutter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, globalCtx + 0x810, THIS->dyna.dynaPolyId);
}

void func_80891CF4(BgIceShutter *thisx, GlobalContext* globalCtx) {
    if (Flags_GetTempClear(globalCtx, thisx->dyna.actor.room) != 0) {
        Flags_SetClear(globalCtx, thisx->dyna.actor.room);
        Audio_PlaySoundAtPosition(globalCtx, &(thisx->dyna.actor.posRot), 0x1E, 0x2814);
        thisx->actionFunc = &func_80891DD4;
        if (thisx->dyna.actor.shape.rot.x == 0) {
            func_80080480(globalCtx, thisx);
        }
    }
}


void func_80891D6C(BgIceShutter *thisx, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, thisx->dyna.actor.params) != 0) {
        Audio_PlaySoundAtPosition(globalCtx, &(thisx->dyna.actor.posRot), 0x1E, 0x2814);
        thisx->actionFunc = &func_80891DD4;
        func_80080480(globalCtx, thisx);
    }
}

void func_80891DD4(BgIceShutter *thisx, GlobalContext* globalCtx) {
    void *temp_a3;

    temp_a3 = thisx;
    thisx = temp_a3;
    Math_ApproxF(&(thisx->dyna.actor.speedXZ), 0x41F00000, 0x40000000);
    if (Math_ApproxF(&(thisx->dyna.actor.velocity.z), 0x43520000, thisx->dyna.actor.speedXZ) != 0) {
        Actor_Kill(thisx);
        return;
    }
    func_80891AC0(thisx);
}

void BgIceShutter_Update(Actor* thisx, GlobalContext* globalCtx) {
    THIS->actionFunc(THIS, globalCtx);
}
void BgIceShutter_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, 0x6002740);
}

