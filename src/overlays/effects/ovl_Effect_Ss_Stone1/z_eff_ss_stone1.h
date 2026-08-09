#ifndef Z_EFF_SS_STONE1_H
#define Z_EFF_SS_STONE1_H

#include "ultra64.h"
#include "z_math.h"

typedef struct EffectSsStone1InitParams {
    /* 0x00 */ Vec3f pos;

    /**
     * If this is non-zero, then on the 2nd frame after being spawned,
     * the effect will set R_TRANS_FADE_FLASH_ALPHA_STEP to 0,
     * which results in the flash simply freezing as it is after 2 frames -
     * that is, the screen stays as bright as it is after 2 frames of a flash
     * (basically stuck with an opaque layer of white),
     * until R_TRANS_FADE_FLASH_ALPHA_STEP is set again or the play state is reentered
     * (e.g. on entrance transitions).
     *
     * All current users of EffectSsStone1InitParams set this to 0.
     *
     * Given that:
     * - the only use of R_TRANS_FADE_FLASH_ALPHA_STEP (outside of the transition system itself) is made by deku nuts
     * - deku nuts and seeds are the only thing that spawn this effect
     *
     * It could be that this parameter was used at some point in development in relation to deku nuts.
     */
    /* 0x0C */ s32 freezeFadeFlash;
} EffectSsStone1InitParams; // size = 0x10

#endif
