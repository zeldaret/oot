#include "global.h"
#include "vt.h"

#define FIELD_SIZE(type, field) sizeof(((type*)0)->field)

#define SRAM_SIZE 0x8000
#define SLOT_SIZE 0x1450
#define CHECKSUM_SIZE 0x9AAu
#define SAVE_SIZE FIELD_SIZE(SaveContext, save)
#define INFO_SIZE FIELD_SIZE(SaveContext, save.info)

#define DEATHS OFFSETOF(SaveContext, save.info.playerData.deaths)
#define NAME OFFSETOF(SaveContext, save.info.playerData.playerName)
#define N64DD OFFSETOF(SaveContext, save.info.playerData.n64ddFlag)
#define HEALTH_CAP OFFSETOF(SaveContext, save.info.playerData.healthCapacity)
#define QUEST OFFSETOF(SaveContext, save.info.inventory.questItems)
#define DEFENSE OFFSETOF(SaveContext, save.info.inventory.defenseHearts)
#define HEALTH OFFSETOF(SaveContext, save.info.playerData.health)

#define SLOT_OFFSET(idx) (SLOT_SIZE * idx + 0x20)

#define CALC_CHECKSUM(i, j, ptr, sum)         \
    {                                         \
        for (i = 0; i < CHECKSUM_SIZE; i++) { \
            if (++j == 0x20u) {               \
                j = 0;                        \
            }                                 \
            sum += *ptr++;                    \
        }                                     \
    }

u16 gSramSlotOffsets[][3] = {
    {
        SLOT_OFFSET(0),
        SLOT_OFFSET(1),
        SLOT_OFFSET(2),
    },
    {
        SLOT_OFFSET(3),
        SLOT_OFFSET(4),
        SLOT_OFFSET(5),
    },
};

char sZeldaMagic[] = { '\0', '\0', '\0', '\x98', '\x09', '\x10', '\x21', 'Z', 'E', 'L', 'D', 'A' };

PlayerData sNewSavePlayerData = {
    { '\0', '\0', '\0', '\0', '\0', '\0' },             // newf
    0,                                                  // deaths
    { 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E }, // playerName
    0,                                                  // n64ddFlag
    0x30,                                               // healthCapacity
    0x30,                                               // heartStatus
    0,                                                  // magicLevel
    0x30,                                               // magic
    0,                                                  // rupees
    0,                                                  // swordHealth
    0,                                                  // naviTimer
    0,                                                  // magicAcquired
    0,                                                  // unk_1F
    0,                                                  // doubleMagic
    0,                                                  // doubleDefense
    0,                                                  // bgsFlag
    0,                                                  // ocarinaGameReward
    {
        { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE }, // buttonItems
        { SLOT_NONE, SLOT_NONE, SLOT_NONE },            // cButtonSlots
        0,                                              // equipment
    },                                                  // childEquips
    {
        { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE }, // buttonItems
        { SLOT_NONE, SLOT_NONE, SLOT_NONE },            // cButtonSlots
        0,                                              // equipment
    },                                                  // adultEquips
    0,                                                  // unk_38
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },       // unk_3C
    0x34,                                               // savedSceneNum
};

ItemEquips sNewSaveEquips = {
    { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE }, // buttonItems
    { SLOT_NONE, SLOT_NONE, SLOT_NONE },            // cButtonSlots
    0x1100,                                         // equipment
};

Inventory sNewSaveInventory = {
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
      0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }, // items
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },                         // ammo
    0x1100,                                                                     // equipment
    0,                                                                          // upgrades
    0,                                                                          // questItems
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },             // dungeonItems
    {
        0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
        0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    }, // dungeonKeys
    0, // defenseHearts
    0, // gsTokens
};

u16 sNewSaveChecksum = 0;

void Sram_InitNewSave(void) {
    SaveContext* temp = &gSaveContext;

    bzero(&gSaveContext.save.info, INFO_SIZE);
    gSaveContext.save.numDays = 0;
    gSaveContext.save.unk_18 = 0;

    gSaveContext.save.info.playerData = sNewSavePlayerData;
    gSaveContext.save.info.equips = sNewSaveEquips;
    gSaveContext.save.info.inventory = sNewSaveInventory;

    temp->save.info.checksum = sNewSaveChecksum;
    gSaveContext.save.info.horseData.scene = SCENE_SPOT00;
    gSaveContext.save.info.horseData.pos.x = -1840;
    gSaveContext.save.info.horseData.pos.y = 72;
    gSaveContext.save.info.horseData.pos.z = 5497;
    gSaveContext.save.info.horseData.angle = -0x6AD9;
    gSaveContext.save.info.playerData.magicLevel = 0;
    gSaveContext.save.info.infTable[29] = 1;
    gSaveContext.save.info.sceneFlags[5].swch = 0x40000000;
}

