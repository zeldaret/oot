/*
 * File: z_select.c
 * Overlay: ovl_select
 * Description: Debug Scene Select Menu
 */

#include "ultra64.h"
#include "global.h"
#include "terminal.h"
#include "alloca.h"
#include "z64.h"

#if PLATFORM_N64
#include "n64dd.h"
#endif

void MapSelect_LoadTitle(MapSelectState* this) {
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, ConsoleLogo_Init, ConsoleLogoState);
}

void MapSelect_LoadGame(MapSelectState* this, s32 entranceIndex) {
    PRINTF_COLOR_BLUE();
    PRINTF("\n\n\nＦＩＬＥ＿ＮＯ＝%x\n\n\n", gSaveContext.fileNum);
    PRINTF_RST();
    if (gSaveContext.fileNum == 0xFF) {
        Sram_InitDebugSave();
        // Set the fill target to be the saved magic amount
        gSaveContext.magicFillTarget = gSaveContext.save.info.playerData.magic;
        // Set `magicLevel` and `magic` to 0 so `magicCapacity` then `magic` grows from nothing
        // to respectively the full capacity and `magicFillTarget`
        gSaveContext.magicCapacity = 0;
        gSaveContext.save.info.playerData.magicLevel = gSaveContext.save.info.playerData.magic = 0;
    }
    gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
        gSaveContext.buttonStatus[3] = gSaveContext.buttonStatus[4] = BTN_ENABLED;
    gSaveContext.forceRisingButtonAlphas = gSaveContext.nextHudVisibilityMode = gSaveContext.hudVisibilityMode =
        gSaveContext.hudVisibilityModeTimer = 0; // false, HUD_VISIBILITY_NO_CHANGE
    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
    gSaveContext.save.entranceIndex = entranceIndex;
    gSaveContext.respawnFlag = 0;
    gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex = ENTR_LOAD_OPENING;
    gSaveContext.seqId = (u8)NA_BGM_DISABLED;
    gSaveContext.natureAmbienceId = 0xFF;
    gSaveContext.showTitleCard = true;
    gWeatherMode = WEATHER_MODE_CLEAR;

    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, Play_Init, PlayState);
}

#if PLATFORM_N64
void func_80800AD0_unknown(MapSelectState* this, s32 arg1) {
    if (D_80121212 != 0) {
        n64dd_SetDiskVersion(1);
    }
}

void func_80800B08_unknown(MapSelectState* this, s32 arg1) {
    if (D_80121212 != 0) {
        n64dd_SetDiskVersion(0);
    }
}
#endif

