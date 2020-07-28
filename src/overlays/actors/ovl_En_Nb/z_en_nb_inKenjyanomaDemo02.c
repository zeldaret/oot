#include "z_en_nb.h"

extern AnimationHeader* D_06000410; // clasping hands together
extern UNK_PTR sEyeSegments[];
void EnNb_SetCurrentAnim(EnNb* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 arg4);

void EnNb_SetupLightArrowOrSealingCs(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetCurrentAnim(this, &D_06000410, 2, 0.0f, 0);
    this->action = NB_ACTION_7;
    this->actor.shape.unk_14 = 0;
}

void EnNb_SetSealingSFX(void) {
    func_800788CC(NA_SE_SY_WHITE_OUT_T);
}

void EnNb_InitializeDemo6K(EnNb* this, GlobalContext* globalCtx) {
    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, this->actor.posRot.pos.x,
                        kREG(21) + 22.0f + this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 7);
}

void EnNb_SetupFadeInSeal(EnNb* this, GlobalContext* globalCtx) {
    if (func_80AB1390(this, globalCtx, 4, 1)) {
        this->action = NB_SEAL_FADE;
        this->drawMode = NB_DRAW_FADE;
        this->alpha = 0;
        this->actor.shape.unk_14 = 0;
        this->unk_280 = 0.0f;
        EnNb_SetSealingSFX();
    }
}

void EnNb_CheckToFade(EnNb* this, GlobalContext* globalCtx) {
    f32* unk_280 = &this->unk_280;
    s32 alpha;

    if (func_80AB1390(this, globalCtx, 4, 1)) {
        *unk_280 += 1.0f;
        if (*unk_280 >= kREG(5) + 10.0f) {
            this->action = NB_ACTION_9;
            this->drawMode = NB_DRAW_DEFAULT;
            *unk_280 = kREG(5) + 10.0f;
            this->alpha = 255;
            this->actor.shape.unk_14 = 0xFF;
            return;
        }
    } else {
        *unk_280 -= 1.0f;
        if (*unk_280 <= 0.0f) {
            this->action = NB_ACTION_7;
            this->drawMode = NB_DRAW_NOTHING;
            *unk_280 = 0.0f;
            this->alpha = 0;
            this->actor.shape.unk_14 = 0;
            return;
        }
    }

    alpha = (*unk_280 / (kREG(5) + 10.0f)) * 255.0f;
    this->alpha = alpha;
    this->actor.shape.unk_14 = alpha;
}

void func_80AB1CBC(EnNb* this, GlobalContext* globalCtx) {
    if (func_80AB13D8(this, globalCtx, 4, 1)) {
        this->action = NB_SEAL_FADE;
        this->drawMode = NB_DRAW_FADE;
        this->unk_280 = kREG(5) + 10.0f;
        this->alpha = 255;
        if (this->unk_288 == 0) {
            EnNb_InitializeDemo6K(this, globalCtx);
            this->unk_288 = 1;
        }

        this->actor.shape.unk_14 = 0xFF;
    }
}

void func_80AB1D54(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupFadeInSeal(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void EnNb_FadeInSealCs(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_CheckToFade(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void func_80AB1DD8(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    func_80AB1CBC(this, globalCtx);
    func_80AB1210(this, globalCtx);
}

void EnNb_DrawFade(EnNb* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s16 eyeSegIdx = this->eyeIdx;
    UNK_PTR addr = sEyeSegments[eyeSegIdx];
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inKenjyanomaDemo02.c", 263);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(addr));
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(addr));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0, 0, 0, this->alpha);
    gSPSegment(gfxCtx->polyXlu.p++, 0x0C, &D_80116280[0]);

    gfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                                          NULL, NULL, NULL, gfxCtx->polyXlu.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inKenjyanomaDemo02.c", 290);
}
