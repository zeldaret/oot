#if PLATFORM_N64
#include "n64dd.h"
#endif
#include "z_kaleido_scope.h"
#include "assets/textures/icon_item_static/icon_item_static.h"
#include "assets/textures/icon_item_24_static/icon_item_24_static.h"
#if OOT_NTSC
#include "assets/textures/icon_item_jpn_static/icon_item_jpn_static.h"
#include "assets/textures/icon_item_nes_static/icon_item_nes_static.h"
#else
#include "assets/textures/icon_item_nes_static/icon_item_nes_static.h"
#include "assets/textures/icon_item_ger_static/icon_item_ger_static.h"
#include "assets/textures/icon_item_fra_static/icon_item_fra_static.h"
#endif
#include "assets/textures/icon_item_gameover_static/icon_item_gameover_static.h"
#include "terminal.h"
#include "versions.h"

#pragma increment_block_number "gc-eu:128 gc-eu-mq:128 ntsc-1.0:128 ntsc-1.1:128 ntsc-1.2:128 pal-1.0:128 pal-1.1:128"

#if !PLATFORM_GC
#define KALEIDO_PROMPT_CURSOR_R 100
#define KALEIDO_PROMPT_CURSOR_G 100
#define KALEIDO_PROMPT_CURSOR_B 255
#else
#define KALEIDO_PROMPT_CURSOR_R 100
#define KALEIDO_PROMPT_CURSOR_G 255
#define KALEIDO_PROMPT_CURSOR_B 100
#endif

#if !PLATFORM_GC
#define KALEIDO_COLOR_CURSOR_UNK_R 0
#define KALEIDO_COLOR_CURSOR_UNK_G 50
#define KALEIDO_COLOR_CURSOR_UNK_B 255
#else
#define KALEIDO_COLOR_CURSOR_UNK_R 0
#define KALEIDO_COLOR_CURSOR_UNK_G 255
#define KALEIDO_COLOR_CURSOR_UNK_B 50
#endif

typedef enum {
    /* 0 */ VTX_PAGE_ITEM,
    /* 1 */ VTX_PAGE_EQUIP,
    /* 2 */ VTX_PAGE_MAP_DUNGEON,
    /* 3 */ VTX_PAGE_QUEST,
    /* 4 */ VTX_PAGE_MAP_WORLD,
    /* 5 */ VTX_PAGE_PROMPT
} VtxPageInit;

#define VTX_PAGE_ITEM_QUADS 0                 // VTX_PAGE_ITEM
#define VTX_PAGE_EQUIP_QUADS 0                // VTX_PAGE_EQUIP
#define VTX_PAGE_MAP_DUNGEON_QUADS 17         // VTX_PAGE_MAP_DUNGEON
#define VTX_PAGE_QUEST_QUADS 0                // VTX_PAGE_QUEST
#define VTX_PAGE_MAP_WORLD_QUADS 32           // VTX_PAGE_MAP_WORLD
#define VTX_PAGE_PROMPT_QUADS PROMPT_QUAD_MAX // VTX_PAGE_PROMPT

#if OOT_NTSC

// Japanese

static void* sEquipPageBgQuadsJPNTexs[] = {
    // column 1
    gPauseEquipment00Tex,
    gPauseEquipment01Tex,
    gPauseEquipment02Tex,
    gPauseEquipment03Tex,
    gPauseEquipment04Tex,
    // column 2
    gPauseEquipment10JPNTex,
    gPauseEquipment11Tex,
    gPauseEquipment12Tex,
    gPauseEquipment13Tex,
    gPauseEquipment14Tex,
    // column 3
    gPauseEquipment20Tex,
    gPauseEquipment21Tex,
    gPauseEquipment22Tex,
    gPauseEquipment23Tex,
    gPauseEquipment24Tex,
};

static void* sItemPageBgQuadsJPNTexs[] = {
    // column 1
    gPauseSelectItem00JPNTex,
    gPauseSelectItem01Tex,
    gPauseSelectItem02Tex,
    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,
    // column 2
    gPauseSelectItem10JPNTex,
    gPauseSelectItem11Tex,
    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,
    gPauseSelectItem14Tex,
    // column 3
    gPauseSelectItem20JPNTex,
    gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,
    gPauseSelectItem23Tex,
    gPauseSelectItem24Tex,
};

static void* sMapPageBgQuadsJPNTexs[] = {
    // column 1
    gPauseMap00Tex,
    gPauseMap01Tex,
    gPauseMap02Tex,
    gPauseMap03Tex,
    gPauseMap04Tex,
    // column 2
    gPauseMap10JPNTex,
    gPauseMap11Tex,
    gPauseMap12Tex,
    gPauseMap13Tex,
    gPauseMap14Tex,
    // column 3
    gPauseMap20Tex,
    gPauseMap21Tex,
    gPauseMap22Tex,
    gPauseMap23Tex,
    gPauseMap24Tex,
};

static void* sQuestPageBgQuadsJPNTexs[] = {
    // column 1
    gPauseQuestStatus00JPNTex,
    gPauseQuestStatus01Tex,
    gPauseQuestStatus02Tex,
    gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex,
    // column 2
    gPauseQuestStatus10JPNTex,
    gPauseQuestStatus11Tex,
    gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex,
    gPauseQuestStatus14Tex,
    // column 3
    gPauseQuestStatus20JPNTex,
    gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex,
    gPauseQuestStatus23Tex,
    gPauseQuestStatus24Tex,
};

static void* sSavePromptBgQuadsJPNTexs[] = {
    // column 1
    gPauseSave00Tex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseSave10JPNTex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20Tex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

#else

// French

static void* sEquipPageBgQuadsFRATexs[] = {
    // column 1
    gPauseEquipment00FRATex,
    gPauseEquipment01Tex,
    gPauseEquipment02Tex,
    gPauseEquipment03Tex,
    gPauseEquipment04Tex,
    // column 2
    gPauseEquipment10FRATex,
    gPauseEquipment11Tex,
    gPauseEquipment12Tex,
    gPauseEquipment13Tex,
    gPauseEquipment14Tex,
    // column 3
    gPauseEquipment20FRATex,
    gPauseEquipment21Tex,
    gPauseEquipment22Tex,
    gPauseEquipment23Tex,
    gPauseEquipment24Tex,
};

static void* sItemPageBgQuadsFRATexs[] = {
    // column 1
    gPauseSelectItem00FRATex,
    gPauseSelectItem01Tex,
    gPauseSelectItem02Tex,
    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,
    // column 2
    gPauseSelectItem10FRATex,
    gPauseSelectItem11Tex,
    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,
    gPauseSelectItem14Tex,
    // column 3
    gPauseSelectItem20FRATex,
    gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,
    gPauseSelectItem23Tex,
    gPauseSelectItem24Tex,
};

static void* sMapPageBgQuadsFRATexs[] = {
    // column 1
    gPauseMap00Tex,
    gPauseMap01Tex,
    gPauseMap02Tex,
    gPauseMap03Tex,
    gPauseMap04Tex,
    // column 2
    gPauseMap10FRATex,
    gPauseMap11Tex,
    gPauseMap12Tex,
    gPauseMap13Tex,
    gPauseMap14Tex,
    // column 3
    gPauseMap20Tex,
    gPauseMap21Tex,
    gPauseMap22Tex,
    gPauseMap23Tex,
    gPauseMap24Tex,
};

static void* sQuestPageBgQuadsFRATexs[] = {
    // column 1
    gPauseQuestStatus00Tex,
    gPauseQuestStatus01Tex,
    gPauseQuestStatus02Tex,
    gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex,
    // column 2
    gPauseQuestStatus10FRATex,
    gPauseQuestStatus11Tex,
    gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex,
    gPauseQuestStatus14Tex,
    // column 3
    gPauseQuestStatus20Tex,
    gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex,
    gPauseQuestStatus23Tex,
    gPauseQuestStatus24Tex,
};

static void* sSavePromptBgQuadsFRATexs[] = {
    // column 1
    gPauseSave00FRATex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseSave10FRATex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20FRATex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

// German

static void* sEquipPageBgQuadsGERTexs[] = {
    // column 1
    gPauseEquipment00GERTex,
    gPauseEquipment01Tex,
    gPauseEquipment02Tex,
    gPauseEquipment03Tex,
    gPauseEquipment04Tex,
    // column 2
    gPauseEquipment10GERTex,
    gPauseEquipment11Tex,
    gPauseEquipment12Tex,
    gPauseEquipment13Tex,
    gPauseEquipment14Tex,
    // column 3
    gPauseEquipment20GERTex,
    gPauseEquipment21Tex,
    gPauseEquipment22Tex,
    gPauseEquipment23Tex,
    gPauseEquipment24Tex,
};

static void* sItemPageBgQuadsGERTexs[] = {
    // column 1
    gPauseSelectItem00GERTex,
    gPauseSelectItem01Tex,
    gPauseSelectItem02Tex,
    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,
    // column 2
    gPauseSelectItem10GERTex,
    gPauseSelectItem11Tex,
    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,
    gPauseSelectItem14Tex,
    // column 3
    gPauseSelectItem20GERTex,
    gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,
    gPauseSelectItem23Tex,
    gPauseSelectItem24Tex,
};

static void* sMapPageBgQuadsGERTexs[] = {
    // column 1
    gPauseMap00Tex,
    gPauseMap01Tex,
    gPauseMap02Tex,
    gPauseMap03Tex,
    gPauseMap04Tex,
    // column 2
    gPauseMap10GERTex,
    gPauseMap11Tex,
    gPauseMap12Tex,
    gPauseMap13Tex,
    gPauseMap14Tex,
    // column 3
    gPauseMap20Tex,
    gPauseMap21Tex,
    gPauseMap22Tex,
    gPauseMap23Tex,
    gPauseMap24Tex,
};

static void* sQuestPageBgQuadsGERTexs[] = {
    // column 1
    gPauseQuestStatus00Tex,
    gPauseQuestStatus01Tex,
    gPauseQuestStatus02Tex,
    gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex,
    // column 2
    gPauseQuestStatus10GERTex,
    gPauseQuestStatus11Tex,
    gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex,
    gPauseQuestStatus14Tex,
    // column 3
    gPauseQuestStatus20Tex,
    gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex,
    gPauseQuestStatus23Tex,
    gPauseQuestStatus24Tex,
};

static void* sSavePromptBgQuadsGERTexs[] = {
    // column 1
    gPauseSave00Tex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseSave10GERTex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20GERTex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

#endif

// English

static void* sEquipPageBgQuadsENGTexs[] = {
    // column 1
    gPauseEquipment00Tex,
    gPauseEquipment01Tex,
    gPauseEquipment02Tex,
    gPauseEquipment03Tex,
    gPauseEquipment04Tex,
    // column 2
    gPauseEquipment10ENGTex,
    gPauseEquipment11Tex,
    gPauseEquipment12Tex,
    gPauseEquipment13Tex,
    gPauseEquipment14Tex,
    // column 3
    gPauseEquipment20Tex,
    gPauseEquipment21Tex,
    gPauseEquipment22Tex,
    gPauseEquipment23Tex,
    gPauseEquipment24Tex,
};

static void* sItemPageBgQuadsENGTexs[] = {
    // column 1
    gPauseSelectItem00ENGTex,
    gPauseSelectItem01Tex,
    gPauseSelectItem02Tex,
    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,
    // column 2
    gPauseSelectItem10ENGTex,
    gPauseSelectItem11Tex,
    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,
    gPauseSelectItem14Tex,
    // column 3
    gPauseSelectItem20ENGTex,
    gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,
    gPauseSelectItem23Tex,
    gPauseSelectItem24Tex,
};

static void* sMapPageBgQuadsENGTexs[] = {
    // column 1
    gPauseMap00Tex,
    gPauseMap01Tex,
    gPauseMap02Tex,
    gPauseMap03Tex,
    gPauseMap04Tex,
    // column 2
    gPauseMap10ENGTex,
    gPauseMap11Tex,
    gPauseMap12Tex,
    gPauseMap13Tex,
    gPauseMap14Tex,
    // column 3
    gPauseMap20Tex,
    gPauseMap21Tex,
    gPauseMap22Tex,
    gPauseMap23Tex,
    gPauseMap24Tex,
};

static void* sQuestPageBgQuadsENGTexs[] = {
    // column 1
    gPauseQuestStatus00ENGTex,
    gPauseQuestStatus01Tex,
    gPauseQuestStatus02Tex,
    gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex,
    // column 2
    gPauseQuestStatus10ENGTex,
    gPauseQuestStatus11Tex,
    gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex,
    gPauseQuestStatus14Tex,
    // column 3
    gPauseQuestStatus20ENGTex,
    gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex,
    gPauseQuestStatus23Tex,
    gPauseQuestStatus24Tex,
};

static void* sSavePromptBgQuadsENGTexs[] = {
    // column 1
    gPauseSave00Tex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseSave10ENGTex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20Tex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

static void* sGameOverTexs[] = {
    // column 1
    gPauseSave00Tex,
    gPauseSave01Tex,
    gPauseSave02Tex,
    gPauseSave03Tex,
    gPauseSave04Tex,
    // column 2
    gPauseGameOver10Tex,
    gPauseSave11Tex,
    gPauseSave12Tex,
    gPauseSave13Tex,
    gPauseSave14Tex,
    // column 3
    gPauseSave20Tex,
    gPauseSave21Tex,
    gPauseSave22Tex,
    gPauseSave23Tex,
    gPauseSave24Tex,
};

#if OOT_NTSC
#define EQUIPMENT_TEXS(language) ((language) != LANGUAGE_JPN ? sEquipPageBgQuadsENGTexs : sEquipPageBgQuadsJPNTexs)
#define SELECT_ITEM_TEXS(language) ((language) != LANGUAGE_JPN ? sItemPageBgQuadsENGTexs : sItemPageBgQuadsJPNTexs)
#define MAP_TEXS(language) ((language) != LANGUAGE_JPN ? sMapPageBgQuadsENGTexs : sMapPageBgQuadsJPNTexs)
#define QUEST_STATUS_TEXS(language) ((language) != LANGUAGE_JPN ? sQuestPageBgQuadsENGTexs : sQuestPageBgQuadsJPNTexs)
#define SAVE_TEXS(language) ((language) != LANGUAGE_JPN ? sSavePromptBgQuadsENGTexs : sSavePromptBgQuadsJPNTexs)
#else
static void* sEquipPageBgQuadsTexs[] = {
    sEquipPageBgQuadsENGTexs,
    sEquipPageBgQuadsGERTexs,
    sEquipPageBgQuadsFRATexs,
};

static void* sItemPageBgQuadsTexs[] = {
    sItemPageBgQuadsENGTexs,
    sItemPageBgQuadsGERTexs,
    sItemPageBgQuadsFRATexs,
};

static void* sMapPageBgQuadsTexs[] = {
    sMapPageBgQuadsENGTexs,
    sMapPageBgQuadsGERTexs,
    sMapPageBgQuadsFRATexs,
};

static void* sQuestPageBgQuadsTexs[] = {
    sQuestPageBgQuadsENGTexs,
    sQuestPageBgQuadsGERTexs,
    sQuestPageBgQuadsFRATexs,
};

static void* sSavePromptBgQuadsTexs[] = {
    sSavePromptBgQuadsENGTexs,
    sSavePromptBgQuadsGERTexs,
    sSavePromptBgQuadsFRATexs,
};

#define EQUIPMENT_TEXS(language) (sEquipPageBgQuadsTexs[(language)])
#define SELECT_ITEM_TEXS(language) (sItemPageBgQuadsTexs[(language)])
#define MAP_TEXS(language) (sMapPageBgQuadsTexs[(language)])
#define QUEST_STATUS_TEXS(language) (sQuestPageBgQuadsTexs[(language)])
#define SAVE_TEXS(language) (sSavePromptBgQuadsTexs[(language)])
#endif

s16 gVtxPageMapWorldQuadsWidth[VTX_PAGE_MAP_WORLD_QUADS] = {
    32,  // WORLD_MAP_QUAD_CLOUDS_SACRED_FOREST_MEADOW
    112, // WORLD_MAP_QUAD_CLOUDS_HYRULE_FIELD
    32,  // WORLD_MAP_QUAD_CLOUDS_LON_LON_RANCH
    48,  // WORLD_MAP_QUAD_CLOUDS_MARKET
    32,  // WORLD_MAP_QUAD_CLOUDS_HYRULE_CASTLE
    32,  // WORLD_MAP_QUAD_CLOUDS_KAKARIKO_VILLAGE
    32,  // WORLD_MAP_QUAD_CLOUDS_GRAVEYARD
    48,  // WORLD_MAP_QUAD_CLOUDS_DEATH_MOUNTAIN_TRAIL
    32,  // WORLD_MAP_QUAD_CLOUDS_GORON_CITY
    64,  // WORLD_MAP_QUAD_CLOUDS_ZORAS_RIVER
    32,  // WORLD_MAP_QUAD_CLOUDS_ZORAS_DOMAIN
    48,  // WORLD_MAP_QUAD_CLOUDS_ZORAS_FOUNTAIN
    48,  // WORLD_MAP_QUAD_CLOUDS_GERUDO_VALLEY
    48,  // WORLD_MAP_QUAD_CLOUDS_GERUDOS_FORTRESS
    48,  // WORLD_MAP_QUAD_CLOUDS_DESERT_COLOSSUS
    64,  // WORLD_MAP_QUAD_CLOUDS_LAKE_HYLIA
    8,   // WORLD_MAP_POINT_HAUNTED_WASTELAND
    8,   // WORLD_MAP_POINT_GERUDOS_FORTRESS
    8,   // WORLD_MAP_POINT_GERUDO_VALLEY
    8,   // WORLD_MAP_POINT_LAKE_HYLIA
    8,   // WORLD_MAP_POINT_LON_LON_RANCH
    8,   // WORLD_MAP_POINT_MARKET
    8,   // WORLD_MAP_POINT_HYRULE_FIELD
    8,   // WORLD_MAP_POINT_DEATH_MOUNTAIN
    8,   // WORLD_MAP_POINT_KAKARIKO_VILLAGE
    8,   // WORLD_MAP_POINT_LOST_WOODS
    8,   // WORLD_MAP_POINT_KOKIRI_FOREST
    8,   // WORLD_MAP_POINT_ZORAS_DOMAIN
    8,   // WORLD_MAP_QUAD_28
    8,   // WORLD_MAP_QUAD_TRADE_QUEST_MARKER
    80,  // WORLD_MAP_QUAD_30
    64,  // WORLD_MAP_QUAD_31
};

s16 gVtxPageMapWorldQuadsHeight[VTX_PAGE_MAP_WORLD_QUADS] = {
    24, // WORLD_MAP_QUAD_CLOUDS_SACRED_FOREST_MEADOW
    72, // WORLD_MAP_QUAD_CLOUDS_HYRULE_FIELD
    13, // WORLD_MAP_QUAD_CLOUDS_LON_LON_RANCH
    22, // WORLD_MAP_QUAD_CLOUDS_MARKET
    19, // WORLD_MAP_QUAD_CLOUDS_HYRULE_CASTLE
    20, // WORLD_MAP_QUAD_CLOUDS_KAKARIKO_VILLAGE
    19, // WORLD_MAP_QUAD_CLOUDS_GRAVEYARD
    27, // WORLD_MAP_QUAD_CLOUDS_DEATH_MOUNTAIN_TRAIL
    14, // WORLD_MAP_QUAD_CLOUDS_GORON_CITY
    26, // WORLD_MAP_QUAD_CLOUDS_ZORAS_RIVER
    22, // WORLD_MAP_QUAD_CLOUDS_ZORAS_DOMAIN
    21, // WORLD_MAP_QUAD_CLOUDS_ZORAS_FOUNTAIN
    49, // WORLD_MAP_QUAD_CLOUDS_GERUDO_VALLEY
    32, // WORLD_MAP_QUAD_CLOUDS_GERUDOS_FORTRESS
    45, // WORLD_MAP_QUAD_CLOUDS_DESERT_COLOSSUS
    60, // WORLD_MAP_QUAD_CLOUDS_LAKE_HYLIA
    8,  // WORLD_MAP_POINT_HAUNTED_WASTELAND
    8,  // WORLD_MAP_POINT_GERUDOS_FORTRESS
    8,  // WORLD_MAP_POINT_GERUDO_VALLEY
    8,  // WORLD_MAP_POINT_LAKE_HYLIA
    8,  // WORLD_MAP_POINT_LON_LON_RANCH
    8,  // WORLD_MAP_POINT_MARKET
    8,  // WORLD_MAP_POINT_HYRULE_FIELD
    8,  // WORLD_MAP_POINT_DEATH_MOUNTAIN
    8,  // WORLD_MAP_POINT_KAKARIKO_VILLAGE
    8,  // WORLD_MAP_POINT_LOST_WOODS
    8,  // WORLD_MAP_POINT_KOKIRI_FOREST
    8,  // WORLD_MAP_POINT_ZORAS_DOMAIN
    8,  // WORLD_MAP_QUAD_28
    16, // WORLD_MAP_QUAD_TRADE_QUEST_MARKER
    32, // WORLD_MAP_QUAD_30
    8,  // WORLD_MAP_QUAD_31
};

/**
 * Contains the status of buttons for each page.
 *
 * Indexed by `pageIndex + pt` values,
 * where pageIndex is from the `PauseMenuPage` enum
 * and pt is 0 or 2 (respectively `PAGE_SWITCH_PT_LEFT` and `PAGE_SWITCH_PT_RIGHT`).
 *
 * `PauseMenuPage` enum values are ordered clockwise, starting at PAUSE_ITEM. That means adding 1 to a page index
 * produces (modulo 4) the index of the page to the right, and similar with subtracting 1 for the left page.
 * The indexing of this array relies on this property, but without modulo operations. Instead, the data for the first
 * and last pages (PAUSE_ITEM, PAUSE_EQUIP) is duplicated.
 *
 * For example when scrolling left from the quest page PAUSE_QUEST (so, to PAUSE_MAP),
 * the index is `PAUSE_QUEST + PAGE_SWITCH_PT_LEFT` and the data is button status for the map page.
 */
static u8 gPageSwitchNextButtonStatus[][5] = {
    // PAUSE_ITEM  + PAGE_SWITCH_PT_LEFT
    //
    //  -> PAUSE_EQUIP
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },
    // PAUSE_MAP   + PAGE_SWITCH_PT_LEFT
    //
    //  -> PAUSE_ITEM
    { BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_DISABLED },
    // PAUSE_QUEST + PAGE_SWITCH_PT_LEFT
    // PAUSE_ITEM  + PAGE_SWITCH_PT_RIGHT
    //  -> PAUSE_MAP
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED },
    // PAUSE_EQUIP + PAGE_SWITCH_PT_LEFT
    // PAUSE_MAP   + PAGE_SWITCH_PT_RIGHT
    //  -> PAUSE_QUEST
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },
    //
    // PAUSE_QUEST + PAGE_SWITCH_PT_RIGHT
    //  -> PAUSE_EQUIP
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },
    //
    // PAUSE_EQUIP + PAGE_SWITCH_PT_RIGHT
    //  -> PAUSE_ITEM
    { BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_DISABLED },
};

static s16 D_8082AB8C = 0;
static s16 D_8082AB90 = 0;
static s16 D_8082AB94 = 0;
static s16 D_8082AB98 = 255;

static s16 D_8082AB9C = 255;
static s16 D_8082ABA0 = 0;
static s16 D_8082ABA4 = 0;

static s16 sInDungeonScene = false;

/*
 * The following three `sPageSwitch*` arrays are indexed by nextPageMode values,
 * which encode the page to switch from and the scroll direction.
 *
 * sPageSwitchEyeDx/Dz describe how to move the camera eye so that the pages appear scrolling and the next active page
 * is switched into view.
 *
 * sPageSwitchNextPageIndex contains the page a nextPageMode leads to once scrolling is done.
 */

#define PAGE_SWITCH_NSTEPS 16

static f32 sPageSwitchEyeDx[] = {
    -PAUSE_EYE_DIST * (PAUSE_MAP_X - PAUSE_ITEM_X) / PAGE_SWITCH_NSTEPS,  // PAUSE_ITEM  right
    -PAUSE_EYE_DIST*(PAUSE_EQUIP_X - PAUSE_ITEM_X) / PAGE_SWITCH_NSTEPS,  // PAUSE_ITEM  left
    -PAUSE_EYE_DIST*(PAUSE_QUEST_X - PAUSE_MAP_X) / PAGE_SWITCH_NSTEPS,   // PAUSE_MAP   right
    -PAUSE_EYE_DIST*(PAUSE_ITEM_X - PAUSE_MAP_X) / PAGE_SWITCH_NSTEPS,    // PAUSE_MAP   left
    -PAUSE_EYE_DIST*(PAUSE_EQUIP_X - PAUSE_QUEST_X) / PAGE_SWITCH_NSTEPS, // PAUSE_QUEST right
    -PAUSE_EYE_DIST*(PAUSE_MAP_X - PAUSE_QUEST_X) / PAGE_SWITCH_NSTEPS,   // PAUSE_QUEST left
    -PAUSE_EYE_DIST*(PAUSE_ITEM_X - PAUSE_EQUIP_X) / PAGE_SWITCH_NSTEPS,  // PAUSE_EQUIP right
    -PAUSE_EYE_DIST*(PAUSE_QUEST_X - PAUSE_EQUIP_X) / PAGE_SWITCH_NSTEPS, // PAUSE_EQUIP left
};

static f32 sPageSwitchEyeDz[] = {
    -PAUSE_EYE_DIST * (PAUSE_MAP_Z - PAUSE_ITEM_Z) / PAGE_SWITCH_NSTEPS,  // PAUSE_ITEM  right
    -PAUSE_EYE_DIST*(PAUSE_EQUIP_Z - PAUSE_ITEM_Z) / PAGE_SWITCH_NSTEPS,  // PAUSE_ITEM  left
    -PAUSE_EYE_DIST*(PAUSE_QUEST_Z - PAUSE_MAP_Z) / PAGE_SWITCH_NSTEPS,   // PAUSE_MAP   right
    -PAUSE_EYE_DIST*(PAUSE_ITEM_Z - PAUSE_MAP_Z) / PAGE_SWITCH_NSTEPS,    // PAUSE_MAP   left
    -PAUSE_EYE_DIST*(PAUSE_EQUIP_Z - PAUSE_QUEST_Z) / PAGE_SWITCH_NSTEPS, // PAUSE_QUEST right
    -PAUSE_EYE_DIST*(PAUSE_MAP_Z - PAUSE_QUEST_Z) / PAGE_SWITCH_NSTEPS,   // PAUSE_QUEST left
    -PAUSE_EYE_DIST*(PAUSE_ITEM_Z - PAUSE_EQUIP_Z) / PAGE_SWITCH_NSTEPS,  // PAUSE_EQUIP right
    -PAUSE_EYE_DIST*(PAUSE_QUEST_Z - PAUSE_EQUIP_Z) / PAGE_SWITCH_NSTEPS, // PAUSE_EQUIP left
};