static SceneSelectEntry sScenes[] = {
    { " 1:SPOT00", MapSelect_LoadGame, ENTR_HYRULE_FIELD_0 },
    { " 2:SPOT01", MapSelect_LoadGame, ENTR_KAKARIKO_VILLAGE_0 },
    { " 3:SPOT02", MapSelect_LoadGame, ENTR_GRAVEYARD_0 },
    { " 4:SPOT03", MapSelect_LoadGame, ENTR_ZORAS_RIVER_0 },
    { " 5:SPOT04", MapSelect_LoadGame, ENTR_KOKIRI_FOREST_0 },
    { " 6:SPOT05", MapSelect_LoadGame, ENTR_SACRED_FOREST_MEADOW_0 },
    { " 7:SPOT06", MapSelect_LoadGame, ENTR_LAKE_HYLIA_0 },
    { " 8:SPOT07", MapSelect_LoadGame, ENTR_ZORAS_DOMAIN_0 },
    { " 9:SPOT08", MapSelect_LoadGame, ENTR_ZORAS_FOUNTAIN_0 },
    { "10:SPOT09", MapSelect_LoadGame, ENTR_GERUDO_VALLEY_0 },
    { "11:SPOT10", MapSelect_LoadGame, ENTR_LOST_WOODS_0 },
    { "12:SPOT11", MapSelect_LoadGame, ENTR_DESERT_COLOSSUS_0 },
    { "13:SPOT12", MapSelect_LoadGame, ENTR_GERUDOS_FORTRESS_0 },
    { "14:SPOT13", MapSelect_LoadGame, ENTR_HAUNTED_WASTELAND_0 },
    { "15:SPOT15", MapSelect_LoadGame, ENTR_HYRULE_CASTLE_0 },
    { "16:SPOT16", MapSelect_LoadGame, ENTR_DEATH_MOUNTAIN_TRAIL_0 },
    { "17:SPOT17", MapSelect_LoadGame, ENTR_DEATH_MOUNTAIN_CRATER_0 },
    { "18:SPOT18", MapSelect_LoadGame, ENTR_GORON_CITY_0 },
    { "19:SPOT20", MapSelect_LoadGame, ENTR_LON_LON_RANCH_0 },
    { "20:" T(GFXP_HIRAGANA "ﾄｷﾉﾏ", "Chamber of Time"), MapSelect_LoadGame, ENTR_TEMPLE_OF_TIME_0 },
    { "21:" T(GFXP_HIRAGANA "ｹﾝｼﾞｬﾉﾏ", "Chamber of the Sages"), MapSelect_LoadGame, ENTR_CHAMBER_OF_THE_SAGES_0 },
    { "22:" T(GFXP_HIRAGANA "ｼｬﾃｷｼﾞｮｳ", "Target Range"), MapSelect_LoadGame, ENTR_SHOOTING_GALLERY_0 },
    { "23:" T(GFXP_KATAKANA "ﾊｲﾗﾙ" GFXP_HIRAGANA "ﾆﾜ" GFXP_KATAKANA "ｹﾞｰﾑ", "Hyrule Garden Game"), MapSelect_LoadGame,
      ENTR_CASTLE_COURTYARD_GUARDS_DAY_0 },
    { "24:" T(GFXP_HIRAGANA "ﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ", "Grave Dive Hole"), MapSelect_LoadGame, ENTR_REDEAD_GRAVE_0 },
    { "25:" T(GFXP_HIRAGANA "ﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ 2", "Grave Dive Hole 2"), MapSelect_LoadGame,
      ENTR_GRAVE_WITH_FAIRYS_FOUNTAIN_0 },
    { "26:" T(GFXP_HIRAGANA "ｵｳｹ ﾉ ﾊｶｱﾅ", "Royal Family's Grave"), MapSelect_LoadGame, ENTR_ROYAL_FAMILYS_TOMB_0 },
    { "27:" T(GFXP_HIRAGANA "ﾀﾞｲﾖｳｾｲﾉｲｽﾞﾐ", "Great Fairy's Fountain"), MapSelect_LoadGame,
      ENTR_GREAT_FAIRYS_FOUNTAIN_MAGIC_0 },
    { "28:" T(GFXP_HIRAGANA "ﾄﾋﾞｺﾐ ﾖｳｾｲ ｱﾅ", "Fairy Dive Hole"), MapSelect_LoadGame, ENTR_FAIRYS_FOUNTAIN_0 },
    { "29:" T(GFXP_HIRAGANA "ﾏﾎｳｾｷ ﾖｳｾｲﾉｲｽﾞﾐ", "Magic Stone Fairy's Fountain"), MapSelect_LoadGame,
      ENTR_GREAT_FAIRYS_FOUNTAIN_SPELLS_0 },
    { "30:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ｻｲｼｭｳｾﾝ", "Final Battle With Ganon"), MapSelect_LoadGame,
      ENTR_GANONS_TOWER_COLLAPSE_EXTERIOR_0 },
    { "31:" T(GFXP_KATAKANA "ﾊｲﾗﾙ" GFXP_HIRAGANA "ﾅｶﾆﾜ", "Hyrule Inner Garden"), MapSelect_LoadGame,
      ENTR_CASTLE_COURTYARD_ZELDA_0 },
    { "32:" T(GFXP_HIRAGANA "ﾂﾘﾎﾞﾘ", "Fishing"), MapSelect_LoadGame, ENTR_FISHING_POND_0 },
    { "33:" T(GFXP_KATAKANA "ﾎﾞﾑﾁｭｳﾎﾞｰﾘﾝｸﾞ", "Bombchu Bowling"), MapSelect_LoadGame, ENTR_BOMBCHU_BOWLING_ALLEY_0 },
    // Talon's House
    { "34:" T(GFXP_KATAKANA "ﾛﾝﾛﾝ" GFXP_HIRAGANA "ﾎﾞｸｼﾞｮｳ ｿｳｺ 1", "Lon Lon Ranch - Storehouse 1"), MapSelect_LoadGame,
      ENTR_LON_LON_BUILDINGS_0 },
    // Ranch Silo
    { "35:" T(GFXP_KATAKANA "ﾛﾝﾛﾝ" GFXP_HIRAGANA "ﾎﾞｸｼﾞｮｳ ｿｳｺ 2", "Lon Lon Ranch - Storehouse 2"), MapSelect_LoadGame,
      ENTR_LON_LON_BUILDINGS_1 },
    { "36:" T(GFXP_HIRAGANA "ﾐﾊﾘ ｺﾞﾔ", "Lookout Hut"), MapSelect_LoadGame, ENTR_MARKET_GUARD_HOUSE_0 },
    { "37:" T(GFXP_HIRAGANA "ﾏﾎｳ ﾉ ｸｽﾘﾔ", "Magic Potion Shop"), MapSelect_LoadGame, ENTR_POTION_SHOP_GRANNY_0 },
    { "38:" T(GFXP_HIRAGANA "ﾀｶﾗﾊﾞｺﾔ", "Treasure Chest Shop"), MapSelect_LoadGame, ENTR_TREASURE_BOX_SHOP_0 },
    { "39:" T(GFXP_HIRAGANA "ｷﾝ " GFXP_KATAKANA "ｽﾀﾙﾁｭﾗ ﾊｳｽ", "Gold Skulltula House"), MapSelect_LoadGame,
      ENTR_HOUSE_OF_SKULLTULA_0 },
    { "40:" T(GFXP_HIRAGANA "ｼﾞｮｳｶﾏﾁ ｲﾘｸﾞﾁ", "Castle Town - Entrance"), MapSelect_LoadGame,
      ENTR_MARKET_ENTRANCE_DAY_0 },
    { "41:" T(GFXP_HIRAGANA "ｼﾞｮｳｶﾏﾁ", "Castle Town"), MapSelect_LoadGame, ENTR_MARKET_DAY_0 },
    { "42:" T(GFXP_HIRAGANA "ｳﾗﾛｼﾞ", "Back Alley"), MapSelect_LoadGame, ENTR_BACK_ALLEY_DAY_0 },
    { "43:" T(GFXP_HIRAGANA "ﾄｷﾉｼﾝﾃﾞﾝ ﾏｴ", "In Front of the Temple of Time"), MapSelect_LoadGame,
      ENTR_TEMPLE_OF_TIME_EXTERIOR_DAY_0 },
    { "44:" T(GFXP_HIRAGANA "ﾘﾝｸﾉｲｴ", "Link's House"), MapSelect_LoadGame, ENTR_LINKS_HOUSE_0 },
    { "45:" T(GFXP_KATAKANA "ｶｶﾘｺ" GFXP_HIRAGANA "ﾑﾗﾉﾅｶﾞﾔ", "Kakariko Village Row House"), MapSelect_LoadGame,
      ENTR_KAKARIKO_CENTER_GUEST_HOUSE_0 },
    { "46:" T(GFXP_HIRAGANA "ｳﾗﾛｼﾞﾉ ｲｴ", "Back Alley House"), MapSelect_LoadGame, ENTR_BACK_ALLEY_HOUSE_0 },
    { "47:" T(GFXP_HIRAGANA "ｺｷﾘﾉﾑﾗ ﾓﾉｼﾘｷｮｳﾀﾞｲﾉｲｴ", "Kokiri Village - Know-It-All Brothers' House"), MapSelect_LoadGame,
      ENTR_KNOW_IT_ALL_BROS_HOUSE_0 },
    { "48:" T(GFXP_HIRAGANA "ｺｷﾘﾉﾑﾗ ﾌﾀｺﾞﾉｲｴ", "Kokiri Village - Twins' House"), MapSelect_LoadGame,
      ENTR_TWINS_HOUSE_0 },
    { "49:" T(GFXP_HIRAGANA "ｺｷﾘﾉﾑﾗ " GFXP_KATAKANA "ﾐﾄﾞ" GFXP_HIRAGANA "ﾉｲｴ", "Kokiri Village - Mido's House"),
      MapSelect_LoadGame, ENTR_MIDOS_HOUSE_0 },
    { "50:" T(GFXP_HIRAGANA "ｺｷﾘﾉﾑﾗ " GFXP_KATAKANA "ｻﾘｱ" GFXP_HIRAGANA "ﾉｲｴ", "Kokiri Village - Saria's House"),
      MapSelect_LoadGame, ENTR_SARIAS_HOUSE_0 },
    { "51:" T(GFXP_HIRAGANA "ｳﾏｺﾞﾔ", "Stable"), MapSelect_LoadGame, ENTR_STABLE_0 },
    { "52:" T(GFXP_HIRAGANA "ﾊｶﾓﾘﾉｲｴ", "Grave Keeper's House"), MapSelect_LoadGame, ENTR_GRAVEKEEPERS_HUT_0 },
    { "53:" T(GFXP_HIRAGANA "ｳﾗﾛｼﾞ ｲﾇｵﾊﾞｻﾝﾉｲｴ", "Back Alley - Dog Lady's House"), MapSelect_LoadGame,
      ENTR_DOG_LADY_HOUSE_0 },
    { "54:" T(GFXP_HIRAGANA "ｶｶﾘｺﾑﾗ " GFXP_KATAKANA "ｲﾝﾊﾟ" GFXP_HIRAGANA "ﾉｲｴ", "Kakariko Village - Impa's House"),
      MapSelect_LoadGame, ENTR_IMPAS_HOUSE_0 },
    { "55:" T(GFXP_KATAKANA "ﾊｲﾘｱ" GFXP_HIRAGANA " ｹﾝｷｭｳｼﾞｮ", "Hylia Laboratory"), MapSelect_LoadGame,
      ENTR_LAKESIDE_LABORATORY_0 },
    { "56:" T(GFXP_KATAKANA "ﾃﾝﾄ", "Tent"), MapSelect_LoadGame, ENTR_CARPENTERS_TENT_0 },
    { "57:" T(GFXP_HIRAGANA "ﾀﾃﾉﾐｾ", "Shield Shop"), MapSelect_LoadGame, ENTR_BAZAAR_0 },
    { "58:" T(GFXP_HIRAGANA "ｺｷﾘｿﾞｸﾉﾐｾ", "Kokiri Shop"), MapSelect_LoadGame, ENTR_KOKIRI_SHOP_0 },
    { "59:" T(GFXP_KATAKANA "ｺﾞﾛﾝ" GFXP_HIRAGANA "ﾉﾐｾ", "Goron Shop"), MapSelect_LoadGame, ENTR_GORON_SHOP_0 },
    { "60:" T(GFXP_KATAKANA "ｿﾞｰﾗ" GFXP_HIRAGANA "ﾉﾐｾ", "Zora Shop"), MapSelect_LoadGame, ENTR_ZORA_SHOP_0 },
    { "61:" T(GFXP_KATAKANA "ｶｶﾘｺ" GFXP_HIRAGANA "ﾑﾗ  ｸｽﾘﾔ", "Kakariko Village - Potion Shop"), MapSelect_LoadGame,
      ENTR_POTION_SHOP_KAKARIKO_0 },
    { "62:" T(GFXP_HIRAGANA "ｼﾞｮｳｶﾏﾁ ｸｽﾘﾔ", "Castle Town - Potion Shop"), MapSelect_LoadGame,
      ENTR_POTION_SHOP_MARKET_0 },
    { "63:" T(GFXP_HIRAGANA "ｳﾗﾛｼﾞ ﾖﾙﾉﾐｾ", "Back Alley - Night Shop"), MapSelect_LoadGame, ENTR_BOMBCHU_SHOP_0 },
    { "64:" T(GFXP_HIRAGANA "ｵﾒﾝﾔ", "Mask Shop"), MapSelect_LoadGame, ENTR_HAPPY_MASK_SHOP_0 },
    { "65:" T(GFXP_KATAKANA "ｹﾞﾙﾄﾞ" GFXP_HIRAGANA "ﾉｼｭｳﾚﾝｼﾞｮｳ", "Gerudo Training Area"), MapSelect_LoadGame,
      ENTR_GERUDO_TRAINING_GROUND_0 },
    { "66:" T(GFXP_HIRAGANA "ﾖｳｾｲﾉｷﾉ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ", "Fairy Tree Dungeon"), MapSelect_LoadGame,
      ENTR_DEKU_TREE_0 },
    { "67:" T(GFXP_HIRAGANA "ﾖｳｾｲﾉｷﾉ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", "Fairy Tree Dungeon - Boss"), MapSelect_LoadGame,
      ENTR_DEKU_TREE_BOSS_0 },
    { "68:" T(GFXP_KATAKANA "ﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ", "Dondogo Dungeon"), MapSelect_LoadGame, ENTR_DODONGOS_CAVERN_0 },
    { "69:" T(GFXP_KATAKANA "ﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", "Dondogo Dungeon - Boss"), MapSelect_LoadGame,
      ENTR_DODONGOS_CAVERN_BOSS_0 },
    { "70:" T(GFXP_HIRAGANA "ｷｮﾀﾞｲｷﾞｮ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ", "Giant Fish Dungeon"), MapSelect_LoadGame,
      ENTR_JABU_JABU_0 },
    { "71:" T(GFXP_HIRAGANA "ｷｮﾀﾞｲｷﾞｮ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", "Giant Fish Dungeon - Boss"), MapSelect_LoadGame,
      ENTR_JABU_JABU_BOSS_0 },
    { "72:" T(GFXP_HIRAGANA "ﾓﾘﾉｼﾝﾃﾞﾝ", "Forest Temple"), MapSelect_LoadGame, ENTR_FOREST_TEMPLE_0 },
    { "73:" T(GFXP_HIRAGANA "ﾓﾘﾉｼﾝﾃﾞﾝ " GFXP_KATAKANA "ﾎﾞｽ", "Forest Temple - Boss"), MapSelect_LoadGame,
      ENTR_FOREST_TEMPLE_BOSS_0 },
    { "74:" T(GFXP_HIRAGANA "ｲﾄﾞｼﾀ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ", "Dungeon Below the Well"), MapSelect_LoadGame,
      ENTR_BOTTOM_OF_THE_WELL_0 },
    { "75:" T(GFXP_HIRAGANA "ﾊｶｼﾀ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ", "Dungeon Beneath the Graves"), MapSelect_LoadGame,
      ENTR_SHADOW_TEMPLE_0 },
    { "76:" T(GFXP_HIRAGANA "ﾊｶｼﾀ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", "Dungeon Beneath the Graves - Boss"),
      MapSelect_LoadGame, ENTR_SHADOW_TEMPLE_BOSS_0 },
    { "77:" T(GFXP_HIRAGANA "ﾋﾉｼﾝﾃﾞﾝ", "Fire Temple"), MapSelect_LoadGame, ENTR_FIRE_TEMPLE_0 },
    { "78:" T(GFXP_HIRAGANA "ﾋﾉｼﾝﾃﾞﾝ " GFXP_KATAKANA "ﾎﾞｽ", "Fire Temple - Boss"), MapSelect_LoadGame,
      ENTR_FIRE_TEMPLE_BOSS_0 },
    { "79:" T(GFXP_HIRAGANA "ﾐｽﾞﾉｼﾝﾃﾞﾝ", "Water Temple"), MapSelect_LoadGame, ENTR_WATER_TEMPLE_0 },
    { "80:" T(GFXP_HIRAGANA "ﾐｽﾞﾉｼﾝﾃﾞﾝ " GFXP_KATAKANA "ﾎﾞｽ", "Water Temple - Boss"), MapSelect_LoadGame,
      ENTR_WATER_TEMPLE_BOSS_0 },
    { "81:" T(GFXP_HIRAGANA "ｼﾞｬｼﾝｿﾞｳ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ", "Evil Goddess Statue Dungeon"), MapSelect_LoadGame,
      ENTR_SPIRIT_TEMPLE_0 },
    // Iron Knuckle's Lair
    { "82:" T(GFXP_HIRAGANA "ｼﾞｬｼﾝｿﾞｳ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ ｱｲｱﾝﾅｯｸ", "Evil Goddess Statue Dungeon - Iron Knuckle"),
      MapSelect_LoadGame, ENTR_SPIRIT_TEMPLE_BOSS_0 },
    // Twinrova's Lair
    { "83:" T(GFXP_HIRAGANA "ｼﾞｬｼﾝｿﾞｳ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", "Evil Goddess Statue Dungeon - Boss"),
      MapSelect_LoadGame, ENTR_SPIRIT_TEMPLE_BOSS_2 },
    { "84:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ﾉﾄｳ", "Ganon's Tower"), MapSelect_LoadGame, ENTR_GANONS_TOWER_0 },
    { "85:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ﾉﾄｳ" GFXP_KATAKANA "ﾎﾞｽ", "Ganon's Tower - Boss"), MapSelect_LoadGame,
      ENTR_GANONDORF_BOSS_0 },
    { "86:" T(GFXP_HIRAGANA "ｺｵﾘﾉﾄﾞｳｸﾂ", "Ice Cavern"), MapSelect_LoadGame, ENTR_ICE_CAVERN_0 },
    // Dampé's Grave
    { "87:" T(GFXP_HIRAGANA "ﾊｶｼﾀ" GFXP_KATAKANA "ﾘﾚｰ", "Relay Beneath the Graves"), MapSelect_LoadGame,
      ENTR_WINDMILL_AND_DAMPES_GRAVE_0 },
    { "88:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ﾁｶ " GFXP_KATAKANA "ﾀﾞﾝｼﾞｮﾝ", "Ganon's Basement Dungeon"),
      MapSelect_LoadGame, ENTR_INSIDE_GANONS_CASTLE_0 },
    { "89:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ｻｲｼｭｳｾﾝ " GFXP_KATAKANA "ﾃﾞﾓ & ﾊﾞﾄﾙ",
              "Final Battle With Ganon - Cutscene & Battle"),
      MapSelect_LoadGame, ENTR_GANON_BOSS_0 },
    { "90:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ﾉﾄｳ ｿﾉｺﾞ 1", "Ganon's Tower Aftermath 1"), MapSelect_LoadGame,
      ENTR_GANONS_TOWER_COLLAPSE_INTERIOR_0 },
    { "91:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ﾉﾄｳ ｿﾉｺﾞ 2", "Ganon's Tower Aftermath 2"), MapSelect_LoadGame,
      ENTR_GANONS_TOWER_COLLAPSE_INTERIOR_2 },
    { "92:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ﾉﾄｳ ｿﾉｺﾞ 3", "Ganon's Tower Aftermath 3"), MapSelect_LoadGame,
      ENTR_GANONS_TOWER_COLLAPSE_INTERIOR_4 },
    { "93:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ﾉﾄｳ ｿﾉｺﾞ 4", "Ganon's Tower Aftermath 4"), MapSelect_LoadGame,
      ENTR_GANONS_TOWER_COLLAPSE_INTERIOR_6 },
    { "94:" T(GFXP_KATAKANA "ｶﾞﾉﾝ" GFXP_HIRAGANA "ﾁｶ ｿﾉｺﾞ", "Ganon's Basement Aftermath"), MapSelect_LoadGame,
      ENTR_INSIDE_GANONS_CASTLE_COLLAPSE_0 },
    { "95:" T(GFXP_KATAKANA "ｹﾞﾙﾄﾞ" GFXP_HIRAGANA "ﾂｳﾛ 1-2", "Gerudo Passage 1-2"), MapSelect_LoadGame,
      ENTR_THIEVES_HIDEOUT_0 },
    { "96:" T(GFXP_KATAKANA "ｹﾞﾙﾄﾞ" GFXP_HIRAGANA "ﾂｳﾛ 3-4 9-10", "Gerudo Passage 3-4 9-10"), MapSelect_LoadGame,
      ENTR_THIEVES_HIDEOUT_2 },
    { "97:" T(GFXP_KATAKANA "ｹﾞﾙﾄﾞ" GFXP_HIRAGANA "ﾂｳﾛ 5-6", "Gerudo Passage 5-6"), MapSelect_LoadGame,
      ENTR_THIEVES_HIDEOUT_4 },
    { "98:" T(GFXP_KATAKANA "ｹﾞﾙﾄﾞ" GFXP_HIRAGANA "ﾂｳﾛ 7-8", "Gerudo Passage 7-8"), MapSelect_LoadGame,
      ENTR_THIEVES_HIDEOUT_6 },
    { "99:" T(GFXP_KATAKANA "ｹﾞﾙﾄﾞ" GFXP_HIRAGANA "ﾂｳﾛ 11-12", "Gerudo Passage 11-12"), MapSelect_LoadGame,
      ENTR_THIEVES_HIDEOUT_10 },
    { "100:" T(GFXP_KATAKANA "ｹﾞﾙﾄﾞ" GFXP_HIRAGANA "ﾂｳﾛ 13", "Gerudo Passage 13"), MapSelect_LoadGame,
      ENTR_THIEVES_HIDEOUT_12 },
    // Gossip Stone & Chest Grotto
    { "101:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 0", "Hidden Dive Hole 0"), MapSelect_LoadGame, ENTR_GROTTOS_0 },
    // Skulltula & Gold Skulltula Grotto
    { "102:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 1", "Hidden Dive Hole 1"), MapSelect_LoadGame, ENTR_GROTTOS_1 },
    // Business Scrub & Heart Piece Grotto
    { "103:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 2", "Hidden Dive Hole 2"), MapSelect_LoadGame, ENTR_GROTTOS_2 },
    // Redeads Grotto
    { "104:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 3", "Hidden Dive Hole 3"), MapSelect_LoadGame, ENTR_GROTTOS_3 },
    // 3 Business Scrubs Grotto
    { "105:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 4", "Hidden Dive Hole 4"), MapSelect_LoadGame, ENTR_GROTTOS_4 },
    // Gossip Stone, Skulltula & Cow Grotto
    { "106:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 5", "Hidden Dive Hole 5"), MapSelect_LoadGame, ENTR_GROTTOS_5 },
    // Octorok Grotto
    { "107:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 6", "Hidden Dive Hole 6"), MapSelect_LoadGame, ENTR_GROTTOS_6 },
    // Business Scrub & Deku Nut Upgrade Grotto
    { "108:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 7", "Hidden Dive Hole 7"), MapSelect_LoadGame, ENTR_GROTTOS_7 },
    // 2 Wolfos Grotto
    { "109:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 8", "Hidden Dive Hole 8"), MapSelect_LoadGame, ENTR_GROTTOS_8 },
    // Bombable Walls Grotto
    { "110:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 9", "Hidden Dive Hole 9"), MapSelect_LoadGame, ENTR_GROTTOS_9 },
    // 2 Business Scrubs Grotto
    { "111:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 10", "Hidden Dive Hole 10"), MapSelect_LoadGame, ENTR_GROTTOS_10 },
    // Tektite & Heart Piece Grotto
    { "112:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 11", "Hidden Dive Hole 11"), MapSelect_LoadGame, ENTR_GROTTOS_11 },
    // Deku Stage Grotto
    { "113:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 12", "Hidden Dive Hole 12"), MapSelect_LoadGame, ENTR_GROTTOS_12 },
    // Rupees & Cow Grotto
    { "114:" T(GFXP_HIRAGANA "ｶｸｼﾄﾋﾞｺﾐｱﾅ 13", "Hidden Dive Hole 13"), MapSelect_LoadGame, ENTR_GROTTOS_13 },
    { "115:" T(GFXP_KATAKANA "ﾊｲﾗﾙ ﾃﾞﾓ", "Hyrule Cutscenes"), MapSelect_LoadGame, ENTR_CUTSCENE_MAP_0 },