PlayerData sDebugSavePlayerData = {
    { 'Z', 'E', 'L', 'D', 'A', 'Z' },                   // newf
    0,                                                  // deaths
    { 0x15, 0x12, 0x17, 0x14, 0x3E, 0x3E, 0x3E, 0x3E }, // playerName ( "LINK" )
    0,                                                  // n64ddFlag
    0xE0,                                               // healthCapacity
    0xE0,                                               // health
    0,                                                  // magicLevel
    0x30,                                               // magic
    150,                                                // rupees
    8,                                                  // swordHealth
    0,                                                  // naviTimer
    1,                                                  // magicAcquired
    0,                                                  // unk_1F
    0,                                                  // doubleMagic
    0,                                                  // doubleDefense
    0,                                                  // bgsFlag
    0,                                                  // ocarinaGameReward
    {
        { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE }, // buttonItems
        { SLOT_NONE, SLOT_NONE, SLOT_NONE },            // cButtonSlots
        0,                                              // equipment
    },                                                  // childEquips
    {
        { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE }, // buttonItems
        { SLOT_NONE, SLOT_NONE, SLOT_NONE },            // cButtonSlots
        0,                                              // equipment
    },                                                  // adultEquips
    0,                                                  // unk_38
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },       // unk_3C
    0x51,                                               // savedSceneNum
};

ItemEquips sDebugSaveEquips = {
    { ITEM_SWORD_MASTER, ITEM_BOW, ITEM_BOMB, ITEM_OCARINA_FAIRY }, // buttonItems
    { SLOT_BOW, SLOT_BOMB, SLOT_OCARINA },                          // cButtonSlots
    0x1122,                                                         // equipment
};

Inventory sDebugSaveInventory = {
    { ITEM_STICK,     ITEM_NUT,           ITEM_BOMB,         ITEM_BOW,         ITEM_ARROW_FIRE,  ITEM_DINS_FIRE,
      ITEM_SLINGSHOT, ITEM_OCARINA_FAIRY, ITEM_BOMBCHU,      ITEM_HOOKSHOT,    ITEM_ARROW_ICE,   ITEM_FARORES_WIND,
      ITEM_BOOMERANG, ITEM_LENS,          ITEM_BEAN,         ITEM_HAMMER,      ITEM_ARROW_LIGHT, ITEM_NAYRUS_LOVE,
      ITEM_BOTTLE,    ITEM_POTION_RED,    ITEM_POTION_GREEN, ITEM_POTION_BLUE, ITEM_POCKET_EGG,  ITEM_WEIRD_EGG }, // items
    { 50, 50, 10, 30, 1, 1, 30, 1, 50, 1, 1, 1, 1, 1, 1, 1 },       // ammo
    0x7777,                                                         // equipment
    0x125249,                                                       // upgrades
    0x1E3FFFF,                                                      // questItems
    { 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, // dungeonItems
    { 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 },    // dungeonKeys
    0,                                                              // defenseHearts
    0,                                                              // gsTokens
};

u16 sDebugSaveChecksum = 0;

void Sram_InitDebugSave(void) {
    SaveContext* temp = &gSaveContext;

    bzero(&gSaveContext.save.info, INFO_SIZE);
    gSaveContext.save.numDays = 0;
    gSaveContext.save.unk_18 = 0;

    gSaveContext.save.info.playerData = sDebugSavePlayerData;
    gSaveContext.save.info.equips = sDebugSaveEquips;
    gSaveContext.save.info.inventory = sDebugSaveInventory;

    temp->save.info.checksum = sDebugSaveChecksum;
    gSaveContext.save.info.horseData.scene = SCENE_SPOT00;
    gSaveContext.save.info.horseData.pos.x = -1840;
    gSaveContext.save.info.horseData.pos.y = 72;
    gSaveContext.save.info.horseData.pos.z = 5497;
    gSaveContext.save.info.horseData.angle = -0x6AD9;
    gSaveContext.save.info.infTable[0] |= 0x5009;
    gSaveContext.save.info.eventChkInf[0] |= 0x123F;
    gSaveContext.save.info.eventChkInf[8] |= 1;
    gSaveContext.save.info.eventChkInf[12] |= 0x10;

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        gSaveContext.save.info.equips.buttonItems[0] = ITEM_SWORD_KOKIRI;
        Inventory_ChangeEquipment(EQUIP_SWORD, PLAYER_SWORD_KOKIRI);
        if (gSaveContext.fileNum == 0xFF) {
            gSaveContext.save.info.equips.buttonItems[1] = ITEM_SLINGSHOT;
            gSaveContext.save.info.equips.cButtonSlots[0] = SLOT_SLINGSHOT;
            Inventory_ChangeEquipment(EQUIP_SHIELD, PLAYER_SHIELD_DEKU);
        }
    }

    gSaveContext.save.entranceIndex = 0xCD;
    gSaveContext.save.info.playerData.magicLevel = 0;
    gSaveContext.save.info.sceneFlags[5].swch = 0x40000000;
}


#ifdef NON_MATCHING
// regalloc differences at the end
/**
 *  Copy save currently on the buffer to save context and complete various tasks to open the save.
 *  This includes:
 *  - Set proper entrance depending on where the game was saved
 *  - If health is less than 3 hearts, give 3 hearts
 *  - If either scarecrow song is set, copy them from save context to the proper location
 *  - Handle a case where the player saved and quit after zelda cutscene but didnt get the song
 *  - Give and equip master sword if player is adult and doesnt have kokiri sword (bug?)
 *  - Revert any trade items that spoil
 */