static u16 sPageSwitchNextPageIndex[] = {
    PAUSE_MAP,   // PAUSE_ITEM  right
    PAUSE_EQUIP, // PAUSE_ITEM  left
    PAUSE_QUEST, // PAUSE_MAP   right
    PAUSE_ITEM,  // PAUSE_MAP   left
    PAUSE_EQUIP, // PAUSE_QUEST right
    PAUSE_MAP,   // PAUSE_QUEST left
    PAUSE_ITEM,  // PAUSE_EQUIP right
    PAUSE_QUEST, // PAUSE_EQUIP left
};

char gSlotAgeReqs[] = {
    AGE_REQ_CHILD, // SLOT_DEKU_STICK
    AGE_REQ_NONE,  // SLOT_DEKU_NUT
    AGE_REQ_NONE,  // SLOT_BOMB
    AGE_REQ_ADULT, // SLOT_BOW
    AGE_REQ_ADULT, // SLOT_ARROW_FIRE
    AGE_REQ_NONE,  // SLOT_DINS_FIRE
    AGE_REQ_CHILD, // SLOT_SLINGSHOT
    AGE_REQ_NONE,  // SLOT_OCARINA
    AGE_REQ_NONE,  // SLOT_BOMBCHU
    AGE_REQ_ADULT, // SLOT_HOOKSHOT
    AGE_REQ_ADULT, // SLOT_ARROW_ICE
    AGE_REQ_NONE,  // SLOT_FARORES_WIND
    AGE_REQ_CHILD, // SLOT_BOOMERANG
    AGE_REQ_NONE,  // SLOT_LENS_OF_TRUTH
    AGE_REQ_CHILD, // SLOT_MAGIC_BEAN
    AGE_REQ_ADULT, // SLOT_HAMMER
    AGE_REQ_ADULT, // SLOT_ARROW_LIGHT
    AGE_REQ_NONE,  // SLOT_NAYRUS_LOVE
    AGE_REQ_NONE,  // SLOT_BOTTLE_1
    AGE_REQ_NONE,  // SLOT_BOTTLE_2
    AGE_REQ_NONE,  // SLOT_BOTTLE_3
    AGE_REQ_NONE,  // SLOT_BOTTLE_4
    AGE_REQ_ADULT, // SLOT_TRADE_ADULT
    AGE_REQ_CHILD, // SLOT_TRADE_CHILD
};

char gEquipAgeReqs[4][4] = {
    {
        AGE_REQ_ADULT, // 0 UPG_QUIVER
        AGE_REQ_CHILD, // EQUIP_TYPE_SWORD EQUIP_VALUE_SWORD_KOKIRI
        AGE_REQ_ADULT, // EQUIP_TYPE_SWORD EQUIP_VALUE_SWORD_MASTER
        AGE_REQ_ADULT, // EQUIP_TYPE_SWORD EQUIP_VALUE_SWORD_BIGGORON
    },
    {
        AGE_REQ_NONE,  // 0 UPG_BOMB_BAG
        AGE_REQ_CHILD, // EQUIP_TYPE_SHIELD EQUIP_VALUE_SHIELD_DEKU
        AGE_REQ_NONE,  // EQUIP_TYPE_SHIELD EQUIP_VALUE_SHIELD_HYLIAN
        AGE_REQ_ADULT, // EQUIP_TYPE_SHIELD EQUIP_VALUE_SHIELD_MIRROR
    },
    {
        AGE_REQ_ADULT, // 0 UPG_STRENGTH
        AGE_REQ_NONE,  // EQUIP_TYPE_TUNIC EQUIP_VALUE_TUNIC_KOKIRI
        AGE_REQ_ADULT, // EQUIP_TYPE_TUNIC EQUIP_VALUE_TUNIC_GORON
        AGE_REQ_ADULT, // EQUIP_TYPE_TUNIC EQUIP_VALUE_TUNIC_ZORA
    },
    {
        AGE_REQ_NONE,  // 0 UPG_SCALE
        AGE_REQ_NONE,  // EQUIP_TYPE_BOOTS EQUIP_VALUE_BOOTS_KOKIRI
        AGE_REQ_ADULT, // EQUIP_TYPE_BOOTS EQUIP_VALUE_BOOTS_IRON
        AGE_REQ_ADULT, // EQUIP_TYPE_BOOTS EQUIP_VALUE_BOOTS_HOVER
    },
};

char gItemAgeReqs[] = {
    AGE_REQ_CHILD, // ITEM_DEKU_STICK
    AGE_REQ_NONE,  // ITEM_DEKU_NUT
    AGE_REQ_NONE,  // ITEM_BOMB
    AGE_REQ_ADULT, // ITEM_BOW
    AGE_REQ_ADULT, // ITEM_ARROW_FIRE
    AGE_REQ_NONE,  // ITEM_DINS_FIRE
    AGE_REQ_CHILD, // ITEM_SLINGSHOT
    AGE_REQ_NONE,  // ITEM_OCARINA_FAIRY
    AGE_REQ_NONE,  // ITEM_OCARINA_OF_TIME
    AGE_REQ_NONE,  // ITEM_BOMBCHU
    AGE_REQ_ADULT, // ITEM_HOOKSHOT
    AGE_REQ_ADULT, // ITEM_LONGSHOT
    AGE_REQ_ADULT, // ITEM_ARROW_ICE
    AGE_REQ_NONE,  // ITEM_FARORES_WIND
    AGE_REQ_CHILD, // ITEM_BOOMERANG
    AGE_REQ_NONE,  // ITEM_LENS_OF_TRUTH
    AGE_REQ_CHILD, // ITEM_MAGIC_BEAN
    AGE_REQ_ADULT, // ITEM_HAMMER
    AGE_REQ_ADULT, // ITEM_ARROW_LIGHT
    AGE_REQ_NONE,  // ITEM_NAYRUS_LOVE
    AGE_REQ_NONE,  // ITEM_BOTTLE_EMPTY
    AGE_REQ_NONE,  // ITEM_BOTTLE_POTION_RED
    AGE_REQ_NONE,  // ITEM_BOTTLE_POTION_GREEN
    AGE_REQ_NONE,  // ITEM_BOTTLE_POTION_BLUE
    AGE_REQ_NONE,  // ITEM_BOTTLE_FAIRY
    AGE_REQ_NONE,  // ITEM_BOTTLE_FISH
    AGE_REQ_NONE,  // ITEM_BOTTLE_MILK_FULL
    AGE_REQ_NONE,  // ITEM_BOTTLE_RUTOS_LETTER
    AGE_REQ_NONE,  // ITEM_BOTTLE_BLUE_FIRE
    AGE_REQ_NONE,  // ITEM_BOTTLE_BUG
    AGE_REQ_NONE,  // ITEM_BOTTLE_BIG_POE
    AGE_REQ_NONE,  // ITEM_BOTTLE_MILK_HALF
    AGE_REQ_NONE,  // ITEM_BOTTLE_POE
    AGE_REQ_CHILD, // ITEM_WEIRD_EGG
    AGE_REQ_CHILD, // ITEM_CHICKEN
    AGE_REQ_CHILD, // ITEM_ZELDAS_LETTER
    AGE_REQ_CHILD, // ITEM_MASK_KEATON
    AGE_REQ_CHILD, // ITEM_MASK_SKULL
    AGE_REQ_CHILD, // ITEM_MASK_SPOOKY
    AGE_REQ_CHILD, // ITEM_MASK_BUNNY_HOOD
    AGE_REQ_CHILD, // ITEM_MASK_GORON
    AGE_REQ_CHILD, // ITEM_MASK_ZORA
    AGE_REQ_CHILD, // ITEM_MASK_GERUDO
    AGE_REQ_CHILD, // ITEM_MASK_TRUTH
    AGE_REQ_CHILD, // ITEM_SOLD_OUT
    AGE_REQ_ADULT, // ITEM_POCKET_EGG
    AGE_REQ_ADULT, // ITEM_POCKET_CUCCO
    AGE_REQ_ADULT, // ITEM_COJIRO
    AGE_REQ_ADULT, // ITEM_ODD_MUSHROOM
    AGE_REQ_ADULT, // ITEM_ODD_POTION
    AGE_REQ_ADULT, // ITEM_POACHERS_SAW
    AGE_REQ_ADULT, // ITEM_BROKEN_GORONS_SWORD
    AGE_REQ_ADULT, // ITEM_PRESCRIPTION
    AGE_REQ_ADULT, // ITEM_EYEBALL_FROG
    AGE_REQ_ADULT, // ITEM_EYE_DROPS
    AGE_REQ_ADULT, // ITEM_CLAIM_CHECK
    AGE_REQ_ADULT, // ITEM_BOW_FIRE
    AGE_REQ_ADULT, // ITEM_BOW_ICE
    AGE_REQ_ADULT, // ITEM_BOW_LIGHT
    AGE_REQ_CHILD, // ITEM_SWORD_KOKIRI
    AGE_REQ_ADULT, // ITEM_SWORD_MASTER
    AGE_REQ_ADULT, // ITEM_SWORD_BIGGORON
    AGE_REQ_CHILD, // ITEM_SHIELD_DEKU
    AGE_REQ_NONE,  // ITEM_SHIELD_HYLIAN
    AGE_REQ_ADULT, // ITEM_SHIELD_MIRROR
    AGE_REQ_NONE,  // ITEM_TUNIC_KOKIRI
    AGE_REQ_ADULT, // ITEM_TUNIC_GORON
    AGE_REQ_ADULT, // ITEM_TUNIC_ZORA
    AGE_REQ_NONE,  // ITEM_BOOTS_KOKIRI
    AGE_REQ_ADULT, // ITEM_BOOTS_IRON
    AGE_REQ_ADULT, // ITEM_BOOTS_HOVER
    AGE_REQ_CHILD, // ITEM_BULLET_BAG_30
    AGE_REQ_CHILD, // ITEM_BULLET_BAG_40
    AGE_REQ_CHILD, // ITEM_BULLET_BAG_50
    AGE_REQ_ADULT, // ITEM_QUIVER_30
    AGE_REQ_ADULT, // ITEM_QUIVER_40
    AGE_REQ_ADULT, // ITEM_QUIVER_50
    AGE_REQ_NONE,  // ITEM_BOMB_BAG_20
    AGE_REQ_NONE,  // ITEM_BOMB_BAG_30
    AGE_REQ_NONE,  // ITEM_BOMB_BAG_40
    AGE_REQ_CHILD, // ITEM_STRENGTH_GORONS_BRACELET
    AGE_REQ_ADULT, // ITEM_STRENGTH_SILVER_GAUNTLETS
    AGE_REQ_ADULT, // ITEM_STRENGTH_GOLD_GAUNTLETS
    AGE_REQ_NONE,  // ITEM_SCALE_SILVER
    AGE_REQ_NONE,  // ITEM_SCALE_GOLDEN
    AGE_REQ_ADULT, // ITEM_GIANTS_KNIFE
};

u8 gAreaGsFlags[] = {
    0x0F, 0x1F, 0x0F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x07, 0x07, 0x03,
    0x0F, 0x07, 0x0F, 0x0F, 0xFF, 0xFF, 0xFF, 0x1F, 0x0F, 0x03, 0x0F,
};

static void* sCursorTexs[] = {
    gPauseMenuCursorTopLeftTex,     // PAUSE_CURSOR_QUAD_TL
    gPauseMenuCursorTopRightTex,    // PAUSE_CURSOR_QUAD_TR
    gPauseMenuCursorBottomLeftTex,  // PAUSE_CURSOR_QUAD_BL
    gPauseMenuCursorBottomRightTex, // PAUSE_CURSOR_QUAD_BR
};

static s16 sCursorColors[][3] = {
    { 255, 255, 255 },
    { 255, 255, 0 },
    { KALEIDO_COLOR_CURSOR_UNK_R, KALEIDO_COLOR_CURSOR_UNK_G, KALEIDO_COLOR_CURSOR_UNK_B },
};

static void* sSavePromptMessageTexs[] =
    LANGUAGE_ARRAY(gPauseSavePromptJPNTex, gPauseSavePromptENGTex, gPauseSavePromptGERTex, gPauseSavePromptFRATex);

static void* sSaveConfirmationTexs[] = LANGUAGE_ARRAY(gPauseSaveConfirmationJPNTex, gPauseSaveConfirmationENGTex,
                                                      gPauseSaveConfirmationGERTex, gPauseSaveConfirmationFRATex);

static void* sContinuePromptTexs[] =
    LANGUAGE_ARRAY(gContinuePlayingJPNTex, gContinuePlayingENGTex, gContinuePlayingGERTex, gContinuePlayingFRATex);

static void* sPromptChoiceTexs[][2] = {
#if OOT_NTSC
    { gPauseYesJPNTex, gPauseNoJPNTex },
    { gPauseYesENGTex, gPauseNoENGTex },
#else
    { gPauseYesENGTex, gPauseNoENGTex },
    { gPauseYesGERTex, gPauseNoGERTex },
    { gPauseYesFRATex, gPauseNoFRATex },
#endif
};

//! @bug On the iQue version, kaleido bss is reported to be just 0x10 bytes large in the relocation section. This is
//! likely due to not counting the size of COMMON symbols in the overlay. sPlayerPreRender was likely originally
//! non-static, but we make it static here to match the bss order and patch the relocation section later in the build
//! as our relocation generator does count COMMON symbols.

static u8 D_808321A8[5];
static PreRender sPlayerPreRender;
void* sPreRenderCvg;

void KaleidoScope_SetupPlayerPreRender(PlayState* play) {
    Gfx* gfx;
    Gfx* gfxRef;
    void* fbuf;

    fbuf = play->state.gfxCtx->curFrameBuffer;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 496);

    gfxRef = POLY_OPA_DISP;
    gfx = Gfx_Open(gfxRef);
    gSPDisplayList(WORK_DISP++, gfx);

    PreRender_SetValues(&sPlayerPreRender, PAUSE_EQUIP_PLAYER_WIDTH, PAUSE_EQUIP_PLAYER_HEIGHT, fbuf, NULL);
    PreRender_SaveFramebuffer(&sPlayerPreRender, &gfx);
    PreRender_DrawCoverage(&sPlayerPreRender, &gfx);

    gSPEndDisplayList(gfx++);
    Gfx_Close(gfxRef, gfx);
    POLY_OPA_DISP = gfx;

    R_GRAPH_TASKSET00_FLAGS |= 1;

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 509);
}

void KaleidoScope_ProcessPlayerPreRender(void) {
    Sleep_Msec(50);
    PreRender_ApplyFilters(&sPlayerPreRender);
    PreRender_Destroy(&sPlayerPreRender);
}

Gfx* KaleidoScope_QuadTextureIA4(Gfx* gfx, void* texture, s16 width, s16 height, u16 point) {
    gDPLoadTextureBlock_4b(gfx++, texture, G_IM_FMT_IA, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(gfx++, point, point + 2, point + 3, point + 1, 0);

    return gfx;
}

Gfx* KaleidoScope_QuadTextureIA8(Gfx* gfx, void* texture, s16 width, s16 height, u16 point) {
    gDPLoadTextureBlock(gfx++, texture, G_IM_FMT_IA, G_IM_SIZ_8b, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(gfx++, point, point + 2, point + 3, point + 1, 0);

    return gfx;
}

void KaleidoScope_OverridePalIndexCI4(char* texture, s32 size, s32 targetIndex, s32 newIndex) {
    s32 i;
    s32 index1;
    s32 index2;

    targetIndex &= 0xF;
    newIndex &= 0xF;

    if ((size == 0) || (targetIndex == newIndex) || (texture == NULL)) {
        return;
    }

    for (i = 0; i < size; i++) {
        index1 = index2 = texture[i];

        index1 = (index1 >> 4) & 0xF;
        index2 = index2 & 0xF;

        if (index1 == targetIndex) {
            index1 = newIndex;
        }

        if (index2 == targetIndex) {
            index2 = newIndex;
        }

        texture[i] = (index1 << 4) | index2;
    }
}

void KaleidoScope_MoveCursorToSpecialPos(PlayState* play, u16 specialPos) {
    PauseContext* pauseCtx = &play->pauseCtx;

    pauseCtx->cursorSpecialPos = specialPos;
    pauseCtx->pageSwitchInputTimer = 0;

    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}

void KaleidoScope_DrawQuadTextureRGBA32(GraphicsContext* gfxCtx, void* texture, u16 width, u16 height, u16 point) {
    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 748);

    gDPLoadTextureBlock(POLY_OPA_DISP++, texture, G_IM_FMT_RGBA, G_IM_SIZ_32b, width, height, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, point, point + 2, point + 3, point + 1, 0);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 758);
}

void KaleidoScope_SetDefaultCursor(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 s;
    s16 i;

    switch (pauseCtx->pageIndex) {
        case PAUSE_ITEM:
            s = pauseCtx->cursorSlot[PAUSE_ITEM];
            if (gSaveContext.save.info.inventory.items[s] == ITEM_NONE) {
                i = s + 1;
                for (;;) {
                    if (gSaveContext.save.info.inventory.items[i] != ITEM_NONE) {
                        break;
                    }
                    i++;
                    if (i >= 24) {
                        i = 0;
                    }
                    if (i == s) {
                        pauseCtx->cursorItem[PAUSE_ITEM] = pauseCtx->namedItem = PAUSE_ITEM_NONE;
                        return;
                    }
                }
                pauseCtx->cursorItem[PAUSE_ITEM] = gSaveContext.save.info.inventory.items[i];
                pauseCtx->cursorSlot[PAUSE_ITEM] = i;
            }
            break;
        case PAUSE_MAP:
        case PAUSE_QUEST:
        case PAUSE_EQUIP:
            break;
    }
}

#define PAGE_SWITCH_PT_LEFT 0
#define PAGE_SWITCH_PT_RIGHT 2

void KaleidoScope_SetupPageSwitch(PauseContext* pauseCtx, u8 pt) {
    pauseCtx->mainState = PAUSE_MAIN_STATE_SWITCHING_PAGE;
    pauseCtx->pageSwitchTimer = 0;

    if (!pt) { // PAGE_SWITCH_PT_LEFT
        pauseCtx->nextPageMode = pauseCtx->pageIndex * 2 + 1;
        Audio_PlaySfxGeneral(NA_SE_SY_WIN_SCROLL_LEFT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        pauseCtx->cursorSpecialPos = PAUSE_CURSOR_PAGE_RIGHT;
    } else { // PAGE_SWITCH_PT_RIGHT
        pauseCtx->nextPageMode = pauseCtx->pageIndex * 2;
        Audio_PlaySfxGeneral(NA_SE_SY_WIN_SCROLL_RIGHT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        pauseCtx->cursorSpecialPos = PAUSE_CURSOR_PAGE_LEFT;
    }

#if PLATFORM_N64 || OOT_NTSC
    gSaveContext.buttonStatus[0] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][0];
#endif
    gSaveContext.buttonStatus[1] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][1];
    gSaveContext.buttonStatus[2] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][2];
    gSaveContext.buttonStatus[3] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][3];
    gSaveContext.buttonStatus[4] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + pt][4];

    PRINTF("kscope->kscp_pos+pt = %d\n", pauseCtx->pageIndex + pt);

    gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
}

void KaleidoScope_HandlePageToggles(PauseContext* pauseCtx, Input* input) {
    if ((pauseCtx->debugState == 0) && CHECK_BTN_ALL(input->press.button, BTN_L)) {
#if DEBUG_FEATURES
        pauseCtx->debugState = 1;
#endif
        return;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_R)) {
        KaleidoScope_SetupPageSwitch(pauseCtx, PAGE_SWITCH_PT_RIGHT);
        return;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_Z)) {
        KaleidoScope_SetupPageSwitch(pauseCtx, PAGE_SWITCH_PT_LEFT);
        return;
    }

    if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
        if (pauseCtx->stickAdjX < -30) {
            pauseCtx->pageSwitchInputTimer++;
            if ((pauseCtx->pageSwitchInputTimer >= 10) || (pauseCtx->pageSwitchInputTimer == 0)) {
                KaleidoScope_SetupPageSwitch(pauseCtx, PAGE_SWITCH_PT_LEFT);
            }
        } else {
            pauseCtx->pageSwitchInputTimer = -1;
        }
    } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) {
        if (pauseCtx->stickAdjX > 30) {
            pauseCtx->pageSwitchInputTimer++;
            if ((pauseCtx->pageSwitchInputTimer >= 10) || (pauseCtx->pageSwitchInputTimer == 0)) {
                KaleidoScope_SetupPageSwitch(pauseCtx, PAGE_SWITCH_PT_RIGHT);
            }
        } else {
            pauseCtx->pageSwitchInputTimer = -1;
        }
    }
}