#if DEBUG_FEATURES
    { "116:" T(GFXP_HIRAGANA "ﾍﾞｯｼﾂ (ﾀｶﾗﾊﾞｺ" GFXP_KATAKANA "ﾜｰﾌﾟ)", "Special Room (Treasure Chest Warp)"),
      MapSelect_LoadGame, ENTR_BESITU_0 },
    { "117:" T(GFXP_HIRAGANA "ｻｻ" GFXP_KATAKANA "ﾃｽﾄ", "Sasaki Test"), MapSelect_LoadGame, ENTR_SASATEST_0 },
    { "118:" T(GFXP_KATAKANA "ﾃｽﾄﾏｯﾌﾟ", "Test Map"), MapSelect_LoadGame, ENTR_TEST01_0 },
    { "119:" T(GFXP_KATAKANA "ﾃｽﾄﾙｰﾑ", "Test Room"), MapSelect_LoadGame, ENTR_TESTROOM_0 },
    { "120:" T(GFXP_HIRAGANA "ﾁｭｳ" GFXP_KATAKANA "ｽﾀﾛﾌｫｽ" GFXP_HIRAGANA "ﾍﾞﾔ", "Stalfos Miniboss Room"),
      MapSelect_LoadGame, ENTR_SYOTES_0 },
    { "121:" T(GFXP_KATAKANA "ﾎﾞｽｽﾀﾛﾌｫｽ" GFXP_HIRAGANA "ﾍﾞﾔ", "Boss Stalfos Room"), MapSelect_LoadGame,
      ENTR_SYOTES2_0 },
    { "122:" T("Sutaru", "Stal"), MapSelect_LoadGame, ENTR_SUTARU_0 },
    { "123:" T("jikkenjyou", "Test Area"), MapSelect_LoadGame, ENTR_TEST_SHOOTING_GALLERY_0 },
    { "124:depth" T(GFXP_KATAKANA "ﾃｽﾄ", "Test"), MapSelect_LoadGame, ENTR_DEPTH_TEST_0 },
    { "125:" T(GFXP_KATAKANA "ﾊｲﾗﾙ" GFXP_HIRAGANA "ﾆﾜ" GFXP_KATAKANA "ｹﾞｰﾑ2", "Hyrule Garden Game 2"),
      MapSelect_LoadGame, ENTR_HAIRAL_NIWA2_0 },
