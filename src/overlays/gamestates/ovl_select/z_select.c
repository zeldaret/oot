/*
 * File: z_select.c
 * Overlay: ovl_select
 * Description: Debug Scene Select Menu
 */

#include "ultra64.h"
#include "global.h"
#include "vt.h"
#include "alloca.h"

void Select_LoadTitle(SelectContext* this) {
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, Title_Init, TitleContext);
}

void Select_LoadGame(SelectContext* this, s32 entranceIndex) {
    osSyncPrintf(VT_FGCOL(BLUE));
    osSyncPrintf("\n\n\nＦＩＬＥ＿ＮＯ＝%x\n\n\n", gSaveContext.fileNum);
    osSyncPrintf(VT_RST);
    if (gSaveContext.fileNum == 0xFF) {
        Sram_InitDebugSave();
        gSaveContext.unk_13F6 = gSaveContext.magic;
        gSaveContext.magic = 0;
        gSaveContext.unk_13F4 = 0;
        gSaveContext.magicLevel = gSaveContext.magic;
    }
    gSaveContext.buttonStatus[4] = BTN_ENABLED;
    gSaveContext.buttonStatus[3] = BTN_ENABLED;
    gSaveContext.buttonStatus[2] = BTN_ENABLED;
    gSaveContext.buttonStatus[1] = BTN_ENABLED;
    gSaveContext.buttonStatus[0] = BTN_ENABLED;
    gSaveContext.unk_13E7 = gSaveContext.unk_13E8 = gSaveContext.unk_13EA = gSaveContext.unk_13EC = 0;
    Audio_QueueSeqCmd(NA_BGM_STOP);
    gSaveContext.entranceIndex = entranceIndex;
    gSaveContext.respawnFlag = 0;
    gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex = -1;
    gSaveContext.seqIndex = 0xFF;
    gSaveContext.nightSeqIndex = 0xFF;
    gSaveContext.showTitleCard = true;
    D_8011FB30 = 0;
    this->state.running = false;
    SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext);
}

