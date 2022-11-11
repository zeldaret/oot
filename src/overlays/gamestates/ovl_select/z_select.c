/*
 * File: z_select.c
 * Overlay: ovl_select
 * Description: Debug Scene Select Menu
 */

#include "ultra64.h"
#include "global.h"
#include "vt.h"
#include "alloca.h"

void MapSelect_LoadTitle(MapSelectState* this) {
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, ConsoleLogo_Init, ConsoleLogoState);
}

void MapSelect_LoadGame(MapSelectState* this, s32 entranceIndex) {
    osSyncPrintf(VT_FGCOL(BLUE));
    osSyncPrintf("\n\n\nＦＩＬＥ＿ＮＯ＝%x\n\n\n", gSaveContext.fileNum);
    osSyncPrintf(VT_RST);
    if (gSaveContext.fileNum == 0xFF) {
        Sram_InitDebugSave();
        // Set the fill target to be the saved magic amount
        gSaveContext.magicFillTarget = gSaveContext.magic;
        // Set `magicLevel` and `magic` to 0 so `magicCapacity` then `magic` grows from nothing
        // to respectively the full capacity and `magicFillTarget`
        gSaveContext.magicCapacity = 0;
        gSaveContext.magicLevel = gSaveContext.magic = 0;
    }
    gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
        gSaveContext.buttonStatus[3] = gSaveContext.buttonStatus[4] = BTN_ENABLED;
    gSaveContext.unk_13E7 = gSaveContext.unk_13E8 = gSaveContext.unk_13EA = gSaveContext.unk_13EC = 0;
    Audio_QueueSeqCmd(SEQ_PLAYER_BGM_MAIN << 24 | NA_BGM_STOP);
    gSaveContext.entranceIndex = entranceIndex;
    gSaveContext.respawnFlag = 0;
    gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex = ENTR_LOAD_OPENING;
    gSaveContext.seqId = (u8)NA_BGM_DISABLED;
    gSaveContext.natureAmbienceId = 0xFF;
    gSaveContext.showTitleCard = true;
    gWeatherMode = WEATHER_MODE_CLEAR;
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, Play_Init, PlayState);
}

