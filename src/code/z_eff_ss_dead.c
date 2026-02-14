#include "gfx.h"
#include "z_lib.h"
#include "play_state.h"

/**
 * @file z_eff_ss_dead.c
 * @brief Implementation of "Color Filter" effects.
 *
 * Despite the filename suggesting "Effect Soft Sprite Dead", this file handles
 * the "Color Filter" system, which uses global fog to apply full-screen or
 * object-specific color overlays (flashing red when hit, pulsing, etc.).
 *
 * It works by manipulating the RDP Fog State. The fog "near" and "far" planes
 * are brought very close to the camera to wash out the scene with the fog color.
 */

/**
 * Applies a pulsing fog effect (Color Filter).
 * Used by traps and some enemies to create a recurring flash or material effect.
 *
 * @param play PlayState context.
 * @param color The fog color to apply. If NULL, a red color is used.
 * @param timer Current timer value (counts down or up depending on caller).
 * @param duration Total duration of the effect period.
 */
void EffectFog_SetPulse(PlayState* play, Color_RGBA8* color, s16 timer, s16 duration) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 113);

    displayListHead = POLY_OPA_DISP;

    // As timer moves, angle covers 0 to 180 degrees.
    // cos goes 1 -> -1. absCos goes 1 -> 0 -> 1.
    // Fog max depth results in: 4500 (Clear) -> 1500 (Dense) -> 4500 (Clear).
    cos = Math_CosS((BINANG_ROT_180 / duration) * timer);
    absCos = ABS(cos);

    gDPPipeSync(displayListHead++);

    if (color == NULL) {
        gDPSetFogColor(displayListHead++, 255, 0, 0, 0);
    } else {
        gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    }

    // Set fog start/end. 0 is min (near plane?), 2nd arg is max (far plane?).
    // A smaller max value means fog reaches full density closer to the camera.
    // 4500: Fog is loose (light tint).
    // 1500: Fog is tight (heavy tint).
    gSPFogPosition(displayListHead++, 0, (s16)(absCos * 3000.0f) + 1500);

    POLY_OPA_DISP = displayListHead;

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 129);
}

/**
 * Applies a single flash fog effect (Color Filter).
 * Typically used when an actor takes damage (flashes red/blue/white).
 *
 * @param play PlayState context.
 * @param color The fog color.
 * @param timer Remaining time for the flash (counts down).
 * @param duration Total duration of the flash.
 */
void EffectFog_SetFlash(PlayState* play, Color_RGBA8* color, s16 timer, s16 duration) {
    Gfx* displayListHead;
    f32 cos;

#if PLATFORM_GC
    if (duration == 0) {
        return;
    }
#endif

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 141);

    // At timer=duration (start): angle=90, cos=0, FogPos=1700 (Dense).
    // At timer=0 (end): angle=0, cos=1, FogPos=4500 (Clear).
    cos = Math_CosS((BINANG_ROT_90 / duration) * timer);
    displayListHead = POLY_OPA_DISP;

    gDPPipeSync(displayListHead++);
    gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

    POLY_OPA_DISP = displayListHead;

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 153);
}

/**
 * Resets the fog state for the OPA (Opaque) display list.
 * This should be called after applying a Color Filter effect to ensure
 * subsequent rendering uses the correct global fog settings.
 *
 * @param play PlayState context.
 */
void EffectFog_Reset(PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 159);

    gDPPipeSync(POLY_OPA_DISP++);
    POLY_OPA_DISP = Play_SetFog(play, POLY_OPA_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 164);
}

/**
 * Applies a pulsing fog effect (Color Filter) to the XLU (Translucent) display list.
 * Similar to EffectFog_SetPulse, but affects translucent geometry.
 *
 * @param play PlayState context.
 * @param color The fog color to apply. If NULL, a red color is used.
 * @param timer Current timer value.
 * @param duration Total duration of the effect period.
 */
void EffectFog_SetPulseXlu(PlayState* play, Color_RGBA8* color, s16 timer, s16 duration) {
    f32 cos;
    Gfx* displayListHead;
    f32 absCos;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 178);

    displayListHead = POLY_XLU_DISP;
    cos = Math_CosS((BINANG_ROT_180 / duration) * timer);
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
 * Applies a single flash fog effect (Color Filter) to the XLU (Translucent) display list.
 * Similar to EffectFog_SetFlash, but affects translucent geometry.
 *
 * @param play PlayState context.
 * @param color The fog color.
 * @param timer Remaining time for the flash.
 * @param duration Total duration of the flash.
 */
void EffectFog_SetFlashXlu(PlayState* play, Color_RGBA8* color, s16 timer, s16 duration) {
    f32 cos;
    Gfx* displayListHead;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 201);

    displayListHead = POLY_XLU_DISP;

    // See EffectFog_SetFlash for details.
    cos = Math_CosS((BINANG_ROT_90 / duration) * timer);

    gDPPipeSync(displayListHead++);
    gDPSetFogColor(displayListHead++, color->r, color->g, color->b, color->a);
    gSPFogPosition(displayListHead++, 0, (s16)(2800.0f * ABS(cos)) + 1700);

    POLY_XLU_DISP = displayListHead;

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 212);
}

/**
 * Resets the fog state for the XLU (Translucent) display list.
 * This should be called after applying a Color Filter effect to XLU geometry.
 *
 * @param play PlayState context.
 */
void EffectFog_ResetXlu(PlayState* play) {
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 217);

    gDPPipeSync(POLY_XLU_DISP++);
    POLY_XLU_DISP = Play_SetFog(play, POLY_XLU_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_eff_ss_dead.c", 222);
}