#endif
    { "title", (void*)MapSelect_LoadTitle, 0 },
#if PLATFORM_N64
    { "64DD TEST  n64dd_SetDiskVersion(1)", (void*)func_80800AD0_unknown, 0 },
    { "64DD TEST2 n64dd_SetDiskVersion(0)", (void*)func_80800B08_unknown, 0 },
#endif
};

void MapSelect_UpdateMenu(MapSelectState* this) {
    Input* input = &this->state.input[0];
    s32 pad;
    SceneSelectEntry* selectedScene;

    if (this->verticalInputAccumulator == 0) {
        if (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_START)) {
            selectedScene = &this->scenes[this->currentScene];
            if (selectedScene->loadFunc != NULL) {
                selectedScene->loadFunc(this, selectedScene->entranceIndex);
            }
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
            if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
                gSaveContext.save.linkAge = LINK_AGE_CHILD;
            } else {
                gSaveContext.save.linkAge = LINK_AGE_ADULT;
            }
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_Z)) {
            if (gSaveContext.save.cutsceneIndex == 0x8000) {
                gSaveContext.save.cutsceneIndex = 0;
            } else if (gSaveContext.save.cutsceneIndex == 0) {
                gSaveContext.save.cutsceneIndex = 0xFFF0;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF0) {
                gSaveContext.save.cutsceneIndex = 0xFFF1;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF1) {
                gSaveContext.save.cutsceneIndex = 0xFFF2;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF2) {
                gSaveContext.save.cutsceneIndex = 0xFFF3;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF3) {
                gSaveContext.save.cutsceneIndex = 0xFFF4;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF4) {
                gSaveContext.save.cutsceneIndex = 0xFFF5;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF5) {
                gSaveContext.save.cutsceneIndex = 0xFFF6;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF6) {
                gSaveContext.save.cutsceneIndex = 0xFFF7;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF7) {
                gSaveContext.save.cutsceneIndex = 0xFFF8;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF8) {
                gSaveContext.save.cutsceneIndex = 0xFFF9;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF9) {
                gSaveContext.save.cutsceneIndex = 0xFFFA;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFFA) {
                gSaveContext.save.cutsceneIndex = 0x8000;
            }
        } else if (CHECK_BTN_ALL(input->press.button, BTN_R)) {
            if (gSaveContext.save.cutsceneIndex == 0x8000) {
                gSaveContext.save.cutsceneIndex = 0xFFFA;
            } else if (gSaveContext.save.cutsceneIndex == 0) {
                gSaveContext.save.cutsceneIndex = 0x8000;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF0) {
                gSaveContext.save.cutsceneIndex = 0;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF1) {
                gSaveContext.save.cutsceneIndex = 0xFFF0;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF2) {
                gSaveContext.save.cutsceneIndex = 0xFFF1;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF3) {
                gSaveContext.save.cutsceneIndex = 0xFFF2;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF4) {
                gSaveContext.save.cutsceneIndex = 0xFFF3;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF5) {
                gSaveContext.save.cutsceneIndex = 0xFFF4;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF6) {
                gSaveContext.save.cutsceneIndex = 0xFFF5;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF7) {
                gSaveContext.save.cutsceneIndex = 0xFFF6;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF8) {
                gSaveContext.save.cutsceneIndex = 0xFFF7;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFF9) {
                gSaveContext.save.cutsceneIndex = 0xFFF8;
            } else if (gSaveContext.save.cutsceneIndex == 0xFFFA) {
                gSaveContext.save.cutsceneIndex = 0xFFF9;
            }
        }

        gSaveContext.save.nightFlag = 0;
        if (gSaveContext.save.cutsceneIndex == 0) {
            gSaveContext.save.nightFlag = 1;
        }

        // user can change "opt", but it doesn't do anything
        if (CHECK_BTN_ALL(input->press.button, BTN_CUP)) {
            this->opt--;
        }
        if (CHECK_BTN_ALL(input->press.button, BTN_CDOWN)) {
            this->opt++;
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_DUP)) {
            if (this->lockUp == true) {
                this->timerUp = 0;
            }
            if (this->timerUp == 0) {
                this->timerUp = 20;
                this->lockUp = true;
                Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->verticalInput = R_UPDATE_RATE;
            }
        }

        if (CHECK_BTN_ALL(input->cur.button, BTN_DUP) && this->timerUp == 0) {
            Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            this->verticalInput = R_UPDATE_RATE * 3;
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_DDOWN)) {
            if (this->lockDown == true) {
                this->timerDown = 0;
            }
            if (this->timerDown == 0) {
                this->timerDown = 20;
                this->lockDown = true;
                Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->verticalInput = -R_UPDATE_RATE;
            }
        }

        if (CHECK_BTN_ALL(input->cur.button, BTN_DDOWN) && (this->timerDown == 0)) {
            Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            this->verticalInput = -R_UPDATE_RATE * 3;
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_DLEFT) || CHECK_BTN_ALL(input->cur.button, BTN_DLEFT)) {
            Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            this->verticalInput = R_UPDATE_RATE;
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_DRIGHT) || CHECK_BTN_ALL(input->cur.button, BTN_DRIGHT)) {
            Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            this->verticalInput = -R_UPDATE_RATE;
        }
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_L)) {
        this->pageDownIndex++;
        this->pageDownIndex =
            (this->pageDownIndex + ARRAY_COUNT(this->pageDownStops)) % ARRAY_COUNT(this->pageDownStops);
        this->currentScene = this->topDisplayedScene = this->pageDownStops[this->pageDownIndex];
    }

    this->verticalInputAccumulator += this->verticalInput;

    if (this->verticalInputAccumulator < -7) {
        this->verticalInput = 0;
        this->verticalInputAccumulator = 0;

        this->currentScene++;
        this->currentScene = (this->currentScene + this->count) % this->count;

        if (this->currentScene == ((this->topDisplayedScene + this->count + 19) % this->count)) {
            this->topDisplayedScene++;
            this->topDisplayedScene = (this->topDisplayedScene + this->count) % this->count;
        }
    }

    if (this->verticalInputAccumulator > 7) {
        this->verticalInput = 0;
        this->verticalInputAccumulator = 0;

        if (this->currentScene == this->topDisplayedScene) {
            this->topDisplayedScene -= 2;
            this->topDisplayedScene = (this->topDisplayedScene + this->count) % this->count;
        }

        this->currentScene--;
        this->currentScene = (this->currentScene + this->count) % this->count;

        if (this->currentScene == ((this->topDisplayedScene + this->count) % this->count)) {
            this->topDisplayedScene--;
            this->topDisplayedScene = (this->topDisplayedScene + this->count) % this->count;
        }
    }

    this->currentScene = (this->currentScene + this->count) % this->count;
    this->topDisplayedScene = (this->topDisplayedScene + this->count) % this->count;

    dREG(80) = this->currentScene;
    dREG(81) = this->topDisplayedScene;
    dREG(82) = this->pageDownIndex;

    if (this->timerUp != 0) {
        this->timerUp--;
    }

    if (this->timerUp == 0) {
        this->lockUp = false;
    }

    if (this->timerDown != 0) {
        this->timerDown--;
    }

    if (this->timerDown == 0) {
        this->lockDown = false;
    }
}