void KaleidoScope_DrawCursor(PlayState* play, u16 pageIndex) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 955);

    if (((((u32)pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) ||
          (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) &&
         (pauseCtx->state == PAUSE_STATE_MAIN)) ||
        ((pauseCtx->pageIndex == PAUSE_QUEST) &&
         ((pauseCtx->mainState < PAUSE_MAIN_STATE_3) || (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PROMPT) ||
          (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)))) {
        s16 i;
        s16 j;

        if (pauseCtx->pageIndex == pageIndex) {

            // Draw PAUSE_CURSOR_QUAD_TL, PAUSE_CURSOR_QUAD_TR, PAUSE_CURSOR_QUAD_BL, PAUSE_CURSOR_QUAD_BR

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sCursorColors[pauseCtx->cursorColorSet >> 2][0],
                            sCursorColors[pauseCtx->cursorColorSet >> 2][1],
                            sCursorColors[pauseCtx->cursorColorSet >> 2][2], 255);
            gDPSetEnvColor(POLY_OPA_DISP++, D_8082AB8C, D_8082AB90, D_8082AB94, 255);
            gSPVertex(POLY_OPA_DISP++, pauseCtx->cursorVtx, 16, 0);

            for (i = j = 0; i < 4; i++, j += 4) {
                gDPLoadTextureBlock_4b(POLY_OPA_DISP++, sCursorTexs[i], G_IM_FMT_IA, 16, 16, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
            }
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 985);
}

// Draw 15 (PAGE_BG_QUADS) quads with IA8 80x32 textures
Gfx* KaleidoScope_DrawPageSections(Gfx* gfx, Vtx* vertices, void** textures) {
    s32 i;
    s32 j;

    gSPVertex(gfx++, vertices, 32, 0);

    i = 0;

    j = 0;
    while (j < 32) {
        gDPPipeSync(gfx++);
        gDPLoadTextureBlock(gfx++, textures[i], G_IM_FMT_IA, G_IM_SIZ_8b, PAGE_BG_QUAD_TEX_WIDTH,
                            PAGE_BG_QUAD_TEX_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(gfx++, j, j + 2, j + 3, j + 1, 0);

        j += 4;
        i++;
    }

    gSPVertex(gfx++, vertices + 32, 28, 0);

    j = 0;
    while (j < 28) {
        gDPPipeSync(gfx++);
        gDPLoadTextureBlock(gfx++, textures[i], G_IM_FMT_IA, G_IM_SIZ_8b, PAGE_BG_QUAD_TEX_WIDTH,
                            PAGE_BG_QUAD_TEX_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(gfx++, j, j + 2, j + 3, j + 1, 0);

        j += 4;
        i++;
    }

    return gfx;
}

void KaleidoScope_DrawPages(PlayState* play, GraphicsContext* gfxCtx) {
    static s16 D_8082ACF4[][3] = {
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 255, 255, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 255, 255, 0 },
        { KALEIDO_COLOR_CURSOR_UNK_R, KALEIDO_COLOR_CURSOR_UNK_G, KALEIDO_COLOR_CURSOR_UNK_B },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { KALEIDO_COLOR_CURSOR_UNK_R, KALEIDO_COLOR_CURSOR_UNK_G, KALEIDO_COLOR_CURSOR_UNK_B },
    };
    static s16 D_8082AD3C = 20;
    static s16 D_8082AD40 = 0;
    static s16 sStickXRepeatTimer = 0;
    static s16 sStickYRepeatTimer = 0;
    static s16 sStickXRepeatState = 0;
    static s16 sStickYRepeatState = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 stepR;
    s16 stepG;
    s16 stepB;

    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 1100);

    if (!IS_PAUSE_STATE_GAMEOVER(pauseCtx)) {
        if (pauseCtx->state != PAUSE_STATE_SAVE_PROMPT) {
            stepR = ABS(D_8082AB8C - D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][0]) / D_8082AD3C;
            stepG = ABS(D_8082AB90 - D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][1]) / D_8082AD3C;
            stepB = ABS(D_8082AB94 - D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][2]) / D_8082AD3C;
            if (D_8082AB8C >= D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][0]) {
                D_8082AB8C -= stepR;
            } else {
                D_8082AB8C += stepR;
            }
            if (D_8082AB90 >= D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][1]) {
                D_8082AB90 -= stepG;
            } else {
                D_8082AB90 += stepG;
            }
            if (D_8082AB94 >= D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][2]) {
                D_8082AB94 -= stepB;
            } else {
                D_8082AB94 += stepB;
            }

            D_8082AD3C--;
            if (D_8082AD3C == 0) {
                D_8082AB8C = D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][0];
                D_8082AB90 = D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][1];
                D_8082AB94 = D_8082ACF4[pauseCtx->cursorColorSet + D_8082AD40][2];
                D_8082AD3C = ZREG(28 + D_8082AD40);
                D_8082AD40++;
                if (D_8082AD40 >= 4) {
                    D_8082AD40 = 0;
                }
            }

            if (pauseCtx->stickAdjX < -30) {
                if (sStickXRepeatState == -1) {
                    sStickXRepeatTimer--;
                    if (sStickXRepeatTimer < 0) {
                        sStickXRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY;
                    } else {
                        pauseCtx->stickAdjX = 0;
                    }
                } else {
                    sStickXRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY_FIRST;
                    sStickXRepeatState = -1;
                }
            } else if (pauseCtx->stickAdjX > 30) {
                if (sStickXRepeatState == 1) {
                    sStickXRepeatTimer--;
                    // NOLINTBEGIN
                    if (sStickXRepeatTimer < 0)
                        sStickXRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY;
                    else
                        pauseCtx->stickAdjX = 0;
                    // NOLINTEND
                } else {
                    sStickXRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY_FIRST;
                    sStickXRepeatState = 1;
                }
            } else {
                sStickXRepeatState = 0;
            }

            if (pauseCtx->stickAdjY < -30) {
                if (sStickYRepeatState == -1) {
                    sStickYRepeatTimer--;
                    if (sStickYRepeatTimer < 0) {
                        sStickYRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY;
                    } else {
                        pauseCtx->stickAdjY = 0;
                    }
                } else {
                    sStickYRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY_FIRST;
                    sStickYRepeatState = -1;
                }
            } else if (pauseCtx->stickAdjY > 30) {
                if (sStickYRepeatState == 1) {
                    sStickYRepeatTimer--;
                    // NOLINTBEGIN
                    if (sStickYRepeatTimer < 0)
                        sStickYRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY;
                    else
                        pauseCtx->stickAdjY = 0;
                    // NOLINTEND
                } else {
                    sStickYRepeatTimer = R_PAUSE_STICK_REPEAT_DELAY_FIRST;
                    sStickYRepeatState = 1;
                }
            } else {
                sStickYRepeatState = 0;
            }
        }

        // Draw non-active pages (not the one being looked at)

        if (pauseCtx->pageIndex) { // pageIndex != PAUSE_ITEM
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(0.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, -(f32)R_PAUSE_DEPTH_OFFSET / 100.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(-pauseCtx->itemPagePitch / 100.0f, MTXMODE_APPLY);

            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1173);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->itemPageVtx,
                                                          SELECT_ITEM_TEXS(gSaveContext.language));

            KaleidoScope_DrawItemSelect(play);
        }

        if (pauseCtx->pageIndex != PAUSE_EQUIP) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(-(f32)R_PAUSE_DEPTH_OFFSET / 100.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, 0.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(pauseCtx->equipPagePitch / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(1.57f, MTXMODE_APPLY);

            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1196);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->equipPageVtx,
                                                          EQUIPMENT_TEXS(gSaveContext.language));

            KaleidoScope_DrawEquipment(play);
        }

        if (pauseCtx->pageIndex != PAUSE_QUEST) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(0.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, (f32)R_PAUSE_DEPTH_OFFSET / 100.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(pauseCtx->questPagePitch / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(3.14f, MTXMODE_APPLY);

            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1220);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->questPageVtx,
                                                          QUEST_STATUS_TEXS(gSaveContext.language));

            KaleidoScope_DrawQuestStatus(play, gfxCtx);
        }

        if (pauseCtx->pageIndex != PAUSE_MAP) {
            gDPPipeSync(POLY_OPA_DISP++);

            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate((f32)R_PAUSE_DEPTH_OFFSET / 100.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, 0.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(-pauseCtx->mapPagePitch / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(-1.57f, MTXMODE_APPLY);

            MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1243);

            POLY_OPA_DISP =
                KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->mapPageVtx, MAP_TEXS(gSaveContext.language));

            if (sInDungeonScene) {
                KaleidoScope_DrawDungeonMap(play, gfxCtx);
                Gfx_SetupDL_42Opa(gfxCtx);

                gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

                if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                    PauseMapMark_Draw(play);
                }
            } else {
                KaleidoScope_DrawWorldMap(play, gfxCtx);
            }
        }

        // Update and draw the active page being looked at

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

        switch (pauseCtx->pageIndex) {
            case PAUSE_ITEM:
                Matrix_Translate(0.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, -(f32)R_PAUSE_DEPTH_OFFSET / 100.0f,
                                 MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateX(-pauseCtx->itemPagePitch / 100.0f, MTXMODE_APPLY);

                MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1281);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->itemPageVtx,
                                                              SELECT_ITEM_TEXS(gSaveContext.language));

                KaleidoScope_DrawItemSelect(play);
                break;

            case PAUSE_MAP:
                Matrix_Translate((f32)R_PAUSE_DEPTH_OFFSET / 100.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, 0.0f,
                                 MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateZ(-pauseCtx->mapPagePitch / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(-1.57f, MTXMODE_APPLY);

                MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1303);

                POLY_OPA_DISP =
                    KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->mapPageVtx, MAP_TEXS(gSaveContext.language));

                if (sInDungeonScene) {
                    KaleidoScope_DrawDungeonMap(play, gfxCtx);
                    Gfx_SetupDL_42Opa(gfxCtx);

                    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

                    if (pauseCtx->cursorSpecialPos == 0) {
                        KaleidoScope_DrawCursor(play, PAUSE_MAP);
                    }

                    if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                        PauseMapMark_Draw(play);
                    }
                } else {
                    KaleidoScope_DrawWorldMap(play, gfxCtx);
                }
                break;

            case PAUSE_QUEST:
                gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);

                Matrix_Translate(0.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, (f32)R_PAUSE_DEPTH_OFFSET / 100.0f,
                                 MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateX(pauseCtx->questPagePitch / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(3.14f, MTXMODE_APPLY);

                MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1343);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->questPageVtx,
                                                              QUEST_STATUS_TEXS(gSaveContext.language));

                KaleidoScope_DrawQuestStatus(play, gfxCtx);

                if (pauseCtx->cursorSpecialPos == 0) {
                    KaleidoScope_DrawCursor(play, PAUSE_QUEST);
                }
                break;

            case PAUSE_EQUIP:
                Matrix_Translate(-(f32)R_PAUSE_DEPTH_OFFSET / 100.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, 0.0f,
                                 MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateZ(pauseCtx->equipPagePitch / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(1.57f, MTXMODE_APPLY);

                MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1367);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->equipPageVtx,
                                                              EQUIPMENT_TEXS(gSaveContext.language));

                KaleidoScope_DrawEquipment(play);

                if (pauseCtx->cursorSpecialPos == 0) {
                    KaleidoScope_DrawCursor(play, PAUSE_EQUIP);
                }
                break;
        }
    }

    // Update and draw prompt (save or gameover)

    Gfx_SetupDL_42Opa(gfxCtx);

    if ((pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) || IS_PAUSE_STATE_GAMEOVER(pauseCtx)) {
        KaleidoScope_UpdatePrompt(play);

        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

        if ((u32)pauseCtx->pageIndex == PAUSE_ITEM) {
            pauseCtx->itemPagePitch = pauseCtx->promptPitch + 314.0f;

            Matrix_Translate(0.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, -pauseCtx->promptDepthOffset / 10.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(-pauseCtx->promptPitch / 100.0f, MTXMODE_APPLY);
        } else if (pauseCtx->pageIndex == PAUSE_MAP) {
            pauseCtx->mapPagePitch = pauseCtx->promptPitch + 314.0f;

            Matrix_Translate(pauseCtx->promptDepthOffset / 10.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, 0.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(-pauseCtx->promptPitch / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(-1.57f, MTXMODE_APPLY);
        } else if (pauseCtx->pageIndex == PAUSE_QUEST) {
            pauseCtx->questPagePitch = pauseCtx->promptPitch + 314.0f;

            Matrix_Translate(0.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, pauseCtx->promptDepthOffset / 10.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(pauseCtx->promptPitch / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(3.14f, MTXMODE_APPLY);
        } else {
            pauseCtx->equipPagePitch = pauseCtx->promptPitch + 314.0f;

            Matrix_Translate(-pauseCtx->promptDepthOffset / 10.0f, (f32)R_PAUSE_PAGES_Y_ORIGIN_2 / 100.0f, 0.0f,
                             MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(pauseCtx->promptPitch / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(1.57f, MTXMODE_APPLY);
        }

        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, gfxCtx, "../z_kaleido_scope_PAL.c", 1424);

        if (IS_PAUSE_STATE_GAMEOVER(pauseCtx)) {
            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->promptPageVtx, sGameOverTexs);
        } else { // PAUSE_STATE_SAVE_PROMPT
            POLY_OPA_DISP =
                KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->promptPageVtx, SAVE_TEXS(gSaveContext.language));
        }

        //! @bug Loads 32 vertices, but there are only 20 to load
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->promptPageVtx[PAGE_BG_QUADS * 4], 32, 0);

        if (((pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) &&
             (pauseCtx->savePromptState < PAUSE_SAVE_PROMPT_STATE_SAVED)) ||
            (pauseCtx->state == PAUSE_STATE_GAME_OVER_SAVE_PROMPT)) {
            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sSavePromptMessageTexs[gSaveContext.language],
                                                        152, 16, PROMPT_QUAD_MESSAGE * 4);

            gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0,
                              0, PRIMITIVE, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, KALEIDO_PROMPT_CURSOR_R, KALEIDO_PROMPT_CURSOR_G,
                            KALEIDO_PROMPT_CURSOR_B, R_KALEIDO_PROMPT_CURSOR_ALPHA);

            if (pauseCtx->promptChoice == 0) {
                // PROMPT_QUAD_CURSOR_LEFT
                gSPDisplayList(POLY_OPA_DISP++, gPromptCursorLeftDL);
            } else {
                // PROMPT_QUAD_CURSOR_RIGHT
                gSPDisplayList(POLY_OPA_DISP++, gPromptCursorRightDL);
            }

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][0], 48,
                                                        16, PROMPT_QUAD_CHOICE_YES * 4);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][1], 48,
                                                        16, PROMPT_QUAD_CHOICE_NO * 4);
        } else if (((pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) &&
                    (pauseCtx->savePromptState >= PAUSE_SAVE_PROMPT_STATE_SAVED)) ||
                   pauseCtx->state == PAUSE_STATE_GAME_OVER_SAVED) {
#if !PLATFORM_GC
            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sSaveConfirmationTexs[gSaveContext.language],
                                                        152, 16, PROMPT_QUAD_MESSAGE * 4);
#endif
        } else if (((pauseCtx->state == PAUSE_STATE_GAME_OVER_CONTINUE_PROMPT) ||
                    (pauseCtx->state == PAUSE_STATE_GAME_OVER_FINISH))) {
            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sContinuePromptTexs[gSaveContext.language], 152,
                                                        16, PROMPT_QUAD_MESSAGE * 4);

            gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0,
                              0, PRIMITIVE, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, KALEIDO_PROMPT_CURSOR_R, KALEIDO_PROMPT_CURSOR_G,
                            KALEIDO_PROMPT_CURSOR_B, R_KALEIDO_PROMPT_CURSOR_ALPHA);

            if (pauseCtx->promptChoice == 0) {
                // PROMPT_QUAD_CURSOR_LEFT
                gSPDisplayList(POLY_OPA_DISP++, gPromptCursorLeftDL);
            } else {
                // PROMPT_QUAD_CURSOR_RIGHT
                gSPDisplayList(POLY_OPA_DISP++, gPromptCursorRightDL);
            }

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][0], 48,
                                                        16, PROMPT_QUAD_CHOICE_YES * 4);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][1], 48,
                                                        16, PROMPT_QUAD_CHOICE_NO * 4);
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        if ((pauseCtx->state != PAUSE_STATE_GAME_OVER_CONTINUE_PROMPT) &&
            (pauseCtx->state != PAUSE_STATE_GAME_OVER_FINISH)) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 0, pauseCtx->alpha);
            gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 1577);
}

void KaleidoScope_DrawInfoPanel(PlayState* play) {
    static void* D_8082AD54[] =
        LANGUAGE_ARRAY(gPauseToEquipJPNTex, gPauseToEquipENGTex, gPauseToEquipGERTex, gPauseToEquipFRATex);
    static void* D_8082AD60[] =
        LANGUAGE_ARRAY(gPauseToDecideJPNTex, gPauseToDecideENGTex, gPauseToDecideGERTex, gPauseToDecideFRATex);
    static void* D_8082AD6C[] = LANGUAGE_ARRAY(gPauseToPlayMelodyJPNTex, gPauseToPlayMelodyENGTex,
                                               gPauseToPlayMelodyGERTex, gPauseToPlayMelodyFRATex);
    static void* D_8082AD78[][LANGUAGE_MAX] = {
        LANGUAGE_ARRAY(gPauseToEquipmentJPNTex, gPauseToEquipmentENGTex, gPauseToEquipmentGERTex,
                       gPauseToEquipmentFRATex),
        LANGUAGE_ARRAY(gPauseToSelectItemJPNTex, gPauseToSelectItemENGTex, gPauseToSelectItemGERTex,
                       gPauseToSelectItemFRATex),
        LANGUAGE_ARRAY(gPauseToMapJPNTex, gPauseToMapENGTex, gPauseToMapGERTex, gPauseToMapFRATex),
        LANGUAGE_ARRAY(gPauseToQuestStatusJPNTex, gPauseToQuestStatusENGTex, gPauseToQuestStatusGERTex,
                       gPauseToQuestStatusFRATex),
    };
    static void* D_8082ADA8[][LANGUAGE_MAX] = {
        LANGUAGE_ARRAY(gPauseToMapJPNTex, gPauseToMapENGTex, gPauseToMapGERTex, gPauseToMapFRATex),
        LANGUAGE_ARRAY(gPauseToQuestStatusJPNTex, gPauseToQuestStatusENGTex, gPauseToQuestStatusGERTex,
                       gPauseToQuestStatusFRATex),
        LANGUAGE_ARRAY(gPauseToEquipmentJPNTex, gPauseToEquipmentENGTex, gPauseToEquipmentGERTex,
                       gPauseToEquipmentFRATex),
        LANGUAGE_ARRAY(gPauseToSelectItemJPNTex, gPauseToSelectItemENGTex, gPauseToSelectItemGERTex,
                       gPauseToSelectItemFRATex),
    };
    static u16 D_8082ADD8[] = LANGUAGE_ARRAY(56, 56, 88, 80);
    static u16 D_8082ADE0[] = LANGUAGE_ARRAY(48, 64, 88, 72);
    static u16 D_8082ADE8[] = LANGUAGE_ARRAY(96, 80, 104, 112);
    static s16 D_8082ADF0[][4] = {
        { 180, 210, 255, 220 },
        { 100, 100, 150, 220 },
    };
    static s16 D_8082AE00 = 20;
    static s16 D_8082AE04 = 0;
    static s16 D_8082AE08[] = {
        10, 16, 16, 17, 12, 13, 18, 17, 17, 19, 13, 21, 20, 21, 14, 15, 15, 15, 11, 14,
    };
    static s16 D_8082AE30[] = {
        21, 20, 19, 18, 11, 14, 10, 15, 16, 13, 12, 17,
    };
    static s16 D_808321A0;
    static s16 D_808321A2;
    static s16 D_808321A4;
    static s16 D_808321A6;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 stepR;
    s16 stepG;
    s16 stepB;
    s16 stepA;
    s16 temp;
    s16 i;
    s16 j;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 1676);

    stepR = ABS(D_808321A0 - D_8082ADF0[D_8082AE04][0]) / D_8082AE00;
    stepG = ABS(D_808321A2 - D_8082ADF0[D_8082AE04][1]) / D_8082AE00;
    stepB = ABS(D_808321A4 - D_8082ADF0[D_8082AE04][2]) / D_8082AE00;
    stepA = ABS(D_808321A6 - D_8082ADF0[D_8082AE04][3]) / D_8082AE00;
    if (D_808321A0 >= D_8082ADF0[D_8082AE04][0]) {
        D_808321A0 -= stepR;
    } else {
        D_808321A0 += stepR;
    }
    if (D_808321A2 >= D_8082ADF0[D_8082AE04][1]) {
        D_808321A2 -= stepG;
    } else {
        D_808321A2 += stepG;
    }
    if (D_808321A4 >= D_8082ADF0[D_8082AE04][2]) {
        D_808321A4 -= stepB;
    } else {
        D_808321A4 += stepB;
    }
    if (D_808321A6 >= D_8082ADF0[D_8082AE04][3]) {
        D_808321A6 -= stepA;
    } else {
        D_808321A6 += stepA;
    }

    D_8082AE00--;
    if (D_8082AE00 == 0) {
        D_808321A0 = D_8082ADF0[D_8082AE04][0];
        D_808321A2 = D_8082ADF0[D_8082AE04][1];
        D_808321A4 = D_8082ADF0[D_8082AE04][2];
        D_808321A6 = D_8082ADF0[D_8082AE04][3];
        D_8082AE00 = ZREG(28);
        D_8082AE04 ^= 1;
    }

    temp = pauseCtx->infoPanelOffsetY - 76;
    for (j = 0, i = 0; i < 7; i++, j += 4) {
        pauseCtx->infoPanelVtx[j + 0].v.ob[0] = pauseCtx->infoPanelVtx[j + 2].v.ob[0] = -72;

        pauseCtx->infoPanelVtx[j + 1].v.ob[0] = pauseCtx->infoPanelVtx[j + 3].v.ob[0] = 0;

        pauseCtx->infoPanelVtx[j + 0].v.ob[1] = pauseCtx->infoPanelVtx[j + 1].v.ob[1] = temp;

        pauseCtx->infoPanelVtx[j + 2].v.ob[1] = pauseCtx->infoPanelVtx[j + 3].v.ob[1] = temp - 24;

        pauseCtx->infoPanelVtx[j + 0].v.ob[2] = pauseCtx->infoPanelVtx[j + 1].v.ob[2] =
            pauseCtx->infoPanelVtx[j + 2].v.ob[2] = pauseCtx->infoPanelVtx[j + 3].v.ob[2] = 0;

        pauseCtx->infoPanelVtx[j + 0].v.flag = pauseCtx->infoPanelVtx[j + 1].v.flag =
            pauseCtx->infoPanelVtx[j + 2].v.flag = pauseCtx->infoPanelVtx[j + 3].v.flag = 0;

        pauseCtx->infoPanelVtx[j + 0].v.tc[0] = pauseCtx->infoPanelVtx[j + 0].v.tc[1] =
            pauseCtx->infoPanelVtx[j + 1].v.tc[1] = pauseCtx->infoPanelVtx[j + 2].v.tc[0] = 0;

        pauseCtx->infoPanelVtx[j + 1].v.tc[0] = pauseCtx->infoPanelVtx[j + 3].v.tc[0] = 0x900;

        pauseCtx->infoPanelVtx[j + 2].v.tc[1] = pauseCtx->infoPanelVtx[j + 3].v.tc[1] = 0x300;

        pauseCtx->infoPanelVtx[j + 0].v.cn[0] = pauseCtx->infoPanelVtx[j + 2].v.cn[0] =
            pauseCtx->infoPanelVtx[j + 0].v.cn[1] = pauseCtx->infoPanelVtx[j + 2].v.cn[1] =
                pauseCtx->infoPanelVtx[j + 0].v.cn[2] = pauseCtx->infoPanelVtx[j + 2].v.cn[2] =
                    pauseCtx->infoPanelVtx[j + 1].v.cn[0] = pauseCtx->infoPanelVtx[j + 3].v.cn[0] =
                        pauseCtx->infoPanelVtx[j + 1].v.cn[1] = pauseCtx->infoPanelVtx[j + 3].v.cn[1] =
                            pauseCtx->infoPanelVtx[j + 1].v.cn[2] = pauseCtx->infoPanelVtx[j + 3].v.cn[2] = 200;

        pauseCtx->infoPanelVtx[j + 0].v.cn[3] = pauseCtx->infoPanelVtx[j + 2].v.cn[3] =
            pauseCtx->infoPanelVtx[j + 1].v.cn[3] = pauseCtx->infoPanelVtx[j + 3].v.cn[3] = pauseCtx->alpha;
    }

    pauseCtx->infoPanelVtx[4].v.ob[0] = pauseCtx->infoPanelVtx[6].v.ob[0] = pauseCtx->infoPanelVtx[0].v.ob[0] + 72;

    pauseCtx->infoPanelVtx[5].v.ob[0] = pauseCtx->infoPanelVtx[7].v.ob[0] = pauseCtx->infoPanelVtx[4].v.ob[0] + 72;

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
        pauseCtx->infoPanelVtx[8].v.ob[0] = pauseCtx->infoPanelVtx[10].v.ob[0] = WREG(16);

        pauseCtx->infoPanelVtx[9].v.ob[0] = pauseCtx->infoPanelVtx[11].v.ob[0] = pauseCtx->infoPanelVtx[8].v.ob[0] + 24;

        pauseCtx->infoPanelVtx[8].v.ob[1] = pauseCtx->infoPanelVtx[9].v.ob[1] = WREG(18);

        pauseCtx->infoPanelVtx[10].v.ob[1] = pauseCtx->infoPanelVtx[11].v.ob[1] =
            pauseCtx->infoPanelVtx[8].v.ob[1] - 32;
    } else {
        pauseCtx->infoPanelVtx[8].v.ob[0] = pauseCtx->infoPanelVtx[10].v.ob[0] = WREG(16) + 3;

        pauseCtx->infoPanelVtx[9].v.ob[0] = pauseCtx->infoPanelVtx[11].v.ob[0] = pauseCtx->infoPanelVtx[8].v.ob[0] + 18;

        pauseCtx->infoPanelVtx[8].v.ob[1] = pauseCtx->infoPanelVtx[9].v.ob[1] = WREG(18) - 3;

        pauseCtx->infoPanelVtx[10].v.ob[1] = pauseCtx->infoPanelVtx[11].v.ob[1] =
            pauseCtx->infoPanelVtx[8].v.ob[1] - 26;
    }

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
        pauseCtx->infoPanelVtx[12].v.ob[0] = pauseCtx->infoPanelVtx[14].v.ob[0] = WREG(17);

        pauseCtx->infoPanelVtx[13].v.ob[0] = pauseCtx->infoPanelVtx[15].v.ob[0] =
            pauseCtx->infoPanelVtx[12].v.ob[0] + 24;

        pauseCtx->infoPanelVtx[12].v.ob[1] = pauseCtx->infoPanelVtx[13].v.ob[1] = WREG(18);

        pauseCtx->infoPanelVtx[14].v.ob[1] = pauseCtx->infoPanelVtx[15].v.ob[1] =
            pauseCtx->infoPanelVtx[12].v.ob[1] - 32;
    } else {
        pauseCtx->infoPanelVtx[12].v.ob[0] = pauseCtx->infoPanelVtx[14].v.ob[0] = WREG(17) + 3;

        pauseCtx->infoPanelVtx[13].v.ob[0] = pauseCtx->infoPanelVtx[15].v.ob[0] =
            pauseCtx->infoPanelVtx[12].v.ob[0] + 18;

        pauseCtx->infoPanelVtx[12].v.ob[1] = pauseCtx->infoPanelVtx[13].v.ob[1] = WREG(18) - 3;

        pauseCtx->infoPanelVtx[14].v.ob[1] = pauseCtx->infoPanelVtx[15].v.ob[1] =
            pauseCtx->infoPanelVtx[12].v.ob[1] - 26;
    }

    pauseCtx->infoPanelVtx[9].v.tc[0] = pauseCtx->infoPanelVtx[11].v.tc[0] = pauseCtx->infoPanelVtx[13].v.tc[0] =
        pauseCtx->infoPanelVtx[15].v.tc[0] = 0x300;

    pauseCtx->infoPanelVtx[10].v.tc[1] = pauseCtx->infoPanelVtx[11].v.tc[1] = pauseCtx->infoPanelVtx[14].v.tc[1] =
        pauseCtx->infoPanelVtx[15].v.tc[1] = 0x400;

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    Matrix_Translate(0.0f, 0.0f, -144.0f, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 1755);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 90, 100, 130, 255);
    gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[0], 16, 0);

    gSPDisplayList(POLY_OPA_DISP++, gItemNamePanelDL);

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_808321A0, D_808321A2, D_808321A4, D_808321A6);
    }

    gSPDisplayList(POLY_OPA_DISP++, gLButtonIconDL);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 180, 210, 255, 220);

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_808321A0, D_808321A2, D_808321A4, D_808321A6);
    }

    gSPDisplayList(POLY_OPA_DISP++, gRButtonIconDL);

    if (pauseCtx->cursorSpecialPos != 0) {
        j = (pauseCtx->cursorSpecialPos - 8) * 4;
        pauseCtx->cursorVtx[0].v.ob[0] = pauseCtx->infoPanelVtx[j].v.ob[0];
        pauseCtx->cursorVtx[0].v.ob[1] = pauseCtx->infoPanelVtx[j].v.ob[1];
        KaleidoScope_DrawCursor(play, pauseCtx->pageIndex);
    }

    temp = pauseCtx->infoPanelOffsetY - 80;
    pauseCtx->infoPanelVtx[16].v.ob[1] = pauseCtx->infoPanelVtx[17].v.ob[1] = temp;

    pauseCtx->infoPanelVtx[18].v.ob[1] = pauseCtx->infoPanelVtx[19].v.ob[1] = pauseCtx->infoPanelVtx[16].v.ob[1] - 16;

    pauseCtx->infoPanelVtx[18].v.tc[1] = pauseCtx->infoPanelVtx[19].v.tc[1] = 0x200;

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 20, 30, 40, 0);

    if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->namedItem != PAUSE_ITEM_NONE) &&
        (pauseCtx->nameDisplayTimer < WREG(89)) &&
        (((u32)pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) ||
         (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PLAYBACK) ||
         ((pauseCtx->mainState >= PAUSE_MAIN_STATE_SONG_PROMPT_INIT) && (pauseCtx->mainState <= PAUSE_MAIN_STATE_7)) ||
         (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) &&
        (pauseCtx->cursorSpecialPos == 0)) {
        if (((u32)pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) ||
            (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PLAYBACK) ||
            ((pauseCtx->mainState >= PAUSE_MAIN_STATE_SONG_PROMPT_INIT) &&
             (pauseCtx->mainState <= PAUSE_MAIN_STATE_7)) ||
            (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) {
            pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] = -63;

            pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + 128;

            pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 0x1000;

            gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[16], 4, 0);

            if (pauseCtx->nameColorSet == 1) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 70, 70, 70, 255);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
            }

            // Note that this is used to draw both item name and map name textures, it expects that the dimensions and
            // format for both sets of textures are identical.
            POLY_OPA_DISP = KaleidoScope_QuadTextureIA4(POLY_OPA_DISP, pauseCtx->nameSegment, ITEM_NAME_TEX_WIDTH,
                                                        ITEM_NAME_TEX_HEIGHT, 0);
        }

