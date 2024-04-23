#include "global.h"

// Linker symbol declarations (used in the table below)
#define DEFINE_GAMESTATE(typeName, enumName, name) DECLARE_OVERLAY_SEGMENT(name)
#define DEFINE_GAMESTATE_INTERNAL(typeName, enumName)

#include "tables/gamestate_table.h"

#undef DEFINE_GAMESTATE
#undef DEFINE_GAMESTATE_INTERNAL

// Gamestate Overlay Table definition
#define DEFINE_GAMESTATE_INTERNAL(typeName, enumName)                                                     \
    {                                                                                                     \
        NULL, ROM_FILE_UNSET,          NULL, NULL, NULL, typeName##_Init, typeName##_Destroy, NULL, NULL, \
        0,    sizeof(typeName##State),                                                                    \
    },

#define DEFINE_GAMESTATE(typeName, enumName, name) \
    {                                              \
        NULL,                                      \
        ROM_FILE(ovl_##name),                      \
        _ovl_##name##SegmentStart,                 \
        _ovl_##name##SegmentEnd,                   \
        NULL,                                      \
        typeName##_Init,                           \
        typeName##_Destroy,                        \
        NULL,                                      \
        NULL,                                      \
        0,                                         \
        sizeof(typeName##State),                   \
    },

GameStateOverlay gGameStateOverlayTable[] = {
#include "tables/gamestate_table.h"
};

#undef DEFINE_GAMESTATE
#undef DEFINE_GAMESTATE_INTERNAL