void Sram_OpenSave(Sram* sram) {
    static s16 dungeonEntrances[] = {
        0x0000, 0x0004, 0x0028, 0x0169, 0x0165, 0x0010, 0x0082, 0x0037,
        0x0098, 0x0088, 0x041B, 0x0008, 0x0486, 0x0467, 0x0179, 0x056C,
    };
    u16 i;
    u16 j;
    u8* ptr;

    osSyncPrintf("個人Ｆｉｌｅ作成\n"); // Create personal file
    i = gSramSlotOffsets[0][gSaveContext.fileNum];
    osSyncPrintf("ぽいんと＝%x(%d)\n", i, gSaveContext.fileNum); // Point=

    MemCopy(&gSaveContext, sram->readBuff + i, SAVE_SIZE);

    osSyncPrintf(VT_FGCOL(YELLOW));
    osSyncPrintf("SCENE_DATA_ID = %d   SceneNo = %d\n", gSaveContext.save.info.playerData.savedSceneNum,
                 ((void)0, gSaveContext.save.entranceIndex));

    switch (gSaveContext.save.info.playerData.savedSceneNum) {
        case SCENE_YDAN:
        case SCENE_DDAN:
        case SCENE_BDAN:
        case SCENE_BMORI1:
        case SCENE_HIDAN:
        case SCENE_MIZUSIN:
        case SCENE_JYASINZOU:
        case SCENE_HAKADAN:
        case SCENE_HAKADANCH:
        case SCENE_ICE_DOUKUTO:
        case SCENE_GANON:
        case SCENE_MEN:
        case SCENE_GERUDOWAY:
        case SCENE_GANONTIKA:
            gSaveContext.save.entranceIndex = dungeonEntrances[gSaveContext.save.info.playerData.savedSceneNum];
            break;
        case SCENE_YDAN_BOSS:
            gSaveContext.save.entranceIndex = 0;
            break;
        case SCENE_DDAN_BOSS:
            gSaveContext.save.entranceIndex = 4;
            break;
        case SCENE_BDAN_BOSS:
            gSaveContext.save.entranceIndex = 0x28;
            break;
        case SCENE_MORIBOSSROOM:
            gSaveContext.save.entranceIndex = 0x169;
            break;
        case SCENE_FIRE_BS:
            gSaveContext.save.entranceIndex = 0x165;
            break;
        case SCENE_MIZUSIN_BS:
            gSaveContext.save.entranceIndex = 0x10;
            break;
        case SCENE_JYASINBOSS:
            gSaveContext.save.entranceIndex = 0x82;
            break;
        case SCENE_HAKADAN_BS:
            gSaveContext.save.entranceIndex = 0x37;
            break;
        case SCENE_GANON_SONOGO:
        case SCENE_GANONTIKA_SONOGO:
        case SCENE_GANON_BOSS:
        case SCENE_GANON_FINAL:
        case SCENE_GANON_DEMO:
            gSaveContext.save.entranceIndex = 0x41B;
            break;

        default:
            if (gSaveContext.save.info.playerData.savedSceneNum != SCENE_LINK_HOME) {
                gSaveContext.save.entranceIndex = (LINK_AGE_IN_YEARS == YEARS_CHILD) ? 0xBB : 0x5F4;
            } else {
                gSaveContext.save.entranceIndex = 0xBB;
            }
            break;
    }

    osSyncPrintf("scene_no = %d\n", gSaveContext.save.entranceIndex);
    osSyncPrintf(VT_RST);

    if (gSaveContext.save.info.playerData.health < 0x30) {
        gSaveContext.save.info.playerData.health = 0x30;
    }

    if (gSaveContext.save.info.scarecrowCustomSongSet) {
        osSyncPrintf(VT_FGCOL(BLUE));
        osSyncPrintf("\n====================================================================\n");

        MemCopy(gScarecrowCustomSongPtr, &gSaveContext.save.info.scarecrowCustomSong, 0x360);

        ptr = gScarecrowCustomSongPtr;
        for (i = 0; i < 0x360; i++, ptr++) {
            osSyncPrintf("%d, ", *ptr);
        }

        osSyncPrintf("\n====================================================================\n");
        osSyncPrintf(VT_RST);
    }

    if (gSaveContext.save.info.scarecrowSpawnSongSet) {
        osSyncPrintf(VT_FGCOL(GREEN));
        osSyncPrintf("\n====================================================================\n");

        MemCopy(gScarecrowSpawnSongPtr, &gSaveContext.save.info.scarecrowSpawnSong, 0x80);

        ptr = gScarecrowSpawnSongPtr;
        for (i = 0; i < 0x80; i++, ptr++) {
            osSyncPrintf("%d, ", *ptr);
        }

        osSyncPrintf("\n====================================================================\n");
        osSyncPrintf(VT_RST);
    }

    // if zelda cutscene has been watched but lullaby was not obtained, restore cutscene and take away letter
    if ((gSaveContext.save.info.eventChkInf[4] & 1) && !CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
        gSaveContext.save.info.eventChkInf[4] &= ~1;
        INV_CONTENT(ITEM_LETTER_ZELDA) = ITEM_CHICKEN;

        for (i = 1; i < 4; i++) {
            if (gSaveContext.save.info.equips.buttonItems[i] == ITEM_LETTER_ZELDA) {
                gSaveContext.save.info.equips.buttonItems[i] = ITEM_CHICKEN;
            }
        }
    }

    // check for owning kokiri sword.. to restore master sword? bug or debug feature?
    if (LINK_AGE_IN_YEARS == YEARS_ADULT && !CHECK_OWNED_EQUIP(EQUIP_SWORD, PLAYER_SWORD_KOKIRI)) {
        gSaveContext.save.info.inventory.equipment |= gBitFlags[1] << gEquipShifts[EQUIP_SWORD];
        gSaveContext.save.info.equips.buttonItems[0] = ITEM_SWORD_MASTER;
        gSaveContext.save.info.equips.equipment &= ~0xF;
        gSaveContext.save.info.equips.equipment |= 2;
    }

    for (i = 0; i < ARRAY_COUNT(gSpoilingItems); i++) {
        if (INV_CONTENT(ITEM_TRADE_ADULT) == gSpoilingItems[i]) {
            INV_CONTENT(gSpoilingItemReverts[i]) = gSpoilingItemReverts[i];

            for (j = 1; j < 4; j++) {
                if (gSaveContext.save.info.equips.buttonItems[j] == gSpoilingItems[i]) {
                    gSaveContext.save.info.equips.buttonItems[j] = gSpoilingItemReverts[i];
                }
            }
        }
    }

    gSaveContext.save.info.playerData.magicLevel = 0;
}
#else
s16 dungeonEntrances[] = {
    0x0000, 0x0004, 0x0028, 0x0169, 0x0165, 0x0010, 0x0082, 0x0037,
    0x0098, 0x0088, 0x041B, 0x0008, 0x0486, 0x0467, 0x0179, 0x056C,
};
#pragma GLOBAL_ASM("asm/non_matchings/code/z_sram/Sram_OpenSave.s")
#endif