#if DEBUG_FEATURES
        if (pauseCtx->pageIndex == PAUSE_MAP) {
            if (YREG(7) != 0) {
                PRINTF_COLOR_YELLOW();
                PRINTF("キンスタ数(%d) Get_KIN_STA=%x (%x)  (%x)\n", YREG(6), GET_GS_FLAGS(YREG(6)),
                       gAreaGsFlags[YREG(6)], gSaveContext.save.info.gsFlags[YREG(6) >> 2]);
                PRINTF_RST();

                YREG(7) = 0;
                SET_GS_FLAGS(D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]],
                             gAreaGsFlags[D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]]);
            }
        }
#endif

        if ((pauseCtx->pageIndex == PAUSE_MAP) && !sInDungeonScene) {
            if (GET_GS_FLAGS(D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]) ==
                gAreaGsFlags[D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]]) {

                pauseCtx->infoPanelVtx[24].v.ob[0] = pauseCtx->infoPanelVtx[26].v.ob[0] = -74;

                pauseCtx->infoPanelVtx[25].v.ob[0] = pauseCtx->infoPanelVtx[27].v.ob[0] =
                    pauseCtx->infoPanelVtx[24].v.ob[0] + 19;

                pauseCtx->infoPanelVtx[24].v.ob[1] = pauseCtx->infoPanelVtx[25].v.ob[1] =
                    pauseCtx->infoPanelVtx[24].v.ob[1] - 2;

                pauseCtx->infoPanelVtx[26].v.ob[1] = pauseCtx->infoPanelVtx[27].v.ob[1] =
                    pauseCtx->infoPanelVtx[24].v.ob[1] - 19;

                pauseCtx->infoPanelVtx[25].v.tc[0] = pauseCtx->infoPanelVtx[27].v.tc[0] = 0x300;

                gDPPipeSync(POLY_OPA_DISP++);
                gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[24], 4, 0);

                gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                                  PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gQuestIconGoldSkulltulaTex, QUEST_ICON_WIDTH,
                                                   QUEST_ICON_HEIGHT, 0);
            }
        }
    } else if ((pauseCtx->mainState < PAUSE_MAIN_STATE_3) || (pauseCtx->mainState == PAUSE_MAIN_STATE_7) ||
               (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) {
        pauseCtx->infoPanelVtx[20].v.ob[1] = pauseCtx->infoPanelVtx[21].v.ob[1] = temp;

        pauseCtx->infoPanelVtx[22].v.ob[1] = pauseCtx->infoPanelVtx[23].v.ob[1] =
            pauseCtx->infoPanelVtx[20].v.ob[1] - 16;

        pauseCtx->infoPanelVtx[22].v.tc[1] = pauseCtx->infoPanelVtx[23].v.tc[1] = 0x200;

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[16], 8, 0);

        if (pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) {
            pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                R_KALEIDO_UNK5(gSaveContext.language);

            pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

            pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + R_KALEIDO_UNK2(gSaveContext.language);

            pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADE0[gSaveContext.language];

            pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 0x300;

            pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] = D_8082ADE0[gSaveContext.language]
                                                                                      << 5;

            gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD60[gSaveContext.language],
                                                        D_8082ADE0[gSaveContext.language], 16, 4);
        } else if (pauseCtx->cursorSpecialPos != 0) {
            if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE)) {
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] = -63;

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 128;

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 0x1000;

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 200, 0, 255);

                if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(
                        POLY_OPA_DISP, D_8082AD78[pauseCtx->pageIndex][gSaveContext.language], 128, 16, 0);
                } else {
                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(
                        POLY_OPA_DISP, D_8082ADA8[pauseCtx->pageIndex][gSaveContext.language], 128, 16, 0);
                }
            }
        } else {
            if ((u32)pauseCtx->pageIndex == PAUSE_ITEM) {
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                    R_KALEIDO_UNK1(gSaveContext.language);

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 48;

                pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + R_KALEIDO_UNK4(gSaveContext.language);

                pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                    pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADD8[gSaveContext.language];

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 0x600;

                pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                    D_8082ADD8[gSaveContext.language] << 5;

                gSPDisplayList(POLY_OPA_DISP++, gCButtonIconsDL);

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD54[gSaveContext.language],
                                                            D_8082ADD8[gSaveContext.language], 16, 4);
            } else if ((pauseCtx->pageIndex == PAUSE_MAP) && sInDungeonScene) {

            } else if ((pauseCtx->pageIndex == PAUSE_QUEST) &&
                       ((pauseCtx->cursorSlot[PAUSE_QUEST] >= 6) && (pauseCtx->cursorSlot[PAUSE_QUEST] <= 0x11))) {
                if (pauseCtx->namedItem != PAUSE_ITEM_NONE) {
                    pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                        R_KALEIDO_UNK3(gSaveContext.language);

                    pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                        pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

                    pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                        pauseCtx->infoPanelVtx[16].v.ob[0] + R_KALEIDO_UNK2(gSaveContext.language);

#if OOT_PAL
                    if (gSaveContext.language == LANGUAGE_GER) {
                        pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                            pauseCtx->infoPanelVtx[16].v.ob[0] - 99;
                    }
#endif

                    pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                        pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADE8[gSaveContext.language];

                    pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 0x300;

                    pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                        D_8082ADE8[gSaveContext.language] << 5;

                    gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD6C[gSaveContext.language],
                                                                D_8082ADE8[gSaveContext.language], 16, 4);
                }
            } else if (pauseCtx->pageIndex == PAUSE_EQUIP) {
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                    R_KALEIDO_UNK6(gSaveContext.language);

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

                pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + R_KALEIDO_UNK2(gSaveContext.language);

                pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                    pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADD8[gSaveContext.language];

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 0x300;

                pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                    D_8082ADD8[gSaveContext.language] << 5;

                gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD54[gSaveContext.language],
                                                            D_8082ADD8[gSaveContext.language], 16, 4);
            }
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 2032);
}

void KaleidoScope_UpdateNamePanel(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    u16 texIndex;

    if ((pauseCtx->namedItem != pauseCtx->cursorItem[pauseCtx->pageIndex]) ||
        ((pauseCtx->pageIndex == PAUSE_MAP) && (pauseCtx->cursorSpecialPos != 0))) {

        pauseCtx->namedItem = pauseCtx->cursorItem[pauseCtx->pageIndex];
        texIndex = pauseCtx->namedItem;

        osCreateMesgQueue(&pauseCtx->loadQueue, &pauseCtx->loadMsg, 1);

        if (pauseCtx->namedItem != PAUSE_ITEM_NONE) {
            if ((pauseCtx->pageIndex == PAUSE_MAP) && !sInDungeonScene) {
                // `texIndex` is a `WorldMapPoint` enum value

                if (gSaveContext.language) { // != LANGUAGE_JPN for NTSC versions, LANGUAGE_ENG for PAL versions
                    texIndex += WORLD_MAP_POINT_MAX;
                }

#if OOT_PAL
                if (gSaveContext.language == LANGUAGE_FRA) {
                    texIndex += WORLD_MAP_POINT_MAX;
                }
#endif

                DMA_REQUEST_SYNC(pauseCtx->nameSegment,
                                 (uintptr_t)_map_name_staticSegmentRomStart + (texIndex * MAP_NAME_TEX1_SIZE),
                                 MAP_NAME_TEX1_SIZE, "../z_kaleido_scope_PAL.c", 2093);
            } else {
                PRINTF("zoom_name=%d\n", pauseCtx->namedItem);

                if (gSaveContext.language) { // != LANGUAGE_JPN for NTSC versions, LANGUAGE_ENG for PAL versions
                    texIndex += 123;
                }

#if OOT_PAL
                if (gSaveContext.language == LANGUAGE_FRA) {
                    texIndex += 123;
                }
#endif

                PRINTF("J_N=%d  point=%d\n", gSaveContext.language, texIndex);

                DMA_REQUEST_SYNC(pauseCtx->nameSegment,
                                 (uintptr_t)_item_name_staticSegmentRomStart + (texIndex * ITEM_NAME_TEX_SIZE),
                                 ITEM_NAME_TEX_SIZE, "../z_kaleido_scope_PAL.c", 2120);
            }

            pauseCtx->nameDisplayTimer = 0;
        }
    } else if (pauseCtx->nameColorSet == 0) {
        if (((pauseCtx->pageIndex == PAUSE_QUEST) &&
             ((pauseCtx->cursorSlot[PAUSE_QUEST] >= 6) && (pauseCtx->cursorSlot[PAUSE_QUEST] <= 0x11)) &&
             (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) ||
            (pauseCtx->pageIndex == PAUSE_ITEM) ||
            ((pauseCtx->pageIndex == PAUSE_EQUIP) && (pauseCtx->cursorX[PAUSE_EQUIP] != 0))) {
            if (pauseCtx->namedItem != ITEM_SOLD_OUT) {
                pauseCtx->nameDisplayTimer++;
                if (pauseCtx->nameDisplayTimer > WREG(88)) {
                    pauseCtx->nameDisplayTimer = 0;
                }
            }
        } else {
            pauseCtx->nameDisplayTimer = 0;
        }
    } else {
        pauseCtx->nameDisplayTimer = 0;
    }
}

void KaleidoScope_UpdatePageSwitch(PlayState* play, Input* input) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s32 frameAdvanceFreeze = false;

    if (R_PAUSE_PAGE_SWITCH_FRAME_ADVANCE_ON && !CHECK_BTN_ALL(input->press.button, BTN_L)) {
        frameAdvanceFreeze = true;
    }

    if (!frameAdvanceFreeze) {
        pauseCtx->eye.x += sPageSwitchEyeDx[pauseCtx->nextPageMode];
        pauseCtx->eye.z += sPageSwitchEyeDz[pauseCtx->nextPageMode];

        if (pauseCtx->nextPageMode) {}

        if (pauseCtx->pageSwitchTimer < ((4 * PAGE_SWITCH_NSTEPS) / 2)) {
            WREG(16) -= WREG(25) / WREG(6);
            WREG(17) -= WREG(26) / WREG(6);
        } else {
            WREG(16) += WREG(25) / WREG(6);
            WREG(17) += WREG(26) / WREG(6);
        }

        pauseCtx->pageSwitchTimer += 4;

        if (pauseCtx->pageSwitchTimer == (4 * PAGE_SWITCH_NSTEPS)) {
            pauseCtx->pageSwitchTimer = 0;
            pauseCtx->pageIndex = sPageSwitchNextPageIndex[pauseCtx->nextPageMode];
            pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
        }
    }
}

void KaleidoScope_SetView(PauseContext* pauseCtx, f32 x, f32 y, f32 z) {
    Vec3f eye;
    Vec3f lookAt;
    Vec3f up;

    eye.x = x;
    eye.y = y;
    eye.z = z;
    lookAt.x = lookAt.y = lookAt.z = 0.0f;
    up.x = up.z = 0.0f;
    up.y = 1.0f;

    View_LookAt(&pauseCtx->view, &eye, &lookAt, &up);
    View_Apply(&pauseCtx->view,
               VIEW_ALL | VIEW_FORCE_VIEWING | VIEW_FORCE_VIEWPORT | VIEW_FORCE_PROJECTION_PERSPECTIVE);
}

static u8 sPageBgColorRed[][4] = {
    { 10, 70, 70, 10 },   // VTX_PAGE_ITEM
    { 10, 90, 90, 10 },   // VTX_PAGE_EQUIP
    { 80, 140, 140, 80 }, // VTX_PAGE_MAP_DUNGEON
    { 80, 120, 120, 80 }, // VTX_PAGE_QUEST
    { 80, 140, 140, 80 }, // VTX_PAGE_MAP_WORLD
    { 50, 110, 110, 50 }, // VTX_PAGE_PROMPT
};
static u8 sPageBgColorGreen[][4] = {
    { 50, 100, 100, 50 }, // VTX_PAGE_ITEM
    { 50, 100, 100, 50 }, // VTX_PAGE_EQUIP
    { 40, 60, 60, 40 },   // VTX_PAGE_MAP_DUNGEON
    { 80, 120, 120, 80 }, // VTX_PAGE_QUEST
    { 40, 60, 60, 40 },   // VTX_PAGE_MAP_WORLD
    { 50, 110, 110, 50 }, // VTX_PAGE_PROMPT
};
static u8 sPageBgColorBlue[][4] = {
    { 80, 130, 130, 80 }, // VTX_PAGE_ITEM
    { 40, 60, 60, 40 },   // VTX_PAGE_EQUIP
    { 30, 60, 60, 30 },   // VTX_PAGE_MAP_DUNGEON
    { 50, 70, 70, 50 },   // VTX_PAGE_QUEST
    { 30, 60, 60, 30 },   // VTX_PAGE_MAP_WORLD
    { 50, 110, 110, 50 }, // VTX_PAGE_PROMPT
};

// CLAMP_MIN(*, 1) because C arrays can't have 0 length
static s16 sVtxPageItemQuadsX[CLAMP_MIN(VTX_PAGE_ITEM_QUADS, 1)] = { 0 };
static s16 sVtxPageEquipQuadsX[CLAMP_MIN(VTX_PAGE_EQUIP_QUADS, 1)] = { 0 };
static s16 sVtxPageMapDungeonQuadsX[VTX_PAGE_MAP_DUNGEON_QUADS] = {
    0xFFDC, 0x000C, 0xFFEE, 0x0046, 0x0046, 0x0046, 0xFFA8, 0xFFA8, 0xFFA8,
    0xFFA8, 0xFFA8, 0xFFA8, 0xFFA8, 0xFFA8, 0xFF96, 0xFFC2, 0xFFD8,
};
static s16 sVtxPageQuestQuadsX[CLAMP_MIN(VTX_PAGE_QUEST_QUADS, 1)] = { 0 };
static s16 sVtxPageMapWorldQuadsX[VTX_PAGE_MAP_WORLD_QUADS] = {
    47,   // WORLD_MAP_QUAD_CLOUDS_SACRED_FOREST_MEADOW
    -49,  // WORLD_MAP_QUAD_CLOUDS_HYRULE_FIELD
    -17,  // WORLD_MAP_QUAD_CLOUDS_LON_LON_RANCH
    -15,  // WORLD_MAP_QUAD_CLOUDS_MARKET
    -9,   // WORLD_MAP_QUAD_CLOUDS_HYRULE_CASTLE
    24,   // WORLD_MAP_QUAD_CLOUDS_KAKARIKO_VILLAGE
    43,   // WORLD_MAP_QUAD_CLOUDS_GRAVEYARD
    14,   // WORLD_MAP_QUAD_CLOUDS_DEATH_MOUNTAIN_TRAIL
    9,    // WORLD_MAP_QUAD_CLOUDS_GORON_CITY
    38,   // WORLD_MAP_QUAD_CLOUDS_ZORAS_RIVER
    82,   // WORLD_MAP_QUAD_CLOUDS_ZORAS_DOMAIN
    71,   // WORLD_MAP_QUAD_CLOUDS_ZORAS_FOUNTAIN
    -76,  // WORLD_MAP_QUAD_CLOUDS_GERUDO_VALLEY
    -87,  // WORLD_MAP_QUAD_CLOUDS_GERUDOS_FORTRESS
    -108, // WORLD_MAP_QUAD_CLOUDS_DESERT_COLOSSUS
    -54,  // WORLD_MAP_QUAD_CLOUDS_LAKE_HYLIA
    -93,  // WORLD_MAP_POINT_HAUNTED_WASTELAND
    -67,  // WORLD_MAP_POINT_GERUDOS_FORTRESS
    -56,  // WORLD_MAP_POINT_GERUDO_VALLEY
    -33,  // WORLD_MAP_POINT_LAKE_HYLIA
    -10,  // WORLD_MAP_POINT_LON_LON_RANCH
    1,    // WORLD_MAP_POINT_MARKET
    14,   // WORLD_MAP_POINT_HYRULE_FIELD
    24,   // WORLD_MAP_POINT_DEATH_MOUNTAIN
    35,   // WORLD_MAP_POINT_KAKARIKO_VILLAGE
    58,   // WORLD_MAP_POINT_LOST_WOODS
    74,   // WORLD_MAP_POINT_KOKIRI_FOREST
    89,   // WORLD_MAP_POINT_ZORAS_DOMAIN
    0,    // WORLD_MAP_QUAD_28
    -58,  // WORLD_MAP_QUAD_TRADE_QUEST_MARKER
    19,   // WORLD_MAP_QUAD_30
    28,   // WORLD_MAP_QUAD_31
};
static s16 sVtxPagePromptQuadsX[VTX_PAGE_PROMPT_QUADS] = {
    -76, // PROMPT_QUAD_MESSAGE
    -58, // PROMPT_QUAD_CURSOR_LEFT
    10,  // PROMPT_QUAD_CURSOR_RIGHT
    -58, // PROMPT_QUAD_CHOICE_YES
    10,  // PROMPT_QUAD_CHOICE_NO
};
static s16 sVtxPageItemQuadsWidth[CLAMP_MIN(VTX_PAGE_ITEM_QUADS, 1)] = { 0 };
static s16 sVtxPageEquipQuadsWidth[CLAMP_MIN(VTX_PAGE_EQUIP_QUADS, 1)] = { 0 };
static s16 sVtxPageMapDungeonQuadsWidth[VTX_PAGE_MAP_DUNGEON_QUADS] = {
    0x0030, 0x0030, 0x0060, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018,
    0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0010, 0x0010, 0x0018,
};
static s16 sVtxPageQuestQuadsWidth[CLAMP_MIN(VTX_PAGE_QUEST_QUADS, 1)] = { 0 };
static s16 sVtxPagePromptQuadsWidth[VTX_PAGE_PROMPT_QUADS] = {
    152, // PROMPT_QUAD_MESSAGE
    48,  // PROMPT_QUAD_CURSOR_LEFT
    48,  // PROMPT_QUAD_CURSOR_RIGHT
    48,  // PROMPT_QUAD_CHOICE_YES
    48,  // PROMPT_QUAD_CHOICE_NO
};
static s16 sVtxPageItemQuadsY[CLAMP_MIN(VTX_PAGE_ITEM_QUADS, 1)] = { 0 };
static s16 sVtxPageEquipQuadsY[CLAMP_MIN(VTX_PAGE_EQUIP_QUADS, 1)] = { 0 };
static s16 sVtxPageMapDungeonQuadsY[VTX_PAGE_MAP_DUNGEON_QUADS] = {
    0x001C, 0x001C, 0x002E, 0x001C, 0xFFFE, 0xFFE0, 0x0032, 0x0024, 0x0016,
    0x0008, 0xFFFA, 0xFFEC, 0xFFDE, 0xFFD0, 0x0012, 0x0012, 0x0032,
};
static s16 sVtxPageQuestQuadsY[CLAMP_MIN(VTX_PAGE_QUEST_QUADS, 1)] = { 0 };
static s16 sVtxPageMapWorldQuadsY[VTX_PAGE_MAP_WORLD_QUADS] = {
    15,  // WORLD_MAP_QUAD_CLOUDS_SACRED_FOREST_MEADOW
    40,  // WORLD_MAP_QUAD_CLOUDS_HYRULE_FIELD
    11,  // WORLD_MAP_QUAD_CLOUDS_LON_LON_RANCH
    45,  // WORLD_MAP_QUAD_CLOUDS_MARKET
    52,  // WORLD_MAP_QUAD_CLOUDS_HYRULE_CASTLE
    37,  // WORLD_MAP_QUAD_CLOUDS_KAKARIKO_VILLAGE
    36,  // WORLD_MAP_QUAD_CLOUDS_GRAVEYARD
    57,  // WORLD_MAP_QUAD_CLOUDS_DEATH_MOUNTAIN_TRAIL
    54,  // WORLD_MAP_QUAD_CLOUDS_GORON_CITY
    33,  // WORLD_MAP_QUAD_CLOUDS_ZORAS_RIVER
    31,  // WORLD_MAP_QUAD_CLOUDS_ZORAS_DOMAIN
    45,  // WORLD_MAP_QUAD_CLOUDS_ZORAS_FOUNTAIN
    32,  // WORLD_MAP_QUAD_CLOUDS_GERUDO_VALLEY
    42,  // WORLD_MAP_QUAD_CLOUDS_GERUDOS_FORTRESS
    49,  // WORLD_MAP_QUAD_CLOUDS_DESERT_COLOSSUS
    -10, // WORLD_MAP_QUAD_CLOUDS_LAKE_HYLIA
    31,  // WORLD_MAP_POINT_HAUNTED_WASTELAND
    27,  // WORLD_MAP_POINT_GERUDOS_FORTRESS
    15,  // WORLD_MAP_POINT_GERUDO_VALLEY
    -49, // WORLD_MAP_POINT_LAKE_HYLIA
    8,   // WORLD_MAP_POINT_LON_LON_RANCH
    38,  // WORLD_MAP_POINT_MARKET
    7,   // WORLD_MAP_POINT_HYRULE_FIELD
    47,  // WORLD_MAP_POINT_DEATH_MOUNTAIN
    30,  // WORLD_MAP_POINT_KAKARIKO_VILLAGE
    1,   // WORLD_MAP_POINT_LOST_WOODS
    -9,  // WORLD_MAP_POINT_KOKIRI_FOREST
    25,  // WORLD_MAP_POINT_ZORAS_DOMAIN
    0,   // WORLD_MAP_QUAD_28
    1,   // WORLD_MAP_QUAD_TRADE_QUEST_MARKER
    -32, // WORLD_MAP_QUAD_30
    -26, // WORLD_MAP_QUAD_31
};
static s16 sVtxPagePromptQuadsY[VTX_PAGE_PROMPT_QUADS] = {
    36, // PROMPT_QUAD_MESSAGE
    10, // PROMPT_QUAD_CURSOR_LEFT
    10, // PROMPT_QUAD_CURSOR_RIGHT
    -6, // PROMPT_QUAD_CHOICE_YES
    -6, // PROMPT_QUAD_CHOICE_NO
};
static s16 sVtxPageItemQuadsHeight[CLAMP_MIN(VTX_PAGE_ITEM_QUADS, 1)] = { 0 };
static s16 sVtxPageEquipQuadsHeight[CLAMP_MIN(VTX_PAGE_EQUIP_QUADS, 1)] = { 0 };
static s16 sVtxPageMapDungeonQuadsHeight[VTX_PAGE_MAP_DUNGEON_QUADS] = {
    0x0055, 0x0055, 0x0010, 0x0018, 0x0018, 0x0018, 0x0010, 0x0010, 0x0010,
    0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0018,
};
static s16 sVtxPageQuestQuadsHeight[CLAMP_MIN(VTX_PAGE_QUEST_QUADS, 1)] = { 0 };
static s16 sVtxPagePromptQuadsHeight[VTX_PAGE_PROMPT_QUADS] = {
    16, // PROMPT_QUAD_MESSAGE
    48, // PROMPT_QUAD_CURSOR_LEFT
    48, // PROMPT_QUAD_CURSOR_RIGHT
    16, // PROMPT_QUAD_CHOICE_YES
    16, // PROMPT_QUAD_CHOICE_NO
};

static s16* sVtxPageQuadsX[] = {
    sVtxPageItemQuadsX,       // VTX_PAGE_ITEM
    sVtxPageEquipQuadsX,      // VTX_PAGE_EQUIP
    sVtxPageMapDungeonQuadsX, // VTX_PAGE_MAP_DUNGEON
    sVtxPageQuestQuadsX,      // VTX_PAGE_QUEST
    sVtxPageMapWorldQuadsX,   // VTX_PAGE_MAP_WORLD
    sVtxPagePromptQuadsX,     // VTX_PAGE_PROMPT
};

static s16* sVtxPageQuadsWidth[] = {
    sVtxPageItemQuadsWidth,       // VTX_PAGE_ITEM
    sVtxPageEquipQuadsWidth,      // VTX_PAGE_EQUIP
    sVtxPageMapDungeonQuadsWidth, // VTX_PAGE_MAP_DUNGEON
    sVtxPageQuestQuadsWidth,      // VTX_PAGE_QUEST
    gVtxPageMapWorldQuadsWidth,   // VTX_PAGE_MAP_WORLD
    sVtxPagePromptQuadsWidth,     // VTX_PAGE_PROMPT
};

static s16* sVtxPageQuadsY[] = {
    sVtxPageItemQuadsY,       // VTX_PAGE_ITEM
    sVtxPageEquipQuadsY,      // VTX_PAGE_EQUIP
    sVtxPageMapDungeonQuadsY, // VTX_PAGE_MAP_DUNGEON
    sVtxPageQuestQuadsY,      // VTX_PAGE_QUEST
    sVtxPageMapWorldQuadsY,   // VTX_PAGE_MAP_WORLD
    sVtxPagePromptQuadsY,     // VTX_PAGE_PROMPT
};

static s16* sVtxPageQuadsHeight[] = {
    sVtxPageItemQuadsHeight,       // VTX_PAGE_ITEM
    sVtxPageEquipQuadsHeight,      // VTX_PAGE_EQUIP
    sVtxPageMapDungeonQuadsHeight, // VTX_PAGE_MAP_DUNGEON
    sVtxPageQuestQuadsHeight,      // VTX_PAGE_QUEST
    gVtxPageMapWorldQuadsHeight,   // VTX_PAGE_MAP_WORLD
    sVtxPagePromptQuadsHeight,     // VTX_PAGE_PROMPT
};

static s16 sVtxMapWorldAreaX[] = {
    -58,  // WORLD_MAP_AREA_HYRULE_FIELD
    11,   // WORLD_MAP_AREA_KAKARIKO_VILLAGE
    30,   // WORLD_MAP_AREA_GRAVEYARD
    30,   // WORLD_MAP_AREA_ZORAS_RIVER
    15,   // WORLD_MAP_AREA_KOKIRI_FOREST
    38,   // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
    -62,  // WORLD_MAP_AREA_LAKE_HYLIA
    60,   // WORLD_MAP_AREA_ZORAS_DOMAIN
    61,   // WORLD_MAP_AREA_ZORAS_FOUNTAIN
    -78,  // WORLD_MAP_AREA_GERUDO_VALLEY
    -300, // WORLD_MAP_AREA_LOST_WOODS
    -86,  // WORLD_MAP_AREA_DESERT_COLOSSUS
    -65,  // WORLD_MAP_AREA_GERUDOS_FORTRESS
    -300, // WORLD_MAP_AREA_HAUNTED_WASTELAND
    -300, // WORLD_MAP_AREA_MARKET
    -21,  // WORLD_MAP_AREA_HYRULE_CASTLE
    14,   // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
    13,   // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
    20,   // WORLD_MAP_AREA_GORON_CITY
    -34,  // WORLD_MAP_AREA_LON_LON_RANCH
    -300, // WORLD_MAP_AREA_QUESTION_MARK
};

