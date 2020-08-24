/*
 * File: z_bg_haka.c
 * Overlay: ovl_Bg_Haka
 * Description: Gravestone
 */

#include "z_bg_haka.h"

#define FLAGS 0x00000000

#define THIS ((BgHaka*)thisx)

void BgHaka_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087B758(BgHaka* this, Player* player);
void func_8087B7E8(BgHaka* this, GlobalContext* globalCtx);
void func_8087B938(BgHaka* this, GlobalContext* globalCtx);
void func_8087BAAC(BgHaka* this, GlobalContext* globalCtx);
void func_8087BAE4(BgHaka* this, GlobalContext* globalCtx);

const ActorInit Bg_Haka_InitVars = {
    ACTOR_BG_HAKA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HAKA,
    sizeof(BgHaka),
    (ActorFunc)BgHaka_Init,
    (ActorFunc)BgHaka_Destroy,
    (ActorFunc)BgHaka_Update,
    (ActorFunc)BgHaka_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(minVelocityY, 0, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_06000428;
extern Gfx D_060001B0[];
extern Gfx D_060002A8[];

void BgHaka_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHaka* this = THIS;
    s32 pad;
    s32 sp24 = 0;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06000428, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    this->actionFunc = func_8087B7E8;
}

void BgHaka_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHaka* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_8087B758(BgHaka* this, Player* player) {
    Vec3f sp1C;

    func_8002DBD0(&this->dyna.actor, &sp1C, &player->actor.posRot.pos);
    if (fabsf(sp1C.x) < 34.6f && sp1C.z > -112.8f && sp1C.z < -36.0f) {
        player->stateFlags2 |= 0x200;
    }
}

void func_8087B7E8(BgHaka* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        if (globalCtx->sceneNum == SCENE_SPOT02 && LINK_IS_CHILD && gSaveContext.nightFlag == 0) {
            this->dyna.unk_150 = 0.0f;
            player->stateFlags2 &= -0x11;
            if (!Gameplay_InCsMode(globalCtx)) {
                func_8010B680(globalCtx, 0x5073, NULL);
                this->dyna.actor.params = 0x64;
                this->actionFunc = func_8087BAE4;
            }
        } else if (0.0f < this->dyna.unk_150 ||
                   (globalCtx->sceneNum == SCENE_SPOT06 && LINK_IS_CHILD && Flags_GetSwitch(globalCtx, 0x23) == 0)) {
            this->dyna.unk_150 = 0.0f;
            player->stateFlags2 &= -0x11;
        } else {
            this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y + 0x8000;
            this->actionFunc = func_8087B938;
        }
    }
    func_8087B758(this, player);
}

void func_8087B938(BgHaka* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 sp38;
    f32 temp_f0;

    this->dyna.actor.speedXZ += 0.05f;
    temp_f0 = this->dyna.actor.speedXZ;
    if (temp_f0 > 1.5f) {
        this->dyna.actor.speedXZ = 1.5f;
    } else {
        this->dyna.actor.speedXZ = temp_f0;
    }
    sp38 = Math_ApproxF(&this->dyna.actor.minVelocityY, 60.0f, this->dyna.actor.speedXZ);
    this->dyna.actor.posRot.pos.x =
        Math_Sins(this->dyna.actor.posRot.rot.y) * this->dyna.actor.minVelocityY + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z =
        Math_Coss(this->dyna.actor.posRot.rot.y) * this->dyna.actor.minVelocityY + this->dyna.actor.initPosRot.pos.z;
    if (sp38 != 0) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= -0x11;
        if (this->dyna.actor.params == 1) {
            func_80078884(NA_SE_SY_CORRECT_CHIME);
        } else if (gSaveContext.nightFlag != 0 && globalCtx->sceneNum == SCENE_SPOT02) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_POH, this->dyna.actor.initPosRot.pos.x,
                        this->dyna.actor.initPosRot.pos.y, this->dyna.actor.initPosRot.pos.z, 0,
                        this->dyna.actor.shape.rot.y, 0, 1);
        }
        this->actionFunc = func_8087BAAC;
    }
    func_8002F974(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void func_8087BAAC(BgHaka* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= -0x11;
    }
}

void func_8087BAE4(BgHaka* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 pad;

    if (this->dyna.actor.params != 0) {
        this->dyna.actor.params -= 1;
    }
    if (this->dyna.unk_150 != 0.0f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= -0x11;
    }
    if (this->dyna.actor.params == 0) {
        this->actionFunc = func_8087B7E8;
    }
    func_8087B758(this, player);
}

void BgHaka_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHaka* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgHaka_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_haka.c", 401);
    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka.c", 406),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_060001B0);
    Matrix_Translate(0.0f, 0.0f, thisx->minVelocityY * 10.0f, MTXMODE_APPLY);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka.c", 416),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyXlu.p++, D_060002A8);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_bg_haka.c", 421);
}
