/*
 * File: z_bg_hidan_syoku.c
 * Overlay: Bg_Hidan_Syoku
 * Description: Stone Elevator in the Fire Temple
 */

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ f32 unk_150;
    /* 0x0154 */ f32 unk_154;
    /* 0x0158 */ u32 unk_158;
    /* 0x015C */ u32 unk_15C;
    /* 0x0160 */ u8 unk_160;
    /* 0x0164 */ ActorFunc updateFunc;
    /* 0x0168 */ s16 unk_168;
    /* 0x016A */ s16 unk_16A;
} ActorHidanSyoku; // size = 0x016C

#define ROOM 0x00
#define FLAGS 0x00000010

static void Init(ActorHidanSyoku* this, GlobalContext* globalCtx);
static void Destroy(ActorHidanSyoku* this, GlobalContext* globalCtx);
static void func_8088F4B8(ActorHidanSyoku* this, GlobalContext* globalCtx);
static void func_8088F514(ActorHidanSyoku* this, GlobalContext* globalCtx);
static void func_8088F62C(ActorHidanSyoku* this, GlobalContext* globalCtx);
static void Update(ActorHidanSyoku* this, GlobalContext* globalCtx);
static void Draw(ActorHidanSyoku* this, GlobalContext* globalCtx);

const ActorInit Bg_Hidan_Syoku_InitVars = {
    ACTOR_BG_HIDAN_SYOKU,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(ActorHidanSyoku),
    (ActorFunc)Init,
    (ActorFunc)Destroy,
    (ActorFunc)Update,
    (ActorFunc)Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_PTR D_0600A7E0;
extern UNK_PTR D_0600E568;

static void Init(ActorHidanSyoku* this, GlobalContext* globalCtx) {
    s32 pad[2];
    u32 local_c = 0;

    Actor_ProcessInitChain(&this->actor, initChain);
    DynaPolyInfo_SetActorMove(&this->actor, 1);
    DynaPolyInfo_Alloc(&D_0600E568, &local_c);
    this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, local_c);
    this->updateFunc = &func_8088F4B8;
    this->actor.initPosRot.pos.y += 540.0f;
}

static void Destroy(ActorHidanSyoku* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);
}

static void func_8088F47C(ActorHidanSyoku* this) {
    this->unk_16A = 0x3c;
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_BLOCK_BOUND);
    this->updateFunc = &func_8088F62C;
}

static void func_8088F4B8(ActorHidanSyoku* this, GlobalContext* globalCtx) {
    if (Flags_GetClear(globalCtx, this->actor.room) && func_8004356C(&this->actor)) {
        this->unk_16A = 0x8c;
        this->updateFunc = &func_8088F514;
    }
}

static void func_8088F514(ActorHidanSyoku* this, GlobalContext* globalCtx) {
    if (this->unk_16A != 0) {
        this->unk_16A -= 1;
    }
    this->actor.posRot.pos.y = (cosf(this->unk_16A * (M_PI / 140)) * 540.0f) + this->actor.initPosRot.pos.y;
    if (this->unk_16A == 0) {
        func_8088F47C(this);
    } else {
        func_8002F974(&this->actor, 0x20b9);
    }
}

static void func_8088F5A0(ActorHidanSyoku* this, GlobalContext* globalCtx) {
    if (this->unk_16A != 0) {
        this->unk_16A -= 1;
    }
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - (cosf(this->unk_16A * (M_PI / 140)) * 540.0f);
    if (this->unk_16A == 0) {
        func_8088F47C(this);
    } else {
        func_8002F974(&this->actor, 0x20b9);
    }
}

static void func_8088F62C(ActorHidanSyoku* this, GlobalContext* globalCtx) {
    if (this->unk_16A != 0) {
        this->unk_16A -= 1;
    }
    if (this->unk_16A == 0) {
        this->unk_16A = 0x8c;
        if (this->actor.posRot.pos.y < this->actor.initPosRot.pos.y) {
            this->updateFunc = &func_8088F514;
        } else {
            this->updateFunc = &func_8088F5A0;
        }
    }
}

static void Update(ActorHidanSyoku* this, GlobalContext* globalCtx) {
    this->updateFunc(this, globalCtx);
    if (func_8004356C(&this->actor)) {
        if (this->unk_168 == 0) {
            this->unk_168 = 3;
        }
        func_8005A77C(globalCtx->cameraCtx.activeCameraPtrs[0], 0x30);
        return;
    }
    if (!func_8004356C(&this->actor)) {
        if (this->unk_168 != 0) {
            func_8005A77C(globalCtx->cameraCtx.activeCameraPtrs[0], 3);
        }
        this->unk_168 = 0;
    }
}

static void Draw(ActorHidanSyoku* this, GlobalContext* globalCtx) {
    Draw_DListOpa(globalCtx, &D_0600A7E0);
}
