#include <global.h>

#define GAMESTATE_OVERLAY(name, init, destroy, size)                                                         \
    {                                                                                                        \
        NULL, (u32)_ovl_##name##SegmentRomStart, (u32)_ovl_##name##SegmentRomEnd, _ovl_##name##SegmentStart, \
            _ovl_##name##SegmentEnd, 0, init, destroy, 0, 0, 0, size                                         \
    }
#define GAMESTATE_OVERLAY_INTERNAL(init, destroy, size) \
    { NULL, 0, 0, NULL, NULL, 0, init, destroy, 0, 0, 0, size }

GameStateOverlay gGameStateOverlayTable[] = {
    GAMESTATE_OVERLAY_INTERNAL(TitleSetup_Init, TitleSetup_Destroy, sizeof(GameState)),
    GAMESTATE_OVERLAY(select, func_80801E44, func_80801E0C, 0x240), // TODO : sizeof(SelectContext)
    GAMESTATE_OVERLAY(title, Title_Init, Title_Destroy, sizeof(TitleContext)),
    GAMESTATE_OVERLAY_INTERNAL(func_800BCA64, func_800BC8EC, sizeof(GlobalContext)),
    GAMESTATE_OVERLAY(opening, Opening_Init, Opening_Destroy, sizeof(OpeningContext)),
    GAMESTATE_OVERLAY(file_choose, func_80811A20, func_80811A18, 0x1CAE0),
};
