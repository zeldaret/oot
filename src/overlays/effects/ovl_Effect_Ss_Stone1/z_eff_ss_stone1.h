#ifndef Z_EFF_SS_STONE1_H
#define Z_EFF_SS_STONE1_H

#include "ultra64.h"
#include "z_math.h"

typedef struct EffectSsStone1InitParams {
    /* 0x00 */ Vec3f pos;

    /**
     * If this is non-zero, then on the 2nd frame after being spawned,
     * the effect will suppress any flash effect from R_TRANS_FADE_FLASH_ALPHA_STEP.
     * All current users of EffectSsStone1InitParams set this to 0.
     *
     * Given that:
     * - the only use of R_TRANS_FADE_FLASH_ALPHA_STEP is made by arrows, when they're deku nut "arrows"
     * - arrows are the only thing that spawn this effect
     * It might be that this parameter was used at some point in development in relation to deku nuts or arrows.
     */
    /* 0x0C */ s32 shortenFadeFlash;
} EffectSsStone1InitParams; // size = 0x10

#endif
