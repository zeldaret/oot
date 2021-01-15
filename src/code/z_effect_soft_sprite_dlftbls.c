#include "global.h"
#include "initvars.h"

#define EFFECT_SS_OVERLAY(name)                                                                         \
    {                                                                                                   \
        (u32) _ovl_##name##SegmentRomStart, (u32)_ovl_##name##SegmentRomEnd, _ovl_##name##SegmentStart, \
            _ovl_##name##SegmentEnd, NULL, &name##_InitVars, 1,                                         \
    }

#define EFFECT_SS_OVERLAY_INTERNAL(name) \
    { 0, 0, NULL, NULL, NULL, &name##_InitVars, 1 }

#define EFFECT_SS_OVERLAY_UNSET \
    { 0 }

EffectSsOverlay gEffectSsOverlayTable[] = {
    EFFECT_SS_OVERLAY(Effect_Ss_Dust),
    EFFECT_SS_OVERLAY(Effect_Ss_KiraKira),
    EFFECT_SS_OVERLAY(Effect_Ss_Bomb),
    EFFECT_SS_OVERLAY(Effect_Ss_Bomb2),
    EFFECT_SS_OVERLAY(Effect_Ss_Blast),
    EFFECT_SS_OVERLAY(Effect_Ss_G_Spk),
    EFFECT_SS_OVERLAY(Effect_Ss_D_Fire),
    EFFECT_SS_OVERLAY(Effect_Ss_Bubble),
    EFFECT_SS_OVERLAY_UNSET,
    EFFECT_SS_OVERLAY(Effect_Ss_G_Ripple),
    EFFECT_SS_OVERLAY(Effect_Ss_G_Splash),
    EFFECT_SS_OVERLAY(Effect_Ss_G_Magma),
    EFFECT_SS_OVERLAY(Effect_Ss_G_Fire),
    EFFECT_SS_OVERLAY(Effect_Ss_Lightning),
    EFFECT_SS_OVERLAY(Effect_Ss_Dt_Bubble),
    EFFECT_SS_OVERLAY(Effect_Ss_Hahen),
    EFFECT_SS_OVERLAY(Effect_Ss_Stick),
    EFFECT_SS_OVERLAY(Effect_Ss_Sibuki),
    EFFECT_SS_OVERLAY(Effect_Ss_Sibuki2),
    EFFECT_SS_OVERLAY(Effect_Ss_G_Magma2),
    EFFECT_SS_OVERLAY(Effect_Ss_Stone1),
    EFFECT_SS_OVERLAY(Effect_Ss_HitMark),
    EFFECT_SS_OVERLAY(Effect_Ss_Fhg_Flash),
    EFFECT_SS_OVERLAY(Effect_Ss_K_Fire),
    EFFECT_SS_OVERLAY(Effect_Ss_Solder_Srch_Ball),
    EFFECT_SS_OVERLAY(Effect_Ss_Kakera),
    EFFECT_SS_OVERLAY(Effect_Ss_Ice_Piece),
    EFFECT_SS_OVERLAY(Effect_Ss_En_Ice),
    EFFECT_SS_OVERLAY(Effect_Ss_Fire_Tail),
    EFFECT_SS_OVERLAY(Effect_Ss_En_Fire),
    EFFECT_SS_OVERLAY(Effect_Ss_Extra),
    EFFECT_SS_OVERLAY(Effect_Ss_Fcircle),
    EFFECT_SS_OVERLAY(Effect_Ss_Dead_Db),
    EFFECT_SS_OVERLAY(Effect_Ss_Dead_Dd),
    EFFECT_SS_OVERLAY(Effect_Ss_Dead_Ds),
    EFFECT_SS_OVERLAY(Effect_Ss_Dead_Sound),
    EFFECT_SS_OVERLAY(Effect_Ss_Ice_Smoke),
};
