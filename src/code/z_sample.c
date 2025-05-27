#include "gfx.h"
#include "gfx_setupdl.h"
#include "controller.h"
#include "regs.h"
#include "sample_state.h"
#include "segment_symbols.h"
#include "z64dma.h"
#include "z64play.h"

void Sample_HandleStateChange(SampleState* this) {
    if (CHECK_BTN_ALL(this->state.input[0].press.button, BTN_START)) {
        SET_NEXT_GAMESTATE(&this->state, Play_Init, PlayState);
        this->state.running = false;
    }
}

void Sample_Draw(SampleState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    View* view = &this->view;

    OPEN_DISPS(gfxCtx, "../z_sample.c", 62);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    gSPSegment(POLY_OPA_DISP++, 0x01, this->staticSegment);

    Gfx_SetupFrame(gfxCtx, 0, 0, 0);

    view->flags = VIEW_VIEWING | VIEW_VIEWPORT | VIEW_PROJECTION_PERSPECTIVE;
    View_Apply(view, VIEW_ALL);

    {
        Mtx* mtx = GRAPH_ALLOC(gfxCtx, sizeof(Mtx));

        guPosition(mtx, SREG(37), SREG(38), SREG(39), 1.0f, SREG(40), SREG(41), SREG(42));
        gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    }

    POLY_OPA_DISP = Gfx_SetFog2(POLY_OPA_DISP, 255, 255, 255, 0, 0, 0);
    Gfx_SetupDL_25Opa(gfxCtx);

    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_1CYCLE);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 0, 0);

    CLOSE_DISPS(gfxCtx, "../z_sample.c", 111);
}

void Sample_Main(GameState* thisx) {
    SampleState* this = (SampleState*)thisx;

    Sample_Draw(this);
    Sample_HandleStateChange(this);
}

void Sample_Destroy(GameState* thisx) {
}

void Sample_SetupView(SampleState* this) {
    View* view = &this->view;
    GraphicsContext* gfxCtx = this->state.gfxCtx;

    View_Init(view, gfxCtx);
    SET_FULLSCREEN_VIEWPORT(view);
    View_SetPerspective(view, 60.0f, 10.0f, 12800.0f);

    {
        Vec3f eye;
        Vec3f lookAt;
        Vec3f up;

        eye.x = 0.0f;
        eye.y = 0.0f;
        eye.z = 3000.0f;
        lookAt.x = 0.0f;
        lookAt.y = 0.0f;
        lookAt.z = 0.0f;
        up.x = 0.0f;
        up.z = 0.0f;
        up.y = 1.0f;

        View_LookAt(view, &eye, &lookAt, &up);
    }
}

void Sample_LoadTitleStatic(SampleState* this) {
    u32 size = _title_staticSegmentRomEnd - _title_staticSegmentRomStart;

    this->staticSegment = GAME_STATE_ALLOC(&this->state, size, "../z_sample.c", 163);
    DMA_REQUEST_SYNC(this->staticSegment, (uintptr_t)_title_staticSegmentRomStart, size, "../z_sample.c", 164);
}

void Sample_Init(GameState* thisx) {
    SampleState* this = (SampleState*)thisx;

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