// "Translation" (Actual name)
static SceneSelectEntry sScenes[] = {
    // "1: SPOT00" (Hyrule Field)
    { " 1:Hyrule Field", MapSelect_LoadGame, ENTR_SPOT00_0 },
    // "2: SPOT01" (Kakariko Village)
    { " 2:Kakariko Village", MapSelect_LoadGame, ENTR_SPOT01_0 },
    // "3: SPOT02" (Graveyard)
    { " 3:Graveyard", MapSelect_LoadGame, ENTR_SPOT02_0 },
    // "4: SPOT03" (Zora's River)
    { " 4:Zora's River", MapSelect_LoadGame, ENTR_SPOT03_0 },
    // "5: SPOT04" (Kokiri Forest)
    { " 5:Kokiri Forest", MapSelect_LoadGame, ENTR_SPOT04_0 },
    // "6: SPOT05" (Sacred Forest Meadow)
    { " 6:Forest Meadow", MapSelect_LoadGame, ENTR_SPOT05_0 },
    // "7: SPOT06" (Lake Hylia)
    { " 7:Lake Hylia", MapSelect_LoadGame, ENTR_SPOT06_0 },
    // "8: SPOT07" (Zora's Domain)
    { " 8:Zora's Domain", MapSelect_LoadGame, ENTR_SPOT07_0 },
    // "9: SPOT08" (Zora's Fountain)
    { " 9:Zora's Fountain", MapSelect_LoadGame, ENTR_SPOT08_0 },
    // "10: SPOT09" (Gerudo Valley)
    { "10:Gerudo Valley", MapSelect_LoadGame, ENTR_SPOT09_0 },
    // "11: SPOT10" (Lost Woods)
    { "11:Lost Woods", MapSelect_LoadGame, ENTR_SPOT10_0 },
    // "12: SPOT11" (Desert Colossus)
    { "12:Desert Colossus", MapSelect_LoadGame, ENTR_SPOT11_0 },
    // "13: SPOT12" (Gerudo's Fortress)
    { "13:Gerudo's Fortress", MapSelect_LoadGame, ENTR_SPOT12_0 },
    // "14: SPOT13" (Haunted Wasteland)
    { "14:Haunted Wasteland", MapSelect_LoadGame, ENTR_SPOT13_0 },
    // "15: SPOT15" (Hyrule Castle)
    { "15:Hyrule Castle", MapSelect_LoadGame, ENTR_SPOT15_0 },
    // "16: SPOT16" (Death Mountain Trail)
    { "16:Death Mountain Trail", MapSelect_LoadGame, ENTR_SPOT16_0 },
    // "17: SPOT17" (Death Mountain Crater)
    { "17:Crater", MapSelect_LoadGame, ENTR_SPOT17_0 },
    // "18: SPOT18" (Goron City)
    { "18:Goron City", MapSelect_LoadGame, ENTR_SPOT18_0 },
    // "19: SPOT20" (Lon Lon Ranch)
    { "19:Lon Lon Ranch", MapSelect_LoadGame, ENTR_SPOT20_0 },
    // "20: Chamber of Time" (Temple Of Time)
    { "20:" GFXP_HIRAGANA "Temple Of Time", MapSelect_LoadGame, ENTR_TOKINOMA_0 },
    // "21: Chamber of the Sages" (Chamber of the Sages)
    { "21:" GFXP_HIRAGANA "Chamber of the Sages", MapSelect_LoadGame, ENTR_KENJYANOMA_0 },
    // "22: Target Range" (Shooting Gallery)
    { "22:" GFXP_HIRAGANA "Shooting Gallery", MapSelect_LoadGame, ENTR_SYATEKIJYOU_0 },
    // "23: Hyrule Garden Game" (Hyrule Garden Minigame)
    { "23:" GFXP_KATAKANA "Hyrule Garden Minigame" GFXP_HIRAGANA "" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_HAIRAL_NIWA_0 },
    // "24: Grave Dive Hole" (Grave (Redead))
    { "24:" GFXP_HIRAGANA "Grave Redead", MapSelect_LoadGame, ENTR_HAKAANA_0 },
    // "25: Grave Dive Hole 2" (Grave (Fairy's Fountain))
    { "25:" GFXP_HIRAGANA "Grave Fairy's Fountain", MapSelect_LoadGame, ENTR_HAKAANA2_0 },
    // "26: Royal Family's Grave" (Royal Family's Tomb)
    { "26:" GFXP_HIRAGANA "Royal Family's Tomb", MapSelect_LoadGame, ENTR_HAKAANA_OUKE_0 },
    // "27: Great Fairy's Fountain" (Great Fairy's Fountain (Upgrades))
    { "27:" GFXP_HIRAGANA "Fairy's Fountain Upgrades", MapSelect_LoadGame, ENTR_DAIYOUSEI_IZUMI_0 },
    // "28: Fairy Dive Hole" (Fairy's Fountain (Healing Fairies))
    { "28:" GFXP_HIRAGANA "Fairy's Fountain Fairies", MapSelect_LoadGame, ENTR_YOUSEI_IZUMI_TATE_0 },
    // "29: Magic Stone Fairy's Fountain" (Great Fairy's Fountain (Spells))
    { "29:" GFXP_HIRAGANA "Fairy's Fountain Spells", MapSelect_LoadGame, ENTR_YOUSEI_IZUMI_YOKO_0 },
    // "30: Final Battle With Ganon" (Battle With Ganon)
    { "30:" GFXP_KATAKANA "Final Battle With Ganon" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_GANON_FINAL_0 },
    // "31: Hyrule Inner Garden" (Castle Courtyard)
    { "31:" GFXP_KATAKANA "Castle Courtyard" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_NAKANIWA_0 },
    // "32: Fishing" (Fishing Pond)
    { "32:" GFXP_HIRAGANA "Fishing Pond", MapSelect_LoadGame, ENTR_TURIBORI_0 },
    // "33: Bombchu Bowling" (Bombchu Bowling Alley)
    { "33:" GFXP_KATAKANA "Bombchu Bowling Alley", MapSelect_LoadGame, ENTR_BOWLING_0 },
    // "34: Lon Lon Ranch - Storehouse 1" (Talon's House)
    { "34:" GFXP_KATAKANA "Talon's House" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_SOUKO_0 },
    // "35: Lon Lon Ranch - Storehouse 2" (Ranch Silo)
    { "35:" GFXP_KATAKANA "Ranch Silo" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_SOUKO_1 },
    // "36: Lookout Hut" (Guard House)
    { "36:" GFXP_HIRAGANA "Guard House", MapSelect_LoadGame, ENTR_MIHARIGOYA_0 },
    // "37: Magic Potion Shop" (Granny's Potion Shop)
    { "37:" GFXP_HIRAGANA "Granny's Potion Shop", MapSelect_LoadGame, ENTR_MAHOUYA_0 },
    // "38: Treasure Chest Shop" (Treasure Chest Game)
    { "38:" GFXP_HIRAGANA "Treasure Chest Game", MapSelect_LoadGame, ENTR_TAKARAYA_0 },
    // "39: Gold Skulltula House" (House of Skulltula)
    { "39:" GFXP_HIRAGANA "House of Skulltula" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_KINSUTA_0 },
    // "40: Castle Town - Entrance" (Market Entrance)
    { "40:" GFXP_HIRAGANA "Market Entrance", MapSelect_LoadGame, ENTR_ENTRA_0 },
    // "41: Castle Town" (Market)
    { "41:" GFXP_HIRAGANA "Market", MapSelect_LoadGame, ENTR_MARKET_DAY_0 },
    // "42: Back Alley" (Back Alley)
    { "42:" GFXP_HIRAGANA "Back Alley", MapSelect_LoadGame, ENTR_MARKET_ALLEY_0 },
    // "43: In Front of the Temple of Time" (Temple of Time Exterior)
    { "43:" GFXP_HIRAGANA "Temple of Time Exterior", MapSelect_LoadGame, ENTR_SHRINE_0 },
    // "44: Link's House" (Link's House)
    { "44:" GFXP_HIRAGANA "Link's House", MapSelect_LoadGame, ENTR_LINK_HOME_0 },
    // "45: Kakariko Village Row House" (Carpenter Boss's House)
    { "45:" GFXP_KATAKANA "Carpenter Boss's House" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_KAKARIKO_0 },
    // "46: Back Alley House" (Back Alley House (Man in Green))
    { "46:" GFXP_HIRAGANA "Back Alley House", MapSelect_LoadGame, ENTR_KAKARIKO3_0 },
    // "47: Kokiri Village - Know-It-All Brothers' House" (Know-It-All Brothers' House)
    { "47:" GFXP_HIRAGANA "Know-It-All Brothers' House", MapSelect_LoadGame, ENTR_KOKIRI_HOME_0 },
    // "48: Kokiri Village - Twins' House" (Twins' House)
    { "48:" GFXP_HIRAGANA "Twins' House", MapSelect_LoadGame, ENTR_KOKIRI_HOME3_0 },
    // "49: Kokiri Village - Mido's House" (Mido's House)
    { "49:" GFXP_HIRAGANA "Mido's House" GFXP_KATAKANA "" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_KOKIRI_HOME4_0 },
    // "50: Kokiri Village - Saria's House" (Saria's House)
    { "50:" GFXP_HIRAGANA "Saria's House" GFXP_KATAKANA "" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_KOKIRI_HOME5_0 },
    // "51: Stable" (Stable)
    { "51:" GFXP_HIRAGANA "Stable", MapSelect_LoadGame, ENTR_MALON_STABLE_0 },
    // "52: Grave Keeper's House" (Gravekeeper's Hut)
    { "52:" GFXP_HIRAGANA "Gravekeeper's Hut", MapSelect_LoadGame, ENTR_HUT_0 },
    // "53: Back Alley - Dog Lady's House" (Back Alley House)
    { "53:" GFXP_HIRAGANA "Dog Lady's House", MapSelect_LoadGame, ENTR_IMPA_0 },
    // "54: Kakariko Village - Impa's House" (Impa's House)
    { "54:" GFXP_HIRAGANA "Impa's House" GFXP_KATAKANA "" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_LABO_0 },
    // "55: Hylia Laboratory" (Lakeside Laboratory)
    { "55:" GFXP_KATAKANA "Lakeside Laboratory" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_HYLIA_LABO_0 },
    // "56: Tent" (Carpenters' Tent)
    { "56:" GFXP_KATAKANA "Carpenters' Tent", MapSelect_LoadGame, ENTR_TENT_0 },
    // "57: Shield Shop" (Bazaar)
    { "57:" GFXP_HIRAGANA "Bazaar", MapSelect_LoadGame, ENTR_SHOP1_0 },
    // "58: Kokiri Shop" (Kokiri Shop)
    { "58:" GFXP_HIRAGANA "Kokiri Shop", MapSelect_LoadGame, ENTR_KOKIRI_SHOP_0 },
    // "59: Goron Shop" (Goron Shop)
    { "59:" GFXP_KATAKANA "Goron Shop" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_GOLON_0 },
    // "60: Zora Shop" (Zora Shop)
    { "60:" GFXP_KATAKANA "Zora Shop" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_ZOORA_0 },
    // "61: Kakariko Village - Potion Shop" (Kakariko Potion Shop)
    { "61:" GFXP_KATAKANA "Kakariko Potion Shop" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_DRAG_0 },
    // "62: Castle Town - Potion Shop" (Market Potion Shop)
    { "62:" GFXP_HIRAGANA "Market Potion Shop", MapSelect_LoadGame, ENTR_ALLEY_SHOP_0 },
    // "63: Back Alley - Night Shop" (Bombchu Shop)
    { "63:" GFXP_HIRAGANA "Bombchu Shop", MapSelect_LoadGame, ENTR_NIGHT_SHOP_0 },
    // "64: Mask Shop" (Happy Mask Shop)
    { "64:" GFXP_HIRAGANA "Happy Mask Shop", MapSelect_LoadGame, ENTR_FACE_SHOP_0 },
    // "65: Gerudo Training Area" (Gerudo Training Ground)
    { "65:" GFXP_KATAKANA "Gerudo Training Ground" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_MEN_0 },
    // "66: Fairy Tree Dungeon" (Inside the Deku Tree)
    { "66:" GFXP_HIRAGANA "Inside the Deku Tree" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_YDAN_0 },
    // "67: Fairy Tree Dungeon - Boss" (Gohma's Lair)
    { "67:" GFXP_HIRAGANA "Gohma's Lair" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_YDAN_BOSS_0 },
    // "68: Dondogo Dungeon" (Dodongo's Cavern)
    { "68:" GFXP_KATAKANA "Dodongo's Cavern", MapSelect_LoadGame, ENTR_DDAN_0 },
    // "69: Dondogo Dungeon - Boss" (King Dodongo's Lair)
    { "69:" GFXP_KATAKANA "King Dodongo's Lair", MapSelect_LoadGame, ENTR_DDAN_BOSS_0 },
    // "70: Giant Fish Dungeon" (Inside Jabu-Jabu's Belly)
    { "70:" GFXP_HIRAGANA "Inside Jabu-Jabu's Belly" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_BDAN_0 },
    // "71: Giant Fish Dungeon - Boss" (Barinade's Lair)
    { "71:" GFXP_HIRAGANA "Barinade's Lair" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_BDAN_BOSS_0 },
    // "72: Forest Temple" (Forest Temple)
    { "72:" GFXP_HIRAGANA "Forest Temple", MapSelect_LoadGame, ENTR_BMORI1_0 },
    // "73: Forest Temple - Boss" (Phantom Ganon's Lair)
    { "73:" GFXP_HIRAGANA "Phantom Ganon's Lair" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_MORIBOSSROOM_0 },
    // "74: Dungeon Below the Well" (Bottom of the Well)
    { "74:" GFXP_HIRAGANA "Bottom of the Well" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_HAKADANCH_0 },
    // "75: Dungeon Beneath the Graves" (Shadow Temple)
    { "75:" GFXP_HIRAGANA "Shadow Temple" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_HAKADAN_0 },
    // "76: Dungeon Beneath the Graves - Boss" (Bongo Bongo's Lair)
    { "76:" GFXP_HIRAGANA "Bongo Bongo's Lair" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_HAKADAN_BS_0 },
    // "77: Fire Temple" (Fire Temple)
    { "77:" GFXP_HIRAGANA "Fire Temple", MapSelect_LoadGame, ENTR_HIDAN_0 },
    // "78: Fire Temple - Boss" (Volvagia's Lair)
    { "78:" GFXP_HIRAGANA "Volvagia's Lair" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_FIRE_BS_0 },
    // "79: Water Temple" (Water Temple)
    { "79:" GFXP_HIRAGANA "Water Temple", MapSelect_LoadGame, ENTR_MIZUSIN_0 },
    // "80: Water Temple - Boss" (Morpha's Lair)
    { "80:" GFXP_HIRAGANA "Morpha's Lair" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_MIZUSIN_BS_0 },
    // "81: Evil Goddess Statue Dungeon" (Spirit Temple)
    { "81:" GFXP_HIRAGANA "Spirit Temple" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_JYASINZOU_0 },
    // "82: Evil Goddess Statue Dungeon - Iron Knuckle" (Iron Knuckle's Lair)
    { "82:" GFXP_HIRAGANA "Iron Knuckle's Lair" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_JYASINBOSS_0 },
    // "83: Evil Goddess Statue Dungeon - Boss" (Twinrova's Lair)
    { "83:" GFXP_HIRAGANA "Twinrova's Lair" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_JYASINBOSS_2 },
    // "84: Ganon's Tower" (Ganon's Tower)
    { "84:" GFXP_KATAKANA "Ganon's Tower" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_GANON_0 },
    // "85: Ganon's Tower - Boss" (Ganondorf's Lair)
    { "85:" GFXP_KATAKANA "Ganondorf's Lair" GFXP_HIRAGANA "" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_GANON_BOSS_0 },
    // "86: Ice Cavern" (Ice Cavern)
    { "86:" GFXP_HIRAGANA "Ice Cavern", MapSelect_LoadGame, ENTR_ICE_DOUKUTO_0 },
    // "87: Relay Beneath the Graves" (Dampé's Grave)
    { "87:" GFXP_HIRAGANA "Dampé's Grave" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_HAKASITARELAY_0 },
    // "88: Ganon's Basement Dungeon" (Inside Ganon's Castle)
    { "88:" GFXP_KATAKANA "Inside Ganon's Castle" GFXP_HIRAGANA "" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_GANONTIKA_0 },
    // "89: Final Battle With Ganon - Cutscene & Battle" (Ganondorf's Death Scene & Tower Escape Exterior)
    { "89:" GFXP_KATAKANA "Tower Escape Exterior" GFXP_HIRAGANA "" GFXP_KATAKANA "", MapSelect_LoadGame,
      ENTR_GANON_DEMO_0 },
    // "90: Ganon's Tower Aftermath 1" (Escaping Ganon's Tower 1)
    { "90:" GFXP_KATAKANA "Escaping Ganon's Tower 1" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_GANON_SONOGO_0 },
    // "91: Ganon's Tower Aftermath 2" (Escaping Ganon's Tower 2)
    { "91:" GFXP_KATAKANA "Escaping Ganon's Tower 2" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_GANON_SONOGO_2 },
    // "92: Ganon's Tower Aftermath 3" (Escaping Ganon's Tower 3)
    { "92:" GFXP_KATAKANA "Escaping Ganon's Tower 3" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_GANON_SONOGO_4 },
    // "93: Ganon's Tower Aftermath 4" (Escaping Ganon's Tower 4)
    { "93:" GFXP_KATAKANA "Escaping Ganon's Tower 4" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_GANON_SONOGO_6 },
    // "94: Ganon's Basement Aftermath" (Escaping Ganon's Castle)
    { "94:" GFXP_KATAKANA "Escaping Ganon's Castle" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_GANONTIKA_SONOGO_0 },
    // "95: Gerudo Passage 1-2" (Thieves' Hideout 1)
    { "95:" GFXP_KATAKANA "Thieves' Hideout 1" GFXP_HIRAGANA " 1-2", MapSelect_LoadGame, ENTR_GERUDOWAY_0 },
    // "96: Gerudo Passage 3-4 9-10" (Thieves' Hideout 2)
    { "96:" GFXP_KATAKANA "Thieves' Hideout 2" GFXP_HIRAGANA " 3-4 9-10", MapSelect_LoadGame, ENTR_GERUDOWAY_2 },
    // "97: Gerudo Passage 5-6" (Thieves' Hideout 3)
    { "97:" GFXP_KATAKANA "Thieves' Hideout 3" GFXP_HIRAGANA " 5-6", MapSelect_LoadGame, ENTR_GERUDOWAY_4 },
    // "98: Gerudo Passage 7-8" (Thieves' Hideout 4)
    { "98:" GFXP_KATAKANA "Thieves' Hideout 4" GFXP_HIRAGANA " 7-8", MapSelect_LoadGame, ENTR_GERUDOWAY_6 },
    // "99: Gerudo Passage 11-12" (Thieves' Hideout 5)
    { "99:" GFXP_KATAKANA "Thieves' Hideout 5" GFXP_HIRAGANA " 11-12", MapSelect_LoadGame, ENTR_GERUDOWAY_10 },
    // "100: Gerudo Passage 13" (Thieves' Hideout 6)
    { "100:" GFXP_KATAKANA "Thieves' Hideout 6" GFXP_HIRAGANA " 13", MapSelect_LoadGame, ENTR_GERUDOWAY_12 },
    // "101: Hidden Dive Hole 0" (Grotto 0 - Gossip Stone & Chest)
    { "101:" GFXP_HIRAGANA "Grotto 0", MapSelect_LoadGame, ENTR_KAKUSIANA_0 },
    // "102: Hidden Dive Hole 1" (Grotto 1 - Skulltula & Gold Skulltula)
    { "102:" GFXP_HIRAGANA "Grotto 1 Skulltula", MapSelect_LoadGame, ENTR_KAKUSIANA_1 },
    // "103: Hidden Dive Hole 2" (Grotto 2 - Business Scrub & Heart Piece)
    { "103:" GFXP_HIRAGANA "Grotto 2 Business Scrub", MapSelect_LoadGame, ENTR_KAKUSIANA_2 },
    // "104: Hidden Dive Hole 3" (Grotto 3 - Redeads)
    { "104:" GFXP_HIRAGANA "Grotto 3 - Redeads", MapSelect_LoadGame, ENTR_KAKUSIANA_3 },
    // "105: Hidden Dive Hole 4" (Grotto 4 - 3 Business Scrubs)
    { "105:" GFXP_HIRAGANA "Grotto 4 Three Scrubs", MapSelect_LoadGame, ENTR_KAKUSIANA_4 },
    // "106: Hidden Dive Hole 5" (Grotto 5 - Gossip Stone, Skulltula, Cow)
    { "106:" GFXP_HIRAGANA "Grotto 5 Skulltula, Cow", MapSelect_LoadGame, ENTR_KAKUSIANA_5 },
    // "107: Hidden Dive Hole 6" (Grotto 6 - Octorok)
    { "107:" GFXP_HIRAGANA "Grotto 6 - Octorok", MapSelect_LoadGame, ENTR_KAKUSIANA_6 },
    // "108: Hidden Dive Hole 7" (Grotto 7 - Business Scrub & Deku Nut Upgrade)
    { "108:" GFXP_HIRAGANA "Grotto 7 Business Scrub", MapSelect_LoadGame, ENTR_KAKUSIANA_7 },
    // "109: Hidden Dive Hole 8" (Grotto 8 - 2 Wolfos)
    { "109:" GFXP_HIRAGANA "Grotto 8 - 2 Wolfos", MapSelect_LoadGame, ENTR_KAKUSIANA_8 },
    // "110: Hidden Dive Hole 9" (Grotto 9 - Bombable Walls)
    { "110:" GFXP_HIRAGANA "Grotto 9 Bombable Walls", MapSelect_LoadGame, ENTR_KAKUSIANA_9 },
    // "111: Hidden Dive Hole 10" (Grotto 10 - 2 Business Scrubs)
    { "111:" GFXP_HIRAGANA "Grotto 10 2 Business Scrubs", MapSelect_LoadGame, ENTR_KAKUSIANA_10 },
    // "112: Hidden Dive Hole 11" (Grotto 11 - Tektite & Heart Piece)
    { "112:" GFXP_HIRAGANA "Grotto 11 Tektite", MapSelect_LoadGame, ENTR_KAKUSIANA_11 },
    // "113: Hidden Dive Hole 12" (Grotto 12 - Deku Stage)
    { "113:" GFXP_HIRAGANA "Grotto 12 Deku Stage", MapSelect_LoadGame, ENTR_KAKUSIANA_12 },
    // "114: Hidden Dive Hole 13" (Grotto 13 - Rupees & Cow)
    { "114:" GFXP_HIRAGANA "Grotto 13 Rupees & Cow", MapSelect_LoadGame, ENTR_KAKUSIANA_13 },
    // "115: Hyrule Cutscenes" (Cutscene Map)
    { "115:" GFXP_KATAKANA "Cutscene Map", MapSelect_LoadGame, ENTR_HIRAL_DEMO_0 },
    // "116: Special Room (Treasure Chest Warp)" (Ganondorf Test Room)
    { "116:" GFXP_HIRAGANA "Ganondorf Test Room" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_BESITU_0 },
    // "117: Sasaki Test" (Sasa Test)
    { "117:" GFXP_HIRAGANA "Sasa Test" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_SASATEST_0 },
    // "118: Test Map" (Jungle Gym)
    { "118:" GFXP_KATAKANA "Jungle Gym", MapSelect_LoadGame, ENTR_TEST01_0 },
    // "119: Test Room" (Treasure Chest Room)
    { "119:" GFXP_KATAKANA "Treasure Chest Room", MapSelect_LoadGame, ENTR_TESTROOM_0 },
    // "120: Stalfos Miniboss Room" (Stalfos Miniboss Room)
    { "120:" GFXP_HIRAGANA "Stalfos Miniboss Room" GFXP_KATAKANA "" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_SYOTES_0 },
    // "121: Boss Stalfos Room" (Stalfos Boss Room)
    { "121:" GFXP_KATAKANA "Stalfos Boss Room" GFXP_HIRAGANA "", MapSelect_LoadGame, ENTR_SYOTES2_0 },
    // "122: Stal" (Sutaru)
    { "122:Sutaru", MapSelect_LoadGame, ENTR_SUTARU_0 },
    // "123: Test Area" (Shooting Gallery)
    { "123:jikkenjyou", MapSelect_LoadGame, ENTR_TEST_SYATEKIJYOU_0 },
    // "124: Depth Test" (Depth Test)
    { "124:depth" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_DEPTH_TEST_0 },
    // "125: Hyrule Garden Game 2" (Early Hyrule Garden Game)
    { "125:" GFXP_KATAKANA "Early Hyrule Garden Game" GFXP_HIRAGANA "" GFXP_KATAKANA "", MapSelect_LoadGame, ENTR_HAIRAL_NIWA2_0 },
    // "title" (Title Screen)
    { "title", (void*)MapSelect_LoadTitle, 0 },
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
                gSaveContext.linkAge = LINK_AGE_CHILD;
            } else {
                gSaveContext.linkAge = LINK_AGE_ADULT;
            }
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_Z)) {
            if (gSaveContext.cutsceneIndex == 0x8000) {
                gSaveContext.cutsceneIndex = 0;
            } else if (gSaveContext.cutsceneIndex == 0) {
                gSaveContext.cutsceneIndex = 0xFFF0;
            } else if (gSaveContext.cutsceneIndex == 0xFFF0) {
                gSaveContext.cutsceneIndex = 0xFFF1;
            } else if (gSaveContext.cutsceneIndex == 0xFFF1) {
                gSaveContext.cutsceneIndex = 0xFFF2;
            } else if (gSaveContext.cutsceneIndex == 0xFFF2) {
                gSaveContext.cutsceneIndex = 0xFFF3;
            } else if (gSaveContext.cutsceneIndex == 0xFFF3) {
                gSaveContext.cutsceneIndex = 0xFFF4;
            } else if (gSaveContext.cutsceneIndex == 0xFFF4) {
                gSaveContext.cutsceneIndex = 0xFFF5;
            } else if (gSaveContext.cutsceneIndex == 0xFFF5) {
                gSaveContext.cutsceneIndex = 0xFFF6;
            } else if (gSaveContext.cutsceneIndex == 0xFFF6) {
                gSaveContext.cutsceneIndex = 0xFFF7;
            } else if (gSaveContext.cutsceneIndex == 0xFFF7) {
                gSaveContext.cutsceneIndex = 0xFFF8;
            } else if (gSaveContext.cutsceneIndex == 0xFFF8) {
                gSaveContext.cutsceneIndex = 0xFFF9;
            } else if (gSaveContext.cutsceneIndex == 0xFFF9) {
                gSaveContext.cutsceneIndex = 0xFFFA;
            } else if (gSaveContext.cutsceneIndex == 0xFFFA) {
                gSaveContext.cutsceneIndex = 0x8000;
            }
        } else if (CHECK_BTN_ALL(input->press.button, BTN_R)) {
            if (gSaveContext.cutsceneIndex == 0x8000) {
                gSaveContext.cutsceneIndex = 0xFFFA;
            } else if (gSaveContext.cutsceneIndex == 0) {
                gSaveContext.cutsceneIndex = 0x8000;
            } else if (gSaveContext.cutsceneIndex == 0xFFF0) {
                gSaveContext.cutsceneIndex = 0;
            } else if (gSaveContext.cutsceneIndex == 0xFFF1) {
                gSaveContext.cutsceneIndex = 0xFFF0;
            } else if (gSaveContext.cutsceneIndex == 0xFFF2) {
                gSaveContext.cutsceneIndex = 0xFFF1;
            } else if (gSaveContext.cutsceneIndex == 0xFFF3) {
                gSaveContext.cutsceneIndex = 0xFFF2;
            } else if (gSaveContext.cutsceneIndex == 0xFFF4) {
                gSaveContext.cutsceneIndex = 0xFFF3;
            } else if (gSaveContext.cutsceneIndex == 0xFFF5) {
                gSaveContext.cutsceneIndex = 0xFFF4;
            } else if (gSaveContext.cutsceneIndex == 0xFFF6) {
                gSaveContext.cutsceneIndex = 0xFFF5;
            } else if (gSaveContext.cutsceneIndex == 0xFFF7) {
                gSaveContext.cutsceneIndex = 0xFFF6;
            } else if (gSaveContext.cutsceneIndex == 0xFFF8) {
                gSaveContext.cutsceneIndex = 0xFFF7;
            } else if (gSaveContext.cutsceneIndex == 0xFFF9) {
                gSaveContext.cutsceneIndex = 0xFFF8;
            } else if (gSaveContext.cutsceneIndex == 0xFFFA) {
                gSaveContext.cutsceneIndex = 0xFFF9;
            }
        }

        gSaveContext.nightFlag = 0;
        if (gSaveContext.cutsceneIndex == 0) {
            gSaveContext.nightFlag = 1;
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
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                       &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->verticalInput = R_UPDATE_RATE;
            }
        }

        if (CHECK_BTN_ALL(input->cur.button, BTN_DUP) && this->timerUp == 0) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
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
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                       &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->verticalInput = -R_UPDATE_RATE;
            }
        }

        if (CHECK_BTN_ALL(input->cur.button, BTN_DDOWN) && (this->timerDown == 0)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                   &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            this->verticalInput = -R_UPDATE_RATE * 3;
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_DLEFT) || CHECK_BTN_ALL(input->cur.button, BTN_DLEFT)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                   &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            this->verticalInput = R_UPDATE_RATE;
        }

        if (CHECK_BTN_ALL(input->press.button, BTN_DRIGHT) || CHECK_BTN_ALL(input->cur.button, BTN_DRIGHT)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
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
    // "Please wait a minute"
    GFXP_HIRAGANA "ｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",
    // "Hold on a sec"
    GFXP_HIRAGANA "ﾁｮｯﾄ ﾏｯﾃﾈ",
    // "Wait a moment"
    GFXP_KATAKANA "ｳｪｲﾄ ｱ ﾓｰﾒﾝﾄ",
    // "Loading"
    GFXP_KATAKANA "ﾛｰﾄﾞ" GFXP_HIRAGANA "ﾁｭｳ",
    // "Now working"
    GFXP_HIRAGANA "ﾅｳ ﾜｰｷﾝｸﾞ",
    // "Now creating"
    GFXP_HIRAGANA "ｲﾏ ﾂｸｯﾃﾏｽ",
    // "It's not broken"
    GFXP_HIRAGANA "ｺｼｮｳｼﾞｬﾅｲﾖ",
    // "Coffee Break"
    GFXP_KATAKANA "ｺｰﾋｰ ﾌﾞﾚｲｸ",
    // "Please set B side"
    GFXP_KATAKANA "Bﾒﾝｦｾｯﾄｼﾃｸﾀﾞｻｲ",
    // "Be patient, now"
    GFXP_HIRAGANA "ｼﾞｯﾄ" GFXP_KATAKANA "ｶﾞﾏﾝ" GFXP_HIRAGANA "ﾉ" GFXP_KATAKANA "ｺ" GFXP_HIRAGANA "ﾃﾞｱｯﾀ",
    // "Please wait just a minute"
    GFXP_HIRAGANA "ｲﾏｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",
    // "Don't worry, don't worry. Take a break, take a break."
    GFXP_HIRAGANA "ｱﾜﾃﾅｲｱﾜﾃﾅｲ｡ﾋﾄﾔｽﾐﾋﾄﾔｽﾐ｡",
};