void MapSelect_PrintMenu(MapSelectState* this, GfxPrint* printer) {
    s32 scene;
    s32 i;
    char* name;

    GfxPrint_SetColor(printer, 255, 155, 150, 255);
    GfxPrint_SetPos(printer, 12, 2);
    GfxPrint_Printf(printer, "ZELDA MAP SELECT");
    GfxPrint_SetColor(printer, 255, 255, 255, 255);

    for (i = 0; i < 20; i++) {
        GfxPrint_SetPos(printer, 9, i + 4);

        scene = (this->topDisplayedScene + i + this->count) % this->count;
        if (scene == this->currentScene) {
            GfxPrint_SetColor(printer, 255, 20, 20, 255);
        } else {
            GfxPrint_SetColor(printer, 200, 200, 55, 255);
        }

        name = this->scenes[scene].name;
        if (name == NULL) {
            name = "**Null**";
        }

        GfxPrint_Printf(printer, "%s", name);
    };

    GfxPrint_SetColor(printer, 155, 55, 150, 255);
    GfxPrint_SetPos(printer, 20, 26);
    GfxPrint_Printf(printer, "OPT=%d", this->opt);
}

static const char* sLoadingMessages[] = {
    T(GFXP_HIRAGANA "ｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ", "Please wait a minute"),
    T(GFXP_HIRAGANA "ﾁｮｯﾄ ﾏｯﾃﾈ", "Hold on a sec"),
    T(GFXP_KATAKANA "ｳｪｲﾄ ｱ ﾓｰﾒﾝﾄ", "Wait a moment"),
    T(GFXP_KATAKANA "ﾛｰﾄﾞ" GFXP_HIRAGANA "ﾁｭｳ", "Loading"),
    T(GFXP_HIRAGANA "ﾅｳ ﾜｰｷﾝｸﾞ", "Now working"),
    T(GFXP_HIRAGANA "ｲﾏ ﾂｸｯﾃﾏｽ", "Now creating"),
    T(GFXP_HIRAGANA "ｺｼｮｳｼﾞｬﾅｲﾖ", "It's not broken"),
    T(GFXP_KATAKANA "ｺｰﾋｰ ﾌﾞﾚｲｸ", "Coffee Break"),
    T(GFXP_KATAKANA "Bﾒﾝｦｾｯﾄｼﾃｸﾀﾞｻｲ", "Please set B side"),
    T(GFXP_HIRAGANA "ｼﾞｯﾄ" GFXP_KATAKANA "ｶﾞﾏﾝ" GFXP_HIRAGANA "ﾉ" GFXP_KATAKANA "ｺ" GFXP_HIRAGANA "ﾃﾞｱｯﾀ",
      "Be patient, now"),
    T(GFXP_HIRAGANA "ｲﾏｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ", "Please wait just a minute"),
    T(GFXP_HIRAGANA "ｱﾜﾃﾅｲｱﾜﾃﾅｲ｡ﾋﾄﾔｽﾐﾋﾄﾔｽﾐ｡", "Don't worry, don't worry. Take a break, take a break."),
};

