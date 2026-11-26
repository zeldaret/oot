/**
 * @file z_eff_ss_dead.c
 *
 * This file defines functions that override the environment fog settings to apply a "color filter" to individual
 * actors.
 */
#include "effect.h"
#include "gfx.h"
#include "stack_pad.h"
#include "z_lib.h"
#include "play_state.h"

/**
 * Generates fog display list commands to apply a "color filter" effect on an actor to be drawn to POLY_OPA_DISP.
 * Uses the abs(cos(x)) curve to manipulate fog distance, over the range 0 to 180 degrees, allowing for looping.
 * @param play
 * @param color the fog color to apply. If NULL, red will be used as a default.
 * @param step the curve sample point (mapped across 0 to stepRange) which controls the fog distance. This changes the
 * strength of the "color filter", where a value of `stepRange`/2 is weakest and the extremes of 0 and `stepRange` are
 * strongest.
 * @param stepRange the range of values that can be applied.
 */
void EffSsDead_ApplyColorFilterOpa1(PlayState* play, Color_RGBA8* color, s16 step, s16 stepRange) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 113);

    displayListHead = POLY_OPA_DISP;
    cos = Math_CosS((0x8000 / stepRange) * step);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 255, 0, 0, 0);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    POLY_OPA_DISP = displayListHead;

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 129);
}

/**
 * Generates fog display list commands to apply a "color filter" effect on an actor to be drawn to POLY_OPA_DISP.
 * Uses the abs(cos(x)) curve to manipulate fog distance, over the range 0 to 90 degrees.
 * @param play
 * @param color the fog color to apply.
 * @param step the curve sample point (mapped across 0 to stepRange) which controls the fog distance. This changes the
 * strength of the "color filter", where a value of `stepRange` is weakest and strengthens as you approach 0.
 * @param stepRange the range of values that can be applied.
 */
void EffSsDead_ApplyColorFilterOpa2(PlayState* play, Color_RGBA8* color, s16 step, s16 stepRange) {
    Gfx* displayListHead;
    f32 cos;

#if PLATFORM_GC
    // Bugfix to avoid a division by zero error
    if (stepRange == 0) {
        return;
    }
#endif

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 141);

    cos = Math_CosS((0x4000 / stepRange) * step);
    displayListHead = POLY_OPA_DISP;

    gDPPipeSync(displayListHead++);
    gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

    POLY_OPA_DISP = displayListHead;

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 153);
}

/**
 * Restores the fog settings back to the current environment settings on POLY_OPA_DISP
 * @param play
 */
void EffSsDead_RestoreEnvironmentFogOpa(PlayState* play) {
    STACK_PAD(s32);

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 159);

    gDPPipeSync(POLY_OPA_DISP++);
    POLY_OPA_DISP = Play_SetFog(play, POLY_OPA_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 164);
}

/**
 * Generates fog display list commands to apply a "color filter" effect on an actor to be drawn to POLY_XLU_DISP.
 * Uses the abs(cos(x)) curve to manipulate fog distance, over the range 0 to 180 degrees, allowing for looping.
 * @param play
 * @param color the fog color to apply. If NULL, red will be used as a default.
 * @param step the curve sample point (mapped across 0 to stepRange) which controls the fog distance. This changes the
 * strength of the "color filter", where a value of `stepRange`/2 is weakest and the extremes of 0 or `stepRange` are
 * strongest.
 * @param stepRange the range of values that can be applied.
 */
void EffSsDead_ApplyColorFilterXlu1(PlayState* play, Color_RGBA8* color, s16 step, s16 stepRange) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 178);

    displayListHead = POLY_XLU_DISP;
    cos = Math_CosS((0x8000 / stepRange) * step);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 255, 0, 0, 0);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    POLY_XLU_DISP = displayListHead;

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 194);
}

/**
 * Generates fog display list commands to apply a "color filter" effect on an actor to be drawn to POLY_XLU_DISP.
 * Uses the abs(cos(x)) curve to manipulate fog distance, over the range 0 to 90 degrees.
 * @param play
 * @param color the fog color to apply.
 * @param step the curve sample point (mapped across 0 to stepRange) which controls the fog distance. This changes the
 * strength of the "color filter", where a value of `stepRange` is weakest and strengthens as you approach 0.
 * @param stepRange the range of values that can be applied.
 */
void EffSsDead_ApplyColorFilterXlu2(PlayState* play, Color_RGBA8* color, s16 step, s16 stepRange) {
    f32 cos;
    Gfx* displayListHead;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 201);

    displayListHead = POLY_XLU_DISP;
    cos = Math_CosS((0x4000 / stepRange) * step);

    gDPPipeSync(displayListHead++);
    gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

    POLY_XLU_DISP = displayListHead;

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 212);
}

/**
 * Restores the fog settings back to the current environment settings on POLY_XLU_DISP
 * @param play
 */
void EffSsDead_RestoreEnvironmentFogXlu(PlayState* play) {
    STACK_PAD(s32);

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 217);

    gDPPipeSync(POLY_XLU_DISP++);
    POLY_XLU_DISP = Play_SetFog(play, POLY_XLU_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 222);
}
