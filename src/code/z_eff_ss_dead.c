#include <ultra64.h>
#include <global.h>

void func_80026230(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 113);

    displayListHead = gfxCtx->polyOpa.p;
    cos = Math_Coss((0x8000 / arg3) * arg2);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 0xFF, 0x00, 0x00, 0x00);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    gfxCtx->polyOpa.p = displayListHead;

    if (1) {} // Necessary to match

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 129);
}

void func_80026400(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    Gfx* displayListHead;
    f32 cos;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    if (arg3 != 0) {
        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 141);

        cos = Math_Coss((0x4000 / arg3) * arg2);
        displayListHead = gfxCtx->polyOpa.p;

        gDPPipeSync(displayListHead++);
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
        gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

        gfxCtx->polyOpa.p = displayListHead;

        if (1) {} // Necessary to match

        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 153);
    }
}

void func_80026608(GlobalContext* globalCtx) {
    s32 pad;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 159);

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gfxCtx->polyOpa.p = func_800BC8A0(globalCtx, gfxCtx->polyOpa.p);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 164);
}

void func_80026690(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 178);

    displayListHead = gfxCtx->polyXlu.p;
    cos = Math_Coss((0x8000 / arg3) * arg2);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 0xFF, 0x00, 0x00, 0x00);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    gfxCtx->polyXlu.p = displayListHead;

    if (1) {} // Necessary to match

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 194);
}

void func_80026860(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 cos;
    Gfx* displayListHead;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 201);

    displayListHead = gfxCtx->polyXlu.p;
    cos = Math_Coss((0x4000 / arg3) * arg2);

    gDPPipeSync(displayListHead++);
    gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

    gfxCtx->polyXlu.p = displayListHead;

    if (1) {} // Necessary to match

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 212);
}

void func_80026A6C(GlobalContext* globalCtx) {
    s32 pad;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 217);

    gDPPipeSync(gfxCtx->polyXlu.p++);
    gfxCtx->polyXlu.p = func_800BC8A0(globalCtx, gfxCtx->polyXlu.p);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 222);
}