void MapSelect_PrintLoadingMessage(MapSelectState* this, GfxPrint* printer) {
    s32 randomMsg;

    GfxPrint_SetPos(printer, 10, 15);
    GfxPrint_SetColor(printer, 255, 255, 255, 255);
    randomMsg = Rand_ZeroOne() * ARRAY_COUNT(sLoadingMessages);
    GfxPrint_Printf(printer, "%s", sLoadingMessages[randomMsg]);
}

static const char* sAgeLabels[] = {
    T(GFXP_HIRAGANA "17(ﾜｶﾓﾉ)", "17(young)"),
    T(GFXP_HIRAGANA "5(ﾜｶｽｷﾞ)", "5(very young)"),
};

void MapSelect_PrintAgeSetting(MapSelectState* this, GfxPrint* printer, s32 age) {
    GfxPrint_SetPos(printer, 4, 26);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);
    GfxPrint_Printf(printer, "Age:%s", sAgeLabels[age]);
}

void MapSelect_PrintCutsceneSetting(MapSelectState* this, GfxPrint* printer, u16 csIndex) {
    char* label;

    GfxPrint_SetPos(printer, 4, 25);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);

    switch (csIndex) {
        case 0:
            label = T(GFXP_HIRAGANA " ﾖﾙ " GFXP_KATAKANA "ｺﾞﾛﾝ", "Night");
            gSaveContext.save.dayTime = CLOCK_TIME(0, 0);
            break;
        case 0x8000:
            // clang-format off
            gSaveContext.save.dayTime = CLOCK_TIME(12, 0); label = T(GFXP_HIRAGANA "ｵﾋﾙ " GFXP_KATAKANA "ｼﾞｬﾗ", "Day");
            // clang-format on
            break;
        case 0xFFF0:
            // clang-format off
            gSaveContext.save.dayTime = CLOCK_TIME(12, 0); label = T("ﾃﾞﾓ00", "Demo 00");
            // clang-format on
            break;
        case 0xFFF1:
            label = T("ﾃﾞﾓ01", "Demo 01");
            break;
        case 0xFFF2:
            label = T("ﾃﾞﾓ02", "Demo 02");
            break;
        case 0xFFF3:
            label = T("ﾃﾞﾓ03", "Demo 03");
            break;
        case 0xFFF4:
            label = T("ﾃﾞﾓ04", "Demo 04");
            break;
        case 0xFFF5:
            label = T("ﾃﾞﾓ05", "Demo 05");
            break;
        case 0xFFF6:
            label = T("ﾃﾞﾓ06", "Demo 06");
            break;
        case 0xFFF7:
            label = T("ﾃﾞﾓ07", "Demo 07");
            break;
        case 0xFFF8:
            label = T("ﾃﾞﾓ08", "Demo 08");
            break;
        case 0xFFF9:
            label = T("ﾃﾞﾓ09", "Demo 09");
            break;
        case 0xFFFA:
            label = T("ﾃﾞﾓ0A", "Demo 0A");
            break;
    };

    gSaveContext.skyboxTime = gSaveContext.save.dayTime;
    GfxPrint_Printf(printer, "Stage:" GFXP_KATAKANA "%s", label);
}