/**
 *  Write the contents of the Save Context to a slot in SRAM
 *  Note: The whole Save Context is written even though only the `save` substruct is read back
 */
void Sram_WriteSave(s32 unused) {
    u16 offset;
    u16 checksum;
    u16 j;
    u16* ptr;

    gSaveContext.save.info.checksum = 0;

    ptr = (u16*)&gSaveContext;
    checksum = 0;
    j = 0;
    CALC_CHECKSUM(offset, j, ptr, checksum);
    gSaveContext.save.info.checksum = checksum;

    ptr = (u16*)&gSaveContext;
    checksum = 0;
    CALC_CHECKSUM(offset, j, ptr, checksum);

    offset = gSramSlotOffsets[0][gSaveContext.fileNum];
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);

    ptr = (u16*)&gSaveContext;
    checksum = 0;
    CALC_CHECKSUM(offset, j, ptr, checksum);

    offset = gSramSlotOffsets[1][gSaveContext.fileNum];
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);
}

/**
 *  For all 3 slots, verify that the checksum is correct. If corrupted, attempt to load a backup save.
 *  If backup is also corrupted, default to a new save (or debug save for slot 0 on debug rom).
 * 
 *  After verifying all 3 saves, pass relevant data to File Select to be displayed.
 */
#ifdef NON_MATCHING
// There's a problem with how "offset" is loaded
void Sram_VerifyAndLoadAllSaves(FileChooseContext* fileChoose, Sram* sram) {
    u16 slotNum; // 0x72
    u16 oldChecksum;
    u16 newChecksum;
    u16 dayTime; // 0x66
    // u16* offPtr;
    s32 offset;
    u16 i;
    u16 j;
    u16* ptr;

    osSyncPrintf("ＳＲＡＭ ＳＴＡＲＴ─ＬＯＡＤ\n");
    bzero(sram->readBuff, SRAM_SIZE);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_READ);

    dayTime = gSaveContext.save.dayTime;

    for (slotNum = 0; slotNum < 3; slotNum++) {
        offset = gSramSlotOffsets[0][slotNum];
        osSyncPrintf("ぽいんと＝%x(%d)    SAVE_MAX=%d\n", offset, gSaveContext.fileNum, SAVE_SIZE);
        MemCopy(&gSaveContext, sram->readBuff + offset, SAVE_SIZE);

        oldChecksum = gSaveContext.save.info.checksum;
        gSaveContext.save.info.checksum = 0;
        osSyncPrintf("\n＝＝＝＝＝＝＝＝＝＝＝＝＝  Ｓ（%d） ＝＝＝＝＝＝＝＝＝＝＝＝＝\n", slotNum);

        // j = 0;
        newChecksum = 0;
        ptr = (u16*)&gSaveContext;
        for (i = 0; i < CHECKSUM_SIZE; i++) {
            j += 2;
            newChecksum += *ptr++;
        }

        // SAVE checksum calculation
        osSyncPrintf("\nＳＡＶＥチェックサム計算  j=%x  mmm=%x  ", newChecksum, oldChecksum);

        if (oldChecksum != newChecksum) {
            // checksum didnt match, try backup save
            osSyncPrintf("ＥＲＲＯＲ！！！ ＝ %x(%d)\n", offset, slotNum);
            offset = gSramSlotOffsets[1][slotNum];
            MemCopy(&gSaveContext, sram->readBuff + offset, SAVE_SIZE);

            oldChecksum = gSaveContext.save.info.checksum;
            gSaveContext.save.info.checksum = 0;
            osSyncPrintf("================= ＢＡＣＫ─ＵＰ ========================\n");

            newChecksum = 0;
            ptr = (u16*)&gSaveContext;
            for (i = 0; i < CHECKSUM_SIZE; i++) {
                j += 2;
                newChecksum += *ptr++;
            }
            // (B) SAVE checksum calculation
            osSyncPrintf("\n（Ｂ）ＳＡＶＥチェックサム計算  j=%x  mmm=%x  ", newChecksum, oldChecksum);

            if (oldChecksum != newChecksum) {
                // backup save didnt work, make new save
                // offPtr = &gSramSlotOffsets[1][slotNum];
                osSyncPrintf("ＥＲＲＯＲ！！！ ＝ %x(%d+3)\n", offset, slotNum);
                bzero(&gSaveContext.save.entranceIndex, sizeof(gSaveContext.save.entranceIndex));
                bzero(&gSaveContext.save.linkAge, sizeof(gSaveContext.save.linkAge));
                bzero(&gSaveContext.save.cutsceneIndex, sizeof(gSaveContext.save.cutsceneIndex));
                bzero(&gSaveContext.save.dayTime, sizeof(gSaveContext.save.dayTime));
                bzero(&gSaveContext.save.nightFlag, sizeof(gSaveContext.save.nightFlag));
                bzero(&gSaveContext.save.numDays, sizeof(gSaveContext.save.numDays));
                bzero(&gSaveContext.save.unk_18, sizeof(gSaveContext.save.unk_18));

                if (slotNum == 0) {
                    Sram_InitDebugSave();
                    gSaveContext.save.info.playerData.newf[0] = 'Z';
                    gSaveContext.save.info.playerData.newf[1] = 'E';
                    gSaveContext.save.info.playerData.newf[2] = 'L';
                    gSaveContext.save.info.playerData.newf[3] = 'D';
                    gSaveContext.save.info.playerData.newf[4] = 'A';
                    gSaveContext.save.info.playerData.newf[5] = 'Z';
                    osSyncPrintf("newf=%x,%x,%x,%x,%x,%x\n", gSaveContext.save.info.playerData.newf[0],
                                 gSaveContext.save.info.playerData.newf[1], gSaveContext.save.info.playerData.newf[2],
                                 gSaveContext.save.info.playerData.newf[3], gSaveContext.save.info.playerData.newf[4],
                                 gSaveContext.save.info.playerData.newf[5]);
                } else {
                    Sram_InitNewSave();
                }

                osSyncPrintf("\n--------------------------------------------------------------\n");

                j = 0;
                newChecksum = 0;
                ptr = (u16*)&gSaveContext;
                for (i = 0; i < CHECKSUM_SIZE; i++) {
                    osSyncPrintf("%x ", *ptr);
                    if (++j == 0x20) {
                        osSyncPrintf("\n");
                        j = 0;
                    }
                    newChecksum += *ptr++;
                }

                gSaveContext.save.info.checksum = newChecksum;
                osSyncPrintf("\nCheck_Sum=%x(%x)\n", gSaveContext.save.info.checksum, newChecksum);

                offset = gSramSlotOffsets[1][slotNum];
                SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);

                osSyncPrintf("????#%x,%x,%x,%x,%x,%x\n", gSaveContext.save.info.playerData.newf[0],
                             gSaveContext.save.info.playerData.newf[1], gSaveContext.save.info.playerData.newf[2],
                             gSaveContext.save.info.playerData.newf[3], gSaveContext.save.info.playerData.newf[4],
                             gSaveContext.save.info.playerData.newf[5]);
                osSyncPrintf("\nぽいんと＝%x(%d+3)  check_sum=%x(%x)\n", offset, slotNum,
                             gSaveContext.save.info.checksum, newChecksum);
            }

            offset = gSramSlotOffsets[0][slotNum];
            SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);

            osSyncPrintf("ぽいんと＝%x(%d)  check_sum=%x(%x)\n", offset, slotNum, gSaveContext.save.info.checksum,
                         newChecksum);
        } else {
            // SAVE data OK! ! ! !
            osSyncPrintf("\nＳＡＶＥデータ ＯＫ！！！！\n");
        }
    }

    bzero(sram->readBuff, SRAM_SIZE);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_READ);
    gSaveContext.save.dayTime = dayTime;

    osSyncPrintf("SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  64DD=%x,  HEART=%x\n", DEATHS, NAME, HEALTH_CAP, QUEST, N64DD,
                 DEFENSE);

    MemCopy(&fileChoose->deaths[0], sram->readBuff + SLOT_OFFSET(0) + DEATHS, sizeof(fileChoose->deaths[0]));
    MemCopy(&fileChoose->deaths[1], sram->readBuff + SLOT_OFFSET(1) + DEATHS, sizeof(fileChoose->deaths[0]));
    MemCopy(&fileChoose->deaths[2], sram->readBuff + SLOT_OFFSET(2) + DEATHS, sizeof(fileChoose->deaths[0]));

    MemCopy(&fileChoose->fileNames[0], sram->readBuff + SLOT_OFFSET(0) + NAME, sizeof(fileChoose->fileNames[0]));
    MemCopy(&fileChoose->fileNames[1], sram->readBuff + SLOT_OFFSET(1) + NAME, sizeof(fileChoose->fileNames[0]));
    MemCopy(&fileChoose->fileNames[2], sram->readBuff + SLOT_OFFSET(2) + NAME, sizeof(fileChoose->fileNames[0]));

    MemCopy(&fileChoose->healthCapacities[0], sram->readBuff + SLOT_OFFSET(0) + HEALTH_CAP,
            sizeof(fileChoose->healthCapacities[0]));
    MemCopy(&fileChoose->healthCapacities[1], sram->readBuff + SLOT_OFFSET(1) + HEALTH_CAP,
            sizeof(fileChoose->healthCapacities[0]));
    MemCopy(&fileChoose->healthCapacities[2], sram->readBuff + SLOT_OFFSET(2) + HEALTH_CAP,
            sizeof(fileChoose->healthCapacities[0]));

    MemCopy(&fileChoose->questItems[0], sram->readBuff + SLOT_OFFSET(0) + QUEST, sizeof(fileChoose->questItems[0]));
    MemCopy(&fileChoose->questItems[1], sram->readBuff + SLOT_OFFSET(1) + QUEST, sizeof(fileChoose->questItems[0]));
    MemCopy(&fileChoose->questItems[2], sram->readBuff + SLOT_OFFSET(2) + QUEST, sizeof(fileChoose->questItems[0]));

    MemCopy(&fileChoose->n64ddFlags[0], sram->readBuff + SLOT_OFFSET(0) + N64DD, sizeof(fileChoose->n64ddFlags[0]));
    MemCopy(&fileChoose->n64ddFlags[1], sram->readBuff + SLOT_OFFSET(1) + N64DD, sizeof(fileChoose->n64ddFlags[0]));
    MemCopy(&fileChoose->n64ddFlags[2], sram->readBuff + SLOT_OFFSET(2) + N64DD, sizeof(fileChoose->n64ddFlags[0]));

    MemCopy(&fileChoose->heartStatus[0], sram->readBuff + SLOT_OFFSET(0) + DEFENSE, sizeof(fileChoose->heartStatus[0]));
    MemCopy(&fileChoose->heartStatus[1], sram->readBuff + SLOT_OFFSET(1) + DEFENSE, sizeof(fileChoose->heartStatus[0]));
    MemCopy(&fileChoose->heartStatus[2], sram->readBuff + SLOT_OFFSET(2) + DEFENSE, sizeof(fileChoose->heartStatus[0]));

    MemCopy(&fileChoose->nowLife[0], sram->readBuff + SLOT_OFFSET(0) + HEALTH, sizeof(fileChoose->nowLife[0]));
    MemCopy(&fileChoose->nowLife[1], sram->readBuff + SLOT_OFFSET(1) + HEALTH, sizeof(fileChoose->nowLife[0]));
    MemCopy(&fileChoose->nowLife[2], sram->readBuff + SLOT_OFFSET(2) + HEALTH, sizeof(fileChoose->nowLife[0]));

    osSyncPrintf("f_64dd=%d, %d, %d\n", fileChoose->n64ddFlags[0], fileChoose->n64ddFlags[1],
                 fileChoose->n64ddFlags[2]);
    osSyncPrintf("heart_status=%d, %d, %d\n", fileChoose->heartStatus[0], fileChoose->heartStatus[1],
                 fileChoose->heartStatus[2]);
    osSyncPrintf("now_life=%d, %d, %d\n", fileChoose->nowLife[0], fileChoose->nowLife[1], fileChoose->nowLife[2]);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_sram/Sram_VerifyAndLoadAllSaves.s")