// "Translation" ("Actual name")
static SceneSelectEntry sScenes[] = {
    // "1: SPOT00" ("1: Hyrule Field")
    { " 1:SPOT00", Select_LoadGame, 0x00CD },
    // "2: SPOT01" ("2: Kakariko Village")
    { " 2:SPOT01", Select_LoadGame, 0x00DB },
    // "3: SPOT02" ("3: Graveyard")
    { " 3:SPOT02", Select_LoadGame, 0x00E4 },
    // "4: SPOT03" ("4: Zora's River")
    { " 4:SPOT03", Select_LoadGame, 0x00EA },
    // "5: SPOT04" ("5: Kokiri Forest")
    { " 5:SPOT04", Select_LoadGame, 0x00EE },
    // "6: SPOT05" ("6: Sacred Forest Meadow")
    { " 6:SPOT05", Select_LoadGame, 0x00FC },
    // "7: SPOT06" ("7: Lake Hylia")
    { " 7:SPOT06", Select_LoadGame, 0x0102 },
    // "8: SPOT07" ("8: Zora's Domain")
    { " 8:SPOT07", Select_LoadGame, 0x0108 },
    // "9: SPOT08" ("9: Zora's Fountain")
    { " 9:SPOT08", Select_LoadGame, 0x010E },
    // "10: SPOT09" ("10: Gerudo Valley")
    { "10:SPOT09", Select_LoadGame, 0x0117 },
    // "11: SPOT10" ("11: Lost Woods")
    { "11:SPOT10", Select_LoadGame, 0x011E },
    // "12: SPOT11" ("12: Desert Colossus")
    { "12:SPOT11", Select_LoadGame, 0x0123 },
    // "13: SPOT12" ("13: Gerudo's Fortress")
    { "13:SPOT12", Select_LoadGame, 0x0129 },
    // "14: SPOT13" ("14: Haunted Wasteland")
    { "14:SPOT13", Select_LoadGame, 0x0130 },
    // "15: SPOT15" ("15: Hyrule Castle")
    { "15:SPOT15", Select_LoadGame, 0x0138 },
    // "16: SPOT16" ("16: Death Mountain Trail")
    { "16:SPOT16", Select_LoadGame, 0x013D },
    // "17: SPOT17" ("17: Death Mountain Crater")
    { "17:SPOT17", Select_LoadGame, 0x0147 },
    // "18: SPOT18" ("18: Goron City")
    { "18:SPOT18", Select_LoadGame, 0x014D },
    // "19: SPOT20" ("19: Lon Lon Ranch")
    { "19:SPOT20", Select_LoadGame, 0x0157 },
    // "20: Chamber of Time" ("20: Temple Of Time")
    { "20:\x8Dﾄｷﾉﾏ", Select_LoadGame, 0x0053 },
    // "21: Chamber of the Sages" ("21: Chamber of the Sages")
    { "21:\x8Dｹﾝｼﾞｬﾉﾏ", Select_LoadGame, 0x006B },
    // "22: Target Range" ("22: Shooting Gallery")
    { "22:\x8Dｼｬﾃｷｼﾞｮｳ", Select_LoadGame, 0x003B },
    // "23: Hyrule Garden Game" ("23: Hyrule Garden Minigame")
    { "23:\x8Cﾊｲﾗﾙ\x8Dﾆﾜ\x8Cｹﾞｰﾑ", Select_LoadGame, 0x007A },
    // "24: Grave Dive Hole" ("24: Grave (Redead)")
    { "24:\x8Dﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ", Select_LoadGame, 0x031C },
    // "25: Grave Dive Hole 2" ("25: Grave (Fairy's Fountain)")
    { "25:\x8Dﾊｶｼﾀﾄﾋﾞｺﾐｱﾅ 2", Select_LoadGame, 0x004B },
    // "26: Royal Family's Grave" ("26: Royal Family's Tomb")
    { "26:\x8Dｵｳｹ ﾉ ﾊｶｱﾅ", Select_LoadGame, 0x002D },
    // "27: Great Fairy's Fountain" ("27: Great Fairy's Fountain (Upgrades)")
    { "27:\x8Dﾀﾞｲﾖｳｾｲﾉｲｽﾞﾐ", Select_LoadGame, 0x0315 },
    // "28: Fairy Dive Hole" ("28: Fairy's Fountain (Healing Fairies)")
    { "28:\x8Dﾄﾋﾞｺﾐ ﾖｳｾｲ ｱﾅ", Select_LoadGame, 0x036D },
    // "29: Magic Stone Fairy's Fountain" ("29: Great Fairy's Fountain (Spells)")
    { "29:\x8Dﾏﾎｳｾｷ ﾖｳｾｲﾉｲｽﾞﾐ", Select_LoadGame, 0x0371 },
    // "30: Final Battle With Ganon" ("30: Battle With Ganon")
    { "30:\x8Cｶﾞﾉﾝ\x8Dｻｲｼｭｳｾﾝ", Select_LoadGame, 0x043F },
    // "31: Hyrule Inner Garden" ("31: Castle Courtyard")
    { "31:\x8Cﾊｲﾗﾙ\x8Dﾅｶﾆﾜ", Select_LoadGame, 0x0400 },
    // "32: Fishing" ("32: Fishing Pond")
    { "32:\x8Dﾂﾘﾎﾞﾘ", Select_LoadGame, 0x045F },
    // "33: Bombchu Bowling" ("33: Bombchu Bowling Alley")
    { "33:\x8Cﾎﾞﾑﾁｭｳﾎﾞｰﾘﾝｸﾞ", Select_LoadGame, 0x0507 },
    // "34: Lon Lon Ranch - Storehouse 1" ("34: Talon's House")
    { "34:\x8Cﾛﾝﾛﾝ\x8Dﾎﾞｸｼﾞｮｳ ｿｳｺ 1", Select_LoadGame, 0x004F },
    // "35: Lon Lon Ranch - Storehouse 2" ("35: Ranch Silo")
    { "35:\x8Cﾛﾝﾛﾝ\x8Dﾎﾞｸｼﾞｮｳ ｿｳｺ 2", Select_LoadGame, 0x05D0 },
    // "36: Lookout Hut" ("36: Guard House")
    { "36:\x8Dﾐﾊﾘ ｺﾞﾔ", Select_LoadGame, 0x007E },
    // "37: Magic Potion Shop" ("37: Granny's Potion Shop")
    { "37:\x8Dﾏﾎｳ ﾉ ｸｽﾘﾔ", Select_LoadGame, 0x0072 },
    // "38: Treasure Chest Shop" ("38: Treasure Chest Game")
    { "38:\x8Dﾀｶﾗﾊﾞｺﾔ", Select_LoadGame, 0x0063 },
    // "39: Gold Skulltula House" ("39: House of Skulltula")
    { "39:\x8Dｷﾝ \x8Cｽﾀﾙﾁｭﾗ ﾊｳｽ", Select_LoadGame, 0x0550 },
    // "40: Castle Town - Entrance" ("40: Market Entrance")
    { "40:\x8Dｼﾞｮｳｶﾏﾁ ｲﾘｸﾞﾁ", Select_LoadGame, 0x0033 },
    // "41: Castle Town" ("41: Market")
    { "41:\x8Dｼﾞｮｳｶﾏﾁ", Select_LoadGame, 0x00B1 },
    // "42: Back Alley" ("42: Back Alley")
    { "42:\x8Dｳﾗﾛｼﾞ", Select_LoadGame, 0x00AD },
    // "43: In Front of the Temple of Time" ("43: Temple of Time Exterior")
    { "43:\x8Dﾄｷﾉｼﾝﾃﾞﾝ ﾏｴ", Select_LoadGame, 0x0171 },
    // "44: Link's House" ("44: Link's House")
    { "44:\x8Dﾘﾝｸﾉｲｴ", Select_LoadGame, 0x00BB },
    // "45: Kakariko Village Row House" ("45: Carpenter Boss's House")
    { "45:\x8Cｶｶﾘｺ\x8Dﾑﾗﾉﾅｶﾞﾔ", Select_LoadGame, 0x02FD },
    // "46: Back Alley House" ("46: Back Alley House (Man in Green)")
    { "46:\x8Dｳﾗﾛｼﾞﾉ ｲｴ", Select_LoadGame, 0x043B },
    // "47: Kokiri Village - Know-It-All Brothers' House" ("47: Know-It-All Brothers' House")
    { "47:\x8Dｺｷﾘﾉﾑﾗ ﾓﾉｼﾘｷｮｳﾀﾞｲﾉｲｴ", Select_LoadGame, 0x00C9 },
    // "48: Kokiri Village - Twins' House" ("48: Twins' House")
    { "48:\x8Dｺｷﾘﾉﾑﾗ ﾌﾀｺﾞﾉｲｴ", Select_LoadGame, 0x009C },
    // "49: Kokiri Village - Mido's House" ("49: Mido's House")
    { "49:\x8Dｺｷﾘﾉﾑﾗ \x8Cﾐﾄﾞ\x8Dﾉｲｴ", Select_LoadGame, 0x0433 },
    // "50: Kokiri Village - Saria's House" ("50: Saria's House")
    { "50:\x8Dｺｷﾘﾉﾑﾗ \x8Cｻﾘｱ\x8Dﾉｲｴ", Select_LoadGame, 0x0437 },
    // "51: Stable" ("51: Stable")
    { "51:\x8Dｳﾏｺﾞﾔ", Select_LoadGame, 0x02F9 },
    // "52: Grave Keeper's House" ("52: Gravekeeper's Hut")
    { "52:\x8Dﾊｶﾓﾘﾉｲｴ", Select_LoadGame, 0x030D },
    // "53: Back Alley - Dog Lady's House" ("53: Back Alley House (Mamamu Yan)")
    { "53:\x8Dｳﾗﾛｼﾞ ｲﾇｵﾊﾞｻﾝﾉｲｴ", Select_LoadGame, 0x0398 },
    // "54: Kakariko Village - Impa's House" ("54: Impa's House")
    { "54:\x8Dｶｶﾘｺﾑﾗ \x8Cｲﾝﾊﾟ\x8Dﾉｲｴ", Select_LoadGame, 0x039C },
    // "55: Hylia Laboratory" ("55: Lakeside Laboratory")
    { "55:\x8Cﾊｲﾘｱ\x8D ｹﾝｷｭｳｼﾞｮ", Select_LoadGame, 0x0043 },
    // "56: Tent" ("56: Carpenters' Tent")
    { "56:\x8Cﾃﾝﾄ", Select_LoadGame, 0x03A0 },
    // "57: Shield Shop" ("57: Bazaar")
    { "57:\x8Dﾀﾃﾉﾐｾ", Select_LoadGame, 0x00B7 },
    // "58: Kokiri Shop" ("58: Kokiri Shop")
    { "58:\x8Dｺｷﾘｿﾞｸﾉﾐｾ", Select_LoadGame, 0x00C1 },
    // "59: Goron Shop" ("59: Goron Shop")
    { "59:\x8Cｺﾞﾛﾝ\x8Dﾉﾐｾ", Select_LoadGame, 0x037C },
    // "60: Zora Shop" ("60: Zora Shop")
    { "60:\x8Cｿﾞｰﾗ\x8Dﾉﾐｾ", Select_LoadGame, 0x0380 },
    // "61: Kakariko Village - Potion Shop" ("61: Kakariko Potion Shop")
    { "61:\x8Cｶｶﾘｺ\x8Dﾑﾗ  ｸｽﾘﾔ", Select_LoadGame, 0x0384 },
    // "62: Castle Town - Potion Shop" ("62: Market Potion Shop")
    { "62:\x8Dｼﾞｮｳｶﾏﾁ ｸｽﾘﾔ", Select_LoadGame, 0x0388 },
    // "63: Back Alley - Night Shop" ("63: Bombchu Shop")
    { "63:\x8Dｳﾗﾛｼﾞ ﾖﾙﾉﾐｾ", Select_LoadGame, 0x0390 },
    // "64: Mask Shop" ("64: Happy Mask Shop")
    { "64:\x8Dｵﾒﾝﾔ", Select_LoadGame, 0x0530 },
    // "65: Gerudo Training Area" ("65: Gerudo Training Ground")
    { "65:\x8Cｹﾞﾙﾄﾞ\x8Dﾉｼｭｳﾚﾝｼﾞｮｳ", Select_LoadGame, 0x0008 },
    // "66: Fairy Tree Dungeon" ("66: Inside the Deku Tree")
    { "66:\x8Dﾖｳｾｲﾉｷﾉ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0000 },
    // "67: Fairy Tree Dungeon - Boss" ("67: Gohma's Lair")
    { "67:\x8Dﾖｳｾｲﾉｷﾉ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x040F },
    // "68: Dondogo Dungeon" ("68: Dodongo's Cavern")
    { "68:\x8Cﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0004 },
    // "69: Dondogo Dungeon - Boss" ("69: King Dodongo's Lair")
    { "69:\x8Cﾄﾞﾄﾞﾝｺﾞ ﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x040B },
    // "70: Giant Fish Dungeon" ("70: Inside Jabu-Jabu's Belly")
    { "70:\x8Dｷｮﾀﾞｲｷﾞｮ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0028 },
    // "71: Giant Fish Dungeon - Boss" ("71: Barinade's Lair")
    { "71:\x8Dｷｮﾀﾞｲｷﾞｮ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x0301 },
    // "72: Forest Temple" ("72: Forest Temple")
    { "72:\x8Dﾓﾘﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x0169 },
    // "73: Forest Temple - Boss" ("73: Phantom Ganon's Lair")
    { "73:\x8Dﾓﾘﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x000C },
    // "74: Dungeon Below the Well" ("74: Bottom of the Well")
    { "74:\x8Dｲﾄﾞｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0098 },
    // "75: Dungeon Beneath the Graves" ("75: Shadow Temple")
    { "75:\x8Dﾊｶｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0037 },
    // "76: Dungeon Beneath the Graves - Boss" ("76: Bongo Bongo's Lair")
    { "76:\x8Dﾊｶｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x0413 },
    // "77: Fire Temple" ("77: Fire Temple")
    { "77:\x8Dﾋﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x0165 },
    // "78: Fire Temple - Boss" ("78: Volvagia's Lair")
    { "78:\x8Dﾋﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x0305 },
    // "79: Water Temple" ("79: Water Temple")
    { "79:\x8Dﾐｽﾞﾉｼﾝﾃﾞﾝ", Select_LoadGame, 0x0010 },
    // "80: Water Temple - Boss" ("80: Morpha's Lair")
    { "80:\x8Dﾐｽﾞﾉｼﾝﾃﾞﾝ \x8Cﾎﾞｽ", Select_LoadGame, 0x0417 },
    // "81: Evil Goddess Statue Dungeon" ("81: Spirit Temple")
    { "81:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0082 },
    // "82: Evil Goddess Statue Dungeon - Iron Knuckle" ("82: Iron Knuckle's Lair")
    { "82:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ ｱｲｱﾝﾅｯｸ", Select_LoadGame, 0x008D },
    // "83: Evil Goddess Statue Dungeon - Boss" ("83: Twinrova's Lair")
    { "83:\x8Dｼﾞｬｼﾝｿﾞｳ \x8Cﾀﾞﾝｼﾞｮﾝ ﾎﾞｽ", Select_LoadGame, 0x05EC },
    // "84: Ganon's Tower" ("84: Ganon's Tower")
    { "84:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ", Select_LoadGame, 0x041B },
    // "85: Ganon's Tower - Boss" ("85: Ganondorf's Lair")
    { "85:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ\x8Cﾎﾞｽ", Select_LoadGame, 0x041F },
    // "86: Ice Cavern" ("86: Ice Cavern")
    { "86:\x8Dｺｵﾘﾉﾄﾞｳｸﾂ", Select_LoadGame, 0x0088 },
    // "87: Relay Beneath the Graves" ("87: Dampé's Grave")
    { "87:\x8Dﾊｶｼﾀ\x8Cﾘﾚｰ", Select_LoadGame, 0x044F },
    // "88: Ganon's Basement Dungeon" ("88: Inside Ganon's Castle")
    { "88:\x8Cｶﾞﾉﾝ\x8Dﾁｶ \x8Cﾀﾞﾝｼﾞｮﾝ", Select_LoadGame, 0x0467 },
    // "89: Final Battle With Ganon - Cutscene & Battle" ("89: Ganondorf's Death Scene & Tower Escape Exterior")
    { "89:\x8Cｶﾞﾉﾝ\x8Dｻｲｼｭｳｾﾝ \x8Cﾃﾞﾓ & ﾊﾞﾄﾙ", Select_LoadGame, 0x0517 },
    // "90: Ganon's Tower Aftermath 1" ("90: Escaping Ganon's Tower 1")
    { "90:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 1", Select_LoadGame, 0x0179 },
    // "91: Ganon's Tower Aftermath 2" ("91: Escaping Ganon's Tower 2")
    { "91:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 2", Select_LoadGame, 0x01B5 },
    // "92: Ganon's Tower Aftermath 3" ("92: Escaping Ganon's Tower 3")
    { "92:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 3", Select_LoadGame, 0x03DC },
    // "93: Ganon's Tower Aftermath 4" ("93: Escaping Ganon's Tower 4")
    { "93:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 4", Select_LoadGame, 0x03E4 },
    // "94: Ganon's Basement Aftermath" ("94: Escaping Ganon's Castle")
    { "94:\x8Cｶﾞﾉﾝ\x8Dﾁｶ ｿﾉｺﾞ", Select_LoadGame, 0x056C },
    // "95: Gerudo Passage 1-2" ("95: Thieves' Hideout 1")
    { "95:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 1-2", Select_LoadGame, 0x0486 },
    // "96: Gerudo Passage 3-4 9-10" ("96: Thieves' Hideout 2")
    { "96:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 3-4 9-10", Select_LoadGame, 0x048E },
    // "97: Gerudo Passage 5-6" ("97: Thieves' Hideout 3")
    { "97:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 5-6", Select_LoadGame, 0x0496 },
    // "98: Gerudo Passage 7-8" ("98: Thieves' Hideout 4")
    { "98:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 7-8", Select_LoadGame, 0x049E },
    // "99: Gerudo Passage 11-12" ("99: Thieves' Hideout 5")
    { "99:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 11-12", Select_LoadGame, 0x04AE },
    // "100: Gerudo Passage 13" ("100: Thieves' Hideout 6")
    { "100:\x8Cｹﾞﾙﾄﾞ\x8Dﾂｳﾛ 13", Select_LoadGame, 0x0570 },
    // "101: Hidden Dive Hole 0" ("101: Grotto 0 - Gossip Stone & Chest")
    { "101:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 0", Select_LoadGame, 0x003F },
    // "102: Hidden Dive Hole 1" ("102: Grotto 1 - Skulltula & Gold Skulltula")
    { "102:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 1", Select_LoadGame, 0x0598 },
    // "103: Hidden Dive Hole 2" ("103: Grotto 2 - Business Scrub & Heart Piece")
    { "103:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 2", Select_LoadGame, 0x059C },
    // "104: Hidden Dive Hole 3" ("104: Grotto 3 - Redeads")
    { "104:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 3", Select_LoadGame, 0x05A0 },
    // "105: Hidden Dive Hole 4" ("105: Grotto 4 - 3 Business Scrubs")
    { "105:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 4", Select_LoadGame, 0x05A4 },
    // "106: Hidden Dive Hole 5" ("106: Grotto 5 - Gossip Stone, Skulltula, Cow")
    { "106:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 5", Select_LoadGame, 0x05A8 },
    // "107: Hidden Dive Hole 6" ("107: Grotto 6 - Octorok")
    { "107:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 6", Select_LoadGame, 0x05AC },
    // "108: Hidden Dive Hole 7" ("108: Grotto 7 - Business Scrub & Deku Nut Upgrade")
    { "108:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 7", Select_LoadGame, 0x05B0 },
    // "109: Hidden Dive Hole 8" ("109: Grotto 8 - 2 Wolfos")
    { "109:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 8", Select_LoadGame, 0x05B4 },
    // "110: Hidden Dive Hole 9" ("110: Grotto 9 - Bombable Walls")
    { "110:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 9", Select_LoadGame, 0x05B8 },
    // "111: Hidden Dive Hole 10" ("111: Grotto 10 - 2 Business Scrubs")
    { "111:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 10", Select_LoadGame, 0x05BC },
    // "112: Hidden Dive Hole 11" ("112: Grotto 11 - Tektite & Heart Piece")
    { "112:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 11", Select_LoadGame, 0x05C0 },
    // "113: Hidden Dive Hole 12" ("113: Grotto 12 - Deku Stage")
    { "113:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 12", Select_LoadGame, 0x05C4 },
    // "114: Hidden Dive Hole 13" ("114: Grotto 13 - Rupees & Cow")
    { "114:\x8Dｶｸｼﾄﾋﾞｺﾐｱﾅ 13", Select_LoadGame, 0x05FC },
    // "115: Hyrule Cutscenes" ("115: Cutscene Map")
    { "115:\x8Cﾊｲﾗﾙ ﾃﾞﾓ", Select_LoadGame, 0x00A0 },

    // "116: Special Room (Treasure Chest Warp)" ("116: Ganondorf Test Room")
    { "116:\x8Dﾍﾞｯｼﾂ (ﾀｶﾗﾊﾞｺ\x8Cﾜｰﾌﾟ)", Select_LoadGame, 0x0520 },
    // "117: Sasaki Test" ("117: Sasa Test")
    { "117:\x8Dｻｻ\x8Cﾃｽﾄ", Select_LoadGame, 0x0018 },
    // "118: Test Map" ("118: Jungle Gym")
    { "118:\x8Cﾃｽﾄﾏｯﾌﾟ", Select_LoadGame, 0x0094 },
    // "119: Test Room" ("119: Treasure Chest Room")
    { "119:\x8Cﾃｽﾄﾙｰﾑ", Select_LoadGame, 0x0024 },
    // "120: Stalfos Miniboss Room" ("120: Stalfos Miniboss Room")
    { "120:\x8Dﾁｭｳ\x8Cｽﾀﾛﾌｫｽ\x8Dﾍﾞﾔ", Select_LoadGame, 0x001C },
    // "121: Boss Stalfos Room" ("121: Stalfos Boss Room")
    { "121:\x8Cﾎﾞｽｽﾀﾛﾌｫｽ\x8Dﾍﾞﾔ", Select_LoadGame, 0x0020 },
    // "122: Stal" ("122: Sutaru")
    { "122:Sutaru", Select_LoadGame, 0x0047 },
    // "123: Test Area" ("123: Shooting Gallery")
    { "123:jikkenjyou", Select_LoadGame, 0x02EA },
    // "124: Depth Test" ("124: Depth Test")
    { "124:depth\x8Cﾃｽﾄ", Select_LoadGame, 0x00B6 },
    // "125: Hyrule Garden Game 2" ("125: Early Hyrule Garden Game")
    { "125:\x8Cﾊｲﾗﾙ\x8Dﾆﾜ\x8Cｹﾞｰﾑ2", Select_LoadGame, 0x0076 },
    // "title" ("Title Screen")
    { "title", (void*)Select_LoadTitle, 0x0000 },
};

void Select_UpdateMenu(SelectContext* this) {
    Input* controller1 = &this->state.input[0];
    s32 pad;
    SceneSelectEntry* selectedScene;

    if (this->verticalInputAccumulator == 0) {
        if (CHECK_BTN_ALL(controller1->press.button, BTN_A) || CHECK_BTN_ALL(controller1->press.button, BTN_START)) {
            selectedScene = &this->scenes[this->currentScene];
            if (selectedScene->loadFunc != NULL) {
                selectedScene->loadFunc(this, selectedScene->entranceIndex);
            }
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
            if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
                gSaveContext.linkAge = 1;
            } else {
                gSaveContext.linkAge = 0;
            }
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_Z)) {
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
        } else if (CHECK_BTN_ALL(controller1->press.button, BTN_R)) {
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
        if (CHECK_BTN_ALL(controller1->press.button, BTN_CUP)) {
            this->opt--;
        }
        if (CHECK_BTN_ALL(controller1->press.button, BTN_CDOWN)) {
            this->opt++;
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_DUP)) {
            if (this->lockUp == true) {
                this->timerUp = 0;
            }
            if (this->timerUp == 0) {
                this->timerUp = 20;
                this->lockUp = true;
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->verticalInput = R_UPDATE_RATE;
            }
        }

        if (CHECK_BTN_ALL(controller1->cur.button, BTN_DUP) && this->timerUp == 0) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->verticalInput = R_UPDATE_RATE * 3;
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_DDOWN)) {
            if (this->lockDown == true) {
                this->timerDown = 0;
            }
            if (this->timerDown == 0) {
                this->timerDown = 20;
                this->lockDown = true;
                Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->verticalInput = -R_UPDATE_RATE;
            }
        }

        if (CHECK_BTN_ALL(controller1->cur.button, BTN_DDOWN) && (this->timerDown == 0)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->verticalInput = -R_UPDATE_RATE * 3;
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_DLEFT) || CHECK_BTN_ALL(controller1->cur.button, BTN_DLEFT)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->verticalInput = R_UPDATE_RATE;
        }

        if (CHECK_BTN_ALL(controller1->press.button, BTN_DRIGHT) ||
            CHECK_BTN_ALL(controller1->cur.button, BTN_DRIGHT)) {
            Audio_PlaySoundGeneral(NA_SE_IT_SWORD_IMPACT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->verticalInput = -R_UPDATE_RATE;
        }
    }

    if (CHECK_BTN_ALL(controller1->press.button, BTN_L)) {
        this->pageDownIndex++;
        this->pageDownIndex = (this->pageDownIndex + ARRAY_COUNT(this->pageDownStops)) % ARRAY_COUNT(this->pageDownStops);
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

void Select_PrintMenu(SelectContext* this, GfxPrint* printer) {
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

// clang-format off
static const char* sLoadingMessages[] = {
    // "Please wait a minute",
    "\x8Dｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",
    // "Hold on a sec",
    "\x8Dﾁｮｯﾄ ﾏｯﾃﾈ",
    // "Wait a moment",
    "\x8Cｳｪｲﾄ ｱ ﾓｰﾒﾝﾄ",
    // "Loading",
    "\x8Cﾛｰﾄﾞ\x8Dﾁｭｳ",
    // "Now working",
    "\x8Dﾅｳ ﾜｰｷﾝｸﾞ",
    // "Now creating",
    "\x8Dｲﾏ ﾂｸｯﾃﾏｽ",
    // "It's not broken",
    "\x8Dｺｼｮｳｼﾞｬﾅｲﾖ",
    // "Coffee Break",
    "\x8Cｺｰﾋｰ ﾌﾞﾚｲｸ",
    // "Please set B side",
    "\x8C" "Bﾒﾝｦｾｯﾄｼﾃｸﾀﾞｻｲ",
    // "Be patient, now",
    "\x8Dｼﾞｯﾄ\x8Cｶﾞﾏﾝ\x8Dﾉ\x8Cｺ\x8Dﾃﾞｱｯﾀ",
    // "Please wait just a minute",
    "\x8Dｲﾏｼﾊﾞﾗｸｵﾏﾁｸﾀﾞｻｲ",
    // "Don't worry, don't worry. Take a break, take a break",
    "\x8Dｱﾜﾃﾅｲｱﾜﾃﾅｲ｡ﾋﾄﾔｽﾐﾋﾄﾔｽﾐ｡",
};
// clang-format on

void Select_PrintLoadingMessage(SelectContext* this, GfxPrint* printer) {
    s32 randomMsg;

    GfxPrint_SetPos(printer, 10, 15);
    GfxPrint_SetColor(printer, 255, 255, 255, 255);
    randomMsg = Rand_ZeroOne() * ARRAY_COUNT(sLoadingMessages);
    GfxPrint_Printf(printer, "%s", sLoadingMessages[randomMsg]);
}

// clang-format off
static const char* sAgeLabels[] = {
    // "17(young)"
    "\x8D" "17(ﾜｶﾓﾉ)",
    // "5(very young)"
    "\x8D" "5(ﾜｶｽｷﾞ)",
};
// clang-format on

void Select_PrintAgeSetting(SelectContext* this, GfxPrint* printer, s32 age) {
    GfxPrint_SetPos(printer, 4, 26);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);
    GfxPrint_Printf(printer, "Age:%s", sAgeLabels[age]);
}

void Select_PrintCutsceneSetting(SelectContext* this, GfxPrint* printer, u16 csIndex) {
    char* label;

    GfxPrint_SetPos(printer, 4, 25);
    GfxPrint_SetColor(printer, 255, 255, 55, 255);

    switch (csIndex) {
        case 0:
            label = "\x8D ﾖﾙ \x8Cｺﾞﾛﾝ";
            gSaveContext.dayTime = 0;
            break;
        case 0x8000:
            // clang-format off
            gSaveContext.dayTime = 0x8000; label = "\x8Dｵﾋﾙ \x8Cｼﾞｬﾗ";
            // clang-format on
            break;
        case 0xFFF0:
            // clang-format off
            gSaveContext.dayTime = 0x8000; label = "ﾃﾞﾓ00";
            // clang-format on
            break;
        case 0xFFF1:
            label = "ﾃﾞﾓ01";
            break;
        case 0xFFF2:
            label = "ﾃﾞﾓ02";
            break;
        case 0xFFF3:
            label = "ﾃﾞﾓ03";
            break;
        case 0xFFF4:
            label = "ﾃﾞﾓ04";
            break;
        case 0xFFF5:
            label = "ﾃﾞﾓ05";
            break;
        case 0xFFF6:
            label = "ﾃﾞﾓ06";
            break;
        case 0xFFF7:
            label = "ﾃﾞﾓ07";
            break;
        case 0xFFF8:
            label = "ﾃﾞﾓ08";
            break;
        case 0xFFF9:
            label = "ﾃﾞﾓ09";
            break;
        case 0xFFFA:
            label = "ﾃﾞﾓ0A";
            break;
    };

    gSaveContext.environmentTime = gSaveContext.dayTime;
    GfxPrint_Printf(printer, "Stage:\x8C%s", label);
}

void Select_DrawMenu(SelectContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx, "../z_select.c", 930);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    func_800AAA50(&this->view, 0xF);
    func_80094140(gfxCtx);
    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, POLY_OPA_DISP);
    Select_PrintMenu(this, printer);
    Select_PrintAgeSetting(this, printer, ((void)0, gSaveContext.linkAge));
    Select_PrintCutsceneSetting(this, printer, ((void)0, gSaveContext.cutsceneIndex));
    POLY_OPA_DISP = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    CLOSE_DISPS(gfxCtx, "../z_select.c", 966);
}

void Select_DrawLoadingScreen(SelectContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx, "../z_select.c", 977);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    func_800AAA50(&this->view, 0xF);
    func_80094140(gfxCtx);
    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, POLY_OPA_DISP);
    Select_PrintLoadingMessage(this, printer);
    POLY_OPA_DISP = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    CLOSE_DISPS(gfxCtx, "../z_select.c", 1006);
}

void Select_Draw(SelectContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_select.c", 1013);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    SET_FULLSCREEN_VIEWPORT(&this->view);
    func_800AAA50(&this->view, 0xF);

    if (!this->state.running) {
        Select_DrawLoadingScreen(this);
    } else {
        Select_DrawMenu(this);
    }

    CLOSE_DISPS(gfxCtx, "../z_select.c", 1037);
}

void Select_Main(GameState* thisx) {
    SelectContext* this = (SelectContext*)thisx;

    Select_UpdateMenu(this);
    Select_Draw(this);
}

void Select_Destroy(GameState* thisx) {
    // ASCII's 0x07 is the BEL character
    osSyncPrintf("%c", '\x07');
    // "view_cleanup will hang, so it won't be called"
    osSyncPrintf("*** view_cleanupはハングアップするので、呼ばない ***\n");
}

void Select_Init(GameState* thisx) {
    SelectContext* this = (SelectContext*)thisx;
    u32 size;
    s32 pad;

    this->state.main = Select_Main;
    this->state.destroy = Select_Destroy;
    this->scenes = sScenes;
    this->topDisplayedScene = 0;
    this->currentScene = 0;
    this->pageDownStops[0] = 0;  // " 1:SPOT00"
    this->pageDownStops[1] = 19; // "20:\x8Dﾄｷﾉﾏ"
    this->pageDownStops[2] = 37; // "38:\x8Dﾀｶﾗﾊﾞｺﾔ"
    this->pageDownStops[3] = 51; // "52:\x8Dﾊｶﾓﾘﾉｲｴ"
    this->pageDownStops[4] = 59; // "60:\x8Cｿﾞｰﾗ\x8Dﾉﾐｾ"
    this->pageDownStops[5] = 73; // "74:\x8Dｲﾄﾞｼﾀ \x8Cﾀﾞﾝｼﾞｮﾝ"
    this->pageDownStops[6] = 91; // "92:\x8Cｶﾞﾉﾝ\x8Dﾉﾄｳ ｿﾉｺﾞ 3"
    this->pageDownIndex = 0;
    this->opt = 0;
    this->count = ARRAY_COUNT(sScenes);
    View_Init(&this->view, this->state.gfxCtx);
    this->view.flags = (0x08 | 0x02);
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
    DmaMgr_SendRequest1(this->staticSegment, _z_select_staticSegmentRomStart, size, "../z_select.c", 1115);
    gSaveContext.cutsceneIndex = 0x8000;
    gSaveContext.linkAge = 1;
}
