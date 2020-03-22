/*
 * File: z_bg_gate_shutter.c
 * Overlay: Bg_Gate_Shutter
 * Description:
*/

#include "z_bg_gate_shutter.h"

#include <vt.h>

#define ROOM 0x00
#define FLAGS 0x00000000

static void BgGateShutter_Init(BgGateShutter* this, GlobalContext* globalCtx);
static void BgGateShutter_Destroy(BgGateShutter* this, GlobalContext* globalCtx);
static void BgGateShutter_Update(BgGateShutter* this, GlobalContext* globalCtx);
static void BgGateShutter_Draw(BgGateShutter* this, GlobalContext* globalCtx);

static void func_8087828C(BgGateShutter* this, GlobalContext* globalCtx);
static void func_80878300(BgGateShutter* this, GlobalContext* globalCtx);
static void func_808783AC(BgGateShutter* this, GlobalContext* globalCtx);
static void func_808783D4(BgGateShutter* this, GlobalContext* globalCtx);

const ActorInit Bg_Gate_Shutter_InitVars =
{
    ACTOR_BG_GATE_SHUTTER,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_SPOT01_MATOYAB,
    sizeof(BgGateShutter),
    (ActorFunc)BgGateShutter_Init,
    (ActorFunc)BgGateShutter_Destroy,
    (ActorFunc)BgGateShutter_Update,
    (ActorFunc)BgGateShutter_Draw,
};

extern UNK_PTR D_06001CD0;
extern UNK_PTR D_06001DA8;

static void BgGateShutter_Init(BgGateShutter* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Actor* thisx = &this->dyna.actor;
    s32 local_c = 0;

    DynaPolyInfo_SetActorMove(thisx, 0);
    DynaPolyInfo_Alloc(&D_06001DA8, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    this->somePosX = thisx->posRot.pos.x;
    this->somePosY = thisx->posRot.pos.y;
    this->somePosZ = thisx->posRot.pos.z;
    if ((gSaveContext.inf_table[7] & 0x40) || (gSaveContext.event_chk_inf[4] & 0x20)) {
        if (globalCtx->sceneNum == SCENE_SPOT01) {
            thisx->posRot.pos.x = -89.0f;
            thisx->posRot.pos.z = -1375.0f;
        }
    }
    thisx->scale.x = 1.0f;
    thisx->scale.y = 1.0f;
    thisx->scale.z = 1.0f;
    osSyncPrintf("\n\n");
    osSyncPrintf(VT_FGCOL(GREEN) " ☆☆☆☆☆ 柵でたなぁ ☆☆☆☆☆ \n" VT_RST);
    this->actionFunc = (ActorFunc)func_8087828C;
}

static void BgGateShutter_Destroy(BgGateShutter* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

static void func_8087828C(BgGateShutter* this, GlobalContext* globalCtx) {
    if (this->unk_168 == 1) {
        if (!(gSaveContext.inf_table[7] & 0x40)) {
            this->unk_178 = 2;
            this->actionFunc = (ActorFunc)func_80878300;
            return;
        }
    }
    if (this->unk_168 == 2) {
        this->unk_178 = 2;
        this->actionFunc = (ActorFunc)func_80878300;
        return;
    }
    if (this->unk_168 < 0) {
        this->unk_178 = 2;
        this->actionFunc = (ActorFunc)func_808783D4;
    }
}

static void func_80878300(BgGateShutter* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (this->unk_178 == 0) {
        Audio_PlayActorSound2(thisx, 0x2067);
        thisx->posRot.pos.x -= 2.0f;
        Math_SmoothScaleMaxF(&thisx->posRot.pos.z, -1375.0f, 0.8f, 0.3f);
        if (thisx->posRot.pos.x < -89.0f) {
            Audio_PlayActorSound2(thisx, NA_SE_EV_BRIDGE_OPEN_STOP);
            this->unk_178 = 0x1E;
            this->actionFunc = (ActorFunc)func_808783AC;
        }
    }
}

static void func_808783AC(BgGateShutter* this, GlobalContext* globalCtx) {
    if (this->unk_178 == 0) {
        this->unk_168 = 0;
        this->actionFunc = (ActorFunc)func_8087828C;
    }
}

static void func_808783D4(BgGateShutter* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if (this->unk_178 == 0) {
        Audio_PlayActorSound2(thisx, 0x2067);
        thisx->posRot.pos.x += 2.0f;
        Math_SmoothScaleMaxF(&thisx->posRot.pos.z, -1350.0f, 0.8f, 0.3f);
        if (thisx->posRot.pos.x > 90.0f) {
            thisx->posRot.pos.x = 91.0f;
            Audio_PlayActorSound2(thisx, NA_SE_EV_BRIDGE_OPEN_STOP);
            this->unk_178 = 30;
            this->actionFunc = (ActorFunc)func_808783AC;
        }
    }
}

static void BgGateShutter_Update(BgGateShutter* this, GlobalContext* globalCtx) {
    if (this->unk_178 != 0) {
        this->unk_178 -= 1;
    }
    this->actionFunc(this, globalCtx);
}

static void BgGateShutter_Draw(BgGateShutter* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_bg_gate_shutter.c", 323);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_gate_shutter.c", 328),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06001CD0);
    
    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_bg_gate_shutter.c", 333);
}