#endif

void Sram_InitSave(FileChooseContext* fileChoose, Sram* sram) {
    u16 offset;
    u16 j;
    u16* ptr;
    u16 checksum;

    if (fileChoose->btnIdx != 0) {
        Sram_InitNewSave();
    } else {
        Sram_InitDebugSave();
    }

    gSaveContext.save.entranceIndex = 0xBB;
    gSaveContext.save.linkAge = 1;
    gSaveContext.save.dayTime = 0x6AAB;
    gSaveContext.save.cutsceneIndex = 0xFFF1;

    if (fileChoose->btnIdx == 0) {
        gSaveContext.save.cutsceneIndex = 0;
    }

    for (offset = 0; offset < 8; offset++) {
        gSaveContext.save.info.playerData.playerName[offset] = fileChoose->fileNames[fileChoose->btnIdx][offset];
    }

    gSaveContext.save.info.playerData.newf[0] = 'Z';
    gSaveContext.save.info.playerData.newf[1] = 'E';
    gSaveContext.save.info.playerData.newf[2] = 'L';
    gSaveContext.save.info.playerData.newf[3] = 'D';
    gSaveContext.save.info.playerData.newf[4] = 'A';
    gSaveContext.save.info.playerData.newf[5] = 'Z';

    gSaveContext.save.info.playerData.n64ddFlag = fileChoose->n64ddFlag;
    osSyncPrintf("６４ＤＤフラグ=%d\n", fileChoose->n64ddFlag);
    osSyncPrintf("newf=%x,%x,%x,%x,%x,%x\n", gSaveContext.save.info.playerData.newf[0],
                 gSaveContext.save.info.playerData.newf[1], gSaveContext.save.info.playerData.newf[2],
                 gSaveContext.save.info.playerData.newf[3], gSaveContext.save.info.playerData.newf[4],
                 gSaveContext.save.info.playerData.newf[5]);
    osSyncPrintf("\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n");

    ptr = (u16*)&gSaveContext;
    j = 0;
    checksum = 0;

    for (offset = 0; offset < CHECKSUM_SIZE; offset++) {
        osSyncPrintf("%x ", *ptr);
        checksum += *ptr++;
        if (++j == 0x20u) {
            osSyncPrintf("\n");
            j = 0;
        }
    }

    gSaveContext.save.info.checksum = checksum;
    osSyncPrintf("\nチェックサム＝%x\n", gSaveContext.save.info.checksum); // Checksum = %x

    offset = gSramSlotOffsets[0][gSaveContext.fileNum];
    osSyncPrintf("I=%x no=%d\n", offset, gSaveContext.fileNum);
    MemCopy(sram->readBuff + offset, &gSaveContext, SAVE_SIZE);

    offset = gSramSlotOffsets[1][gSaveContext.fileNum];
    osSyncPrintf("I=%x no=%d\n", offset, gSaveContext.fileNum + 3);
    MemCopy(sram->readBuff + offset, &gSaveContext, SAVE_SIZE);

    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_WRITE);

    // SAVE end
    osSyncPrintf("ＳＡＶＥ終了\n");
    osSyncPrintf("z_common_data.file_no = %d\n", gSaveContext.fileNum);
    osSyncPrintf("SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  SAVE_64DD=%x\n", DEATHS, NAME, HEALTH_CAP, QUEST, N64DD);

    j = gSramSlotOffsets[0][gSaveContext.fileNum];
    MemCopy(&fileChoose->deaths[gSaveContext.fileNum], sram->readBuff + j + DEATHS, sizeof(fileChoose->deaths[0]));
    MemCopy(&fileChoose->fileNames[gSaveContext.fileNum], sram->readBuff + j + NAME, sizeof(fileChoose->fileNames[0]));
    MemCopy(&fileChoose->healthCapacities[gSaveContext.fileNum], sram->readBuff + j + HEALTH_CAP,
            sizeof(fileChoose->healthCapacities[0]));
    MemCopy(&fileChoose->questItems[gSaveContext.fileNum], sram->readBuff + j + QUEST,
            sizeof(fileChoose->questItems[0]));
    MemCopy(&fileChoose->n64ddFlags[gSaveContext.fileNum], sram->readBuff + j + N64DD,
            sizeof(fileChoose->n64ddFlags[0]));
    MemCopy(&fileChoose->heartStatus[gSaveContext.fileNum], sram->readBuff + j + DEFENSE,
            sizeof(fileChoose->heartStatus[0]));
    MemCopy(&fileChoose->nowLife[gSaveContext.fileNum], sram->readBuff + j + HEALTH, sizeof(fileChoose->nowLife[0]));

    osSyncPrintf("f_64dd[%d]=%d\n", gSaveContext.fileNum, fileChoose->n64ddFlags[gSaveContext.fileNum]);
    osSyncPrintf("heart_status[%d]=%d\n", gSaveContext.fileNum, fileChoose->heartStatus[gSaveContext.fileNum]);
    osSyncPrintf("now_life[%d]=%d\n", gSaveContext.fileNum, fileChoose->nowLife[gSaveContext.fileNum]);
}

