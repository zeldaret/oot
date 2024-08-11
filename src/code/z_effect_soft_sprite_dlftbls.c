#include "global.h"

// Linker symbol declarations (used in the table below)
#define DEFINE_EFFECT_SS(name, _1) DECLARE_OVERLAY_SEGMENT(name)
#define DEFINE_EFFECT_SS_UNSET(_0)

#include "tables/effect_ss_table.h"

#undef DEFINE_EFFECT_SS
#undef DEFINE_EFFECT_SS_UNSET

// Profile declarations (also used in the table below)
#define DEFINE_EFFECT_SS(name, _1) extern EffectSsProfile name##_Profile;
#define DEFINE_EFFECT_SS_UNSET(_0)

#include "tables/effect_ss_table.h"

#undef DEFINE_EFFECT_SS
#undef DEFINE_EFFECT_SS_UNSET

// Effect SS Overlay Table definition
#define DEFINE_EFFECT_SS(name, _1)                                                                          \
    {                                                                                                       \
        ROM_FILE(ovl_##name), _ovl_##name##SegmentStart, _ovl_##name##SegmentEnd, NULL, &name##_Profile, 1, \
    },

#define DEFINE_EFFECT_SS_UNSET(_0)                 \
    {                                              \
        ROM_FILE_UNSET, NULL, NULL, NULL, NULL, 0, \
    },

EffectSsOverlay gEffectSsOverlayTable[] = {
#include "tables/effect_ss_table.h"
};

#undef DEFINE_EFFECT_SS
#undef DEFINE_EFFECT_SS_UNSET
