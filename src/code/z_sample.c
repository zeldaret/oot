#include <ultra64.h>
#include <global.h>
#include <PR/os_cont.h>

void Sample_HandleStateChange(SampleContext* this) {
    if (!~(this->state.input[0].press.in.button | ~START_BUTTON)) {
        SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext);
        this->state.running = false;
    }
}

void Sample_Draw(SampleContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    View* view = &this->view;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_sample.c", 62);

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, NULL);
    gSPSegment(gfxCtx->polyOpa.p++, 0x01, this->staticSegment);

    func_80095248(gfxCtx, 0, 0, 0);

    view->flags = 1 | 2 | 4;
    func_800AAA50(view, 15);

    if (1) {
        Mtx* mtx = Graph_Alloc(gfxCtx, sizeof(Mtx));
        guPosition(mtx, SREG(37), SREG(38), SREG(39), 1.0f, SREG(40), SREG(41), SREG(42));
        gSPMatrix(gfxCtx->polyOpa.p++, mtx, G_MTX_LOAD);
    }

    gfxCtx->polyOpa.p = Gfx_SetFog2(gfxCtx->polyOpa.p, 0xFF, 0xFF, 0xFF, 0, 0, 0);
    func_80093D18(gfxCtx);

    gDPSetCycleType(gfxCtx->polyOpa.p++, G_CYC_1CYCLE);
    gDPSetRenderMode(gfxCtx->polyOpa.p++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0x00, 0x00);

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_sample.c", 111);
}

void Sample_Main(SampleContext* this) {
    Sample_Draw(this);
    Sample_HandleStateChange(this);
}

void Sample_Destroy(SampleContext* this) {
}

void Sample_SetupView(SampleContext* this) {
    View* view;
    GraphicsContext* gfxCtx;
    Viewport viewport;
    Vec3f v1;
    Vec3f v2;
    Vec3f v3;

    view = &this->view;
    gfxCtx = this->state.gfxCtx;
    View_Init(view, gfxCtx);

    // clang-format off
    viewport.bottomY = SCREEN_HEIGHT; viewport.rightX = SCREEN_WIDTH; 
    viewport.topY = 0; viewport.leftX = 0;
    // clang-format on

    View_SetViewport(view, &viewport);
    func_800AA460(view, 60, 10, 12800);

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

void Sample_LoadTitleStatic(SampleContext* this) {
    u32 size = _title_staticSegmentRomEnd - _title_staticSegmentRomStart;

    this->staticSegment = Game_Alloc(&this->state, size, "../z_sample.c", 163);
    DmaMgr_SendRequest1(this->staticSegment, _title_staticSegmentRomStart, size, "../z_sample.c", 164);
}

void Sample_Init(SampleContext* this) {
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
