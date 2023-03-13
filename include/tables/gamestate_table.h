/**
 * Gamestate Table
 *
 * DEFINE_GAMESTATE should be used for gamestates with code loaded from an overlay
 *    - Argument 1: Gamestate type name (without State suffix)
 *    - Argument 2: Gamestate name (should match spec segment for overlays)
 *
 * DEFINE_GAMESTATE_INTERNAL should be used for gamestates that aren't an overlay, the first argument is the same as for DEFINE_GAMESTATE
 */
/* 0x0000 */ DEFINE_GAMESTATE_INTERNAL(Setup)
/* 0x0001 */ DEFINE_GAMESTATE(MapSelect, select)
/* 0x0002 */ DEFINE_GAMESTATE(ConsoleLogo, title)
/* 0x0003 */ DEFINE_GAMESTATE_INTERNAL(Play)
/* 0x0004 */ DEFINE_GAMESTATE(TitleSetup, opening)
/* 0x0005 */ DEFINE_GAMESTATE(FileSelect, file_choose)