static s16 sVtxMapWorldAreaWidth[] = {
    89, // WORLD_MAP_AREA_HYRULE_FIELD
    20, // WORLD_MAP_AREA_KAKARIKO_VILLAGE
    14, // WORLD_MAP_AREA_GRAVEYARD
    35, // WORLD_MAP_AREA_ZORAS_RIVER
    32, // WORLD_MAP_AREA_KOKIRI_FOREST
    17, // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
    50, // WORLD_MAP_AREA_LAKE_HYLIA
    16, // WORLD_MAP_AREA_ZORAS_DOMAIN
    21, // WORLD_MAP_AREA_ZORAS_FOUNTAIN
    20, // WORLD_MAP_AREA_GERUDO_VALLEY
    -1, // WORLD_MAP_AREA_LOST_WOODS
    32, // WORLD_MAP_AREA_DESERT_COLOSSUS
    16, // WORLD_MAP_AREA_GERUDOS_FORTRESS
    -1, // WORLD_MAP_AREA_HAUNTED_WASTELAND
    -1, // WORLD_MAP_AREA_MARKET
    19, // WORLD_MAP_AREA_HYRULE_CASTLE
    19, // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
    21, // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
    16, // WORLD_MAP_AREA_GORON_CITY
    20, // WORLD_MAP_AREA_LON_LON_RANCH
    -1, // WORLD_MAP_AREA_QUESTION_MARK
};

static s16 sVtxMapWorldAreaY[] = {
    1,    // WORLD_MAP_AREA_HYRULE_FIELD
    15,   // WORLD_MAP_AREA_KAKARIKO_VILLAGE
    20,   // WORLD_MAP_AREA_GRAVEYARD
    9,    // WORLD_MAP_AREA_ZORAS_RIVER
    -30,  // WORLD_MAP_AREA_KOKIRI_FOREST
    -17,  // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
    -34,  // WORLD_MAP_AREA_LAKE_HYLIA
    15,   // WORLD_MAP_AREA_ZORAS_DOMAIN
    30,   // WORLD_MAP_AREA_ZORAS_FOUNTAIN
    1,    // WORLD_MAP_AREA_GERUDO_VALLEY
    -300, // WORLD_MAP_AREA_LOST_WOODS
    42,   // WORLD_MAP_AREA_DESERT_COLOSSUS
    7,    // WORLD_MAP_AREA_GERUDOS_FORTRESS
    -300, // WORLD_MAP_AREA_HAUNTED_WASTELAND
    -300, // WORLD_MAP_AREA_MARKET
    24,   // WORLD_MAP_AREA_HYRULE_CASTLE
    36,   // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
    53,   // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
    37,   // WORLD_MAP_AREA_GORON_CITY
    -13,  // WORLD_MAP_AREA_LON_LON_RANCH
    -300, // WORLD_MAP_AREA_QUESTION_MARK
};

static s16 sVtxMapWorldAreaHeight[] = {
    36, // WORLD_MAP_AREA_HYRULE_FIELD
    15, // WORLD_MAP_AREA_KAKARIKO_VILLAGE
    16, // WORLD_MAP_AREA_GRAVEYARD
    23, // WORLD_MAP_AREA_ZORAS_RIVER
    23, // WORLD_MAP_AREA_KOKIRI_FOREST
    16, // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
    24, // WORLD_MAP_AREA_LAKE_HYLIA
    13, // WORLD_MAP_AREA_ZORAS_DOMAIN
    17, // WORLD_MAP_AREA_ZORAS_FOUNTAIN
    18, // WORLD_MAP_AREA_GERUDO_VALLEY
    1,  // WORLD_MAP_AREA_LOST_WOODS
    25, // WORLD_MAP_AREA_DESERT_COLOSSUS
    13, // WORLD_MAP_AREA_GERUDOS_FORTRESS
    1,  // WORLD_MAP_AREA_HAUNTED_WASTELAND
    1,  // WORLD_MAP_AREA_MARKET
    13, // WORLD_MAP_AREA_HYRULE_CASTLE
    21, // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
    15, // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
    13, // WORLD_MAP_AREA_GORON_CITY
    12, // WORLD_MAP_AREA_LON_LON_RANCH
    1,  // WORLD_MAP_AREA_QUESTION_MARK
};

s16 KaleidoScope_SetPageVertices(PlayState* play, Vtx* vtx, s16 vtxPage, s16 numQuads) {
    static s16 sTradeQuestMarkerBobY = 0;
    static s16 sTradeQuestMarkerBobTimer = 1;
    static s16 sTradeQuestMarkerBobState = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 i;
    s16 j;
    s16 bufI;
    s16 bufIAfterPageSections;
    s16 pageBgQuadX;
    s16 pageBgQuadY;
    s16* quadsX;
    s16* quadsWidth;
    s16* quadsY;
    s16* quadsHeight;

    // Vertices for KaleidoScope_DrawPageSections

    pageBgQuadX = 0 - (PAGE_BG_COLS * PAGE_BG_QUAD_WIDTH) / 2 - PAGE_BG_QUAD_WIDTH;

    // For each column
    for (bufI = 0, j = 0; j < PAGE_BG_COLS; j++) {
        pageBgQuadX += PAGE_BG_QUAD_WIDTH;

        // For each row
        for (pageBgQuadY = (PAGE_BG_ROWS * PAGE_BG_QUAD_HEIGHT) / 2, i = 0; i < PAGE_BG_ROWS;
             bufI += 4, i++, pageBgQuadY -= PAGE_BG_QUAD_HEIGHT) {
            vtx[bufI + 0].v.ob[0] = vtx[bufI + 2].v.ob[0] = pageBgQuadX;

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] = vtx[bufI + 0].v.ob[0] + PAGE_BG_QUAD_WIDTH;

            vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = pageBgQuadY + pauseCtx->pagesYOrigin1;

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] = vtx[bufI + 0].v.ob[1] - PAGE_BG_QUAD_HEIGHT;

            vtx[bufI + 0].v.ob[2] = vtx[bufI + 1].v.ob[2] = vtx[bufI + 2].v.ob[2] = vtx[bufI + 3].v.ob[2] = 0;

            vtx[bufI + 0].v.flag = vtx[bufI + 1].v.flag = vtx[bufI + 2].v.flag = vtx[bufI + 3].v.flag = 0;

            vtx[bufI + 0].v.tc[0] = vtx[bufI + 0].v.tc[1] = vtx[bufI + 1].v.tc[1] = vtx[bufI + 2].v.tc[0] = 0;

            vtx[bufI + 1].v.tc[0] = vtx[bufI + 3].v.tc[0] = PAGE_BG_QUAD_TEX_WIDTH * (1 << 5);

            vtx[bufI + 2].v.tc[1] = vtx[bufI + 3].v.tc[1] = PAGE_BG_QUAD_TEX_HEIGHT * (1 << 5);

            vtx[bufI + 0].v.cn[0] = vtx[bufI + 2].v.cn[0] = sPageBgColorRed[vtxPage][j + 0];

            vtx[bufI + 0].v.cn[1] = vtx[bufI + 2].v.cn[1] = sPageBgColorGreen[vtxPage][j + 0];

            vtx[bufI + 0].v.cn[2] = vtx[bufI + 2].v.cn[2] = sPageBgColorBlue[vtxPage][j + 0];

            vtx[bufI + 1].v.cn[0] = vtx[bufI + 3].v.cn[0] = sPageBgColorRed[vtxPage][j + 1];

            vtx[bufI + 1].v.cn[1] = vtx[bufI + 3].v.cn[1] = sPageBgColorGreen[vtxPage][j + 1];

            vtx[bufI + 1].v.cn[2] = vtx[bufI + 3].v.cn[2] = sPageBgColorBlue[vtxPage][j + 1];

            vtx[bufI + 0].v.cn[3] = vtx[bufI + 2].v.cn[3] = vtx[bufI + 1].v.cn[3] = vtx[bufI + 3].v.cn[3] =
                pauseCtx->alpha;
        }
    }

    bufIAfterPageSections = bufI;

    //

    if (numQuads != 0) {
        quadsX = sVtxPageQuadsX[vtxPage];
        quadsWidth = sVtxPageQuadsWidth[vtxPage];
        quadsY = sVtxPageQuadsY[vtxPage];
        quadsHeight = sVtxPageQuadsHeight[vtxPage];

        for (j = 0; j < numQuads; j++, bufI += 4) {
            vtx[bufI + 0].v.ob[0] = vtx[bufI + 2].v.ob[0] = quadsX[j];

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] = vtx[bufI + 0].v.ob[0] + quadsWidth[j];

            if (!IS_PAUSE_STATE_GAMEOVER(pauseCtx)) {
                vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = quadsY[j] + pauseCtx->pagesYOrigin1;
            } else {
                vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = YREG(60 + j) + pauseCtx->pagesYOrigin1;
            }

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] = vtx[bufI + 0].v.ob[1] - quadsHeight[j];

            vtx[bufI + 0].v.ob[2] = vtx[bufI + 1].v.ob[2] = vtx[bufI + 2].v.ob[2] = vtx[bufI + 3].v.ob[2] = 0;

            vtx[bufI + 0].v.flag = vtx[bufI + 1].v.flag = vtx[bufI + 2].v.flag = vtx[bufI + 3].v.flag = 0;

            vtx[bufI + 0].v.tc[0] = vtx[bufI + 0].v.tc[1] = vtx[bufI + 1].v.tc[1] = vtx[bufI + 2].v.tc[0] = 0;

            vtx[bufI + 1].v.tc[0] = vtx[bufI + 3].v.tc[0] = quadsWidth[j] << 5;

            vtx[bufI + 2].v.tc[1] = vtx[bufI + 3].v.tc[1] = quadsHeight[j] << 5;

            vtx[bufI + 0].v.cn[0] = vtx[bufI + 2].v.cn[0] = vtx[bufI + 0].v.cn[1] = vtx[bufI + 2].v.cn[1] =
                vtx[bufI + 0].v.cn[2] = vtx[bufI + 2].v.cn[2] = vtx[bufI + 1].v.cn[0] = vtx[bufI + 3].v.cn[0] =
                    vtx[bufI + 1].v.cn[1] = vtx[bufI + 3].v.cn[1] = vtx[bufI + 1].v.cn[2] = vtx[bufI + 3].v.cn[2] = 255;

            vtx[bufI + 0].v.cn[3] = vtx[bufI + 2].v.cn[3] = vtx[bufI + 1].v.cn[3] = vtx[bufI + 3].v.cn[3] =
                pauseCtx->alpha;
        }

        if (vtxPage == VTX_PAGE_MAP_WORLD) {
            // WORLD_MAP_QUAD_TRADE_QUEST_MARKER

            bufI -= ((VTX_PAGE_MAP_WORLD_QUADS - WORLD_MAP_QUAD_TRADE_QUEST_MARKER) * 4);

            //! @bug If worldMapArea is WORLD_MAP_AREA_GANONS_CASTLE or WORLD_MAP_AREA_MAX, this will read past the end
            //! of the sVtxMapWorldArea arrays and generate garbage vertex data. This is harmless though:
            //! if pauseCtx->tradeQuestMarker != TRADE_QUEST_MARKER_NONE then the vertices are immediately overwritten,
            //! and if pauseCtx->tradeQuestMarker == TRADE_QUEST_MARKER_NONE then KaleidoScope_DrawWorldMap will not
            //! draw anything with these vertices.
            j = gSaveContext.worldMapArea;

            vtx[bufI + 0].v.ob[0] = vtx[bufI + 2].v.ob[0] = sVtxMapWorldAreaX[j];

            if (j) {}

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] = vtx[bufI + 0].v.ob[0] + sVtxMapWorldAreaWidth[j];

            vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = sVtxMapWorldAreaY[j] + pauseCtx->pagesYOrigin1;

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] = vtx[bufI + 0].v.ob[1] - sVtxMapWorldAreaHeight[j];

            bufI += ((VTX_PAGE_MAP_WORLD_QUADS - WORLD_MAP_QUAD_TRADE_QUEST_MARKER) * 4);

            if (pauseCtx->tradeQuestMarker != TRADE_QUEST_MARKER_NONE) {
                if (sTradeQuestMarkerBobTimer == 0) {
                    sTradeQuestMarkerBobState++;
                    switch (sTradeQuestMarkerBobState) {
                        case 1:
                            sTradeQuestMarkerBobY = 3;
                            sTradeQuestMarkerBobTimer = 8;
                            break;
                        case 2:
                            sTradeQuestMarkerBobState = 0;
                            sTradeQuestMarkerBobY = 0;
                            sTradeQuestMarkerBobTimer = 6;
                            break;
                    }
                } else {
                    sTradeQuestMarkerBobTimer--;
                }

                j = bufIAfterPageSections + ((WORLD_MAP_QUAD_POINT_FIRST + pauseCtx->tradeQuestMarker) * 4);
                i = bufIAfterPageSections + (WORLD_MAP_QUAD_TRADE_QUEST_MARKER * 4);

                vtx[i + 0].v.ob[0] = vtx[i + 2].v.ob[0] = vtx[j + 0].v.ob[0];

                vtx[i + 1].v.ob[0] = vtx[i + 3].v.ob[0] = vtx[i + 0].v.ob[0] + 8;

                vtx[i + 0].v.ob[1] = vtx[i + 1].v.ob[1] = vtx[j + 0].v.ob[1] + 10 - sTradeQuestMarkerBobY;

                vtx[i + 2].v.ob[1] = vtx[i + 3].v.ob[1] = vtx[i + 0].v.ob[1] - 8;

                vtx[i + 0].v.ob[2] = vtx[i + 1].v.ob[2] = vtx[i + 2].v.ob[2] = vtx[i + 3].v.ob[2] = 0;

                vtx[i + 0].v.flag = vtx[i + 1].v.flag = vtx[i + 2].v.flag = vtx[i + 3].v.flag = 0;

                vtx[bufI].v.tc[0] = vtx[bufI].v.tc[1] = vtx[i + 1].v.tc[1] = vtx[i + 2].v.tc[0] = 0;

                vtx[i + 1].v.tc[0] = vtx[i + 3].v.tc[0] = 8 * (1 << 5);

                vtx[i + 2].v.tc[1] = vtx[i + 3].v.tc[1] = 8 * (1 << 5);

                vtx[i + 0].v.cn[0] = vtx[i + 2].v.cn[0] = vtx[i + 0].v.cn[1] = vtx[i + 2].v.cn[1] = vtx[i + 0].v.cn[2] =
                    vtx[i + 2].v.cn[2] = vtx[i + 1].v.cn[0] = vtx[i + 3].v.cn[0] = vtx[i + 1].v.cn[1] =
                        vtx[i + 3].v.cn[1] = vtx[i + 1].v.cn[2] = vtx[i + 3].v.cn[2] = 255;

                vtx[i + 0].v.cn[3] = vtx[i + 2].v.cn[3] = vtx[i + 1].v.cn[3] = vtx[i + 3].v.cn[3] = pauseCtx->alpha;
            }
        }
    }

    return bufI;
}

static s16 sItemVtxQuadsWithAmmo[] = {
    SLOT_DEKU_STICK * 4, // ITEM_QUAD_AMMO_STICK_
    SLOT_DEKU_NUT * 4,   // ITEM_QUAD_AMMO_NUT_
    SLOT_BOMB * 4,       // ITEM_QUAD_AMMO_BOMB_
    SLOT_BOW * 4,        // ITEM_QUAD_AMMO_BOW_
    SLOT_SLINGSHOT * 4,  // ITEM_QUAD_AMMO_SLINGSHOT_
    SLOT_BOMBCHU * 4,    // ITEM_QUAD_AMMO_BOMBCHU_
    SLOT_MAGIC_BEAN * 4, // ITEM_QUAD_AMMO_BEAN_
};

static s16 D_8082B12C[] = { -114, 12, 44, 76 };

static u8 D_8082B134[] = { 1, 5, 9, 13 };

static s16 sQuestQuadsX[] = {
    74,   // QUEST_MEDALLION_FOREST
    74,   // QUEST_MEDALLION_FIRE
    46,   // QUEST_MEDALLION_WATER
    18,   // QUEST_MEDALLION_SPIRIT
    18,   // QUEST_MEDALLION_SHADOW
    46,   // QUEST_MEDALLION_LIGHT
    -108, // QUEST_SONG_MINUET
    -90,  // QUEST_SONG_BOLERO
    -72,  // QUEST_SONG_SERENADE
    -54,  // QUEST_SONG_REQUIEM
    -36,  // QUEST_SONG_NOCTURNE
    -18,  // QUEST_SONG_PRELUDE
    -108, // QUEST_SONG_LULLABY
    -90,  // QUEST_SONG_EPONA
    -72,  // QUEST_SONG_SARIA
    -54,  // QUEST_SONG_SUN
    -36,  // QUEST_SONG_TIME
    -18,  // QUEST_SONG_STORMS
    20,   // QUEST_KOKIRI_EMERALD
    46,   // QUEST_GORON_RUBY
    72,   // QUEST_ZORA_SAPPHIRE
    -110, // QUEST_STONE_OF_AGONY
    -86,  // QUEST_GERUDOS_CARD
    -110, // QUEST_SKULL_TOKEN
    -54,  // QUEST_HEART_PIECE
    -98,  // QUEST_QUAD_SONG_NOTE_A1
    -86,  // QUEST_QUAD_SONG_NOTE_A2
    -74,  // QUEST_QUAD_SONG_NOTE_A3
    -62,  // QUEST_QUAD_SONG_NOTE_A4
    -50,  // QUEST_QUAD_SONG_NOTE_A5
    -38,  // QUEST_QUAD_SONG_NOTE_A6
    -26,  // QUEST_QUAD_SONG_NOTE_A7
    -14,  // QUEST_QUAD_SONG_NOTE_A8
    -98,  // QUEST_QUAD_SONG_NOTE_B1
    -86,  // QUEST_QUAD_SONG_NOTE_B2
    -74,  // QUEST_QUAD_SONG_NOTE_B3
    -62,  // QUEST_QUAD_SONG_NOTE_B4
    -50,  // QUEST_QUAD_SONG_NOTE_B5
    -38,  // QUEST_QUAD_SONG_NOTE_B6
    -26,  // QUEST_QUAD_SONG_NOTE_B7
    -14,  // QUEST_QUAD_SONG_NOTE_B8
    -88,  // QUEST_QUAD_SKULL_TOKENS_DIGIT1_SHADOW
    -81,  // QUEST_QUAD_SKULL_TOKENS_DIGIT2_SHADOW
    -72,  // QUEST_QUAD_SKULL_TOKENS_DIGIT3_SHADOW
    -90,  // QUEST_QUAD_SKULL_TOKENS_DIGIT1
    -83,  // QUEST_QUAD_SKULL_TOKENS_DIGIT2
    -74,  // QUEST_QUAD_SKULL_TOKENS_DIGIT3
};

static s16 sQuestQuadsY[] = {
    38,  // QUEST_MEDALLION_FOREST
    6,   // QUEST_MEDALLION_FIRE
    -12, // QUEST_MEDALLION_WATER
    6,   // QUEST_MEDALLION_SPIRIT
    38,  // QUEST_MEDALLION_SHADOW
    56,  // QUEST_MEDALLION_LIGHT
    -20, // QUEST_SONG_MINUET
    -20, // QUEST_SONG_BOLERO
    -20, // QUEST_SONG_SERENADE
    -20, // QUEST_SONG_REQUIEM
    -20, // QUEST_SONG_NOCTURNE
    -20, // QUEST_SONG_PRELUDE
    2,   // QUEST_SONG_LULLABY
    2,   // QUEST_SONG_EPONA
    2,   // QUEST_SONG_SARIA
    2,   // QUEST_SONG_SUN
    2,   // QUEST_SONG_TIME
    2,   // QUEST_SONG_STORMS
    -46, // QUEST_KOKIRI_EMERALD
    -46, // QUEST_GORON_RUBY
    -46, // QUEST_ZORA_SAPPHIRE
    58,  // QUEST_STONE_OF_AGONY
    58,  // QUEST_GERUDOS_CARD
    34,  // QUEST_SKULL_TOKEN
    58,  // QUEST_HEART_PIECE
    -52, // QUEST_QUAD_SONG_NOTE_A1
    -52, // QUEST_QUAD_SONG_NOTE_A2
    -52, // QUEST_QUAD_SONG_NOTE_A3
    -52, // QUEST_QUAD_SONG_NOTE_A4
    -52, // QUEST_QUAD_SONG_NOTE_A5
    -52, // QUEST_QUAD_SONG_NOTE_A6
    -52, // QUEST_QUAD_SONG_NOTE_A7
    -52, // QUEST_QUAD_SONG_NOTE_A8
    -52, // QUEST_QUAD_SONG_NOTE_B1
    -52, // QUEST_QUAD_SONG_NOTE_B2
    -52, // QUEST_QUAD_SONG_NOTE_B3
    -52, // QUEST_QUAD_SONG_NOTE_B4
    -52, // QUEST_QUAD_SONG_NOTE_B5
    -52, // QUEST_QUAD_SONG_NOTE_B6
    -52, // QUEST_QUAD_SONG_NOTE_B7
    -52, // QUEST_QUAD_SONG_NOTE_B8
    34,  // QUEST_QUAD_SKULL_TOKENS_DIGIT1_SHADOW
    34,  // QUEST_QUAD_SKULL_TOKENS_DIGIT2_SHADOW
    34,  // QUEST_QUAD_SKULL_TOKENS_DIGIT3_SHADOW
    36,  // QUEST_QUAD_SKULL_TOKENS_DIGIT1
    36,  // QUEST_QUAD_SKULL_TOKENS_DIGIT2
    36,  // QUEST_QUAD_SKULL_TOKENS_DIGIT3
};

static s16 sQuestQuadsSize[] = {
    24, // QUEST_MEDALLION_FOREST
    24, // QUEST_MEDALLION_FIRE
    24, // QUEST_MEDALLION_WATER
    24, // QUEST_MEDALLION_SPIRIT
    24, // QUEST_MEDALLION_SHADOW
    24, // QUEST_MEDALLION_LIGHT
    24, // QUEST_SONG_MINUET
    24, // QUEST_SONG_BOLERO
    24, // QUEST_SONG_SERENADE
    24, // QUEST_SONG_REQUIEM
    24, // QUEST_SONG_NOCTURNE
    24, // QUEST_SONG_PRELUDE
    24, // QUEST_SONG_LULLABY
    24, // QUEST_SONG_EPONA
    24, // QUEST_SONG_SARIA
    24, // QUEST_SONG_SUN
    24, // QUEST_SONG_TIME
    24, // QUEST_SONG_STORMS
    24, // QUEST_KOKIRI_EMERALD
    24, // QUEST_GORON_RUBY
    24, // QUEST_ZORA_SAPPHIRE
    24, // QUEST_STONE_OF_AGONY
    24, // QUEST_GERUDOS_CARD
    24, // QUEST_SKULL_TOKEN
    48, // QUEST_HEART_PIECE
    16, // QUEST_QUAD_SONG_NOTE_A1
    16, // QUEST_QUAD_SONG_NOTE_A2
    16, // QUEST_QUAD_SONG_NOTE_A3
    16, // QUEST_QUAD_SONG_NOTE_A4
    16, // QUEST_QUAD_SONG_NOTE_A5
    16, // QUEST_QUAD_SONG_NOTE_A6
    16, // QUEST_QUAD_SONG_NOTE_A7
    16, // QUEST_QUAD_SONG_NOTE_A8
    16, // QUEST_QUAD_SONG_NOTE_B1
    16, // QUEST_QUAD_SONG_NOTE_B2
    16, // QUEST_QUAD_SONG_NOTE_B3
    16, // QUEST_QUAD_SONG_NOTE_B4
    16, // QUEST_QUAD_SONG_NOTE_B5
    16, // QUEST_QUAD_SONG_NOTE_B6
    16, // QUEST_QUAD_SONG_NOTE_B7
    16, // QUEST_QUAD_SONG_NOTE_B8
    16, // QUEST_QUAD_SKULL_TOKENS_DIGIT1_SHADOW
    16, // QUEST_QUAD_SKULL_TOKENS_DIGIT2_SHADOW
    16, // QUEST_QUAD_SKULL_TOKENS_DIGIT3_SHADOW
    16, // QUEST_QUAD_SKULL_TOKENS_DIGIT1
    16, // QUEST_QUAD_SKULL_TOKENS_DIGIT2
    16, // QUEST_QUAD_SKULL_TOKENS_DIGIT3
};

