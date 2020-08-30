#include <ultra64.h>
#include <global.h>

void func_80026230(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 113);

    displayListHead = oGfxCtx->polyOpa.p;
    cos = Math_Coss((0x8000 / arg3) * arg2);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 255, 0, 0, 0);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    oGfxCtx->polyOpa.p = displayListHead;

    if (1) {} // Necessary to match

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 129);
}

void func_80026400(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    Gfx* displayListHead;
    f32 cos;

    if (arg3 != 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 141);

        cos = Math_Coss((0x4000 / arg3) * arg2);
        displayListHead = oGfxCtx->polyOpa.p;

        gDPPipeSync(displayListHead++);
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
        gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

        oGfxCtx->polyOpa.p = displayListHead;

        if (1) {} // Necessary to match

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 153);
    }
}

void func_80026608(GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 159);

    gDPPipeSync(oGfxCtx->polyOpa.p++);
    oGfxCtx->polyOpa.p = func_800BC8A0(globalCtx, oGfxCtx->polyOpa.p);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 164);
}

void func_80026690(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 178);

    displayListHead = oGfxCtx->polyXlu.p;
    cos = Math_Coss((0x8000 / arg3) * arg2);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 255, 0, 0, 0);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    oGfxCtx->polyXlu.p = displayListHead;

    if (1) {} // Necessary to match

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 194);
}

void func_80026860(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 cos;
    Gfx* displayListHead;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 201);

    displayListHead = oGfxCtx->polyXlu.p;
    cos = Math_Coss((0x4000 / arg3) * arg2);

    gDPPipeSync(displayListHead++);
    gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

    oGfxCtx->polyXlu.p = displayListHead;

    if (1) {} // Necessary to match

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 212);
}

void func_80026A6C(GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 217);

    gDPPipeSync(oGfxCtx->polyXlu.p++);
    oGfxCtx->polyXlu.p = func_800BC8A0(globalCtx, oGfxCtx->polyXlu.p);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 222);
}
