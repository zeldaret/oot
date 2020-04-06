/*
 * File: z_demo_geff.c
 * Overlay: Demo_Geff
 * Description:
 */

#include "z_demo_geff.h"

#include <vt.h>

#define ROOM 0x00
#define FLAGS 0x00000030

static void DemoGeff_Init(DemoGeff* this, GlobalContext* globalCtx);
static void DemoGeff_Destroy(DemoGeff* this, GlobalContext* globalCtx);
static void DemoGeff_Update(DemoGeff* this, GlobalContext* globalCtx);
static void DemoGeff_Draw(DemoGeff* this, GlobalContext* globalCtx);

static void func_80978030(DemoGeff* this, GlobalContext* globalCtx);

static void func_809783D4(DemoGeff* this, GlobalContext* globalCtx);
static void func_80978308(DemoGeff* this, GlobalContext* globalCtx);

static void func_809784D4(DemoGeff* this, GlobalContext* globalCtx);
static void func_80978344(DemoGeff* this, GlobalContext* globalCtx);

s16 objectIds[] = {
    OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF,
};

ActorFunc scaleFuncs[] = {
    (ActorFunc)func_80978030, (ActorFunc)func_80978030, (ActorFunc)func_80978030,
    (ActorFunc)func_80978030, (ActorFunc)func_80978030, (ActorFunc)func_80978030,
    (ActorFunc)func_80978030, (ActorFunc)func_80978030, (ActorFunc)func_80978030,
};
ActorFunc actionFuncs[] = {
    (ActorFunc)func_809783D4,
    (ActorFunc)func_80978308,
};
ActorFunc drawFuncs[] = {
    (ActorFunc)func_809784D4,
    (ActorFunc)func_80978344,
};

const ActorInit Demo_Geff_InitVars = {
    ACTOR_DEMO_GEFF,
    ACTORTYPE_BOSS,
    ROOM,
    FLAGS,
    OBJECT_GEFF,
    sizeof(DemoGeff),
    (ActorFunc)DemoGeff_Init,
    (ActorFunc)DemoGeff_Destroy,
    (ActorFunc)DemoGeff_Update,
    (ActorFunc)DemoGeff_Draw,
};

extern UNK_TYPE D_06000EA0;

static void DemoGeff_Destroy(DemoGeff* this, GlobalContext* globalCtx) {
}

static void DemoGeff_Init(DemoGeff* this, GlobalContext* globalCtx) {
    if (this->actor.params < 0 || this->actor.params >= 9) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Geff_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n" VT_RST);
        Actor_Kill(&this->actor);
        return;
    }
    this->action = 0;
    this->drawConfig = 0;
}

static void func_80977EA8(GlobalContext* globalCtx, u32 dlist) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_demo_geff.c", 181);
    func_80093D18(gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_demo_geff.c", 183),
              G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, dlist);
    gSPPopMatrix(gfxCtx->polyOpa.p++, G_MTX_MODELVIEW);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_demo_geff.c", 188);
}

static void func_80977F80(DemoGeff* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s32 objBankIndex = this->objBankIndex;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_demo_geff.c", 204);

    gSPSegment(gfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[objBankIndex].segment);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[objBankIndex].segment);

    // Necessary to match
    if (!globalCtx) {}

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_demo_geff.c", 212);
}

static void func_80978030(DemoGeff* this, GlobalContext* globalCtx) {
    Vec3f* thisScale = &this->actor.scale;
    this->action = 1;
    this->drawConfig = 1;

    switch (this->actor.params) {
        case 0:
        case 3:
        case 6:
            thisScale->x = (kREG(7) * 0.01f) + 0.3f;
            thisScale->y = (kREG(8) * 0.01f) + 0.3f;
            thisScale->z = (kREG(9) * 0.01f) + 0.3f;
            break;
        case 1:
        case 4:
        case 7:
            thisScale->x = (kREG(10) * 0.01f) + 0.15f;
            thisScale->y = (kREG(11) * 0.01f) + 0.29f;
            thisScale->z = (kREG(12) * 0.01f) + 0.12f;
            break;
        default:
            thisScale->x = (kREG(13) * 0.01f) + 0.1f;
            thisScale->y = (kREG(14) * 0.01f) + 0.15f;
            thisScale->z = (kREG(15) * 0.01f) + 0.2f;
            break;
    }
}

