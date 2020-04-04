/*
 * File: z_en_tana.c
 * Overlay: ovl_En_Tana
 * Description: Shop Shelves
 */

#include "z_en_tana.h"

#define ROOM 0x00
#define FLAGS 0x00000009

static void EnTana_Init(EnTana* this, GlobalContext* globalCtx);
static void EnTana_Destroy(EnTana* this, GlobalContext* globalCtx);
static void EnTana_Update(EnTana* this, GlobalContext* globalCtx);
static void func_80B17FC4(EnTana* this, GlobalContext* globalCtx);
static void func_80B1809C(EnTana* this, GlobalContext* globalCtx);

const ActorInit En_Tana_InitVars = {
    ACTOR_EN_TANA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_SHOP_DUNGEN,
    sizeof(EnTana),
    (ActorFunc)EnTana_Init,
    (ActorFunc)EnTana_Destroy,
    (ActorFunc)EnTana_Update,
    NULL,
};

static char* shelfTypes[] = {
    "木の棚", // "Wooden Shelves"
    "石の棚", // "Stone Shelves"
};

static const ActorFunc drawFuncs[] = {
    (ActorFunc)func_80B17FC4,
    (ActorFunc)func_80B1809C,
    (ActorFunc)func_80B1809C,
};

static Gfx* dListTbl[] = {
    0x06000B80,
    0x060027E8,
    0x060027E8,
};

static Gfx* dListTbl2[] = {
    NULL,
    0x06000E08,
    0x06001608,
};

static void EnTana_Init(EnTana* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    osSyncPrintf("☆☆☆ %s ☆☆☆\n", shelfTypes[thisx->params]);
    Actor_SetScale(thisx, 1.0f);
    thisx->flags &= ~1;
    thisx->draw = drawFuncs[thisx->params];
}

static void EnTana_Destroy(EnTana* this, GlobalContext* globalCtx) {
}

static void EnTana_Update(EnTana* this, GlobalContext* globalCtx) {
}

static void func_80B17FC4(EnTana* this, GlobalContext* globalCtx) {

    Actor* thisx = &this->actor;
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_tana.c", 148);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_tana.c", 152),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, dListTbl[thisx->params]);
    Graph_CloseDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_tana.c", 157);
}

static void func_80B1809C(EnTana* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_tana.c", 163);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(dListTbl2[thisx->params]));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_tana.c", 169),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, dListTbl[thisx->params]);
    Graph_CloseDisp(gfxArr, globalCtx->state.gfxCtx, "../z_en_tana.c", 174);
}
