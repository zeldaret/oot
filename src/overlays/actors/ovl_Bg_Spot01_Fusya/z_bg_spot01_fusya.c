/*
 * File: z_bg_spot01_fusya.c
 * Overlay: Bg_Spot01_Fusya
 * Description: Windmill Sails
 */

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ char unk_150[0x4];
    /* 0x0154 */ f32 unk_154;
    /* 0x0158 */ f32 unk_158;
    /* 0x015C */ f32 unk_15C;
} BgSpot01Fusya; // size = 0x0160

#define ROOM 0x00
#define FLAGS 0x00000010

static void BgSpot01Fusya_Init(BgSpot01Fusya* this, GlobalContext* globalCtx);
static void BgSpot01Fusya_Destroy(BgSpot01Fusya* this, GlobalContext* globalCtx);
static void BgSpot01Fusya_Update(BgSpot01Fusya* this, GlobalContext* globalCtx);
static void BgSpot01Fusya_Draw(BgSpot01Fusya* this, GlobalContext* globalCtx);

static void func_808AAA50(BgSpot01Fusya* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot01_Fusya_InitVars = {
    ACTOR_BG_SPOT01_FUSYA,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT01_OBJECTS,
    sizeof(BgSpot01Fusya),
    (ActorFunc)BgSpot01Fusya_Init,
    (ActorFunc)BgSpot01Fusya_Destroy,
    (ActorFunc)BgSpot01Fusya_Update,
    (ActorFunc)BgSpot01Fusya_Draw,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 12800, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 1300, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 1300, ICHAIN_STOP),
};

extern u32 D_06000100;

static void BgSpot01Fusya_SetupAction(BgSpot01Fusya* this, ActorFunc actionFunc) {
    this->actionFunc = actionFunc;
}

static void BgSpot01Fusya_Init(BgSpot01Fusya* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->actor, initChain);
    this->unk_154 = 100.0f;
    this->unk_158 = 100.0f;
    this->unk_15C = 0.5f;
    if (gSaveContext.scene_setup_index < 4) {
        gSaveContext.event_chk_inf[6] &= 0xFFDF;
    }
    BgSpot01Fusya_SetupAction(this, func_808AAA50);
}

static void BgSpot01Fusya_Destroy(BgSpot01Fusya* this, GlobalContext* globalCtx) {
}

static void func_808AAA50(BgSpot01Fusya* this, GlobalContext* globalCtx) {
    f32 temp;
    Actor* thisx = &this->actor;
    if (gSaveContext.event_chk_inf[6] & 0x20) {
        this->unk_158 = 1800.0f;
    }
    thisx->shape.rot.z += this->unk_154;
    temp = ((this->unk_154 - 100.0f) / 1700.0f) + 1.0f;
    func_800F436C(&thisx->unk_E4, 0x2085, temp);
    Math_SmoothScaleMaxF(&this->unk_154, this->unk_158, this->unk_15C, 100.0f);
}

static void BgSpot01Fusya_Update(BgSpot01Fusya* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

static void BgSpot01Fusya_Draw(BgSpot01Fusya* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_bg_spot01_fusya.c", 210);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot01_fusya.c", 214),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06000100);

    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_bg_spot01_fusya.c", 219);
}
