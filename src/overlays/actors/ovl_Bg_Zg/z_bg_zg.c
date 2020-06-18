/*
 * File: z_bg_zg.c
 * Overlay: ovl_Bg_Zg
 * Description: Metal bars (Ganon's Castle)
 */

#include "z_bg_zg.h"
#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((BgZg*)thisx)

void BgZg_Init(Actor* thisx, GlobalContext* globalCtx);
void BgZg_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgZg_Update(Actor* thisx, GlobalContext* globalCtx);
void BgZg_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808C0C50(BgZg* this);
s32 func_808C0C98(BgZg* this, GlobalContext* globalCtx);
s32 func_808C0CC8(BgZg* this);
void func_808C0CD4(BgZg* this, GlobalContext* globalCtx);
void func_808C0D08(BgZg* this, GlobalContext* globalCtx);
void func_808C0EEC(BgZg* this, GlobalContext* globalCtx);

static BgZgActionFunc sActionFuncs[] = {
    func_808C0CD4,
    func_808C0D08,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

static BgZgDrawFunc sDrawFuncs[] = {
    func_808C0EEC,
};

const ActorInit Bg_Zg_InitVars = {
    ACTOR_BG_ZG,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZG,
    sizeof(BgZg),
    (ActorFunc)BgZg_Init,
    (ActorFunc)BgZg_Destroy,
    (ActorFunc)BgZg_Update,
    (ActorFunc)BgZg_Draw,
};

extern Gfx D_06001080[];
extern UNK_TYPE D_060011D4;

void BgZg_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgZg* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808C0C50(BgZg* this) {
    Audio_PlaySoundGeneral(NA_SE_EV_METALDOOR_OPEN, &this->dyna.actor.unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

s32 func_808C0C98(BgZg* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    s32 flag = (thisx->params >> 8) & 0xFF;

    return Flags_GetSwitch(globalCtx, flag);
}

s32 func_808C0CC8(BgZg* this) {
    s32 flag = this->dyna.actor.params & 0xFF;

    return flag;
}

void func_808C0CD4(BgZg* this, GlobalContext* globalCtx) {
    if (func_808C0C98(this, globalCtx) != 0) {
        this->action = 1;
        func_808C0C50(this);
    }
}

void func_808C0D08(BgZg* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    thisx->posRot.pos.y += (kREG(16) + 20.0f) * 1.2f;
    if ((((kREG(17) + 200.0f) * 1.2f) + thisx->initPosRot.pos.y) <= thisx->posRot.pos.y) {
        Actor_Kill(thisx);
    }
}

void BgZg_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgZg* this = THIS;
    s32 action = this->action;

    if (((action < 0) || (1 < action)) || (sActionFuncs[action] == NULL)) {
        // Translates to: "Main Mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sActionFuncs[action](&this->dyna.actor, globalCtx);
    }
}

void BgZg_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgZg* this = THIS;
    s32 pad[2];
    u32 local_c;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyInfo_SetActorMove(thisx, DPM_UNK);
    local_c = 0;
    DynaPolyInfo_Alloc(&D_060011D4, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    if ((func_808C0CC8(this) == 8) || (func_808C0CC8(this) == 9)) {
        thisx->scale.x = thisx->scale.x * 1.3f;
        thisx->scale.z = thisx->scale.z * 1.3f;
        thisx->scale.y = thisx->scale.y * 1.2f;
    }

    this->action = 0;
    this->drawConfig = 0;
    if (func_808C0C98(this, globalCtx) != 0) {
        Actor_Kill(thisx);
    }
}

void func_808C0EEC(BgZg* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    GraphicsContext* tempgfxCtx; // oddly needs this to match
    Gfx* dispRefs[4];

    tempgfxCtx = globalCtx->state.gfxCtx;
    gfxCtx = tempgfxCtx;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_bg_zg.c", 311);

    func_80093D18(gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_bg_zg.c", 315),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(gfxCtx->polyOpa.p++, D_06001080);
    Graph_CloseDisps(dispRefs, gfxCtx, "../z_bg_zg.c", 320);
}

void BgZg_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgZg* this = THIS;
    s32 drawConfig = this->drawConfig;

    if (((drawConfig < 0) || (drawConfig > 0)) || sDrawFuncs[drawConfig] == NULL) {
        // Translates to: "Drawing mode is wrong !!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sDrawFuncs[drawConfig](this, globalCtx);
    }
}
