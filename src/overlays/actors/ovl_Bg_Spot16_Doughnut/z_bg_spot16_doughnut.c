/*
 * File: z_bg_spot16_doughnut.c
 * Overlay: ovl_Bg_Spot16_Doughnut
 * Description: Death Mountain cloud circle
 */

#include "z_bg_spot16_doughnut.h"
#include <vt.h>

#define FLAGS 0x00000000

#define THIS ((BgSpot16Doughnut*)thisx)

void BgSpot16Doughnut_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Doughnut_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Doughnut_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Doughnut_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgSpot16Doughnut_Update2(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Doughnut_Draw2(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Spot16_Doughnut_InitVars = {
    ACTOR_BG_SPOT16_DOUGHNUT,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_EFC_DOUGHNUT,
    sizeof(BgSpot16Doughnut),
    (ActorFunc)BgSpot16Doughnut_Init,
    (ActorFunc)BgSpot16Doughnut_Destroy,
    (ActorFunc)BgSpot16Doughnut_Update,
    (ActorFunc)BgSpot16Doughnut_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_F4, 5500, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 5000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 5000, ICHAIN_STOP),
};

static s16 sScales[] = {
    0, 0, 70, 210, 300,
};

extern Gfx D_06000660[];
extern Gfx D_06000FC0[];

void BgSpot16Doughnut_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Doughnut* this = THIS;
    s32 params;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.1f);
    this->fireFlag = 0;
    this->envColorAlpha = 0xFF;
    params = this->actor.params;
    if (params == 1 || params == 2 || params == 3 || params == 4) {
        Actor_SetScale(&this->actor, sScales[this->actor.params] * 9.999999747378752e-05f);
        this->actor.draw = BgSpot16Doughnut_Draw2;
        this->actor.update = BgSpot16Doughnut_Update2;
    } else {
        // Scales this actor for scenes where it is featured in the background,
        // Death Mountain itself falls into the default case.
        switch (globalCtx->sceneNum) {
            case SCENE_SPOT01:
                Actor_SetScale(&this->actor, 0.04f);
                break;
            case SCENE_SHRINE:
            case SCENE_SHRINE_N:
            case SCENE_SHRINE_R:
                Actor_SetScale(&this->actor, 0.018f);
                break;
            default:
                Actor_SetScale(&this->actor, 0.1f);
                break;
        }
        osSyncPrintf(VT_FGCOL(CYAN) "%f" VT_RST "\n", this->actor.scale.x);
        if (LINK_IS_CHILD || gSaveContext.eventChkInf[2] & 0x8000) {
            this->fireFlag &= ~1;
        } else {
            this->fireFlag |= 1;
        }
        osSyncPrintf("(ｓｐｏｔ１６ ドーナツ雲)(arg_data 0x%04x)\n", this->actor.params);
    }
}

void BgSpot16Doughnut_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void BgSpot16Doughnut_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Doughnut* this = THIS;

    if (!(this->fireFlag & 1)) {
        this->actor.shape.rot.y -= 0x20;
        if (this->envColorAlpha < 0xFF) {
            this->envColorAlpha += 5;
        } else {
            this->envColorAlpha = 0xFF;
        }
    } else if (globalCtx->csCtx.state != 0 && globalCtx->csCtx.npcActions[2] != NULL &&
               (u16)globalCtx->csCtx.npcActions[2]->action == 2) {
        if (this->envColorAlpha >= 6) {
            this->envColorAlpha -= 5;
        } else {
            this->envColorAlpha = 0;
            this->fireFlag &= ~1;
        }
    }
}

// Update function for outwardly expanding and dissipating
void BgSpot16Doughnut_Update2(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Doughnut* this = THIS;

    if (this->envColorAlpha >= 6) {
        this->envColorAlpha -= 5;
    } else {
        Actor_Kill(&this->actor);
    }
    this->actor.shape.rot.y -= 0x20;
    Actor_SetScale(&this->actor, this->actor.scale.x + 0.001999999862164259f);
}

void BgSpot16Doughnut_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Doughnut* this = THIS;
    u32 scroll;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[5];

    scroll = globalCtx->gameplayFrames & 0xFFFF;
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot16_doughnut.c", 210);
    func_80093D84(globalCtx->state.gfxCtx);
    if (1) {}
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot16_doughnut.c", 213),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    if (this->fireFlag & 1) {
        gSPSegment(
            gfxCtx->polyXlu.p++, 0x08,
            Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll * (-1), 0, 16, 32, 1, scroll, scroll * (-2), 16, 32));
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x00, 0x00, this->envColorAlpha);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_06000660);
    } else {
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xFF, this->envColorAlpha);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_06000FC0);
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot16_doughnut.c", 238);
}

// Draw function for outwardly expanding and dissipating
void BgSpot16Doughnut_Draw2(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Doughnut* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot16_doughnut.c", 245);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot16_doughnut.c", 248),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xFF, this->envColorAlpha);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    gSPDisplayList(gfxCtx->polyXlu.p++, D_06000FC0);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_spot16_doughnut.c", 256);
}