void MapSelect_PrintLoadingMessage(MapSelectState* this, GfxPrint* printer) {
    s32 randomMsg;

    GfxPrint_SetPos(printer, 10, 15);
    GfxPrint_SetColor(printer, 255, 255, 255, 255);
    randomMsg = Rand_ZeroOne() * ARRAY_COUNT(sLoadingMessages);
    GfxPrint_Printf(printer, "%s", sLoadingMessages[randomMsg]);
}

static const char* sAgeLabels[] = {
    GFXP_HIRAGANA "17(Adult)", // "17(young)"
    GFXP_HIRAGANA "5(Child)", // "5(very young)"
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
            label = GFXP_HIRAGANA "Night-goron" GFXP_KATAKANA "";
            gSaveContext.dayTime = CLOCK_TIME(0, 0);
            break;
        case 0x8000:
            // clang-format off
            gSaveContext.dayTime = CLOCK_TIME(12, 0); label = GFXP_HIRAGANA "Day-jara" GFXP_KATAKANA "";
            // clang-format on
            break;
        case 0xFFF0:
            // clang-format off
            gSaveContext.dayTime = CLOCK_TIME(12, 0); label = "CS00";
            // clang-format on
            break;
        case 0xFFF1:
            label = "CS01";
            break;
        case 0xFFF2:
            label = "CS02";
            break;
        case 0xFFF3:
            label = "CS03";
            break;
        case 0xFFF4:
            label = "CS04";
            break;
        case 0xFFF5:
            label = "CS05";
            break;
        case 0xFFF6:
            label = "CS06";
            break;
        case 0xFFF7:
            label = "CS07";
            break;
        case 0xFFF8:
            label = "CS08";
            break;
        case 0xFFF9:
            label = "CS09";
            break;
        case 0xFFFA:
            label = "CS0A";
            break;
    };

    gSaveContext.skyboxTime = gSaveContext.dayTime;
    GfxPrint_Printf(printer, "Stage:" GFXP_KATAKANA "%s", label);
}

