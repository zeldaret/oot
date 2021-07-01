#include "global.h"

void func_80026230(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 113);

    displayListHead = POLY_OPA_DISP;
    cos = Math_CosS((0x8000 / arg3) * arg2);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 255, 0, 0, 0);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    POLY_OPA_DISP = displayListHead;

    if (1) {} // Necessary to match

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 129);
}

void EffectSsDead_SetCloseFogColorOpa(GlobalContext* globalCtx, Color_RGBA8* color, s16 timeLeft, s16 timeTotal) {
    Gfx* displayListHead;
    f32 cos;

    if (timeTotal != 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 141);

        cos = Math_CosS((0x4000 / timeTotal) * timeLeft);
        displayListHead = POLY_OPA_DISP;

        gDPPipeSync(displayListHead++);
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
        gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

        POLY_OPA_DISP = displayListHead;

        if (1) {} // Necessary to match

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 153);
    }
}

void func_80026608(GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 159);

    gDPPipeSync(POLY_OPA_DISP++);
    POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 164);
}

void func_80026690(GlobalContext* globalCtx, Color_RGBA8* color, s16 arg2, s16 arg3) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 178);

    displayListHead = POLY_XLU_DISP;
    cos = Math_CosS((0x8000 / arg3) * arg2);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 255, 0, 0, 0);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    POLY_XLU_DISP = displayListHead;

    if (1) {} // Necessary to match

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 194);
}

void EffectSsDead_SetCloseFogColorXlu(GlobalContext* globalCtx, Color_RGBA8* color, s16 timeLeft, s16 timeTotal) {
    f32 cos;
    Gfx* displayListHead;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 201);

    displayListHead = POLY_XLU_DISP;
    cos = Math_CosS((0x4000 / timeTotal) * timeLeft);

    gDPPipeSync(displayListHead++);
    gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

    POLY_XLU_DISP = displayListHead;

    if (1) {} // Necessary to match

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 212);
}

void func_80026A6C(GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 217);

    gDPPipeSync(POLY_XLU_DISP++);
    POLY_XLU_DISP = func_800BC8A0(globalCtx, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_eff_ss_dead.c", 222);
}