void KaleidoScope_SetVertices(PlayState* play, GraphicsContext* gfxCtx) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 x;
    s16 y;
    s16 i;
    s16 j;
    s16 k;

    pauseCtx->pagesYOrigin1 = 0;

    if ((pauseCtx->state == PAUSE_STATE_OPENING_1) || (pauseCtx->state >= PAUSE_STATE_CLOSING) ||
        ((pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) &&
         ((pauseCtx->savePromptState == PAUSE_SAVE_PROMPT_STATE_CLOSING) ||
          (pauseCtx->savePromptState == PAUSE_SAVE_PROMPT_STATE_CLOSING_AFTER_SAVED))) ||
        ((pauseCtx->state >= PAUSE_STATE_GAME_OVER_START) && (pauseCtx->state <= PAUSE_STATE_GAME_OVER_SHOW_WINDOW))) {
        // When opening/closing, translate the page vertices so that the pages rotate around their lower edge
        // instead of the middle.
        pauseCtx->pagesYOrigin1 = PAUSE_PAGES_Y_ORIGIN_1_LOWER;
    }

    pauseCtx->itemPageVtx = GRAPH_ALLOC(gfxCtx, ((PAGE_BG_QUADS + VTX_PAGE_ITEM_QUADS) * 4) * sizeof(Vtx));
    KaleidoScope_SetPageVertices(play, pauseCtx->itemPageVtx, VTX_PAGE_ITEM, VTX_PAGE_ITEM_QUADS);

    pauseCtx->equipPageVtx = GRAPH_ALLOC(gfxCtx, ((PAGE_BG_QUADS + VTX_PAGE_EQUIP_QUADS) * 4) * sizeof(Vtx));
    KaleidoScope_SetPageVertices(play, pauseCtx->equipPageVtx, VTX_PAGE_EQUIP, VTX_PAGE_EQUIP_QUADS);

    if (!sInDungeonScene) {
        pauseCtx->mapPageVtx = GRAPH_ALLOC(
            gfxCtx, ((PAGE_BG_QUADS + VTX_PAGE_MAP_WORLD_QUADS + WORLD_MAP_IMAGE_FRAG_NUM) * 4) * sizeof(Vtx));
        j = KaleidoScope_SetPageVertices(play, pauseCtx->mapPageVtx, VTX_PAGE_MAP_WORLD, VTX_PAGE_MAP_WORLD_QUADS);

        for (i = 0, y = 58; i < WORLD_MAP_IMAGE_FRAG_NUM; i++, j += 4, y -= WORLD_MAP_IMAGE_FRAG_HEIGHT) {
            pauseCtx->mapPageVtx[j + 0].v.ob[0] = pauseCtx->mapPageVtx[j + 2].v.ob[0] = 0 - (WORLD_MAP_IMAGE_WIDTH / 2);

            pauseCtx->mapPageVtx[j + 1].v.ob[0] = pauseCtx->mapPageVtx[j + 3].v.ob[0] =
                pauseCtx->mapPageVtx[j + 0].v.ob[0] + WORLD_MAP_IMAGE_WIDTH;

            pauseCtx->mapPageVtx[j + 0].v.ob[1] = pauseCtx->mapPageVtx[j + 1].v.ob[1] = y + pauseCtx->pagesYOrigin1;

            pauseCtx->mapPageVtx[j + 2].v.ob[1] = pauseCtx->mapPageVtx[j + 3].v.ob[1] =
                pauseCtx->mapPageVtx[j + 0].v.ob[1] - WORLD_MAP_IMAGE_FRAG_HEIGHT;

            pauseCtx->mapPageVtx[j + 0].v.ob[2] = pauseCtx->mapPageVtx[j + 1].v.ob[2] =
                pauseCtx->mapPageVtx[j + 2].v.ob[2] = pauseCtx->mapPageVtx[j + 3].v.ob[2] = 0;

            pauseCtx->mapPageVtx[j + 0].v.flag = pauseCtx->mapPageVtx[j + 1].v.flag =
                pauseCtx->mapPageVtx[j + 2].v.flag = pauseCtx->mapPageVtx[j + 3].v.flag = 0;

            pauseCtx->mapPageVtx[j + 0].v.tc[0] = pauseCtx->mapPageVtx[j + 0].v.tc[1] =
                pauseCtx->mapPageVtx[j + 1].v.tc[1] = pauseCtx->mapPageVtx[j + 2].v.tc[0] = 0;

            pauseCtx->mapPageVtx[j + 1].v.tc[0] = pauseCtx->mapPageVtx[j + 3].v.tc[0] =
                WORLD_MAP_IMAGE_WIDTH * (1 << 5);

            pauseCtx->mapPageVtx[j + 2].v.tc[1] = pauseCtx->mapPageVtx[j + 3].v.tc[1] =
                WORLD_MAP_IMAGE_FRAG_HEIGHT * (1 << 5);

            pauseCtx->mapPageVtx[j + 0].v.cn[0] = pauseCtx->mapPageVtx[j + 2].v.cn[0] =
                pauseCtx->mapPageVtx[j + 0].v.cn[1] = pauseCtx->mapPageVtx[j + 2].v.cn[1] =
                    pauseCtx->mapPageVtx[j + 0].v.cn[2] = pauseCtx->mapPageVtx[j + 2].v.cn[2] =
                        pauseCtx->mapPageVtx[j + 1].v.cn[0] = pauseCtx->mapPageVtx[j + 3].v.cn[0] =
                            pauseCtx->mapPageVtx[j + 1].v.cn[1] = pauseCtx->mapPageVtx[j + 3].v.cn[1] =
                                pauseCtx->mapPageVtx[j + 1].v.cn[2] = pauseCtx->mapPageVtx[j + 3].v.cn[2] =
                                    pauseCtx->mapPageVtx[j + 0].v.cn[3] = pauseCtx->mapPageVtx[j + 2].v.cn[3] =
                                        pauseCtx->mapPageVtx[j + 1].v.cn[3] = pauseCtx->mapPageVtx[j + 3].v.cn[3] =
                                            pauseCtx->alpha;
        }

        pauseCtx->mapPageVtx[j - 2].v.ob[1] = pauseCtx->mapPageVtx[j - 1].v.ob[1] =
            pauseCtx->mapPageVtx[j - 4].v.ob[1] - (WORLD_MAP_IMAGE_HEIGHT % WORLD_MAP_IMAGE_FRAG_HEIGHT);

        pauseCtx->mapPageVtx[j - 2].v.tc[1] = pauseCtx->mapPageVtx[j - 1].v.tc[1] =
            (WORLD_MAP_IMAGE_HEIGHT % WORLD_MAP_IMAGE_FRAG_HEIGHT) * (1 << 5);
    } else {
        pauseCtx->mapPageVtx = GRAPH_ALLOC(gfxCtx, ((PAGE_BG_QUADS + VTX_PAGE_MAP_DUNGEON_QUADS) * 4) * sizeof(Vtx));
        KaleidoScope_SetPageVertices(play, pauseCtx->mapPageVtx, VTX_PAGE_MAP_DUNGEON, VTX_PAGE_MAP_DUNGEON_QUADS);
    }

    pauseCtx->questPageVtx = GRAPH_ALLOC(gfxCtx, ((PAGE_BG_QUADS + VTX_PAGE_QUEST_QUADS) * 4) * sizeof(Vtx));
    KaleidoScope_SetPageVertices(play, pauseCtx->questPageVtx, VTX_PAGE_QUEST, VTX_PAGE_QUEST_QUADS);

    pauseCtx->cursorVtx = GRAPH_ALLOC(gfxCtx, (PAUSE_CURSOR_QUAD_MAX * 4) * sizeof(Vtx));

    for (i = 0; i < (PAUSE_CURSOR_QUAD_MAX * 4); i++) {
        pauseCtx->cursorVtx[i].v.ob[0] = pauseCtx->cursorVtx[i].v.ob[1] = pauseCtx->cursorVtx[i].v.ob[2] = 0;

        pauseCtx->cursorVtx[i].v.flag = 0;

        pauseCtx->cursorVtx[i].v.tc[0] = pauseCtx->cursorVtx[i].v.tc[1] = 0;

        pauseCtx->cursorVtx[i].v.cn[0] = pauseCtx->cursorVtx[i].v.cn[1] = pauseCtx->cursorVtx[i].v.cn[2] =
            pauseCtx->cursorVtx[i].v.cn[3] = 255;
    }

    // PAUSE_CURSOR_QUAD_TL
    pauseCtx->cursorVtx[1].v.tc[0] = pauseCtx->cursorVtx[2].v.tc[1] = pauseCtx->cursorVtx[3].v.tc[0] =
        pauseCtx->cursorVtx[3].v.tc[1]
        // PAUSE_CURSOR_QUAD_TR
        = pauseCtx->cursorVtx[5].v.tc[0] = pauseCtx->cursorVtx[6].v.tc[1] = pauseCtx->cursorVtx[7].v.tc[0] =
            pauseCtx->cursorVtx[7].v.tc[1]
        // PAUSE_CURSOR_QUAD_BL
        = pauseCtx->cursorVtx[9].v.tc[0] = pauseCtx->cursorVtx[10].v.tc[1] = pauseCtx->cursorVtx[11].v.tc[0] =
            pauseCtx->cursorVtx[11].v.tc[1]
        // PAUSE_CURSOR_QUAD_BR
        = pauseCtx->cursorVtx[13].v.tc[0] = pauseCtx->cursorVtx[14].v.tc[1] = pauseCtx->cursorVtx[15].v.tc[0] =
            pauseCtx->cursorVtx[15].v.tc[1] = 16 * (1 << 5);
    // PAUSE_CURSOR_QUAD_4
    pauseCtx->cursorVtx[17].v.tc[0] = pauseCtx->cursorVtx[18].v.tc[1] = pauseCtx->cursorVtx[19].v.tc[0] =
        pauseCtx->cursorVtx[19].v.tc[1] = 32 * (1 << 5);

    pauseCtx->itemVtx = GRAPH_ALLOC(gfxCtx, (ITEM_QUAD_MAX * 4) * sizeof(Vtx));

    // ITEM_QUAD_GRID_FIRST to ITEM_QUAD_GRID_LAST

    for (k = 0, i = 0, y = (ITEM_GRID_ROWS * ITEM_GRID_CELL_HEIGHT) / 2 - 6; k < ITEM_GRID_ROWS;
         k++, y -= ITEM_GRID_CELL_HEIGHT) {
        for (x = 0 - (ITEM_GRID_COLS * ITEM_GRID_CELL_WIDTH) / 2, j = 0; j < ITEM_GRID_COLS;
             j++, i += 4, x += ITEM_GRID_CELL_WIDTH) {
            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = x + ITEM_GRID_QUAD_MARGIN;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] =
                pauseCtx->itemVtx[i + 0].v.ob[0] + ITEM_GRID_QUAD_WIDTH;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] =
                y + pauseCtx->pagesYOrigin1 - ITEM_GRID_QUAD_MARGIN;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] =
                pauseCtx->itemVtx[i + 0].v.ob[1] - ITEM_GRID_QUAD_HEIGHT;

            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = ITEM_GRID_QUAD_TEX_SIZE * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = 255;
        }
    }

    // ITEM_QUAD_GRID_SELECTED_C_LEFT, ITEM_QUAD_GRID_SELECTED_C_DOWN, ITEM_QUAD_GRID_SELECTED_C_RIGHT

    for (j = 1; j < 4; i += 4, j++) {
        if (gSaveContext.save.info.equips.cButtonSlots[j - 1] != ITEM_NONE) {
            k = gSaveContext.save.info.equips.cButtonSlots[j - 1] * 4;

            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] =
                pauseCtx->itemVtx[k].v.ob[0] + ITEM_GRID_SELECTED_QUAD_MARGIN;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] =
                pauseCtx->itemVtx[i + 0].v.ob[0] + ITEM_GRID_SELECTED_QUAD_WIDTH;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] =
                pauseCtx->itemVtx[k].v.ob[1] - ITEM_GRID_SELECTED_QUAD_MARGIN;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] =
                pauseCtx->itemVtx[i + 0].v.ob[1] - ITEM_GRID_SELECTED_QUAD_HEIGHT;

            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = ITEM_GRID_SELECTED_QUAD_TEX_SIZE * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = pauseCtx->alpha;
        } else {
            // No item equipped on the C button, put the quad out of view

            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = -300;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] =
                pauseCtx->itemVtx[i + 0].v.ob[0] + ITEM_GRID_SELECTED_QUAD_WIDTH;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = 300;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] =
                pauseCtx->itemVtx[i + 0].v.ob[1] - ITEM_GRID_SELECTED_QUAD_HEIGHT;
        }
    }

    // ITEM_QUAD_AMMO_*

    for (i = ITEM_QUAD_AMMO_FIRST * 4, j = 0; j < 7; j++) {
        k = sItemVtxQuadsWithAmmo[j];

        // tens

        pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] =
            pauseCtx->itemVtx[k].v.ob[0] + ITEM_AMMO_TENS_QUAD_OFFSET_X;

        pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] =
            pauseCtx->itemVtx[i + 0].v.ob[0] + ITEM_AMMO_DIGIT_QUAD_WIDTH;

        pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] =
            pauseCtx->itemVtx[k].v.ob[1] - ITEM_AMMO_TENS_QUAD_OFFSET_Y;

        pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] =
            pauseCtx->itemVtx[i + 0].v.ob[1] - ITEM_AMMO_DIGIT_QUAD_HEIGHT;

        // ones

        pauseCtx->itemVtx[i + 4].v.ob[0] = pauseCtx->itemVtx[i + 6].v.ob[0] =
            pauseCtx->itemVtx[i + 0].v.ob[0] + ITEM_AMMO_ONES_QUAD_OFFSET_X;

        pauseCtx->itemVtx[i + 5].v.ob[0] = pauseCtx->itemVtx[i + 7].v.ob[0] =
            pauseCtx->itemVtx[i + 4].v.ob[0] + ITEM_AMMO_DIGIT_QUAD_WIDTH;

        pauseCtx->itemVtx[i + 4].v.ob[1] = pauseCtx->itemVtx[i + 5].v.ob[1] =
            pauseCtx->itemVtx[i + 0].v.ob[1] - ITEM_AMMO_ONES_QUAD_OFFSET_Y;

        pauseCtx->itemVtx[i + 6].v.ob[1] = pauseCtx->itemVtx[i + 7].v.ob[1] =
            pauseCtx->itemVtx[i + 4].v.ob[1] - ITEM_AMMO_DIGIT_QUAD_HEIGHT;

        // tens, ones

        for (k = 0; k < 2; k++, i += 4) {
            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = ITEM_AMMO_DIGIT_QUAD_TEX_SIZE * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    pauseCtx->equipVtx = GRAPH_ALLOC(gfxCtx, 112 * sizeof(Vtx));

    for (k = 0, i = 0, y = 58; i < 4; i++, y -= 32) {
        for (j = 0; j < 4; j++, k += 4) {
            pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = D_8082B12C[j] + 2;

            pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] =
                pauseCtx->equipVtx[k + 0].v.ob[0] + 28;

            pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = y + pauseCtx->pagesYOrigin1 - 2;

            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 28;

            pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
                pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

            pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
                pauseCtx->equipVtx[k + 3].v.flag = 0;

            pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
                pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

            pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[0] =
                pauseCtx->equipVtx[k + 3].v.tc[1] = 0x400;

            pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
                pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] =
                    pauseCtx->equipVtx[k + 1].v.cn[1] = pauseCtx->equipVtx[k + 2].v.cn[1] =
                        pauseCtx->equipVtx[k + 3].v.cn[1] = pauseCtx->equipVtx[k + 0].v.cn[2] =
                            pauseCtx->equipVtx[k + 1].v.cn[2] = pauseCtx->equipVtx[k + 2].v.cn[2] =
                                pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

            pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
                pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    for (j = 0; j < 4; k += 4, j++) {
        if (CUR_EQUIP_VALUE(j) != 0) {
            i = (CUR_EQUIP_VALUE(j) + D_8082B134[j] - 1) * 4;

            pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = pauseCtx->equipVtx[i].v.ob[0] - 2;

            pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] =
                pauseCtx->equipVtx[k + 0].v.ob[0] + 32;

            pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = pauseCtx->equipVtx[i].v.ob[1] + 2;

            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 32;

            pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
                pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

            pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
                pauseCtx->equipVtx[k + 3].v.flag = 0;

            pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
                pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

            pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[0] =
                pauseCtx->equipVtx[k + 3].v.tc[1] = 0x400;

            pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
                pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] =
                    pauseCtx->equipVtx[k + 1].v.cn[1] = pauseCtx->equipVtx[k + 2].v.cn[1] =
                        pauseCtx->equipVtx[k + 3].v.cn[1] = pauseCtx->equipVtx[k + 0].v.cn[2] =
                            pauseCtx->equipVtx[k + 1].v.cn[2] = pauseCtx->equipVtx[k + 2].v.cn[2] =
                                pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

            pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
                pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    x = 112;
    y = 50;
    for (;;) {
        pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = -64;

        pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] = pauseCtx->equipVtx[k + 0].v.ob[0] + 64;

        pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = y + pauseCtx->pagesYOrigin1;

        pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] = pauseCtx->equipVtx[k + 0].v.ob[1] - 32;

        pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
            pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

        pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
            pauseCtx->equipVtx[k + 3].v.flag = 0;

        pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
            pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

        pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 3].v.tc[0] = 0x800;

        pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[1] = 0x400;

        pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
            pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] = pauseCtx->equipVtx[k + 1].v.cn[1] =
                pauseCtx->equipVtx[k + 2].v.cn[1] = pauseCtx->equipVtx[k + 3].v.cn[1] =
                    pauseCtx->equipVtx[k + 0].v.cn[2] = pauseCtx->equipVtx[k + 1].v.cn[2] =
                        pauseCtx->equipVtx[k + 2].v.cn[2] = pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

        pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
            pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;

        x -= 32;
        if (x < 0) {
            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 0x10;

            pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[1] = 0x200;
            break;
        }

        y -= 32;
        k += 4;
    }

    pauseCtx->questVtx = GRAPH_ALLOC(gfxCtx, QUEST_QUAD_MAX * 4 * sizeof(Vtx));

    for (k = 0, j = 0; j < QUEST_QUAD_MAX; j++, k += 4) {
        s16 quadWidth = sQuestQuadsSize[j];

        if ((j < QUEST_SONG_MINUET) || (j >= QUEST_QUAD_SKULL_TOKENS_DIGIT1_SHADOW)) {
            pauseCtx->questVtx[k + 0].v.ob[0] = pauseCtx->questVtx[k + 2].v.ob[0] = sQuestQuadsX[j];

            pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                pauseCtx->questVtx[k + 0].v.ob[0] + sQuestQuadsSize[j];

            pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] =
                sQuestQuadsY[j] + pauseCtx->pagesYOrigin1;

            pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                pauseCtx->questVtx[k + 0].v.ob[1] - sQuestQuadsSize[j];

            if (j >= QUEST_QUAD_SKULL_TOKENS_DIGIT1_SHADOW) {
                pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                    pauseCtx->questVtx[k + 0].v.ob[0] + 8;

                pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] =
                    sQuestQuadsY[j] + pauseCtx->pagesYOrigin1 - 6;

                pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                    pauseCtx->questVtx[k + 0].v.ob[1] - 16;

                quadWidth = 8;
            }
        } else {
            if ((j >= QUEST_SONG_MINUET) && (j < QUEST_KOKIRI_EMERALD)) {
                quadWidth = 16;
            }

            pauseCtx->questVtx[k + 0].v.ob[0] = pauseCtx->questVtx[k + 2].v.ob[0] = sQuestQuadsX[j] + 2;

            pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                pauseCtx->questVtx[k + 0].v.ob[0] + (quadWidth - 4);

            pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] =
                sQuestQuadsY[j] + pauseCtx->pagesYOrigin1 - 2;

            pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                pauseCtx->questVtx[k + 0].v.ob[1] - (sQuestQuadsSize[j] - 4);
        }

        pauseCtx->questVtx[k + 0].v.ob[2] = pauseCtx->questVtx[k + 1].v.ob[2] = pauseCtx->questVtx[k + 2].v.ob[2] =
            pauseCtx->questVtx[k + 3].v.ob[2] = 0;

        pauseCtx->questVtx[k + 0].v.flag = pauseCtx->questVtx[k + 1].v.flag = pauseCtx->questVtx[k + 2].v.flag =
            pauseCtx->questVtx[k + 3].v.flag = 0;

        pauseCtx->questVtx[k + 0].v.tc[0] = pauseCtx->questVtx[k + 0].v.tc[1] = pauseCtx->questVtx[k + 1].v.tc[1] =
            pauseCtx->questVtx[k + 2].v.tc[0] = 0;

        pauseCtx->questVtx[k + 1].v.tc[0] = pauseCtx->questVtx[k + 3].v.tc[0] = quadWidth << 5;
        pauseCtx->questVtx[k + 2].v.tc[1] = pauseCtx->questVtx[k + 3].v.tc[1] = sQuestQuadsSize[j] << 5;

        pauseCtx->questVtx[k + 0].v.cn[0] = pauseCtx->questVtx[k + 1].v.cn[0] = pauseCtx->questVtx[k + 2].v.cn[0] =
            pauseCtx->questVtx[k + 3].v.cn[0] = pauseCtx->questVtx[k + 0].v.cn[1] = pauseCtx->questVtx[k + 1].v.cn[1] =
                pauseCtx->questVtx[k + 2].v.cn[1] = pauseCtx->questVtx[k + 3].v.cn[1] =
                    pauseCtx->questVtx[k + 0].v.cn[2] = pauseCtx->questVtx[k + 1].v.cn[2] =
                        pauseCtx->questVtx[k + 2].v.cn[2] = pauseCtx->questVtx[k + 3].v.cn[2] = 255;

        pauseCtx->questVtx[k + 0].v.cn[3] = pauseCtx->questVtx[k + 1].v.cn[3] = pauseCtx->questVtx[k + 2].v.cn[3] =
            pauseCtx->questVtx[k + 3].v.cn[3] = pauseCtx->alpha;
    }

    pauseCtx->infoPanelVtx = GRAPH_ALLOC(gfxCtx, 28 * sizeof(Vtx));

    pauseCtx->promptPageVtx = GRAPH_ALLOC(gfxCtx, ((PAGE_BG_QUADS + VTX_PAGE_PROMPT_QUADS) * 4) * sizeof(Vtx));
    KaleidoScope_SetPageVertices(play, pauseCtx->promptPageVtx, VTX_PAGE_PROMPT, VTX_PAGE_PROMPT_QUADS);
}

void KaleidoScope_DrawGameOver(PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 3122);

    Gfx_SetupDL_39Opa(gfxCtx);

    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_2CYCLE);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_PASS, G_RM_XLU_SURF2);
    gDPSetCombineLERP(POLY_OPA_DISP++, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT,
                      COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 80, D_8082AB8C, D_8082AB90, D_8082AB94, D_8082AB98);
    gDPSetEnvColor(POLY_OPA_DISP++, D_8082AB9C, D_8082ABA0, D_8082ABA4, 255);

    VREG(89) -= 2;

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP1Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverMaskTex, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, 5, G_TX_NOLOD, G_TX_NOLOD);

    gDPSetTileSize(POLY_OPA_DISP++, 1, 0, VREG(89) & 0x7F, 63 << 2, (31 << 2) + (VREG(89) & 0x7F));

    gSPTextureRectangle(POLY_OPA_DISP++, VREG(87) << 2, VREG(88) << 2, (VREG(87) + 64) << 2, (VREG(88) + 32) << 2,
                        G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP2Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);

    gSPTextureRectangle(POLY_OPA_DISP++, (VREG(87) + 64) << 2, VREG(88) << 2, (VREG(87) + 128) << 2,
                        (VREG(88) + 32) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP3Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);
    gSPTextureRectangle(POLY_OPA_DISP++, (VREG(87) + 128) << 2, VREG(88) << 2, (VREG(87) + 192) << 2,
                        (VREG(88) + 32) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 3169);
}

void KaleidoScope_Draw(PlayState* play) {
    Input* input = &play->state.input[0];
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 3188);

    pauseCtx->stickAdjX = input->rel.stick_x;
    pauseCtx->stickAdjY = input->rel.stick_y;

    gSPSegment(POLY_OPA_DISP++, 0x02, interfaceCtx->parameterSegment);
    gSPSegment(POLY_OPA_DISP++, 0x07, pauseCtx->playerSegment);
    gSPSegment(POLY_OPA_DISP++, 0x08, pauseCtx->iconItemSegment);
    gSPSegment(POLY_OPA_DISP++, 0x09, pauseCtx->iconItem24Segment);
    gSPSegment(POLY_OPA_DISP++, 0x0A, pauseCtx->nameSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0C, pauseCtx->iconItemAltSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0D, pauseCtx->iconItemLangSegment);

    if (pauseCtx->debugState == 0) {
        KaleidoScope_SetView(pauseCtx, pauseCtx->eye.x, pauseCtx->eye.y, pauseCtx->eye.z);

        Gfx_SetupDL_42Opa(play->state.gfxCtx);
        KaleidoScope_SetVertices(play, play->state.gfxCtx);
        KaleidoScope_DrawPages(play, play->state.gfxCtx);

        Gfx_SetupDL_42Opa(play->state.gfxCtx);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        KaleidoScope_SetView(pauseCtx, 0.0f, 0.0f, 64.0f);

        if (!IS_PAUSE_STATE_GAMEOVER(pauseCtx)) {
            KaleidoScope_DrawInfoPanel(play);
        }
    }

    if ((pauseCtx->state >= PAUSE_STATE_GAME_OVER_SHOW_MESSAGE) && (pauseCtx->state <= PAUSE_STATE_GAME_OVER_FINISH)) {
        KaleidoScope_DrawGameOver(play);
    }

    if ((pauseCtx->debugState == 1) || (pauseCtx->debugState == 2)) {
        KaleidoScope_DrawDebugEditor(play);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 3254);
}

void KaleidoScope_GrayOutTextureRGBA32(u32* texture, u16 pixelCount) {
    u32 rgb;
    u16 gray;
    u16 i;

    for (i = 0; i < pixelCount; i++) {
        if ((texture[i] & 0xFFFFFF00) != 0) {
            rgb = texture[i] >> 8;
            gray = ((((rgb & 0xFF0000) >> 16) + ((rgb & 0xFF00) >> 7) + (rgb & 0xFF)) / 7) & 0xFF;

            rgb = gray;
            rgb <<= 8;
            rgb |= gray;
            rgb <<= 8;
            rgb |= gray;

            texture[i] = (rgb << 8) | (texture[i] & 0xFF);
        }
    }
}

