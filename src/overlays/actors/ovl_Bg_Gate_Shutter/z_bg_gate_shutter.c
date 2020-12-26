/*
 * File: z_bg_gate_shutter.c
 * Overlay: Bg_Gate_Shutter
 * Description: Death Mountain Trail Gate
 */

#include "vt.h"
#include "z_bg_gate_shutter.h"

#define FLAGS 0x00000000

#define THIS ((BgGateShutter*)thisx)

void BgGateShutter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgGateShutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgGateShutter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgGateShutter_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087828C(BgGateShutter* this, GlobalContext* globalCtx);
void func_80878300(BgGateShutter* this, GlobalContext* globalCtx);
void func_808783AC(BgGateShutter* this, GlobalContext* globalCtx);
void func_808783D4(BgGateShutter* this, GlobalContext* globalCtx);

const ActorInit Bg_Gate_Shutter_InitVars = {
    ACTOR_BG_GATE_SHUTTER,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_SPOT01_MATOYAB,
    sizeof(BgGateShutter),
    (ActorFunc)BgGateShutter_Init,
    (ActorFunc)BgGateShutter_Destroy,
    (ActorFunc)BgGateShutter_Update,
    (ActorFunc)BgGateShutter_Draw,
};

extern Gfx D_06001CD0[];
extern UNK_TYPE D_06001DA8;

void BgGateShutter_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgGateShutter* this = THIS;
    s32 pad[2];
    s32 local_c = 0;

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06001DA8, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    this->somePos.x = thisx->posRot.pos.x;
    this->somePos.y = thisx->posRot.pos.y;
    this->somePos.z = thisx->posRot.pos.z;
    if (((gSaveContext.infTable[7] & 0x40) || (gSaveContext.eventChkInf[4] & 0x20)) &&
        (globalCtx->sceneNum == SCENE_SPOT01)) {
        thisx->posRot.pos.x = -89.0f;
        thisx->posRot.pos.z = -1375.0f;
    }
    thisx->scale.x = 1.0f;
    thisx->scale.y = 1.0f;
    thisx->scale.z = 1.0f;
    osSyncPrintf("\n\n");
    osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 柵でたなぁ ☆☆☆☆☆ \n" VT_RST);
    this->actionFunc = func_8087828C;
}

void BgGateShutter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgGateShutter* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_8087828C(BgGateShutter* this, GlobalContext* globalCtx) {
    if (this->openingState == 1 && !(gSaveContext.infTable[7] & 0x40)) {
        this->unk_178 = 2;
        this->actionFunc = func_80878300;
    } else if (this->openingState == 2) {
        this->unk_178 = 2;
        this->actionFunc = func_80878300;
    } else if (this->openingState < 0) {
        this->unk_178 = 2;
        this->actionFunc = func_808783D4;
    }
}

void func_80878300(BgGateShutter* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (this->unk_178 == 0) {
        Audio_PlayActorSound2(thisx, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
        thisx->posRot.pos.x -= 2.0f;
        Math_ApproachF(&thisx->posRot.pos.z, -1375.0f, 0.8f, 0.3f);
        if (thisx->posRot.pos.x < -89.0f) {
            Audio_PlayActorSound2(thisx, NA_SE_EV_BRIDGE_OPEN_STOP);
            this->unk_178 = 0x1E;
            this->actionFunc = func_808783AC;
        }
    }
}

void func_808783AC(BgGateShutter* this, GlobalContext* globalCtx) {
    if (this->unk_178 == 0) {
        this->openingState = 0;
        this->actionFunc = func_8087828C;
    }
}

void func_808783D4(BgGateShutter* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (this->unk_178 == 0) {
        Audio_PlayActorSound2(thisx, NA_SE_EV_METALGATE_OPEN - SFX_FLAG);
        thisx->posRot.pos.x += 2.0f;
        Math_ApproachF(&thisx->posRot.pos.z, -1350.0f, 0.8f, 0.3f);
        if (thisx->posRot.pos.x > 90.0f) {
            thisx->posRot.pos.x = 91.0f;
            Audio_PlayActorSound2(thisx, NA_SE_EV_BRIDGE_OPEN_STOP);
            this->unk_178 = 30;
            this->actionFunc = func_808783AC;
        }
    }
}

void BgGateShutter_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgGateShutter* this = THIS;

    if (this->unk_178 != 0) {
        this->unk_178 -= 1;
    }
    this->actionFunc(this, globalCtx);
}

void BgGateShutter_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_gate_shutter.c", 323);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_gate_shutter.c", 328),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06001CD0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_gate_shutter.c", 333);
}
