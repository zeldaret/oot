/*
 * File: z_bg_spot07_taki.c
 * Overlay: ovl_Bg_Spot07_Taki
 * Description: Zora's Domain Waterfall and Ice
 */

#include "z_bg_spot07_taki.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot07Taki*)thisx)

void BgSpot07Taki_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot07Taki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot07Taki_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot07Taki_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000460;
extern UNK_TYPE D_06000BE0;
extern UNK_TYPE D_06001CF0;
extern UNK_TYPE D_06001F68;
extern CollisionHeader D_06002590;
extern UNK_TYPE D_06003210;
extern UNK_TYPE D_060032D8;
extern CollisionHeader D_060038FC;

const ActorInit Bg_Spot07_Taki_InitVars = {
    ACTOR_BG_SPOT07_TAKI,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_SPOT07_OBJECT,
    sizeof(BgSpot07Taki),
    (ActorFunc)BgSpot07Taki_Init,
    (ActorFunc)BgSpot07Taki_Destroy,
    (ActorFunc)BgSpot07Taki_Update,
    (ActorFunc)BgSpot07Taki_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void func_808AFD08(BgSpot07Taki* this, GlobalContext* globalCtx);

void BgSpot07Taki_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot07Taki* this = THIS;
    s32 pad;
    CollisionHeader* sp24;

    sp24 = NULL;
    DynaPolyActor_Init(&this->dyna, DPM_PLAYER);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    if (gSaveContext.linkAge == 0) {
        if (thisx->params == 0) {
            CollisionHeader_GetVirtual(&D_06002590, &sp24);
        }
        else {
            CollisionHeader_GetVirtual(&D_060038FC, &sp24);
        }
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp24);
    }
    this->actionFunc = func_808AFD08;
}

void BgSpot07Taki_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot07Taki* this = THIS;
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_808AFD08(BgSpot07Taki* this, GlobalContext* globalCtx) {

}

void BgSpot07Taki_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot07Taki* this = THIS;
    this->actionFunc(this, globalCtx);
}

void BgSpot07Taki_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 pad;
    u32 sp98;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot07_taki.c", 169);
    sp98 = globalCtx->gameplayFrames;
    if (gSaveContext.linkAge == 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot07_taki.c", 177),
            G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        if (thisx->params == 0) {
            gSPDisplayList(POLY_OPA_DISP++, &D_06001CF0);
        }
        else {
            gSPDisplayList(POLY_OPA_DISP++, &D_06003210);
        }
    }
    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot07_taki.c", 191),
        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

#define sp44 (sp98 * 1) & 0x7F
#define sp48 ( - 1 * sp98) & 0x7F
#define temp_a3_2 (( - 3 * sp98) & 0xFF)
#define temp_a3_3 ((sp98 * 3) & 0x1FF)

#define temp_a3_4 ((sp98 * 3) & 0x1FF)
#define sp44_2 sp98 * 0

    gSPSegment(POLY_XLU_DISP++, 0x08, 
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sp48, sp44, 32, 32, 1, sp44, sp44, 32, 32)
    );
    
    if (gSaveContext.linkAge != 0) {
        gDPSetEnvColor(POLY_XLU_DISP++, 0xFF, 0xFF, 0xFF, 0x80);
        if (thisx->params == 0) {
            gSPSegment(POLY_XLU_DISP++, 0x09,
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sp48, temp_a3_2, 64, 64, 1, sp44, temp_a3_2, 64, 64)
            );
            gSPSegment(POLY_XLU_DISP++, 0x0A,
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sp44_2, temp_a3_3, 32, 128, 1, sp44_2, temp_a3_3, 32, 128)
            );
            gSPDisplayList(POLY_XLU_DISP++, &D_06000460);
        }
        else {
            gSPSegment(POLY_XLU_DISP++, 0x09,
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sp44_2, sp48, 32, 32, 1, sp44_2, sp48, 32, 32)
            );
            gSPSegment(POLY_XLU_DISP++, 0x0A,
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, sp44_2, temp_a3_4, 32, 128, 1, sp44_2, temp_a3_4, 32, 128)
            );
            gSPDisplayList(POLY_XLU_DISP++, &D_06000BE0);
        }
    }
    else if (thisx->params == 0) {
        gSPDisplayList(POLY_XLU_DISP++, &D_06001F68);
    }
    else {
        gSPDisplayList(POLY_XLU_DISP++, &D_060032D8);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot07_taki.c", 272);
}