void Sram_EraseSave(FileChooseContext* fileChoose, Sram* sram) {
    s32 offset;

    Sram_InitNewSave();

    offset = gSramSlotOffsets[0][fileChoose->selectedFileIdx];
    MemCopy(sram->readBuff + offset, &gSaveContext, SAVE_SIZE);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);

    MemCopy(&fileChoose->n64ddFlags[fileChoose->selectedFileIdx], sram->readBuff + offset + N64DD,
            sizeof(fileChoose->n64ddFlags[0]));

    offset = gSramSlotOffsets[1][fileChoose->selectedFileIdx];
    MemCopy(sram->readBuff + offset, &gSaveContext, SAVE_SIZE);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);

    osSyncPrintf("ＣＬＥＡＲ終了\n");
}

void Sram_CopySave(FileChooseContext* fileChoose, Sram* sram) {
    s32 offset;

    osSyncPrintf("ＲＥＡＤ=%d(%x)  ＣＯＰＹ=%d(%x)\n", fileChoose->selectedFileIdx,
                 gSramSlotOffsets[0][fileChoose->selectedFileIdx], fileChoose->copyDestFileIdx,
                 gSramSlotOffsets[0][fileChoose->copyDestFileIdx]);

    offset = gSramSlotOffsets[0][fileChoose->selectedFileIdx];
    MemCopy(&gSaveContext, sram->readBuff + offset, SAVE_SIZE);

    offset = gSramSlotOffsets[0][fileChoose->copyDestFileIdx];
    MemCopy(sram->readBuff + offset, &gSaveContext, SAVE_SIZE);

    offset = gSramSlotOffsets[1][fileChoose->copyDestFileIdx];
    MemCopy(sram->readBuff + offset, &gSaveContext, SAVE_SIZE);

    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_WRITE);

    offset = gSramSlotOffsets[0][fileChoose->copyDestFileIdx];

    MemCopy(&fileChoose->deaths[fileChoose->copyDestFileIdx], sram->readBuff + offset + DEATHS,
            sizeof(fileChoose->deaths[0]));
    MemCopy(&fileChoose->fileNames[fileChoose->copyDestFileIdx], sram->readBuff + offset + NAME,
            sizeof(fileChoose->fileNames[0]));
    MemCopy(&fileChoose->healthCapacities[fileChoose->copyDestFileIdx], sram->readBuff + offset + HEALTH_CAP,
            sizeof(fileChoose->healthCapacities[0]));
    MemCopy(&fileChoose->questItems[fileChoose->copyDestFileIdx], sram->readBuff + offset + QUEST,
            sizeof(fileChoose->questItems[0]));
    MemCopy(&fileChoose->n64ddFlags[fileChoose->copyDestFileIdx], sram->readBuff + offset + N64DD,
            sizeof(fileChoose->n64ddFlags[0]));
    MemCopy(&fileChoose->heartStatus[fileChoose->copyDestFileIdx], sram->readBuff + offset + DEFENSE,
            sizeof(fileChoose->heartStatus[0]));
    MemCopy(&fileChoose->nowLife[fileChoose->copyDestFileIdx],
            (sram->readBuff + offset) + OFFSETOF(SaveContext, save.info.playerData.health),
            sizeof(fileChoose->nowLife[0]));

    osSyncPrintf("f_64dd[%d]=%d\n", gSaveContext.fileNum, fileChoose->n64ddFlags[gSaveContext.fileNum]);
    osSyncPrintf("heart_status[%d]=%d\n", gSaveContext.fileNum, fileChoose->heartStatus[gSaveContext.fileNum]);
    osSyncPrintf("ＣＯＰＹ終了\n"); // Copy end
}

