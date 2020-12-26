/*
 * File: z_obj_hsblock.c
 * Overlay: ovl_Obj_Hsblock
 * Description: Stone Hookshot Target
 */

#include "z_obj_hsblock.h"

#define FLAGS 0x00000000

#define THIS ((ObjHsblock*)thisx)

void ObjHsblock_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjHsblock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjHsblock_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjHsblock_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B93DF4(ObjHsblock* this, GlobalContext* globalCtx);
void func_80B93E5C(ObjHsblock* this, GlobalContext* globalCtx);

void func_80B93D90(ObjHsblock* this);
void func_80B93DB0(ObjHsblock* this);
void func_80B93E38(ObjHsblock* this);

const ActorInit Obj_Hsblock_InitVars = {
    ACTOR_OBJ_HSBLOCK,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_D_HSBLOCK,
    sizeof(ObjHsblock),
    (ActorFunc)ObjHsblock_Init,
    (ActorFunc)ObjHsblock_Destroy,
    (ActorFunc)ObjHsblock_Update,
    (ActorFunc)ObjHsblock_Draw,
};

static f32 D_80B940C0[] = { 85.0f, 85.0f, 0.0f };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2000, ICHAIN_STOP),
};

UNK_TYPE D_80B940DC[] = { 0x06000730, 0x06000730, 0x06000578 };

static Color_RGB8 sFireTempleColor = { 165, 125, 55 };

static Gfx* sDLists[] = { 0x06000210, 0x06000210, 0x06000470 };

void ObjHsblock_SetupAction(ObjHsblock* this, ObjHsblockActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80B93B68(ObjHsblock* this, GlobalContext* globalCtx, UNK_TYPE arg2, DynaPolyMoveFlag moveFlags) {
    s32 pad;
    s32 localC = 0;
    s32 pad2[2];

    DynaPolyInfo_SetActorMove(&this->dyna, moveFlags);
    DynaPolyInfo_Alloc(arg2, &localC);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
    if (this->dyna.dynaPolyId == 0x32) {
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_hsblock.c", 163,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_80B93BF0(ObjHsblock* this, GlobalContext* globalCtx) {
    if ((this->dyna.actor.params >> 5) & 1) {
        Actor_SpawnAsChild(&globalCtx->actorCtx, this, globalCtx, ACTOR_OBJ_ICE_POLY, this->dyna.actor.posRot.pos.x,
                           this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, this->dyna.actor.posRot.rot.x,
                           this->dyna.actor.posRot.rot.y, this->dyna.actor.posRot.rot.z, 1);
    }
}

void ObjHsblock_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjHsblock* this = THIS;

    func_80B93B68(this, globalCtx, D_80B940DC[thisx->params & 3], 0);
    Actor_ProcessInitChain(thisx, sInitChain);
    func_80B93BF0(this, globalCtx);

    switch (thisx->params & 3) {
        case 0:
        case 2:
            func_80B93D90(this);
            break;
        case 1:
            if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0x3F)) {
                func_80B93D90(this);
            } else {
                func_80B93DB0(this);
            }
    }

    mREG(13) = 255;
    mREG(14) = 255;
    mREG(15) = 255;
}

void ObjHsblock_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjHsblock* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80B93D90(ObjHsblock* this) {
    ObjHsblock_SetupAction(this, NULL);
}

void func_80B93DB0(ObjHsblock* this) {
    this->dyna.actor.flags |= 0x10;
    this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y - 105.0f;
    ObjHsblock_SetupAction(this, func_80B93DF4);
}

void func_80B93DF4(ObjHsblock* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params >> 8) & 0x3F)) {
        func_80B93E38(this);
    }
}

void func_80B93E38(ObjHsblock* this) {
    ObjHsblock_SetupAction(this, func_80B93E5C);
}

void func_80B93E5C(ObjHsblock* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->dyna.actor.velocity.y, 16.0f, 0.1f, 0.8f, 0.0f);
    if (fabsf(Math_SmoothStepToF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 0.3f,
                                      this->dyna.actor.velocity.y, 0.3f)) < 0.001f) {
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y;
        func_80B93D90(this);
        this->dyna.actor.flags &= ~0x10;
    }
}

void ObjHsblock_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjHsblock* this = THIS;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
    Actor_SetHeight(thisx, D_80B940C0[thisx->params & 3]);
}

void ObjHsblock_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Color_RGB8* color;
    Color_RGB8 defaultColor;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_hsblock.c", 365);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_hsblock.c", 369),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (globalCtx->sceneNum == SCENE_HIDAN) {
        color = &sFireTempleColor;
    } else {
        defaultColor.r = mREG(13);
        defaultColor.g = mREG(14);
        defaultColor.b = mREG(15);
        color = &defaultColor;
    }

    gDPSetEnvColor(POLY_OPA_DISP++, color->r, color->g, color->b, 255);
    gSPDisplayList(POLY_OPA_DISP++, sDLists[thisx->params & 3]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_hsblock.c", 399);
}