static void func_809781FC(DemoGeff* this, GlobalContext* globalCtx) {
    s32 targetParams = 2;
    Actor* propIt;

    if (this->demoGt == NULL) {
        propIt = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
        if ((this->actor.params != 0) && (this->actor.params != 1) && (this->actor.params != 2)) {
            targetParams = 2;
        } else {
            targetParams = 1;
        }
        while (propIt != NULL) {
            if (propIt->id == ACTOR_DEMO_GT && propIt->params == targetParams) {
                this->deltaPosX = this->actor.posRot.pos.x - propIt->posRot.pos.x;
                this->deltaPosY = this->actor.posRot.pos.y - propIt->posRot.pos.y;
                this->deltaPosZ = this->actor.posRot.pos.z - propIt->posRot.pos.z;
                this->demoGt = propIt;
            }
            propIt = propIt->next;
        }
    }
}

static void func_809782A0(DemoGeff* this, GlobalContext* globalCtx) {
    DemoGt* demoGt = this->demoGt;
    s16 params = this->actor.params;
    if (demoGt != NULL && (params != 6) && (params != 7) && (params != 8)) {
        this->actor.posRot.pos.x = demoGt->actor.posRot.pos.x + this->deltaPosX;
        this->actor.posRot.pos.y = demoGt->actor.posRot.pos.y + this->deltaPosY;
        this->actor.posRot.pos.z = demoGt->actor.posRot.pos.z + this->deltaPosZ;
    }
}

static void func_80978308(DemoGeff* this, GlobalContext* globalCtx) {
    func_809781FC(this, globalCtx);
    func_809782A0(this, globalCtx);
    func_80978030(this, globalCtx);
}

static void func_80978344(DemoGeff* this, GlobalContext* globalCtx) {
    func_80977EA8(globalCtx, &D_06000EA0);
}

static void func_80978370(DemoGeff* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params;
    ActorFunc actorFunc = scaleFuncs[params];
    if (actorFunc == NULL) {
        osSyncPrintf(VT_FGCOL(RED) " Demo_Geff_main_init:初期化処理がおかしいarg_data = %d!\n" VT_RST, params);
        Actor_Kill(&this->actor);
        return;
    }
    actorFunc(this, globalCtx);
}

static void func_809783D4(DemoGeff* this, GlobalContext* globalCtx) {
    ObjectContext* objCtx = &globalCtx->objectCtx;
    Actor* thisx = &this->actor;
    s32 params = thisx->params;
    s16 objectId = objectIds[params];
    s32 objBankIndex = Object_GetIndex(objCtx, objectId);
    s32 pad;

    if (objBankIndex < 0) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Geff_main_bank:バンクを読めない arg_data = %d!\n" VT_RST, params);
        Actor_Kill(thisx);
        return;
    }
    if (Object_IsLoaded(objCtx, objBankIndex)) {
        this->objBankIndex = objBankIndex;
        func_80978370(this, globalCtx);
    }
}

static void DemoGeff_Update(DemoGeff* this, GlobalContext* globalCtx) {
    if (this->action < 0 || this->action >= 2 || actionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    actionFuncs[this->action](this, globalCtx);
}

static void func_809784D4(DemoGeff* this, GlobalContext* globalCtx) {
}

static void DemoGeff_Draw(DemoGeff* this, GlobalContext* globalCtx) {
    s32 drawConfig = this->drawConfig;
    s16 pad;
    if (drawConfig < 0 || drawConfig >= 2 || drawFuncs[drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    if (drawConfig != 0) {
        func_80977F80(this, globalCtx);
    }
    drawFuncs[drawConfig](this, globalCtx);
}