void Sram_Write16Bytes(Sram* sram) {
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, 0x10, OS_WRITE);
}

void Sram_InitSram(GameState* gameState, Sram* sram) {
    u16 i;

    osSyncPrintf("sram_initialize( Game *game, Sram *sram )\n");
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_READ);

    for (i = 0; i < ARRAY_COUNTU(sZeldaMagic) - 3; i++) {
        if (sZeldaMagic[i + 3] != sram->readBuff[i + 3]) {
            // SRAM destruction! ! ! ! ! !
            osSyncPrintf("ＳＲＡＭ破壊！！！！！！\n");
            gSaveContext.language = sram->readBuff[2];
            MemCopy(sram->readBuff, sZeldaMagic, sizeof(sZeldaMagic));
            sram->readBuff[2] = gSaveContext.language;
            Sram_Write16Bytes(sram);
        }
    }

    gSaveContext.audioSetting = sram->readBuff[0] & 3;
    gSaveContext.zTargetSetting = sram->readBuff[1] & 1;
    gSaveContext.language = sram->readBuff[2];

    if (gSaveContext.language > 2) {
        gSaveContext.language = 0;
        sram->readBuff[2] = gSaveContext.language;
        Sram_Write16Bytes(sram);
    }

    if (CHECK_BTN_ANY(gameState->input[2].cur.button, BTN_DRIGHT)) {
        bzero(sram->readBuff, SRAM_SIZE);
        for (i = 0; i < CHECKSUM_SIZE; i++) {
            sram->readBuff[i] = i;
        }
        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_WRITE);
        // SRAM destruction! ! ! ! ! !
        osSyncPrintf("ＳＲＡＭ破壊！！！！！！\n");
    }

    // GOOD! GOOD! Size =% d +% d =% d
    osSyncPrintf("ＧＯＯＤ！ＧＯＯＤ！ サイズ＝%d + %d ＝ %d\n", INFO_SIZE, 4, INFO_SIZE + 4);
    osSyncPrintf(VT_FGCOL(BLUE));
    osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
    osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
    osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
    osSyncPrintf(VT_RST);
    func_800F6700(gSaveContext.audioSetting);
}

void Sram_Alloc(GameState* gameState, Sram* sram) {
    sram->readBuff = GameState_Alloc(gameState, SRAM_SIZE, "../z_sram.c", 1294);

    if (!(sram->readBuff != NULL)) {
        __assert("sram->read_buff != NULL", "../z_sram.c", 1295);
    }
}

void Sram_Init(GlobalContext* globalCtx, Sram* sram) {
}
