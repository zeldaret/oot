#include <ultra64.h>
#include <global.h>
#include <PR/os_cont.h>

void Sample_Calc(SampleContext* this) {
    if (!~(this->state.input[0].padPressed | ~START_BUTTON)) {
        SET_NEXT_GAMESTATE(&this->state, func_800BCA64, GlobalContext);
        this->state.running = false;
    }
}

// very close from matching, the only difference is the place of "mtx" in the stack
#ifdef NON_MATCHING
void Sample_Draw(SampleContext* this) {
    u32 pad;
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    View* view = &this->view;
    Gfx* gfxArr[4];
    Mtx* mtx;

    func_800C6AC4(gfxArr, gfxCtx, "../z_sample.c", 62);

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, NULL);
    gSPSegment(gfxCtx->polyOpa.p++, 0x01, this->staticSegment);

    func_80095248(gfxCtx, 0, 0, 0);

    view->unk_120 = 7;
    func_800AAA50(view, 15);

    mtx = Graph_Alloc(gfxCtx, sizeof(Mtx));
    func_80103D58(mtx, SREG(37), SREG(38), SREG(39), 1.0f, SREG(40), SREG(41), SREG(42));
    gSPMatrix(gfxCtx->polyOpa.p++, mtx, G_MTX_LOAD);

    gfxCtx->polyOpa.p = func_80093708(gfxCtx->polyOpa.p, 0xFF, 0xFF, 0xFF, 0, 0, 0);
    func_80093D18(gfxCtx);

    gDPSetCycleType(gfxCtx->polyOpa.p++, G_CYC_1CYCLE);
    gDPSetRenderMode(gfxCtx->polyOpa.p++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0,
                      PRIMITIVE);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0x00, 0x00);

    func_800C6B54(gfxArr, gfxCtx, "../z_sample.c", 111);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_sample/Sample_Draw.s")
#endif

void Sample_Update(SampleContext* this) {
    Sample_Draw(this);
    Sample_Calc(this);
}

void Sample_Destroy(SampleContext* this) {
}

void Sample_SetupView(SampleContext* this) {
    View* view;
    GraphicsContext* gfxCtx;
    u32 v0[4];
    Vec3f v1;
    Vec3f v2;
    Vec3f v3;

    view = &this->view;
    gfxCtx = this->state.gfxCtx;
    func_800AA278(view, gfxCtx);

    // clang-format off
    v0[1] = SCREEN_HEIGHT; v0[3] = SCREEN_WIDTH; 
    v0[0] = 0; v0[2] = 0;
    // clang-format on

    func_800AA4FC(view, &v0);
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
    this->state.main = Sample_Update;
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
