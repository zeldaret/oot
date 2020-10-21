#include "global.h"

void Sample_HandleStateChange(SampleContext* this) {
    if (CHECK_BTN_ALL(this->state.input[0].press.button, BTN_START)) {
        SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext);
        this->state.running = false;
    }
}

void Sample_Draw(SampleContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    View* view = &this->view;

    OPEN_DISPS(gfxCtx, "../z_sample.c", 62);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x00, NULL);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x01, this->staticSegment);

    func_80095248(gfxCtx, 0, 0, 0);

    view->flags = 1 | 2 | 4;
    func_800AAA50(view, 15);

    {
        Mtx* mtx = Graph_Alloc(gfxCtx, sizeof(Mtx));
        guPosition(mtx, SREG(37), SREG(38), SREG(39), 1.0f, SREG(40), SREG(41), SREG(42));
        gSPMatrix(oGfxCtx->polyOpa.p++, mtx, G_MTX_LOAD);
    }

    oGfxCtx->polyOpa.p = Gfx_SetFog2(oGfxCtx->polyOpa.p, 0xFF, 0xFF, 0xFF, 0, 0, 0);
    func_80093D18(gfxCtx);

    gDPSetCycleType(oGfxCtx->polyOpa.p++, G_CYC_1CYCLE);
    gDPSetRenderMode(oGfxCtx->polyOpa.p++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDPSetCombineMode(oGfxCtx->polyOpa.p++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 255, 255, 0, 0);

    CLOSE_DISPS(gfxCtx, "../z_sample.c", 111);
}

void Sample_Main(GameState* thisx) {
    SampleContext* this = (SampleContext*)thisx;

    Sample_Draw(this);
    Sample_HandleStateChange(this);
}

void Sample_Destroy(GameState* thisx) {
}

void Sample_SetupView(SampleContext* this) {
    View* view;
    GraphicsContext* gfxCtx;

    view = &this->view;
    gfxCtx = this->state.gfxCtx;

    View_Init(view, gfxCtx);
    SET_FULLSCREEN_VIEWPORT(view);
    func_800AA460(view, 60, 10, 12800);

    {
        Vec3f v1;
        Vec3f v2;
        Vec3f v3;

        v1.x = 0;
        v1.y = 0;
        v2.x = 0;
        v2.y = 0;
        v2.z = 0;
        v3.x = 0;
        v3.z = 0;
        v1.z = 3000;
        v3.y = 1;

        func_800AA358(view, &v1, &v2, &v3);
    }
}

void Sample_LoadTitleStatic(SampleContext* this) {
    u32 size = _title_staticSegmentRomEnd - _title_staticSegmentRomStart;

    this->staticSegment = GameState_Alloc(&this->state, size, "../z_sample.c", 163);
    DmaMgr_SendRequest1(this->staticSegment, _title_staticSegmentRomStart, size, "../z_sample.c", 164);
}

void Sample_Init(GameState* thisx) {
    SampleContext* this = (SampleContext*)thisx;

    this->state.main = Sample_Main;
    this->state.destroy = Sample_Destroy;
    R_UPDATE_RATE = 1;
    Sample_SetupView(this);
    Sample_LoadTitleStatic(this);
    SREG(37) = 0;
    SREG(38) = 0;
    SREG(39) = 0;
    SREG(40) = 0;
    SREG(41) = 0;
    SREG(42) = 0;
}