void MapSelect_DrawMenu(MapSelectState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx, "../z_select.c", 930);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    View_Apply(&this->view, VIEW_ALL);
    Gfx_SetupDL_28Opa(gfxCtx);

    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, POLY_OPA_DISP);
    MapSelect_PrintMenu(this, printer);
    MapSelect_PrintAgeSetting(this, printer, ((void)0, gSaveContext.linkAge));
    MapSelect_PrintCutsceneSetting(this, printer, ((void)0, gSaveContext.cutsceneIndex));
    POLY_OPA_DISP = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    CLOSE_DISPS(gfxCtx, "../z_select.c", 966);
}

void MapSelect_DrawLoadingScreen(MapSelectState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx, "../z_select.c", 977);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
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
    func_80095248(gfxCtx, 0, 0, 0);
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
    osSyncPrintf("%c", BEL);
    // "view_cleanup will hang, so it won't be called"
    osSyncPrintf("*** view_cleanupはハングアップするので、呼ばない ***\n");
}

void MapSelect_Init(GameState* thisx) {
    MapSelectState* this = (MapSelectState*)thisx;
    u32 size;
    s32 pad;

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

    size = (u32)_z_select_staticSegmentRomEnd - (u32)_z_select_staticSegmentRomStart;

    if ((dREG(80) >= 0) && (dREG(80) < this->count)) {
        this->currentScene = dREG(80);
        this->topDisplayedScene = dREG(81);
        this->pageDownIndex = dREG(82);
    }
    R_UPDATE_RATE = 1;

    this->staticSegment = GameState_Alloc(&this->state, size, "../z_select.c", 1114);
    DmaMgr_SendRequest1(this->staticSegment, (u32)_z_select_staticSegmentRomStart, size, "../z_select.c", 1115);
    gSaveContext.cutsceneIndex = 0x8000;
    gSaveContext.linkAge = LINK_AGE_CHILD;
}