void KaleidoScope_UpdateOpening(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;

    pauseCtx->eye.x += sPageSwitchEyeDx[pauseCtx->nextPageMode] * ZREG(46);
    pauseCtx->eye.z += sPageSwitchEyeDz[pauseCtx->nextPageMode] * ZREG(46);
    pauseCtx->pageSwitchTimer += 4 * ZREG(46);

    if (pauseCtx->pageSwitchTimer == (4 * PAGE_SWITCH_NSTEPS * ZREG(47))) {
        // Finished opening

        func_80084BF4(play, 1);

        gSaveContext.buttonStatus[0] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + PAGE_SWITCH_PT_LEFT][0];
        gSaveContext.buttonStatus[1] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + PAGE_SWITCH_PT_LEFT][1];
        gSaveContext.buttonStatus[2] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + PAGE_SWITCH_PT_LEFT][2];
        gSaveContext.buttonStatus[3] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + PAGE_SWITCH_PT_LEFT][3];
        gSaveContext.buttonStatus[4] = gPageSwitchNextButtonStatus[pauseCtx->pageIndex + PAGE_SWITCH_PT_LEFT][4];

        pauseCtx->pageIndex = sPageSwitchNextPageIndex[pauseCtx->nextPageMode];

        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
        pauseCtx->state++; // PAUSE_STATE_MAIN

        pauseCtx->alpha = 255;
        Interface_LoadActionLabelB(play, DO_ACTION_SAVE);
    } else if (pauseCtx->pageSwitchTimer == (4 * PAGE_SWITCH_NSTEPS * 1)) {
        // `ZREG(47)` is always 1 so this normally never happens
        pauseCtx->pageIndex = sPageSwitchNextPageIndex[pauseCtx->nextPageMode];
        pauseCtx->nextPageMode = (u16)(pauseCtx->pageIndex << 1) + 1;
    }
}

void KaleidoScope_UpdateCursorVtx(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 tlOffsetX;
    s16 tlOffsetY;
    s16 bottomOffsetY;
    s16 rightOffsetX;

    if (pauseCtx->cursorSpecialPos == 0) {
        tlOffsetX = -1;
        tlOffsetY = 1;
        rightOffsetX = 14;
        bottomOffsetY = 14;
        if (pauseCtx->pageIndex == PAUSE_MAP) {
            if (!sInDungeonScene) {
                tlOffsetX = -6;
                tlOffsetY = 6;
                rightOffsetX = 4;
                bottomOffsetY = 4;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] >= 3) {
                tlOffsetX = -6;
                tlOffsetY = 5;
                bottomOffsetY = 7;
                rightOffsetX = 19;
            } else {
                tlOffsetX = -3;
                tlOffsetY = 3;
                rightOffsetX = 13;
                bottomOffsetY = 13;
            }
        } else if (pauseCtx->pageIndex == PAUSE_QUEST) {
            tlOffsetX = -4;
            tlOffsetY = 4;
            rightOffsetX = 12;
            bottomOffsetY = 12;
            if (pauseCtx->cursorSlot[pauseCtx->pageIndex] == QUEST_HEART_PIECE) {
                tlOffsetX = -2;
                tlOffsetY = 2;
                rightOffsetX = 32;
                bottomOffsetY = 32;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] == QUEST_SKULL_TOKEN) {
                tlOffsetX = -4;
                tlOffsetY = 4;
                bottomOffsetY = 13;
                rightOffsetX = 34;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] < QUEST_SONG_MINUET) {
                tlOffsetX = -1;
                tlOffsetY = 1;
                rightOffsetX = 10;
                bottomOffsetY = 10;
            } else if ((pauseCtx->cursorSlot[pauseCtx->pageIndex] >= QUEST_SONG_MINUET) &&
                       (pauseCtx->cursorSlot[pauseCtx->pageIndex] < QUEST_KOKIRI_EMERALD)) {
                tlOffsetX = -5;
                tlOffsetY = 3;
                rightOffsetX = 8;
                bottomOffsetY = 8;
            }
        }
    } else {
        tlOffsetX = -4;
        tlOffsetY = 4;
        rightOffsetX = 16;
        bottomOffsetY = 16;
    }

    // Move the quads according to the offsets set above,
    // and the position of the cursor in `pauseCtx->cursorVtx[0].v.ob`
    // (see `KaleidoScope_SetCursorPos` and other `PAUSE_CURSOR_QUAD_TL` uses)

    // PAUSE_CURSOR_QUAD_TL
    pauseCtx->cursorVtx[0].v.ob[0] = pauseCtx->cursorVtx[2].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + tlOffsetX;
    pauseCtx->cursorVtx[1].v.ob[0] = pauseCtx->cursorVtx[3].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + 16;
    pauseCtx->cursorVtx[0].v.ob[1] = pauseCtx->cursorVtx[1].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] + tlOffsetY;
    pauseCtx->cursorVtx[2].v.ob[1] = pauseCtx->cursorVtx[3].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - 16;

    // PAUSE_CURSOR_QUAD_TR
    pauseCtx->cursorVtx[4].v.ob[0] = pauseCtx->cursorVtx[6].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + rightOffsetX;
    pauseCtx->cursorVtx[5].v.ob[0] = pauseCtx->cursorVtx[7].v.ob[0] = pauseCtx->cursorVtx[4].v.ob[0] + 16;
    pauseCtx->cursorVtx[4].v.ob[1] = pauseCtx->cursorVtx[5].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1];
    pauseCtx->cursorVtx[6].v.ob[1] = pauseCtx->cursorVtx[7].v.ob[1] = pauseCtx->cursorVtx[4].v.ob[1] - 16;

    // PAUSE_CURSOR_QUAD_BL
    pauseCtx->cursorVtx[8].v.ob[0] = pauseCtx->cursorVtx[10].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0];
    pauseCtx->cursorVtx[9].v.ob[0] = pauseCtx->cursorVtx[11].v.ob[0] = pauseCtx->cursorVtx[8].v.ob[0] + 16;
    pauseCtx->cursorVtx[8].v.ob[1] = pauseCtx->cursorVtx[9].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - bottomOffsetY;
    pauseCtx->cursorVtx[10].v.ob[1] = pauseCtx->cursorVtx[11].v.ob[1] = pauseCtx->cursorVtx[8].v.ob[1] - 16;

    // PAUSE_CURSOR_QUAD_BR
    pauseCtx->cursorVtx[12].v.ob[0] = pauseCtx->cursorVtx[14].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + rightOffsetX;
    pauseCtx->cursorVtx[13].v.ob[0] = pauseCtx->cursorVtx[15].v.ob[0] = pauseCtx->cursorVtx[12].v.ob[0] + 16;
    pauseCtx->cursorVtx[12].v.ob[1] = pauseCtx->cursorVtx[13].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - bottomOffsetY;
    pauseCtx->cursorVtx[14].v.ob[1] = pauseCtx->cursorVtx[15].v.ob[1] = pauseCtx->cursorVtx[12].v.ob[1] - 16;
}

void KaleidoScope_LoadDungeonMap(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
#if PLATFORM_N64 || OOT_PAL
    s32 pad;
#endif

    DMA_REQUEST_SYNC(interfaceCtx->mapSegment,
                     (uintptr_t)_map_48x85_staticSegmentRomStart + ((R_MAP_TEX_INDEX + 0) * MAP_48x85_TEX_SIZE),
                     MAP_48x85_TEX_SIZE, "../z_kaleido_scope_PAL.c", 3467);

    DMA_REQUEST_SYNC(interfaceCtx->mapSegment + ALIGN16(MAP_48x85_TEX_SIZE),
                     (uintptr_t)_map_48x85_staticSegmentRomStart + ((R_MAP_TEX_INDEX + 1) * MAP_48x85_TEX_SIZE),
                     MAP_48x85_TEX_SIZE, "../z_kaleido_scope_PAL.c", 3471);
}

void KaleidoScope_UpdateDungeonMap(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    PauseContext* pauseCtx = &play->pauseCtx;

    PRINTF("ＭＡＰ ＤＭＡ = %d\n", play->interfaceCtx.mapPaletteIndex);

#if PLATFORM_N64
    if (B_80121220 != NULL && B_80121220->unk_44 != NULL && B_80121220->unk_44(play)) {

    } else {
        KaleidoScope_LoadDungeonMap(play);
    }
#else
    KaleidoScope_LoadDungeonMap(play);
#endif

    Map_SetFloorPalettesData(play, pauseCtx->dungeonMapSlot - 3);

    if ((play->sceneId >= SCENE_DEKU_TREE) && (play->sceneId <= SCENE_TREASURE_BOX_SHOP)) {
        if (VREG(30) == pauseCtx->cursorPoint[PAUSE_MAP] - 3) {
            KaleidoScope_OverridePalIndexCI4((char*)interfaceCtx->mapSegment, MAP_48x85_TEX_SIZE,
                                             interfaceCtx->mapPaletteIndex, 14);
        }
    }

    if ((play->sceneId >= SCENE_DEKU_TREE) && (play->sceneId <= SCENE_TREASURE_BOX_SHOP)) {
        if (VREG(30) == pauseCtx->cursorPoint[PAUSE_MAP] - 3) {
            KaleidoScope_OverridePalIndexCI4((char*)interfaceCtx->mapSegment + ALIGN16(MAP_48x85_TEX_SIZE),
                                             MAP_48x85_TEX_SIZE, interfaceCtx->mapPaletteIndex, 14);
        }
    }
}

void KaleidoScope_Update(PlayState* play) {
    static s16 sMainStateAfterSongPlayerPlayingDone = PAUSE_MAIN_STATE_IDLE;
    static s16 sDelayTimer = 10;
    static s16 D_8082B260 = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    GameOverContext* gameOverCtx = &play->gameOverCtx;
    Player* player = GET_PLAYER(play);
    Input* input = &play->state.input[0];
    u32 size;
    u32 size0;
    u32 size1;
    u32 size2;
    u16 i;
    s16 stepR;
    s16 stepG;
    s16 stepB;
    s16 stepA;

    if ((R_PAUSE_BG_PRERENDER_STATE >= PAUSE_BG_PRERENDER_READY) &&
        (((pauseCtx->state >= PAUSE_STATE_OPENING_1) && (pauseCtx->state <= PAUSE_STATE_SAVE_PROMPT)) ||
         ((pauseCtx->state >= PAUSE_STATE_GAME_OVER_INIT) && (pauseCtx->state <= PAUSE_STATE_CLOSING)))) {

        if ((((u32)pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) ||
             (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) &&
            (pauseCtx->state == PAUSE_STATE_MAIN)) {

            pauseCtx->stickAdjX = input->rel.stick_x;
            pauseCtx->stickAdjY = input->rel.stick_y;

            KaleidoScope_UpdateCursorVtx(play);
            KaleidoScope_HandlePageToggles(pauseCtx, input);
        } else if ((pauseCtx->pageIndex == PAUSE_QUEST) && ((pauseCtx->mainState < PAUSE_MAIN_STATE_3) ||
                                                            (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PROMPT))) {
            KaleidoScope_UpdateCursorVtx(play);
        }

        if (pauseCtx->state == PAUSE_STATE_MAIN) {
            KaleidoScope_UpdateNamePanel(play);
        }
    }

    switch (pauseCtx->state) {
        case PAUSE_STATE_INIT:
            D_808321A8[0] = gSaveContext.buttonStatus[0];
            D_808321A8[1] = gSaveContext.buttonStatus[1];
            D_808321A8[2] = gSaveContext.buttonStatus[2];
            D_808321A8[3] = gSaveContext.buttonStatus[3];
            D_808321A8[4] = gSaveContext.buttonStatus[4];

            pauseCtx->cursorX[PAUSE_MAP] = 0;
            pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP] = pauseCtx->dungeonMapSlot =
                VREG(30) + 3;

            WREG(16) = -175;
            WREG(17) = 155;

            pauseCtx->promptPitch = -314.0f;

            //! @bug messed up alignment, should match `ALIGN64`
            pauseCtx->playerSegment = (void*)(((uintptr_t)play->objectCtx.spaceStart + 0x30) & ~0x3F);

            size1 = Player_InitPauseDrawData(play, pauseCtx->playerSegment, &pauseCtx->playerSkelAnime);
            PRINTF("プレイヤー size1＝%x\n", size1);

            size0 = (uintptr_t)_icon_item_staticSegmentRomEnd - (uintptr_t)_icon_item_staticSegmentRomStart;
            pauseCtx->iconItemSegment = (void*)ALIGN16((uintptr_t)pauseCtx->playerSegment + size1);

            PRINTF("icon_item size0=%x\n", size0);
            DMA_REQUEST_SYNC(pauseCtx->iconItemSegment, (uintptr_t)_icon_item_staticSegmentRomStart, size0,
                             "../z_kaleido_scope_PAL.c", 3662);

            gSegments[8] = VIRTUAL_TO_PHYSICAL(pauseCtx->iconItemSegment);

            for (i = 0; i < ARRAY_COUNTU(gItemAgeReqs); i++) {
                if (!CHECK_AGE_REQ_ITEM(i)) {
                    KaleidoScope_GrayOutTextureRGBA32(SEGMENTED_TO_VIRTUAL(gItemIcons[i]),
                                                      ITEM_ICON_WIDTH * ITEM_ICON_HEIGHT);
                }
            }

            pauseCtx->iconItem24Segment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemSegment + size0);

            size = (uintptr_t)_icon_item_24_staticSegmentRomEnd - (uintptr_t)_icon_item_24_staticSegmentRomStart;
            PRINTF("icon_item24 size=%x\n", size);
            DMA_REQUEST_SYNC(pauseCtx->iconItem24Segment, (uintptr_t)_icon_item_24_staticSegmentRomStart, size,
                             "../z_kaleido_scope_PAL.c", 3675);

            pauseCtx->iconItemAltSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItem24Segment + size);

            switch (play->sceneId) {
                case SCENE_DEKU_TREE:
                case SCENE_DODONGOS_CAVERN:
                case SCENE_JABU_JABU:
                case SCENE_FOREST_TEMPLE:
                case SCENE_FIRE_TEMPLE:
                case SCENE_WATER_TEMPLE:
                case SCENE_SPIRIT_TEMPLE:
                case SCENE_SHADOW_TEMPLE:
                case SCENE_BOTTOM_OF_THE_WELL:
                case SCENE_ICE_CAVERN:
                case SCENE_DEKU_TREE_BOSS:
                case SCENE_DODONGOS_CAVERN_BOSS:
                case SCENE_JABU_JABU_BOSS:
                case SCENE_FOREST_TEMPLE_BOSS:
                case SCENE_FIRE_TEMPLE_BOSS:
                case SCENE_WATER_TEMPLE_BOSS:
                case SCENE_SPIRIT_TEMPLE_BOSS:
                case SCENE_SHADOW_TEMPLE_BOSS:
                    sInDungeonScene = true;
                    size2 = (uintptr_t)_icon_item_dungeon_staticSegmentRomEnd -
                            (uintptr_t)_icon_item_dungeon_staticSegmentRomStart;
                    PRINTF("icon_item_dungeon dungeon-size2=%x\n", size2);
                    DMA_REQUEST_SYNC(pauseCtx->iconItemAltSegment, (uintptr_t)_icon_item_dungeon_staticSegmentRomStart,
                                     size2, "../z_kaleido_scope_PAL.c", 3712);

                    interfaceCtx->mapPalette[28] = 6;
                    interfaceCtx->mapPalette[29] = 99;
                    KaleidoScope_UpdateDungeonMap(play);
                    break;

                default:
                    sInDungeonScene = false;
                    size2 = (uintptr_t)_icon_item_field_staticSegmentRomEnd -
                            (uintptr_t)_icon_item_field_staticSegmentRomStart;
                    PRINTF("icon_item_field field-size2=%x\n", size2);
                    DMA_REQUEST_SYNC(pauseCtx->iconItemAltSegment, (uintptr_t)_icon_item_field_staticSegmentRomStart,
                                     size2, "../z_kaleido_scope_PAL.c", 3726);
                    break;
            }

            pauseCtx->iconItemLangSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemAltSegment + size2);

#if OOT_NTSC
            if (gSaveContext.language == LANGUAGE_JPN) {
                size = (uintptr_t)_icon_item_jpn_staticSegmentRomEnd - (uintptr_t)_icon_item_jpn_staticSegmentRomStart;
                PRINTF("icon_item_jpn dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_jpn_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", UNK_LINE);
            } else {
                size = (uintptr_t)_icon_item_nes_staticSegmentRomEnd - (uintptr_t)_icon_item_nes_staticSegmentRomStart;
                PRINTF("icon_item_dungeon dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_nes_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", UNK_LINE);
            }
#else
            if (gSaveContext.language == LANGUAGE_ENG) {
                size = (uintptr_t)_icon_item_nes_staticSegmentRomEnd - (uintptr_t)_icon_item_nes_staticSegmentRomStart;
                PRINTF("icon_item_dungeon dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_nes_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", 3739);
            } else if (gSaveContext.language == LANGUAGE_GER) {
                size = (uintptr_t)_icon_item_ger_staticSegmentRomEnd - (uintptr_t)_icon_item_ger_staticSegmentRomStart;
                PRINTF("icon_item_dungeon dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_ger_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", 3746);
            } else {
                size = (uintptr_t)_icon_item_fra_staticSegmentRomEnd - (uintptr_t)_icon_item_fra_staticSegmentRomStart;
                PRINTF("icon_item_dungeon dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_fra_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", 3753);
            }
#endif

            pauseCtx->nameSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemLangSegment + size);

            PRINTF("サイズ＝%x\n", size2 + size1 + size0 + size);
            PRINTF("item_name I_N_PT=%x\n", 0x800);
            Interface_SetDoAction(play, DO_ACTION_DECIDE);
            PRINTF("サイズ＝%x\n", size2 + size1 + size0 + size + 0x800);

            if (((void)0, gSaveContext.worldMapArea) < WORLD_MAP_AREA_MAX) {
#if OOT_NTSC
                if (gSaveContext.language == LANGUAGE_JPN) {
                    DMA_REQUEST_SYNC(
                        pauseCtx->nameSegment + MAX(MAP_NAME_TEX1_SIZE, ITEM_NAME_TEX_SIZE),
                        (uintptr_t)_map_name_staticSegmentRomStart +
                            ((((void)0, gSaveContext.worldMapArea) + 22 * LANGUAGE_JPN) * MAP_NAME_TEX2_SIZE) +
                            24 * MAP_NAME_TEX1_SIZE,
                        MAP_NAME_TEX2_SIZE, "../z_kaleido_scope_PAL.c", UNK_LINE);
                } else {
                    DMA_REQUEST_SYNC(
                        pauseCtx->nameSegment + MAX(MAP_NAME_TEX1_SIZE, ITEM_NAME_TEX_SIZE),
                        (uintptr_t)_map_name_staticSegmentRomStart +
                            ((((void)0, gSaveContext.worldMapArea) + 22 * LANGUAGE_ENG) * MAP_NAME_TEX2_SIZE) +
                            24 * MAP_NAME_TEX1_SIZE,
                        MAP_NAME_TEX2_SIZE, "../z_kaleido_scope_PAL.c", UNK_LINE);
                }
#else
                if (gSaveContext.language == LANGUAGE_ENG) {
                    DMA_REQUEST_SYNC(
                        pauseCtx->nameSegment + MAX(MAP_NAME_TEX1_SIZE, ITEM_NAME_TEX_SIZE),
                        (uintptr_t)_map_name_staticSegmentRomStart +
                            ((((void)0, gSaveContext.worldMapArea) + 22 * LANGUAGE_ENG) * MAP_NAME_TEX2_SIZE) +
                            36 * MAP_NAME_TEX1_SIZE,
                        MAP_NAME_TEX2_SIZE, "../z_kaleido_scope_PAL.c", 3776);
                } else if (gSaveContext.language == LANGUAGE_GER) {
                    DMA_REQUEST_SYNC(
                        pauseCtx->nameSegment + MAX(MAP_NAME_TEX1_SIZE, ITEM_NAME_TEX_SIZE),
                        (uintptr_t)_map_name_staticSegmentRomStart +
                            ((((void)0, gSaveContext.worldMapArea) + 22 * LANGUAGE_GER) * MAP_NAME_TEX2_SIZE) +
                            36 * MAP_NAME_TEX1_SIZE,
                        MAP_NAME_TEX2_SIZE, "../z_kaleido_scope_PAL.c", 3780);
                } else {
                    DMA_REQUEST_SYNC(
                        pauseCtx->nameSegment + MAX(MAP_NAME_TEX1_SIZE, ITEM_NAME_TEX_SIZE),
                        (uintptr_t)_map_name_staticSegmentRomStart +
                            ((((void)0, gSaveContext.worldMapArea) + 22 * LANGUAGE_FRA) * MAP_NAME_TEX2_SIZE) +
                            36 * MAP_NAME_TEX1_SIZE,
                        MAP_NAME_TEX2_SIZE, "../z_kaleido_scope_PAL.c", 3784);
                }
#endif
            }

            sPreRenderCvg = (void*)ALIGN16((uintptr_t)pauseCtx->nameSegment +
                                           MAX(MAP_NAME_TEX1_SIZE, ITEM_NAME_TEX_SIZE) + MAP_NAME_TEX2_SIZE);

            PreRender_Init(&sPlayerPreRender);
            PreRender_SetValuesSave(&sPlayerPreRender, PAUSE_EQUIP_PLAYER_WIDTH, PAUSE_EQUIP_PLAYER_HEIGHT,
                                    pauseCtx->playerSegment, NULL, sPreRenderCvg);

            KaleidoScope_DrawPlayerWork(play);
            KaleidoScope_SetupPlayerPreRender(play);

            // World map points

            for (i = 0; i < ARRAY_COUNT(pauseCtx->worldMapPoints); i++) {
                pauseCtx->worldMapPoints[i] = WORLD_MAP_POINT_STATE_HIDE;
            }

            if (CHECK_QUEST_ITEM(QUEST_GERUDOS_CARD)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_HAUNTED_WASTELAND] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_HAUNTED_WASTELAND] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (INV_CONTENT(ITEM_LONGSHOT) == ITEM_LONGSHOT) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_GERUDOS_FORTRESS] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_QUEST_ITEM(QUEST_GERUDOS_CARD)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_GERUDOS_FORTRESS] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_B2)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_GERUDO_VALLEY] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (INV_CONTENT(ITEM_LONGSHOT) == ITEM_LONGSHOT) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_GERUDO_VALLEY] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_QUEST_ITEM(QUEST_GERUDOS_CARD)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_GERUDO_VALLEY] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (CUR_UPG_VALUE(UPG_SCALE)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LAKE_HYLIA] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LAKE_HYLIA] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_WATER)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LAKE_HYLIA] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LON_LON_RANCH] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (INV_CONTENT(ITEM_OCARINA_FAIRY) != ITEM_NONE) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LON_LON_RANCH] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_QUEST_ITEM(QUEST_SONG_EPONA)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LON_LON_RANCH] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_TALON_WOKEN_IN_KAKARIKO)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LON_LON_RANCH] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_EPONA_OBTAINED)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LON_LON_RANCH] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_MARKET] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_MARKET] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (INV_CONTENT(ITEM_OCARINA_OF_TIME) == ITEM_OCARINA_OF_TIME) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_MARKET] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_45)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_MARKET] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (INV_CONTENT(ITEM_ARROW_LIGHT) == ITEM_ARROW_LIGHT) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_MARKET] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_HYRULE_FIELD] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_DEATH_MOUNTAIN] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_25)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_DEATH_MOUNTAIN] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_DEATH_MOUNTAIN] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_49)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_DEATH_MOUNTAIN] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (gSaveContext.save.info.worldMapAreaData & gBitFlags[WORLD_MAP_AREA_KAKARIKO_VILLAGE]) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_QUEST_ITEM(QUEST_SONG_SUN)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_45)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (CHECK_QUEST_ITEM(QUEST_SONG_STORMS)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_DRAINED_WELL)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_AA)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KAKARIKO_VILLAGE] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (gSaveContext.save.info.worldMapAreaData & gBitFlags[WORLD_MAP_AREA_LOST_WOODS]) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LOST_WOODS] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_0F)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LOST_WOODS] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_QUEST_ITEM(QUEST_SONG_SARIA)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LOST_WOODS] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LOST_WOODS] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_48)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_LOST_WOODS] = WORLD_MAP_POINT_STATE_SHOW;
            }

            pauseCtx->worldMapPoints[WORLD_MAP_POINT_KOKIRI_FOREST] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KOKIRI_FOREST] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_6E)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KOKIRI_FOREST] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_0F)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_KOKIRI_FOREST] = WORLD_MAP_POINT_STATE_SHOW;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_ZORAS_DOMAIN] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_25)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_ZORAS_DOMAIN] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (GET_EVENTCHKINF(EVENTCHKINF_37)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_ZORAS_DOMAIN] = WORLD_MAP_POINT_STATE_SHOW;
            }
            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_ZORAS_DOMAIN] = WORLD_MAP_POINT_STATE_HIGHLIGHT;
            }
            if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON)) {
                pauseCtx->worldMapPoints[WORLD_MAP_POINT_ZORAS_DOMAIN] = WORLD_MAP_POINT_STATE_SHOW;
            }

            // Trade quest marker

            pauseCtx->tradeQuestMarker = TRADE_QUEST_MARKER_NONE;

            i = INV_CONTENT(ITEM_TRADE_ADULT);
            if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
                if ((i <= ITEM_POCKET_CUCCO) || (i == ITEM_ODD_MUSHROOM)) {
                    pauseCtx->tradeQuestMarker = WORLD_MAP_POINT_KAKARIKO_VILLAGE;
                }
                if ((i == ITEM_COJIRO) || (i == ITEM_ODD_POTION)) {
                    pauseCtx->tradeQuestMarker = WORLD_MAP_POINT_LOST_WOODS;
                }
                if (i == ITEM_POACHERS_SAW) {
                    pauseCtx->tradeQuestMarker = WORLD_MAP_POINT_GERUDO_VALLEY;
                }
                if ((i == ITEM_BROKEN_GORONS_SWORD) || (i == ITEM_EYE_DROPS)) {
                    pauseCtx->tradeQuestMarker = WORLD_MAP_POINT_DEATH_MOUNTAIN;
                }
                if (i == ITEM_PRESCRIPTION) {
                    pauseCtx->tradeQuestMarker = WORLD_MAP_POINT_ZORAS_DOMAIN;
                }
                if (i == ITEM_EYEBALL_FROG) {
                    pauseCtx->tradeQuestMarker = WORLD_MAP_POINT_LAKE_HYLIA;
                }
                if ((i == ITEM_CLAIM_CHECK) && !gSaveContext.save.info.playerData.bgsFlag) {
                    pauseCtx->tradeQuestMarker = WORLD_MAP_POINT_DEATH_MOUNTAIN;
                }
            }

            // Next state

            pauseCtx->state = PAUSE_STATE_OPENING_1;
            break;

        case PAUSE_STATE_OPENING_1:
            if (pauseCtx->itemPagePitch == 160.0f) {
                // First frame in this state

                KaleidoScope_SetDefaultCursor(play);
                KaleidoScope_ProcessPlayerPreRender();
            }

            pauseCtx->itemPagePitch = pauseCtx->equipPagePitch = pauseCtx->mapPagePitch = pauseCtx->questPagePitch -=
                160.0f / WREG(6);
            pauseCtx->infoPanelOffsetY += 40 / WREG(6);
            interfaceCtx->startAlpha += 255 / WREG(6);
            WREG(16) += WREG(25) / WREG(6);
            WREG(17) += WREG(26) / WREG(6);
            XREG(5) += 150 / WREG(6);
            pauseCtx->alpha += (u16)(255 / (WREG(6) + WREG(4)));

            if (pauseCtx->itemPagePitch == 0) {
                interfaceCtx->startAlpha = 255;
                R_PAUSE_PAGES_Y_ORIGIN_2 = 0;
                pauseCtx->state = PAUSE_STATE_OPENING_2;
            }

            KaleidoScope_UpdateOpening(play);
            break;

        case PAUSE_STATE_OPENING_2:
            pauseCtx->alpha += (u16)(255 / (WREG(6) + WREG(4)));
            KaleidoScope_UpdateOpening(play);

            if (pauseCtx->state == PAUSE_STATE_MAIN) {
                KaleidoScope_UpdateNamePanel(play);
            }
            break;

        case PAUSE_STATE_MAIN:
            switch (pauseCtx->mainState) {
                case PAUSE_MAIN_STATE_IDLE:
                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSE_STATE_CLOSING;
                        R_PAUSE_PAGES_Y_ORIGIN_2 = PAUSE_PAGES_Y_ORIGIN_2_LOWER;
                        func_800F64E0(0);
#if PLATFORM_GC && OOT_NTSC
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
#endif
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        pauseCtx->nextPageMode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
                        pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_APPEARING;
                        pauseCtx->state = PAUSE_STATE_SAVE_PROMPT;
                    }
                    break;

                case PAUSE_MAIN_STATE_SWITCHING_PAGE:
                    KaleidoScope_UpdatePageSwitch(play, &play->state.input[0]);
                    break;

                case PAUSE_MAIN_STATE_SONG_PLAYBACK:
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                    if (pauseCtx->ocarinaStaff->state == 0) {
                        // Song playback is finished
                        pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PROMPT_INIT;
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    }
                    break;

                case PAUSE_MAIN_STATE_3:
                    KaleidoScope_UpdateItemEquip(play);
                    break;

                case PAUSE_MAIN_STATE_SONG_PROMPT_INIT:
                    break;

                case PAUSE_MAIN_STATE_SONG_PROMPT:
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();

                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSE_STATE_CLOSING;
                        R_PAUSE_PAGES_Y_ORIGIN_2 = PAUSE_PAGES_Y_ORIGIN_2_LOWER;
                        func_800F64E0(0);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                        break;
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                        pauseCtx->nextPageMode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
                        pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_APPEARING;
                        pauseCtx->state = PAUSE_STATE_SAVE_PROMPT;
                    } else if (pauseCtx->ocarinaStaff->state == pauseCtx->ocarinaSongIdx) {
                        // The player successfully played the song
                        Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                        sMainStateAfterSongPlayerPlayingDone = PAUSE_MAIN_STATE_IDLE;
                        sDelayTimer = 30;
                        pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PROMPT_DONE;
                    } else if (pauseCtx->ocarinaStaff->state == 0xFF) {
                        // The player failed to play the song
                        Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                        sMainStateAfterSongPlayerPlayingDone = PAUSE_MAIN_STATE_SONG_PROMPT_INIT;
                        sDelayTimer = 20;
                        pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PROMPT_DONE;
                    }
                    break;

                case PAUSE_MAIN_STATE_SONG_PROMPT_DONE:
                    sDelayTimer--;
                    if (sDelayTimer == 0) {
                        pauseCtx->mainState = sMainStateAfterSongPlayerPlayingDone;
                        if (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) {
                            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        }
                    }
                    break;

                case PAUSE_MAIN_STATE_7:
                    break;

                case PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG:
                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSE_STATE_CLOSING;
                        R_PAUSE_PAGES_Y_ORIGIN_2 = PAUSE_PAGES_Y_ORIGIN_2_LOWER;
                        func_800F64E0(0);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                        pauseCtx->nextPageMode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
                        pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_APPEARING;
                        pauseCtx->state = PAUSE_STATE_SAVE_PROMPT;
                    }
                    break;

                case PAUSE_MAIN_STATE_SONG_PLAYBACK_START:
                    break;

                default:
                    pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    break;
            }
            break;

        case PAUSE_STATE_SAVE_PROMPT:
            switch (pauseCtx->savePromptState) {
                case PAUSE_SAVE_PROMPT_STATE_APPEARING:
                    pauseCtx->promptPitch -= 314.0f / WREG(6);
                    WREG(16) -= WREG(25) / WREG(6);
                    WREG(17) -= WREG(26) / WREG(6);
                    if (pauseCtx->promptPitch <= -628.0f) {
                        pauseCtx->promptPitch = -628.0f;
                        pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_WAIT_CHOICE;
                    }
                    break;

                case PAUSE_SAVE_PROMPT_STATE_WAIT_CHOICE:
                    if (CHECK_BTN_ALL(input->press.button, BTN_A)) {
                        if (pauseCtx->promptChoice != 0) {
                            Interface_SetDoAction(play, DO_ACTION_NONE);
                            gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                                gSaveContext.buttonStatus[3] = BTN_ENABLED;
                            gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                            Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
                            pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_CLOSING;
                            R_PAUSE_PAGES_Y_ORIGIN_2 = PAUSE_PAGES_Y_ORIGIN_2_LOWER;
                            YREG(8) = pauseCtx->promptPitch;
                            func_800F64E0(0);
#if PLATFORM_GC && OOT_NTSC
                            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
#endif
                        } else {
                            Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultReverb);
                            Play_SaveSceneFlags(play);
                            gSaveContext.save.info.playerData.savedSceneId = play->sceneId;
                            Sram_WriteSave(&play->sramCtx);
                            pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_SAVED;
#if !PLATFORM_GC
                            sDelayTimer = 90;
#else
                            sDelayTimer = 3;
#endif
                        }
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_START) ||
                               CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_CLOSING;
                        R_PAUSE_PAGES_Y_ORIGIN_2 = PAUSE_PAGES_Y_ORIGIN_2_LOWER;
                        YREG(8) = pauseCtx->promptPitch;
                        func_800F64E0(0);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_ENABLED;
                        gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