void MapSelect_DrawMenu(MapSelectState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx, "../z_select.c", 930);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    Gfx_SetupFrame(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    View_Apply(&this->view, VIEW_ALL);
    Gfx_SetupDL_28Opa(gfxCtx);

    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, POLY_OPA_DISP);
    MapSelect_PrintMenu(this, printer);
    MapSelect_PrintAgeSetting(this, printer, ((void)0, gSaveContext.save.linkAge));
    MapSelect_PrintCutsceneSetting(this, printer, ((void)0, gSaveContext.save.cutsceneIndex));
    POLY_OPA_DISP = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    CLOSE_DISPS(gfxCtx, "../z_select.c", 966);
}

void MapSelect_DrawLoadingScreen(MapSelectState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx, "../z_select.c", 977);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    Gfx_SetupFrame(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    View_Apply(&this->view, VIEW_ALL);
    Gfx_SetupDL_28Opa(gfxCtx);

    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, POLY_OPA_DISP);
    MapSelect_PrintLoadingMessage(this, printer);
    POLY_OPA_DISP = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    CLOSE_DISPS(gfxCtx, "../z_select.c", 1006);
}

void MapSelect_Draw(MapSelectState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_select.c", 1013);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    Gfx_SetupFrame(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    View_Apply(&this->view, VIEW_ALL);

    if (!this->state.running) {
        MapSelect_DrawLoadingScreen(this);
    } else {
        MapSelect_DrawMenu(this);
    }

    CLOSE_DISPS(gfxCtx, "../z_select.c", 1037);
}

