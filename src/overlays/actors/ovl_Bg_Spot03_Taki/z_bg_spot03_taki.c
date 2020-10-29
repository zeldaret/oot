/*
 * File: z_bg_spot03_taki.c
 * Overlay: ovl_Bg_Spot03_Taki
 * Description: Zora's River Waterfall
 */

#include "z_bg_spot03_taki.h"

#define FLAGS 0x00000030

#define THIS ((BgSpot03Taki*)thisx)

void BgSpot03Taki_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot03Taki_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808ADEF0(BgSpot03Taki* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot03_Taki_InitVars = {
    ACTOR_BG_SPOT03_TAKI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT03_OBJECT,
    sizeof(BgSpot03Taki),
    (ActorFunc)BgSpot03Taki_Init,
    (ActorFunc)BgSpot03Taki_Destroy,
    (ActorFunc)BgSpot03Taki_Update,
    (ActorFunc)BgSpot03Taki_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_06000C98;

// These are identical vertex data for the waterfall.
extern Vtx* D_06000800[]; // Vertex buffer 0
extern Vtx* D_06000990[]; // Vertex buffer 1

extern Gfx* D_06000B20[];
extern Gfx* D_06000BC0[];
extern Gfx* D_06001580[];

void BgSpot03Taki_ApplyOpeningAlpha(BgSpot03Taki* this, s32 bufferIndex) {
    s32 i;
    Vtx* vtx = (bufferIndex == 0) ? SEGMENTED_TO_VIRTUAL(D_06000800) : SEGMENTED_TO_VIRTUAL(D_06000990);

    for (i = 0; i < 5; i++) {
        vtx[i + 10].v.cn[3] = this->openingAlpha;
    }
}

void BgSpot03Taki_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot03Taki* this = THIS;
    s16 pad;
    s32 sp24 = 0;

    this->switchFlag = (this->dyna.actor.params & 0x3F);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06000C98, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->bufferIndex = 0;
    this->openingAlpha = 255.0f;
    BgSpot03Taki_ApplyOpeningAlpha(this, 0);
    BgSpot03Taki_ApplyOpeningAlpha(this, 1);
    this->actionFunc = func_808ADEF0;
}

void BgSpot03Taki_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot03Taki* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_808ADEF0(BgSpot03Taki* this, GlobalContext* globalCtx) {
    if (this->state == WATERFALL_CLOSED) {
        if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
            this->state = WATERFALL_OPENING_ANIMATED;
            this->timer = 40;
            func_800800F8(globalCtx, 0x1004, -0x63, NULL, 0);
        }
    } else if (this->state == WATERFALL_OPENING_IDLE) {
        this->timer--;
        if (this->timer < 0) {
            this->state = WATERFALL_OPENING_ANIMATED;
        }
    } else if (this->state == WATERFALL_OPENING_ANIMATED) {
        if (this->openingAlpha > 0) {
            this->openingAlpha -= 5;
            if (this->openingAlpha <= 0.0f) {
                func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->timer = 400;
                this->state = WATERFALL_OPENED;
                this->openingAlpha = 0;
            }
        }
    } else if (this->state == WATERFALL_OPENED) {
        this->timer--;
        if (this->timer < 0) {
            this->state = WATERFALL_CLOSING;
        }
    } else if (this->state == WATERFALL_CLOSING) {
        if (this->openingAlpha < 255.0f) {
            this->openingAlpha += 5.0f;
            if (this->openingAlpha >= 255.0f) {
                func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->state = WATERFALL_CLOSED;
                this->openingAlpha = 255.0f;
                Flags_UnsetSwitch(globalCtx, this->switchFlag);
            }
        }
    }

    BgSpot03Taki_ApplyOpeningAlpha(this, this->bufferIndex);
}

void BgSpot03Taki_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot03Taki* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgSpot03Taki_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot03Taki* this = THIS;
    s32 pad;
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot03_taki.c", 321);

    gameplayFrames = globalCtx->gameplayFrames;

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot03_taki.c", 325),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(
        POLY_XLU_DISP++, 0x08,
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, gameplayFrames * 5, 64, 64, 1, 0, gameplayFrames * 5, 64, 64));

    gSPDisplayList(POLY_XLU_DISP++, D_06000B20);

    if (this->bufferIndex == 0) {
        gSPVertex(POLY_XLU_DISP++, D_06000800, 25, 0);
    } else {
        gSPVertex(POLY_XLU_DISP++, D_06000990, 25, 0);
    }

    gSPDisplayList(POLY_XLU_DISP++, D_06000BC0);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, gameplayFrames * 3, 64, 64, 1,
                                -gameplayFrames, gameplayFrames * 3, 64, 64));

    gSPDisplayList(POLY_XLU_DISP++, D_06001580);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot03_taki.c", 358);

    this->bufferIndex = this->bufferIndex == 0;

    if (this->state > WATERFALL_CLOSED && this->state < WATERFALL_CLOSING) {
        func_800F46E0(&this->dyna.actor.projectedPos, 0.5f);
    } else {
        func_800F46E0(&this->dyna.actor.projectedPos, 1.0f);
    }
}