#if PLATFORM_GC && OOT_NTSC
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
#endif
                    }
                    break;

                case PAUSE_SAVE_PROMPT_STATE_SAVED:
                    if (CHECK_BTN_ALL(input->press.button, BTN_B) || CHECK_BTN_ALL(input->press.button, BTN_A) ||
                        CHECK_BTN_ALL(input->press.button, BTN_START) || (--sDelayTimer == 0)) {
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_ENABLED;
                        gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
                        pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_CLOSING_AFTER_SAVED;
                        R_PAUSE_PAGES_Y_ORIGIN_2 = PAUSE_PAGES_Y_ORIGIN_2_LOWER;
                        YREG(8) = pauseCtx->promptPitch;
                        func_800F64E0(0);
                    }
                    break;

                case PAUSE_SAVE_PROMPT_STATE_RETURN_TO_MENU:
                case PAUSE_SAVE_PROMPT_STATE_RETURN_TO_MENU_2:
                    pauseCtx->promptPitch += 314.0f / WREG(6);
                    WREG(16) += WREG(25) / WREG(6);
                    WREG(17) += WREG(26) / WREG(6);
                    if (pauseCtx->promptPitch >= -314.0f) {
                        pauseCtx->state = PAUSE_STATE_MAIN;
                        pauseCtx->savePromptState = PAUSE_SAVE_PROMPT_STATE_APPEARING;
                        pauseCtx->itemPagePitch = pauseCtx->equipPagePitch = pauseCtx->mapPagePitch =
                            pauseCtx->questPagePitch = 0.0f;
                        pauseCtx->promptPitch = -314.0f;
                    }
                    break;

                case PAUSE_SAVE_PROMPT_STATE_CLOSING:
                case PAUSE_SAVE_PROMPT_STATE_CLOSING_AFTER_SAVED:
                    if (pauseCtx->promptPitch != (YREG(8) + 160.0f)) {
                        pauseCtx->itemPagePitch = pauseCtx->equipPagePitch = pauseCtx->mapPagePitch =
                            pauseCtx->questPagePitch += 160.0f / WREG(6);
                        pauseCtx->promptPitch += 160.0f / WREG(6);
                        pauseCtx->infoPanelOffsetY -= 40 / WREG(6);
                        WREG(16) -= WREG(25) / WREG(6);
                        WREG(17) -= WREG(26) / WREG(6);
                        XREG(5) -= 150 / WREG(6);
                        pauseCtx->alpha -= (u16)(255 / WREG(6));
                        if (pauseCtx->promptPitch == (YREG(8) + 160.0f)) {
                            pauseCtx->alpha = 0;
                        }
                    } else {
                        pauseCtx->debugState = 0;
                        pauseCtx->state = PAUSE_STATE_RESUME_GAMEPLAY;
                        pauseCtx->itemPagePitch = pauseCtx->equipPagePitch = pauseCtx->mapPagePitch =
                            pauseCtx->questPagePitch = 160.0f;
                        pauseCtx->namedItem = PAUSE_ITEM_NONE;
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                        pauseCtx->promptPitch = -434.0f;
                    }
                    break;

                default:
                    break;
            }
            break;

        case PAUSE_STATE_GAME_OVER_INIT:
            pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP] = pauseCtx->dungeonMapSlot =
                VREG(30) + 3;
            WREG(16) = -175;
            WREG(17) = 155;
            pauseCtx->promptPitch = -434.0f;
            Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);

            //! @bug messed up alignment, should match `ALIGN64`
            pauseCtx->iconItemSegment = (void*)(((uintptr_t)play->objectCtx.spaceStart + 0x30) & ~0x3F);
            size0 = (uintptr_t)_icon_item_staticSegmentRomEnd - (uintptr_t)_icon_item_staticSegmentRomStart;
            PRINTF("icon_item size0=%x\n", size0);
            DMA_REQUEST_SYNC(pauseCtx->iconItemSegment, (uintptr_t)_icon_item_staticSegmentRomStart, size0,
                             "../z_kaleido_scope_PAL.c", 4356);

            pauseCtx->iconItem24Segment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemSegment + size0);
            size = (uintptr_t)_icon_item_24_staticSegmentRomEnd - (uintptr_t)_icon_item_24_staticSegmentRomStart;
            PRINTF("icon_item24 size=%x\n", size);
            DMA_REQUEST_SYNC(pauseCtx->iconItem24Segment, (uintptr_t)_icon_item_24_staticSegmentRomStart, size,
                             "../z_kaleido_scope_PAL.c", 4363);

            pauseCtx->iconItemAltSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItem24Segment + size);
            size2 = (uintptr_t)_icon_item_gameover_staticSegmentRomEnd -
                    (uintptr_t)_icon_item_gameover_staticSegmentRomStart;
            PRINTF("icon_item_dungeon gameover-size2=%x\n", size2);
            DMA_REQUEST_SYNC(pauseCtx->iconItemAltSegment, (uintptr_t)_icon_item_gameover_staticSegmentRomStart, size2,
                             "../z_kaleido_scope_PAL.c", 4370);

            pauseCtx->iconItemLangSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemAltSegment + size2);

#if OOT_NTSC
            if (gSaveContext.language == LANGUAGE_JPN) {
                size = (uintptr_t)_icon_item_jpn_staticSegmentRomEnd - (uintptr_t)_icon_item_jpn_staticSegmentRomStart;
                PRINTF("icon_item_jpn dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_jpn_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", UNK_LINE);
            } else {
                size = (uintptr_t)_icon_item_nes_staticSegmentRomEnd - (uintptr_t)_icon_item_nes_staticSegmentRomStart;
                PRINTF("icon_item_dungeon dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_nes_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", UNK_LINE);
            }
#else
            if (gSaveContext.language == LANGUAGE_ENG) {
                size = (uintptr_t)_icon_item_nes_staticSegmentRomEnd - (uintptr_t)_icon_item_nes_staticSegmentRomStart;
                PRINTF("icon_item_dungeon dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_nes_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", 4379);
            } else if (gSaveContext.language == LANGUAGE_GER) {
                size = (uintptr_t)_icon_item_ger_staticSegmentRomEnd - (uintptr_t)_icon_item_ger_staticSegmentRomStart;
                PRINTF("icon_item_dungeon dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_ger_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", 4386);
            } else {
                size = (uintptr_t)_icon_item_fra_staticSegmentRomEnd - (uintptr_t)_icon_item_fra_staticSegmentRomStart;
                PRINTF("icon_item_dungeon dungeon-size=%x\n", size);
                DMA_REQUEST_SYNC(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_fra_staticSegmentRomStart, size,
                                 "../z_kaleido_scope_PAL.c", 4393);
            }
#endif

            D_8082AB8C = 255;
            D_8082AB90 = 130;
            D_8082AB94 = 0;
            D_8082AB98 = 0;
            D_8082AB9C = 30;
            D_8082ABA0 = 0;
            D_8082ABA4 = 0;
            D_8082B260 = 30;
            VREG(88) = 98;
            pauseCtx->promptChoice = 0;
            pauseCtx->state++; // PAUSE_STATE_GAME_OVER_SHOW_MESSAGE
            break;

        case PAUSE_STATE_GAME_OVER_SHOW_MESSAGE:
            stepR = ABS(D_8082AB8C - 30) / D_8082B260;
            stepG = ABS(D_8082AB90) / D_8082B260;
            stepB = ABS(D_8082AB94) / D_8082B260;
            stepA = ABS(D_8082AB98 - 255) / D_8082B260;
            if (D_8082AB8C >= 30) {
                D_8082AB8C -= stepR;
            } else {
                D_8082AB8C += stepR;
            }
            if (D_8082AB90 >= 0) {
                D_8082AB90 -= stepG;
            } else {
                D_8082AB90 += stepG;
            }
            if (D_8082AB94 >= 0) {
                D_8082AB94 -= stepB;
            } else {
                D_8082AB94 += stepB;
            }
            if (D_8082AB98 >= 255) {
                D_8082AB98 -= stepA;
            } else {
                D_8082AB98 += stepA;
            }

            stepR = ABS(D_8082AB9C - 255) / D_8082B260;
            stepG = ABS(D_8082ABA0 - 130) / D_8082B260;
            stepB = ABS(D_8082ABA4) / D_8082B260;
            if (D_8082AB9C >= 255) {
                D_8082AB9C -= stepR;
            } else {
                D_8082AB9C += stepR;
            }
            if (D_8082ABA0 >= 130) {
                D_8082ABA0 -= stepG;
            } else {
                D_8082ABA0 += stepG;
            }
            if (D_8082ABA4 >= 0) {
                D_8082ABA4 -= stepB;
            } else {
                D_8082ABA4 += stepB;
            }

            D_8082B260--;
            if (D_8082B260 == 0) {
                D_8082AB8C = 30;
                D_8082AB90 = 0;
                D_8082AB94 = 0;
                D_8082AB98 = 255;

                D_8082AB9C = 255;
                D_8082ABA0 = 130;
                D_8082ABA4 = 0;
                D_8082B260 = 40;

                pauseCtx->state++; // PAUSE_STATE_GAME_OVER_WINDOW_DELAY
            }
            break;

        case PAUSE_STATE_GAME_OVER_WINDOW_DELAY:
            D_8082B260--;
            if (D_8082B260 == 0) {
                pauseCtx->state = PAUSE_STATE_GAME_OVER_SHOW_WINDOW;
            }
            break;

        case PAUSE_STATE_GAME_OVER_SHOW_WINDOW:
            pauseCtx->itemPagePitch = pauseCtx->equipPagePitch = pauseCtx->mapPagePitch = pauseCtx->questPagePitch =
                pauseCtx->promptPitch -= 160.0f / WREG(6);
            pauseCtx->infoPanelOffsetY += 40 / WREG(6);
            interfaceCtx->startAlpha += 255 / WREG(6);
            VREG(88) -= 3;
            WREG(16) += WREG(25) / WREG(6);
            WREG(17) += WREG(26) / WREG(6);
            XREG(5) += 150 / WREG(6);
            pauseCtx->alpha += (u16)(255 / (WREG(6) + WREG(4)));
            if (pauseCtx->promptPitch < -628.0f) {
                pauseCtx->promptPitch = -628.0f;
                interfaceCtx->startAlpha = 255;
                VREG(88) = 66;
                R_PAUSE_PAGES_Y_ORIGIN_2 = 0;
                pauseCtx->alpha = 255;
                pauseCtx->state = PAUSE_STATE_GAME_OVER_SAVE_PROMPT;
                gSaveContext.save.info.playerData.deaths++;
                if (gSaveContext.save.info.playerData.deaths > 999) {
                    gSaveContext.save.info.playerData.deaths = 999;
                }
            }
            PRINTF("kscope->angle_s = %f\n", pauseCtx->promptPitch);
            break;

        case PAUSE_STATE_GAME_OVER_SAVE_PROMPT:
            if (CHECK_BTN_ALL(input->press.button, BTN_A)) {
                if (pauseCtx->promptChoice != 0) {
                    pauseCtx->promptChoice = 0;
                    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    pauseCtx->state = PAUSE_STATE_GAME_OVER_CONTINUE_PROMPT;
                    gameOverCtx->state++;
                } else {
                    Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    pauseCtx->promptChoice = 0;
                    Play_SaveSceneFlags(play);
                    gSaveContext.save.info.playerData.savedSceneId = play->sceneId;
                    Sram_WriteSave(&play->sramCtx);
                    pauseCtx->state = PAUSE_STATE_GAME_OVER_SAVED;
#if !PLATFORM_GC
                    sDelayTimer = 90;
#else
                    sDelayTimer = 3;
#endif
                }
            }
            break;

        case PAUSE_STATE_GAME_OVER_SAVED:
            sDelayTimer--;
            if (sDelayTimer == 0) {
                pauseCtx->state = PAUSE_STATE_GAME_OVER_CONTINUE_PROMPT;
                gameOverCtx->state++;
            } else if ((sDelayTimer <= 80) &&
                       (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_START))) {
                pauseCtx->state = PAUSE_STATE_GAME_OVER_CONTINUE_PROMPT;
                gameOverCtx->state++;
                func_800F64E0(0);
            }
            break;

        case PAUSE_STATE_GAME_OVER_CONTINUE_PROMPT:
            if (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_START)) {
                if (pauseCtx->promptChoice == 0) {
                    Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    Play_SaveSceneFlags(play);

                    switch (gSaveContext.save.entranceIndex) {
                        case ENTR_DEKU_TREE_0:
                        case ENTR_DODONGOS_CAVERN_0:
                        case ENTR_JABU_JABU_0:
                        case ENTR_FOREST_TEMPLE_0:
                        case ENTR_FIRE_TEMPLE_0:
                        case ENTR_WATER_TEMPLE_0:
                        case ENTR_SPIRIT_TEMPLE_0:
                        case ENTR_SHADOW_TEMPLE_0:
                        case ENTR_GANONS_TOWER_0:
                        case ENTR_GERUDO_TRAINING_GROUND_0:
                        case ENTR_ICE_CAVERN_0:
                        case ENTR_THIEVES_HIDEOUT_0:
                        case ENTR_BOTTOM_OF_THE_WELL_0:
                        case ENTR_INSIDE_GANONS_CASTLE_0:
                        case ENTR_GANONS_TOWER_COLLAPSE_INTERIOR_0:
                            break;

                        case ENTR_DEKU_TREE_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_DEKU_TREE_0;
                            break;

                        case ENTR_DODONGOS_CAVERN_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_DODONGOS_CAVERN_0;
                            break;

                        case ENTR_JABU_JABU_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_JABU_JABU_0;
                            break;

                        case ENTR_FOREST_TEMPLE_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_FOREST_TEMPLE_0;
                            break;

                        case ENTR_FIRE_TEMPLE_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_FIRE_TEMPLE_0;
                            break;

                        case ENTR_WATER_TEMPLE_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_WATER_TEMPLE_0;
                            break;

                        case ENTR_SPIRIT_TEMPLE_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_SPIRIT_TEMPLE_0;
                            break;

                        case ENTR_SHADOW_TEMPLE_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_SHADOW_TEMPLE_0;
                            break;

                        case ENTR_GANONDORF_BOSS_0:
                            gSaveContext.save.entranceIndex = ENTR_GANONS_TOWER_0;
                            break;
                    }
                } else {
                    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }

                pauseCtx->state = PAUSE_STATE_GAME_OVER_FINISH;
            }
            break;

        case PAUSE_STATE_GAME_OVER_FINISH:
            if (interfaceCtx->unk_244 != 255) {
                interfaceCtx->unk_244 += 10;
                if (interfaceCtx->unk_244 >= 255) {
                    interfaceCtx->unk_244 = 255;
                    pauseCtx->state = PAUSE_STATE_OFF;
                    R_UPDATE_RATE = 3;
                    R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_OFF;
                    func_800981B8(&play->objectCtx);
                    func_800418D0(&play->colCtx, play);
                    if (pauseCtx->promptChoice == 0) {
                        Play_TriggerRespawn(play);
                        gSaveContext.respawnFlag = -2;
                        gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                        gSaveContext.save.info.playerData.health = 0x30;
                        SEQCMD_RESET_AUDIO_HEAP(0, 10);
                        gSaveContext.healthAccumulator = 0;
                        gSaveContext.magicState = MAGIC_STATE_IDLE;
                        gSaveContext.prevMagicState = MAGIC_STATE_IDLE;
                        PRINTF_COLOR_YELLOW();
                        PRINTF("MAGIC_NOW=%d ", gSaveContext.save.info.playerData.magic);
                        PRINTF("Z_MAGIC_NOW_NOW=%d   →  ", gSaveContext.magicFillTarget);
                        gSaveContext.magicCapacity = 0;
                        // Set the fill target to be the magic amount before game over
                        gSaveContext.magicFillTarget = gSaveContext.save.info.playerData.magic;
                        // Set `magicLevel` and `magic` to 0 so `magicCapacity` then `magic` grows from nothing
                        // to respectively the full capacity and `magicFillTarget`
                        gSaveContext.save.info.playerData.magicLevel = gSaveContext.save.info.playerData.magic = 0;
                        PRINTF("MAGIC_NOW=%d ", gSaveContext.save.info.playerData.magic);
                        PRINTF("Z_MAGIC_NOW_NOW=%d\n", gSaveContext.magicFillTarget);
                        PRINTF_RST();
                    } else {
                        play->state.running = false;
                        SET_NEXT_GAMESTATE(&play->state, TitleSetup_Init, TitleSetupState);
                    }
                }
            }
            break;

        case PAUSE_STATE_CLOSING:
            if (pauseCtx->itemPagePitch != 160.0f) {
                pauseCtx->itemPagePitch = pauseCtx->equipPagePitch = pauseCtx->mapPagePitch =
                    pauseCtx->questPagePitch += 160.0f / WREG(6);
                pauseCtx->infoPanelOffsetY -= 40 / WREG(6);
                interfaceCtx->startAlpha -= 255 / WREG(6);
                WREG(16) -= WREG(25) / WREG(6);
                WREG(17) -= WREG(26) / WREG(6);
                XREG(5) -= 150 / WREG(6);
                pauseCtx->alpha -= (u16)(255 / WREG(6));
                if (pauseCtx->itemPagePitch == 160.0f) {
                    pauseCtx->alpha = 0;
                }
            } else {
                pauseCtx->debugState = 0;
                pauseCtx->state = PAUSE_STATE_RESUME_GAMEPLAY;
                pauseCtx->questPagePitch = 160.0f;
                pauseCtx->mapPagePitch = 160.0f;
                pauseCtx->equipPagePitch = 160.0f;
                pauseCtx->itemPagePitch = 160.0f;
                pauseCtx->namedItem = PAUSE_ITEM_NONE;
                interfaceCtx->startAlpha = 0;
            }
            break;

        case PAUSE_STATE_RESUME_GAMEPLAY:
            pauseCtx->state = PAUSE_STATE_OFF;
            R_UPDATE_RATE = 3;
            R_PAUSE_BG_PRERENDER_STATE = PAUSE_BG_PRERENDER_OFF;

            func_800981B8(&play->objectCtx);
            func_800418D0(&play->colCtx, play);

            switch (play->sceneId) {
                case SCENE_DEKU_TREE:
                case SCENE_DODONGOS_CAVERN:
                case SCENE_JABU_JABU:
                case SCENE_FOREST_TEMPLE:
                case SCENE_FIRE_TEMPLE:
                case SCENE_WATER_TEMPLE:
                case SCENE_SPIRIT_TEMPLE:
                case SCENE_SHADOW_TEMPLE:
                case SCENE_BOTTOM_OF_THE_WELL:
                case SCENE_ICE_CAVERN:
                case SCENE_DEKU_TREE_BOSS:
                case SCENE_DODONGOS_CAVERN_BOSS:
                case SCENE_JABU_JABU_BOSS:
                case SCENE_FOREST_TEMPLE_BOSS:
                case SCENE_FIRE_TEMPLE_BOSS:
                case SCENE_WATER_TEMPLE_BOSS:
                case SCENE_SPIRIT_TEMPLE_BOSS:
                case SCENE_SHADOW_TEMPLE_BOSS:
                    Map_InitData(play, interfaceCtx->mapRoomNum);
                    break;
            }

            gSaveContext.buttonStatus[0] = D_808321A8[0];
            gSaveContext.buttonStatus[1] = D_808321A8[1];
            gSaveContext.buttonStatus[2] = D_808321A8[2];
            gSaveContext.buttonStatus[3] = D_808321A8[3];
            gSaveContext.buttonStatus[4] = D_808321A8[4];
            interfaceCtx->unk_1FA = interfaceCtx->unk_1FC = 0;
            PRINTF_COLOR_YELLOW();
            PRINTF("i=%d  LAST_TIME_TYPE=%d\n", i, gSaveContext.prevHudVisibilityMode);
            gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
            Interface_ChangeHudVisibilityMode(gSaveContext.prevHudVisibilityMode);
            player->talkActor = NULL;
            Player_SetEquipmentData(play, player);
            PRINTF_RST();
            break;
    }
}