void MapSelect_Main(GameState* thisx) {
    MapSelectState* this = (MapSelectState*)thisx;

    MapSelect_UpdateMenu(this);
    MapSelect_Draw(this);
}

void MapSelect_Destroy(GameState* thisx) {
    PRINTF("%c", BEL);
    PRINTF(T("*** view_cleanupはハングアップするので、呼ばない ***\n",
             "*** view_cleanup will hang, so it won't be called ***\n"));
}

void MapSelect_Init(GameState* thisx) {
    MapSelectState* this = (MapSelectState*)thisx;

    this->state.main = MapSelect_Main;
    this->state.destroy = MapSelect_Destroy;
    this->scenes = sScenes;
    this->topDisplayedScene = 0;
    this->currentScene = 0;
    this->pageDownStops[0] = 0;  // Hyrule Field
    this->pageDownStops[1] = 19; // Temple Of Time
    this->pageDownStops[2] = 37; // Treasure Chest Game
    this->pageDownStops[3] = 51; // Gravekeeper's Hut
    this->pageDownStops[4] = 59; // Zora Shop
    this->pageDownStops[5] = 73; // Bottom of the Well
    this->pageDownStops[6] = 91; // Escaping Ganon's Tower 3
    this->pageDownIndex = 0;
    this->opt = 0;
    this->count = ARRAY_COUNT(sScenes);
    View_Init(&this->view, this->state.gfxCtx);
    this->view.flags = (VIEW_PROJECTION_ORTHO | VIEW_VIEWPORT);
    this->verticalInputAccumulator = 0;
    this->verticalInput = 0;
    this->timerUp = 0;
    this->timerDown = 0;
    this->lockUp = 0;
    this->lockDown = 0;
    this->unk_234 = 0;

    if ((dREG(80) >= 0) && (dREG(80) < this->count)) {
        this->currentScene = dREG(80);
        this->topDisplayedScene = dREG(81);
        this->pageDownIndex = dREG(82);
    }

    R_UPDATE_RATE = 1;

    {
        u32 size = (uintptr_t)_z_select_staticSegmentRomEnd - (uintptr_t)_z_select_staticSegmentRomStart;

        this->staticSegment = GAME_STATE_ALLOC(&this->state, size, "../z_select.c", 1114);
        DMA_REQUEST_SYNC(this->staticSegment, (uintptr_t)_z_select_staticSegmentRomStart, size, "../z_select.c", 1115);
    }

    gSaveContext.save.cutsceneIndex = 0x8000;
    gSaveContext.save.linkAge = LINK_AGE_CHILD;
}
