/*
 * File: z_bg_hidan_syoku.c
 * Overlay: Bg_Hidan_Syoku
 * Description: Stone Elevator in the Fire Temple
 */

#include "z_bg_hidan_syoku.h"

#define FLAGS 0x00000010

#define THIS ((BgHidanSyoku*)thisx)

void BgHidanSyoku_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSyoku_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSyoku_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanSyoku_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8088F4B8(BgHidanSyoku* this, GlobalContext* globalCtx);
void func_8088F514(BgHidanSyoku* this, GlobalContext* globalCtx);
void func_8088F62C(BgHidanSyoku* this, GlobalContext* globalCtx);

const ActorInit Bg_Hidan_Syoku_InitVars = {
    ACTOR_BG_HIDAN_SYOKU,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanSyoku),
    (ActorFunc)BgHidanSyoku_Init,
    (ActorFunc)BgHidanSyoku_Destroy,
    (ActorFunc)BgHidanSyoku_Update,
    (ActorFunc)BgHidanSyoku_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern Gfx D_0600A7E0[];
extern CollisionHeader* D_0600E568;

void BgHidanSyoku_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanSyoku* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DPM_PLAYER);
    CollisionHeader_GetVirtual(&D_0600E568, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    this->actionFunc = func_8088F4B8;
    this->dyna.actor.initPosRot.pos.y += 540.0f;
}

void BgHidanSyoku_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanSyoku* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_8088F47C(BgHidanSyoku* this) {
    this->unk_16A = 0x3C;
    Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
    this->actionFunc = func_8088F62C;
}

void func_8088F4B8(BgHidanSyoku* this, GlobalContext* globalCtx) {
    if (Flags_GetClear(globalCtx, this->dyna.actor.room) && func_8004356C(&this->dyna.actor)) {
        this->unk_16A = 0x8C;
        this->actionFunc = func_8088F514;
    }
}

void func_8088F514(BgHidanSyoku* this, GlobalContext* globalCtx) {
    if (this->unk_16A != 0) {
        this->unk_16A -= 1;
    }
    this->dyna.actor.posRot.pos.y = (cosf(this->unk_16A * (M_PI / 140)) * 540.0f) + this->dyna.actor.initPosRot.pos.y;
    if (this->unk_16A == 0) {
        func_8088F47C(this);
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE3 - SFX_FLAG);
    }
}

void func_8088F5A0(BgHidanSyoku* this, GlobalContext* globalCtx) {
    if (this->unk_16A != 0) {
        this->unk_16A -= 1;
    }
    this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y - (cosf(this->unk_16A * (M_PI / 140)) * 540.0f);
    if (this->unk_16A == 0) {
        func_8088F47C(this);
    } else {
        func_8002F974(&this->dyna.actor, NA_SE_EV_ELEVATOR_MOVE3 - SFX_FLAG);
    }
}

void func_8088F62C(BgHidanSyoku* this, GlobalContext* globalCtx) {
    if (this->unk_16A != 0) {
        this->unk_16A -= 1;
    }
    if (this->unk_16A == 0) {
        this->unk_16A = 0x8c;
        if (this->dyna.actor.posRot.pos.y < this->dyna.actor.initPosRot.pos.y) {
            this->actionFunc = func_8088F514;
        } else {
            this->actionFunc = func_8088F5A0;
        }
    }
}

void BgHidanSyoku_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanSyoku* this = THIS;

    this->actionFunc(this, globalCtx);
    if (func_8004356C(&this->dyna.actor)) {
        if (this->unk_168 == 0) {
            this->unk_168 = 3;
        }
        Camera_ChangeSetting(globalCtx->cameraPtrs[0], CAM_SET_HIDAN1);
    } else if (!func_8004356C(&this->dyna.actor)) {
        if (this->unk_168 != 0) {
            Camera_ChangeSetting(globalCtx->cameraPtrs[0], CAM_SET_DUNGEON0);
        }
        this->unk_168 = 0;
    }
}

void BgHidanSyoku_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_0600A7E0);
}
