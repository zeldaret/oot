/*
 * File: z_bg_pushbox.c
 * Overlay: ovl_Bg_Pushbox
 * Description:
 */

#include "z_bg_pushbox.h"

#define FLAGS 0x00000000

#define THIS ((BgPushbox*)thisx)

void BgPushbox_Init(Actor* thisx, GlobalContext* globalCtx);
void BgPushbox_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgPushbox_Update(Actor* thisx, GlobalContext* globalCtx);
void BgPushbox_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808A8BAC(BgPushbox* this, GlobalContext* globalCtx);

const ActorInit Bg_Pushbox_InitVars = {
    ACTOR_BG_PUSHBOX,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(BgPushbox),
    (ActorFunc)BgPushbox_Init,
    (ActorFunc)BgPushbox_Destroy,
    (ActorFunc)BgPushbox_Update,
    (ActorFunc)BgPushbox_Draw,
};

extern Gfx D_06000000[];
extern CollisionHeader D_06000350;

static InitChainEntry sInitChain[] = {
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

void BgPushbox_SetupAction(BgPushbox* this, BgPushboxActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgPushbox_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgPushbox* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;
    s32 pad2;

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    CollisionHeader_GetVirtual(&D_06000350, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    BgPushbox_SetupAction(this, func_808A8BAC);
}

void BgPushbox_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgPushbox* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_808A8BAC(BgPushbox* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    thisx->speedXZ += this->dyna.unk_150 * 0.2f;
    thisx->speedXZ = (thisx->speedXZ < -1.0f) ? -1.0f : ((thisx->speedXZ > 1.0f) ? 1.0f : thisx->speedXZ);
    Math_StepToF(&thisx->speedXZ, 0.0f, 0.2f);
    thisx->posRot.rot.y = this->dyna.unk_158;
    Actor_MoveForward(thisx);
    func_8002E4B4(globalCtx, thisx, 20.0f, 40.0f, 40.0f, 0x1D);
}

void BgPushbox_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgPushbox* this = THIS;

    this->actionFunc(this, globalCtx);
    func_8002DF90(this);
}

void BgPushbox_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_pushbox.c", 263);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_pushbox.c", 269),
              G_MTX_NOPUSH | G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, &D_06000000);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_pushbox.c", 272);
}
