#include "global.h"
#include "vt.h"

// these are the main substructs of save context.
// we are going to hold off on splitting save context until later on,
// so these temporary structs will live here for now.

typedef struct {
    /* 0x00 */ char newf[6]; // string "ZELDAZ"
    /* 0x06 */ s16 deaths;
    /* 0x08 */ char playerName[8];
    /* 0x10 */ s16 n64ddFlag;
    /* 0x12 */ s16 healthCapacity; // "max_life"
    /* 0x14 */ s16 health;         // "now_life"
    /* 0x16 */ s8 magicLevel;
    /* 0x17 */ s8 magic;
    /* 0x18 */ s16 rupees;
    /* 0x1A */ u16 swordHealth;
    /* 0x1C */ u16 naviTimer;
    /* 0x1E */ u8 isMagicAcquired;
    /* 0x1F */ u8 unk_1F;
    /* 0x20 */ u8 isDoubleMagicAcquired;
    /* 0x21 */ u8 doubleDefense;
    /* 0x22 */ u8 bgsFlag;
    /* 0x23 */ u8 ocarinaGameRoundNum;
    /* 0x24 */ ItemEquips childEquips;
    /* 0x2E */ ItemEquips adultEquips;
    /* 0x38 */ u32 unk_38; // this may be incorrect, currently used for alignement
    /* 0x3C */ char unk_3C[0x0E];
    /* 0x4A */ s16 savedSceneNum;
} SavePlayerData; // size = 0x4C

typedef struct {
    /* 0x0000 */ SavePlayerData playerData; // "S_Private" substruct name
    /* 0x004C */ ItemEquips equips;
    /* 0x0058 */ Inventory inventory;
    /* 0x00B8 */ SavedSceneFlags sceneFlags[124];
    /* 0x0E48 */ FaroresWindData fw;
    /* 0x0E70 */ char unk_E70[0x10];
    /* 0x0E80 */ s32 gsFlags[6];
    /* 0x0E98 */ char unk_E98[0x10];
    /* 0x0EA8 */ s32 horseRaceRecord;
    /* 0x0EAC */ char unk_EAC[0x0C];
    /* 0x0EB8 */ u16 eventChkInf[14]; // "event_chk_inf"
    /* 0x0ED4 */ u16 itemGetInf[4];   // "item_get_inf"
    /* 0x0EDC */ u16 infTable[30];    // "inf_table"
    /* 0x0F18 */ char unk_F18[0x04];
    /* 0x0F1C */ u32 worldMapAreaData; // "area_arrival"
    /* 0x0F20 */ char unk_F20[0x4];
    /* 0x0F24 */ u8 scarecrowLongSongSet;
    /* 0x0F25 */ u8 scarecrowLongSong[0x360];
    /* 0x1285 */ char unk_1285[0x24];
    /* 0x12A9 */ u8 scarecrowSpawnSongSet;
    /* 0x12AA */ u8 scarecrowSpawnSong[0x80];
    /* 0x132A */ char unk_132A[0x02];
    /* 0x132C */ HorseData horseData;
    /* 0x1336 */ u16 checksum; // "check_sum"
} SaveInfo;                    // size = 0x1338

typedef struct {
    /* 0x00 */ s32 entranceIndex;
    /* 0x04 */ s32 linkAge;
    /* 0x08 */ s32 cutsceneIndex;
    /* 0x0C */ u16 dayTime; // "zelda_time"
    /* 0x10 */ s32 nightFlag;
    /* 0x14 */ s32 totalDays;
    /* 0x18 */ s32 unk_18;    // increments with totalDays, gets reset by goron for bgs and one other use
    /* 0x1C */ SaveInfo info; // "information"
} Save;                       // size = 0x1354

#define SAVE_PLAYER_DATA (*((SavePlayerData*)&gSaveContext.newf))
#define SAVE_INFO (*((SaveInfo*)&gSaveContext.newf))

#define SLOT_SIZE (sizeof(SaveContext) + 0x28)
#define CHECKSUM_SIZE (sizeof(Save) / 2)

#define DEATHS offsetof(SaveContext, deaths)
#define NAME offsetof(SaveContext, playerName)
#define N64DD offsetof(SaveContext, n64ddFlag)
#define HEALTH_CAP offsetof(SaveContext, healthCapacity)
#define QUEST offsetof(SaveContext, inventory.questItems)
#define DEFENSE offsetof(SaveContext, inventory.defenseHearts)
#define HEALTH offsetof(SaveContext, health)

#define SLOT_OFFSET(index) (SRAM_HEADER_SIZE + 0x10 + (index * SLOT_SIZE))

u16 gSramSlotOffsets[] = {
    SLOT_OFFSET(0),
    SLOT_OFFSET(1),
    SLOT_OFFSET(2),
    // the latter three saves are backup saves for the former saves
    SLOT_OFFSET(3),
    SLOT_OFFSET(4),
    SLOT_OFFSET(5),
};

static char sZeldaMagic[] = { '\0', '\0', '\0', '\x98', '\x09', '\x10', '\x21', 'Z', 'E', 'L', 'D', 'A' };

static SavePlayerData sNewSavePlayerData = {
    { '\0', '\0', '\0', '\0', '\0', '\0' },             // newf
    0,                                                  // deaths
    { 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E }, // playerName
    0,                                                  // n64ddFlag
    0x30,                                               // healthCapacity
    0x30,                                               // defense
    0,                                                  // magicLevel
    MAGIC_NORMAL_METER,                                 // magic
    0,                                                  // rupees
    0,                                                  // swordHealth
    0,                                                  // naviTimer
    false,                                              // isMagicAcquired
    0,                                                  // unk_1F
    false,                                              // isDoubleMagicAcquired
    0,                                                  // doubleDefense
    0,                                                  // bgsFlag
    0,                                                  // ocarinaGameRoundNum
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

static ItemEquips sNewSaveEquips = {
    { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE }, // buttonItems
    { SLOT_NONE, SLOT_NONE, SLOT_NONE },            // cButtonSlots
    0x1100,                                         // equipment
};

static Inventory sNewSaveInventory = {
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
      0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }, // items
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },                         // ammo
    // equipment
    (((1 << EQUIP_INV_TUNIC_KOKIRI) << (EQUIP_TYPE_TUNIC * 4)) |
     ((1 << EQUIP_INV_BOOTS_KOKIRI) << (EQUIP_TYPE_BOOTS * 4))),
    0,                                                              // upgrades
    0,                                                              // questItems
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, // dungeonItems
    {
        0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
        0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    }, // dungeonKeys
    0, // defenseHearts
    0, // gsTokens
};

static u16 sNewSaveChecksum = 0;

/**
 *  Initialize new save.
 *  This save has an empty inventory with 3 hearts and single magic.
 */
void Sram_InitNewSave(void) {
    SaveContext* temp = &gSaveContext;

    bzero(&SAVE_INFO, sizeof(SaveInfo));
    gSaveContext.totalDays = 0;
    gSaveContext.bgsDayCount = 0;

    SAVE_PLAYER_DATA = sNewSavePlayerData;
    gSaveContext.equips = sNewSaveEquips;
    gSaveContext.inventory = sNewSaveInventory;

    temp->checksum = sNewSaveChecksum;
    gSaveContext.horseData.scene = SCENE_SPOT00;
    gSaveContext.horseData.pos.x = -1840;
    gSaveContext.horseData.pos.y = 72;
    gSaveContext.horseData.pos.z = 5497;
    gSaveContext.horseData.angle = -0x6AD9;
    gSaveContext.magicLevel = 0;
    gSaveContext.infTable[INFTABLE_1DX_INDEX] = 1;
    gSaveContext.sceneFlags[5].swch = 0x40000000;
}

static SavePlayerData sDebugSavePlayerData = {
    { 'Z', 'E', 'L', 'D', 'A', 'Z' },                   // newf
    0,                                                  // deaths
    { 0x15, 0x12, 0x17, 0x14, 0x3E, 0x3E, 0x3E, 0x3E }, // playerName ( "LINK" )
    0,                                                  // n64ddFlag
    0xE0,                                               // healthCapacity
    0xE0,                                               // health
    0,                                                  // magicLevel
    MAGIC_NORMAL_METER,                                 // magic
    150,                                                // rupees
    8,                                                  // swordHealth
    0,                                                  // naviTimer
    true,                                               // isMagicAcquired
    0,                                                  // unk_1F
    false,                                              // isDoubleMagicAcquired
    0,                                                  // doubleDefense
    0,                                                  // bgsFlag
    0,                                                  // ocarinaGameRoundNum
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

static ItemEquips sDebugSaveEquips = {
    { ITEM_SWORD_MASTER, ITEM_BOW, ITEM_BOMB, ITEM_OCARINA_FAIRY }, // buttonItems
    { SLOT_BOW, SLOT_BOMB, SLOT_OCARINA },                          // cButtonSlots
    // equipment
    (EQUIP_VALUE_SWORD_MASTER << (EQUIP_TYPE_SWORD * 4)) | (EQUIP_VALUE_SHIELD_HYLIAN << (EQUIP_TYPE_SHIELD * 4)) |
        (EQUIP_VALUE_TUNIC_KOKIRI << (EQUIP_TYPE_TUNIC * 4)) | (EQUIP_VALUE_BOOTS_KOKIRI << (EQUIP_TYPE_BOOTS * 4)),
};

static Inventory sDebugSaveInventory = {
    {
        ITEM_STICK,     ITEM_NUT,           ITEM_BOMB,         ITEM_BOW,         ITEM_ARROW_FIRE,  ITEM_DINS_FIRE,
        ITEM_SLINGSHOT, ITEM_OCARINA_FAIRY, ITEM_BOMBCHU,      ITEM_HOOKSHOT,    ITEM_ARROW_ICE,   ITEM_FARORES_WIND,
        ITEM_BOOMERANG, ITEM_LENS,          ITEM_BEAN,         ITEM_HAMMER,      ITEM_ARROW_LIGHT, ITEM_NAYRUS_LOVE,
        ITEM_BOTTLE,    ITEM_POTION_RED,    ITEM_POTION_GREEN, ITEM_POTION_BLUE, ITEM_POCKET_EGG,  ITEM_WEIRD_EGG,
    },                                                        // items
    { 50, 50, 10, 30, 1, 1, 30, 1, 50, 1, 1, 1, 1, 1, 1, 1 }, // ammo
    // equipment
    ((((1 << EQUIP_INV_SWORD_KOKIRI) << (EQUIP_TYPE_SWORD * 4)) |
      ((1 << EQUIP_INV_SWORD_MASTER) << (EQUIP_TYPE_SWORD * 4)) |
      ((1 << EQUIP_INV_SWORD_BGS) << (EQUIP_TYPE_SWORD * 4))) |
     (((1 << EQUIP_INV_SHIELD_DEKU) << (EQUIP_TYPE_SHIELD * 4)) |
      ((1 << EQUIP_INV_SHIELD_HYLIAN) << (EQUIP_TYPE_SHIELD * 4)) |
      ((1 << EQUIP_INV_SHIELD_MIRROR) << (EQUIP_TYPE_SHIELD * 4))) |
     (((1 << EQUIP_INV_TUNIC_KOKIRI) << (EQUIP_TYPE_TUNIC * 4)) |
      ((1 << EQUIP_INV_TUNIC_GORON) << (EQUIP_TYPE_TUNIC * 4)) |
      ((1 << EQUIP_INV_TUNIC_ZORA) << (EQUIP_TYPE_TUNIC * 4))) |
     (((1 << EQUIP_INV_BOOTS_KOKIRI) << (EQUIP_TYPE_BOOTS * 4)) |
      ((1 << EQUIP_INV_BOOTS_IRON) << (EQUIP_TYPE_BOOTS * 4)) |
      ((1 << EQUIP_INV_BOOTS_HOVER) << (EQUIP_TYPE_BOOTS * 4)))),
    0x125249,                                                       // upgrades
    0x1E3FFFF,                                                      // questItems
    { 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, // dungeonItems
    { 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 },    // dungeonKeys
    0,                                                              // defenseHearts
    0,                                                              // gsTokens
};

static u16 sDebugSaveChecksum = 0;

/**
 *  Initialize debug save. This is also used on the Title Screen
 *  This save has a mostly full inventory with 10 hearts and single magic.
 *
 *  Some noteable flags that are set:
 *  Showed Mido sword/shield, met Deku Tree, Deku Tree mouth opened,
 *  used blue warp in Gohmas room, Zelda fled castle, light arrow cutscene watched,
 *  and set water level in Water Temple to lowest level.
 */
void Sram_InitDebugSave(void) {
    SaveContext* temp = &gSaveContext;

    bzero(&SAVE_INFO, sizeof(SaveInfo));
    gSaveContext.totalDays = 0;
    gSaveContext.bgsDayCount = 0;

    SAVE_PLAYER_DATA = sDebugSavePlayerData;
    gSaveContext.equips = sDebugSaveEquips;
    gSaveContext.inventory = sDebugSaveInventory;

    temp->checksum = sDebugSaveChecksum;
    gSaveContext.horseData.scene = SCENE_SPOT00;
    gSaveContext.horseData.pos.x = -1840;
    gSaveContext.horseData.pos.y = 72;
    gSaveContext.horseData.pos.z = 5497;
    gSaveContext.horseData.angle = -0x6AD9;
    gSaveContext.infTable[0] |= 0x5009;
    gSaveContext.eventChkInf[0] |= 0x123F;
    SET_EVENTCHKINF(EVENTCHKINF_80);
    SET_EVENTCHKINF(EVENTCHKINF_C4);

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        gSaveContext.equips.buttonItems[0] = ITEM_SWORD_KOKIRI;
        Inventory_ChangeEquipment(EQUIP_TYPE_SWORD, EQUIP_VALUE_SWORD_KOKIRI);
        if (gSaveContext.fileNum == 0xFF) {
            gSaveContext.equips.buttonItems[1] = ITEM_SLINGSHOT;
            gSaveContext.equips.cButtonSlots[0] = SLOT_SLINGSHOT;
            Inventory_ChangeEquipment(EQUIP_TYPE_SHIELD, EQUIP_VALUE_SHIELD_DEKU);
        }
    }

    gSaveContext.entranceIndex = ENTR_SPOT00_0;
    gSaveContext.magicLevel = 0;
    gSaveContext.sceneFlags[5].swch = 0x40000000;
}

static s16 sDungeonEntrances[] = {
    ENTR_YDAN_0,      ENTR_DDAN_0,      ENTR_BDAN_0,         ENTR_BMORI1_0,           ENTR_HIDAN_0, ENTR_MIZUSIN_0,
    ENTR_JYASINZOU_0, ENTR_HAKADAN_0,   ENTR_HAKADANCH_0,    ENTR_ICE_DOUKUTO_0,      ENTR_GANON_0, ENTR_MEN_0,
    ENTR_GERUDOWAY_0, ENTR_GANONTIKA_0, ENTR_GANON_SONOGO_0, ENTR_GANONTIKA_SONOGO_0,
};

/**
 *  Copy save currently on the buffer to Save Context and complete various tasks to open the save.
 *  This includes:
 *  - Set proper entrance depending on where the game was saved
 *  - If health is less than 3 hearts, give 3 hearts
 *  - If either scarecrow song is set, copy them from save context to the proper location
 *  - Handle a case where the player saved and quit after zelda cutscene but didnt get the song
 *  - Give and equip master sword if player is adult and doesnt have kokiri sword (bug?)
 *  - Revert any trade items that spoil
 */
void Sram_OpenSave(SramContext* sramCtx) {
    u16 i;
    u16 j;
    u8* ptr;

    osSyncPrintf("個人Ｆｉｌｅ作成\n"); // "Create personal file"
    i = gSramSlotOffsets[gSaveContext.fileNum];
    osSyncPrintf("ぽいんと＝%x(%d)\n", i, gSaveContext.fileNum); // "Point="

    MemCpy(&gSaveContext, sramCtx->readBuff + i, sizeof(Save));

    osSyncPrintf(VT_FGCOL(YELLOW));
    osSyncPrintf("SCENE_DATA_ID = %d   SceneNo = %d\n", gSaveContext.savedSceneNum,
                 ((void)0, gSaveContext.entranceIndex));

    switch (gSaveContext.savedSceneNum) {
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
            gSaveContext.entranceIndex = sDungeonEntrances[gSaveContext.savedSceneNum];
            break;

        case SCENE_YDAN_BOSS:
            gSaveContext.entranceIndex = ENTR_YDAN_0;
            break;

        case SCENE_DDAN_BOSS:
            gSaveContext.entranceIndex = ENTR_DDAN_0;
            break;

        case SCENE_BDAN_BOSS:
            gSaveContext.entranceIndex = ENTR_BDAN_0;
            break;

        case SCENE_MORIBOSSROOM:
            gSaveContext.entranceIndex = ENTR_BMORI1_0;
            break;

        case SCENE_FIRE_BS:
            gSaveContext.entranceIndex = ENTR_HIDAN_0;
            break;

        case SCENE_MIZUSIN_BS:
            gSaveContext.entranceIndex = ENTR_MIZUSIN_0;
            break;

        case SCENE_JYASINBOSS:
            gSaveContext.entranceIndex = ENTR_JYASINZOU_0;
            break;

        case SCENE_HAKADAN_BS:
            gSaveContext.entranceIndex = ENTR_HAKADAN_0;
            break;

        case SCENE_GANON_SONOGO:
        case SCENE_GANONTIKA_SONOGO:
        case SCENE_GANON_BOSS:
        case SCENE_GANON_FINAL:
        case SCENE_GANON_DEMO:
            gSaveContext.entranceIndex = ENTR_GANON_0;
            break;

        default:
            if (gSaveContext.savedSceneNum != SCENE_LINK_HOME) {
                gSaveContext.entranceIndex = (LINK_AGE_IN_YEARS == YEARS_CHILD) ? ENTR_LINK_HOME_0 : ENTR_TOKINOMA_7;
            } else {
                gSaveContext.entranceIndex = ENTR_LINK_HOME_0;
            }
            break;
    }

    osSyncPrintf("scene_no = %d\n", gSaveContext.entranceIndex);
    osSyncPrintf(VT_RST);

    if (gSaveContext.health < 0x30) {
        gSaveContext.health = 0x30;
    }

    if (gSaveContext.scarecrowLongSongSet) {
        osSyncPrintf(VT_FGCOL(BLUE));
        osSyncPrintf("\n====================================================================\n");

        MemCpy(gScarecrowLongSongPtr, gSaveContext.scarecrowLongSong, sizeof(gSaveContext.scarecrowLongSong));

        ptr = (u8*)gScarecrowLongSongPtr;
        for (i = 0; i < ARRAY_COUNT(gSaveContext.scarecrowLongSong); i++, ptr++) {
            osSyncPrintf("%d, ", *ptr);
        }

        osSyncPrintf("\n====================================================================\n");
        osSyncPrintf(VT_RST);
    }

    if (gSaveContext.scarecrowSpawnSongSet) {
        osSyncPrintf(VT_FGCOL(GREEN));
        osSyncPrintf("\n====================================================================\n");

        MemCpy(gScarecrowSpawnSongPtr, gSaveContext.scarecrowSpawnSong, sizeof(gSaveContext.scarecrowSpawnSong));

        ptr = gScarecrowSpawnSongPtr;
        for (i = 0; i < ARRAY_COUNT(gSaveContext.scarecrowSpawnSong); i++, ptr++) {
            osSyncPrintf("%d, ", *ptr);
        }

        osSyncPrintf("\n====================================================================\n");
        osSyncPrintf(VT_RST);
    }

    // if zelda cutscene has been watched but lullaby was not obtained, restore cutscene and take away letter
    if (GET_EVENTCHKINF(EVENTCHKINF_40) && !CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
        i = gSaveContext.eventChkInf[EVENTCHKINF_40_INDEX] & ~EVENTCHKINF_40_MASK;
        gSaveContext.eventChkInf[EVENTCHKINF_40_INDEX] = i;

        INV_CONTENT(ITEM_LETTER_ZELDA) = ITEM_CHICKEN;

        for (j = 1; j < 4; j++) {
            if (gSaveContext.equips.buttonItems[j] == ITEM_LETTER_ZELDA) {
                gSaveContext.equips.buttonItems[j] = ITEM_CHICKEN;
            }
        }
    }

    if (LINK_AGE_IN_YEARS == YEARS_ADULT && !CHECK_OWNED_EQUIP(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_MASTER)) {
        gSaveContext.inventory.equipment |= OWNED_EQUIP_FLAG(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_MASTER);
        gSaveContext.equips.buttonItems[0] = ITEM_SWORD_MASTER;
        gSaveContext.equips.equipment &= ~(0xF << (EQUIP_TYPE_SWORD * 4));
        gSaveContext.equips.equipment |= EQUIP_VALUE_SWORD_MASTER << (EQUIP_TYPE_SWORD * 4);
    }

    for (i = 0; i < ARRAY_COUNT(gSpoilingItems); i++) {
        if (INV_CONTENT(ITEM_TRADE_ADULT) == gSpoilingItems[i]) {
            INV_CONTENT(gSpoilingItemReverts[i]) = gSpoilingItemReverts[i];

            for (j = 1; j < 4; j++) {
                if (gSaveContext.equips.buttonItems[j] == gSpoilingItems[i]) {
                    gSaveContext.equips.buttonItems[j] = gSpoilingItemReverts[i];
                }
            }
        }
    }

    gSaveContext.magicLevel = 0;
}

/**
 *  Write the contents of the Save Context to a main and backup slot in SRAM.
 *  Note: The whole Save Context is written even though only the `save` substruct is read back later
 */
void Sram_WriteSave(SramContext* sramCtx) {
    u16 offset;
    u16 checksum;
    u16 j;
    u16* ptr;

    gSaveContext.checksum = 0;

    ptr = (u16*)&gSaveContext;
    checksum = 0;
    j = 0;

    for (offset = 0; offset < CHECKSUM_SIZE; offset++) {
        if (++j == 0x20) {
            j = 0;
        }
        checksum += *ptr++;
    }

    gSaveContext.checksum = checksum;

    ptr = (u16*)&gSaveContext;
    checksum = 0;

    for (offset = 0; offset < CHECKSUM_SIZE; offset++) {
        if (++j == 0x20) {
            j = 0;
        }
        checksum += *ptr++;
    }

    offset = gSramSlotOffsets[gSaveContext.fileNum];
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);

    ptr = (u16*)&gSaveContext;
    checksum = 0;

    for (offset = 0; offset < CHECKSUM_SIZE; offset++) {
        if (++j == 0x20) {
            j = 0;
        }
        checksum += *ptr++;
    }

    offset = gSramSlotOffsets[gSaveContext.fileNum + 3];
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);
}

/**
 *  For all 3 slots, verify that the checksum is correct. If corrupted, attempt to load a backup save.
 *  If backup is also corrupted, default to a new save (or debug save for slot 0 on debug rom).
 *
 *  After verifying all 3 saves, pass relevant data to File Select to be displayed.
 */
void Sram_VerifyAndLoadAllSaves(FileSelectState* fileSelect, SramContext* sramCtx) {
    u16 i;
    u16 newChecksum;
    u16 slotNum;
    u16 offset;
    u16 j;
    u16 oldChecksum;
    u16* ptr;
    u16 dayTime;

    osSyncPrintf("ＳＲＡＭ ＳＴＡＲＴ─ＬＯＡＤ\n");
    bzero(sramCtx->readBuff, SRAM_SIZE);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);

    dayTime = ((void)0, gSaveContext.dayTime);

    for (slotNum = 0; slotNum < 3; slotNum++) {
        offset = gSramSlotOffsets[slotNum];
        osSyncPrintf("ぽいんと＝%x(%d)    SAVE_MAX=%d\n", offset, gSaveContext.fileNum, sizeof(Save));
        MemCpy(&gSaveContext, sramCtx->readBuff + offset, sizeof(Save));

        oldChecksum = gSaveContext.checksum;
        gSaveContext.checksum = 0;
        ptr = (u16*)&gSaveContext;
        osSyncPrintf("\n＝＝＝＝＝＝＝＝＝＝＝＝＝  Ｓ（%d） ＝＝＝＝＝＝＝＝＝＝＝＝＝\n", slotNum);

        for (i = newChecksum = j = 0; i < CHECKSUM_SIZE; i++, offset += 2) {
            newChecksum += *ptr++;
        }

        // "SAVE checksum calculation"
        osSyncPrintf("\nＳＡＶＥチェックサム計算  j=%x  mmm=%x  ", newChecksum, oldChecksum);

        if (newChecksum != oldChecksum) {
            // checksum didnt match, try backup save
            osSyncPrintf("ＥＲＲＯＲ！！！ ＝ %x(%d)\n", gSramSlotOffsets[slotNum], slotNum);
            offset = gSramSlotOffsets[slotNum + 3];
            MemCpy(&gSaveContext, sramCtx->readBuff + offset, sizeof(Save));

            oldChecksum = gSaveContext.checksum;
            gSaveContext.checksum = 0;
            ptr = (u16*)&gSaveContext;
            osSyncPrintf("================= ＢＡＣＫ─ＵＰ ========================\n");

            for (i = newChecksum = j = 0; i < CHECKSUM_SIZE; i++, offset += 2) {
                newChecksum += *ptr++;
            }
            // "(B) SAVE checksum calculation"
            osSyncPrintf("\n（Ｂ）ＳＡＶＥチェックサム計算  j=%x  mmm=%x  ", newChecksum, oldChecksum);

            if (newChecksum != oldChecksum) {
                // backup save didnt work, make new save
                osSyncPrintf("ＥＲＲＯＲ！！！ ＝ %x(%d+3)\n", gSramSlotOffsets[slotNum + 3], slotNum);
                bzero(&gSaveContext.entranceIndex, sizeof(s32));
                bzero(&gSaveContext.linkAge, sizeof(s32));
                bzero(&gSaveContext.cutsceneIndex, sizeof(s32));
                // note that gSaveContext.dayTime is not actually the sizeof(s32)
                bzero(&gSaveContext.dayTime, sizeof(s32));
                bzero(&gSaveContext.nightFlag, sizeof(s32));
                bzero(&gSaveContext.totalDays, sizeof(s32));
                bzero(&gSaveContext.bgsDayCount, sizeof(s32));

                if (!slotNum) {
                    Sram_InitDebugSave();
                    gSaveContext.newf[0] = 'Z';
                    gSaveContext.newf[1] = 'E';
                    gSaveContext.newf[2] = 'L';
                    gSaveContext.newf[3] = 'D';
                    gSaveContext.newf[4] = 'A';
                    gSaveContext.newf[5] = 'Z';
                    osSyncPrintf("newf=%x,%x,%x,%x,%x,%x\n", gSaveContext.newf[0], gSaveContext.newf[1],
                                 gSaveContext.newf[2], gSaveContext.newf[3], gSaveContext.newf[4],
                                 gSaveContext.newf[5]);
                } else {
                    Sram_InitNewSave();
                }

                ptr = (u16*)&gSaveContext;
                osSyncPrintf("\n--------------------------------------------------------------\n");

                for (i = newChecksum = j = 0; i < CHECKSUM_SIZE; i++) {
                    osSyncPrintf("%x ", *ptr);
                    if (++j == 0x20) {
                        osSyncPrintf("\n");
                        j = 0;
                    }
                    newChecksum += *ptr++;
                }

                gSaveContext.checksum = newChecksum;
                osSyncPrintf("\nCheck_Sum=%x(%x)\n", gSaveContext.checksum, newChecksum);

                i = gSramSlotOffsets[slotNum + 3];
                SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + i, &gSaveContext, SLOT_SIZE, OS_WRITE);

                osSyncPrintf("????#%x,%x,%x,%x,%x,%x\n", gSaveContext.newf[0], gSaveContext.newf[1],
                             gSaveContext.newf[2], gSaveContext.newf[3], gSaveContext.newf[4], gSaveContext.newf[5]);
                osSyncPrintf("\nぽいんと＝%x(%d+3)  check_sum=%x(%x)\n", i, slotNum, gSaveContext.checksum,
                             newChecksum);
            }

            i = gSramSlotOffsets[slotNum];
            SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + i, &gSaveContext, SLOT_SIZE, OS_WRITE);

            osSyncPrintf("ぽいんと＝%x(%d)  check_sum=%x(%x)\n", i, slotNum, gSaveContext.checksum, newChecksum);
        } else {
            osSyncPrintf("\nＳＡＶＥデータ ＯＫ！！！！\n"); // "SAVE data OK! ! ! !"
        }
    }

    bzero(sramCtx->readBuff, SRAM_SIZE);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
    gSaveContext.dayTime = dayTime;

    osSyncPrintf("SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  64DD=%x,  HEART=%x\n", DEATHS, NAME, HEALTH_CAP, QUEST, N64DD,
                 DEFENSE);

    MemCpy(&fileSelect->deaths[0], sramCtx->readBuff + SLOT_OFFSET(0) + DEATHS, sizeof(fileSelect->deaths[0]));
    MemCpy(&fileSelect->deaths[1], sramCtx->readBuff + SLOT_OFFSET(1) + DEATHS, sizeof(fileSelect->deaths[0]));
    MemCpy(&fileSelect->deaths[2], sramCtx->readBuff + SLOT_OFFSET(2) + DEATHS, sizeof(fileSelect->deaths[0]));

    MemCpy(&fileSelect->fileNames[0], sramCtx->readBuff + SLOT_OFFSET(0) + NAME, sizeof(fileSelect->fileNames[0]));
    MemCpy(&fileSelect->fileNames[1], sramCtx->readBuff + SLOT_OFFSET(1) + NAME, sizeof(fileSelect->fileNames[0]));
    MemCpy(&fileSelect->fileNames[2], sramCtx->readBuff + SLOT_OFFSET(2) + NAME, sizeof(fileSelect->fileNames[0]));

    MemCpy(&fileSelect->healthCapacities[0], sramCtx->readBuff + SLOT_OFFSET(0) + HEALTH_CAP,
           sizeof(fileSelect->healthCapacities[0]));
    MemCpy(&fileSelect->healthCapacities[1], sramCtx->readBuff + SLOT_OFFSET(1) + HEALTH_CAP,
           sizeof(fileSelect->healthCapacities[0]));
    MemCpy(&fileSelect->healthCapacities[2], sramCtx->readBuff + SLOT_OFFSET(2) + HEALTH_CAP,
           sizeof(fileSelect->healthCapacities[0]));

    MemCpy(&fileSelect->questItems[0], sramCtx->readBuff + SLOT_OFFSET(0) + QUEST, sizeof(fileSelect->questItems[0]));
    MemCpy(&fileSelect->questItems[1], sramCtx->readBuff + SLOT_OFFSET(1) + QUEST, sizeof(fileSelect->questItems[0]));
    MemCpy(&fileSelect->questItems[2], sramCtx->readBuff + SLOT_OFFSET(2) + QUEST, sizeof(fileSelect->questItems[0]));

    MemCpy(&fileSelect->n64ddFlags[0], sramCtx->readBuff + SLOT_OFFSET(0) + N64DD, sizeof(fileSelect->n64ddFlags[0]));
    MemCpy(&fileSelect->n64ddFlags[1], sramCtx->readBuff + SLOT_OFFSET(1) + N64DD, sizeof(fileSelect->n64ddFlags[0]));
    MemCpy(&fileSelect->n64ddFlags[2], sramCtx->readBuff + SLOT_OFFSET(2) + N64DD, sizeof(fileSelect->n64ddFlags[0]));

    MemCpy(&fileSelect->defense[0], sramCtx->readBuff + SLOT_OFFSET(0) + DEFENSE, sizeof(fileSelect->defense[0]));
    MemCpy(&fileSelect->defense[1], sramCtx->readBuff + SLOT_OFFSET(1) + DEFENSE, sizeof(fileSelect->defense[0]));
    MemCpy(&fileSelect->defense[2], sramCtx->readBuff + SLOT_OFFSET(2) + DEFENSE, sizeof(fileSelect->defense[0]));

    MemCpy(&fileSelect->health[0], sramCtx->readBuff + SLOT_OFFSET(0) + HEALTH, sizeof(fileSelect->health[0]));
    MemCpy(&fileSelect->health[1], sramCtx->readBuff + SLOT_OFFSET(1) + HEALTH, sizeof(fileSelect->health[0]));
    MemCpy(&fileSelect->health[2], sramCtx->readBuff + SLOT_OFFSET(2) + HEALTH, sizeof(fileSelect->health[0]));

    osSyncPrintf("f_64dd=%d, %d, %d\n", fileSelect->n64ddFlags[0], fileSelect->n64ddFlags[1],
                 fileSelect->n64ddFlags[2]);
    osSyncPrintf("heart_status=%d, %d, %d\n", fileSelect->defense[0], fileSelect->defense[1], fileSelect->defense[2]);
    osSyncPrintf("now_life=%d, %d, %d\n", fileSelect->health[0], fileSelect->health[1], fileSelect->health[2]);
}

void Sram_InitSave(FileSelectState* fileSelect, SramContext* sramCtx) {
    u16 offset;
    u16 j;
    u16* ptr;
    u16 checksum;

    if (fileSelect->buttonIndex != 0) {
        Sram_InitNewSave();
    } else {
        Sram_InitDebugSave();
    }

    gSaveContext.entranceIndex = ENTR_LINK_HOME_0;
    gSaveContext.linkAge = LINK_AGE_CHILD;
    gSaveContext.dayTime = CLOCK_TIME(10, 0);
    gSaveContext.cutsceneIndex = 0xFFF1;

    if (fileSelect->buttonIndex == 0) {
        gSaveContext.cutsceneIndex = 0;
    }

    for (offset = 0; offset < 8; offset++) {
        gSaveContext.playerName[offset] = fileSelect->fileNames[fileSelect->buttonIndex][offset];
    }

    gSaveContext.newf[0] = 'Z';
    gSaveContext.newf[1] = 'E';
    gSaveContext.newf[2] = 'L';
    gSaveContext.newf[3] = 'D';
    gSaveContext.newf[4] = 'A';
    gSaveContext.newf[5] = 'Z';

    gSaveContext.n64ddFlag = fileSelect->n64ddFlag;
    osSyncPrintf("６４ＤＤフラグ=%d\n", fileSelect->n64ddFlag);
    osSyncPrintf("newf=%x,%x,%x,%x,%x,%x\n", gSaveContext.newf[0], gSaveContext.newf[1], gSaveContext.newf[2],
                 gSaveContext.newf[3], gSaveContext.newf[4], gSaveContext.newf[5]);
    osSyncPrintf("\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n");

    ptr = (u16*)&gSaveContext;
    j = 0;
    checksum = 0;

    for (offset = 0; offset < CHECKSUM_SIZE; offset++) {
        osSyncPrintf("%x ", *ptr);
        checksum += *ptr++;
        if (++j == 0x20) {
            osSyncPrintf("\n");
            j = 0;
        }
    }

    gSaveContext.checksum = checksum;
    osSyncPrintf("\nチェックサム＝%x\n", gSaveContext.checksum); // "Checksum = %x"

    offset = gSramSlotOffsets[gSaveContext.fileNum];
    osSyncPrintf("I=%x no=%d\n", offset, gSaveContext.fileNum);
    MemCpy(sramCtx->readBuff + offset, &gSaveContext, sizeof(Save));

    offset = gSramSlotOffsets[gSaveContext.fileNum + 3];
    osSyncPrintf("I=%x no=%d\n", offset, gSaveContext.fileNum + 3);
    MemCpy(sramCtx->readBuff + offset, &gSaveContext, sizeof(Save));

    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_WRITE);

    osSyncPrintf("ＳＡＶＥ終了\n"); // "SAVE end"
    osSyncPrintf("z_common_data.file_no = %d\n", gSaveContext.fileNum);
    osSyncPrintf("SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  SAVE_64DD=%x\n", DEATHS, NAME, HEALTH_CAP, QUEST, N64DD);

    j = gSramSlotOffsets[gSaveContext.fileNum];

    MemCpy(&fileSelect->deaths[gSaveContext.fileNum], sramCtx->readBuff + j + DEATHS, sizeof(fileSelect->deaths[0]));
    MemCpy(&fileSelect->fileNames[gSaveContext.fileNum], sramCtx->readBuff + j + NAME,
           sizeof(fileSelect->fileNames[0]));
    MemCpy(&fileSelect->healthCapacities[gSaveContext.fileNum], sramCtx->readBuff + j + HEALTH_CAP,
           sizeof(fileSelect->healthCapacities[0]));
    MemCpy(&fileSelect->questItems[gSaveContext.fileNum], sramCtx->readBuff + j + QUEST,
           sizeof(fileSelect->questItems[0]));
    MemCpy(&fileSelect->n64ddFlags[gSaveContext.fileNum], sramCtx->readBuff + j + N64DD,
           sizeof(fileSelect->n64ddFlags[0]));
    MemCpy(&fileSelect->defense[gSaveContext.fileNum], sramCtx->readBuff + j + DEFENSE, sizeof(fileSelect->defense[0]));
    MemCpy(&fileSelect->health[gSaveContext.fileNum], sramCtx->readBuff + j + HEALTH, sizeof(fileSelect->health[0]));

    osSyncPrintf("f_64dd[%d]=%d\n", gSaveContext.fileNum, fileSelect->n64ddFlags[gSaveContext.fileNum]);
    osSyncPrintf("heart_status[%d]=%d\n", gSaveContext.fileNum, fileSelect->defense[gSaveContext.fileNum]);
    osSyncPrintf("now_life[%d]=%d\n", gSaveContext.fileNum, fileSelect->health[gSaveContext.fileNum]);
}

void Sram_EraseSave(FileSelectState* fileSelect, SramContext* sramCtx) {
    s32 offset;

    Sram_InitNewSave();

    offset = gSramSlotOffsets[fileSelect->selectedFileIndex];
    MemCpy(sramCtx->readBuff + offset, &gSaveContext, sizeof(Save));
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);

    MemCpy(&fileSelect->n64ddFlags[fileSelect->selectedFileIndex], sramCtx->readBuff + offset + N64DD,
           sizeof(fileSelect->n64ddFlags[0]));

    offset = gSramSlotOffsets[fileSelect->selectedFileIndex + 3];
    MemCpy(sramCtx->readBuff + offset, &gSaveContext, sizeof(Save));
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + offset, &gSaveContext, SLOT_SIZE, OS_WRITE);

    osSyncPrintf("ＣＬＥＡＲ終了\n");
}

void Sram_CopySave(FileSelectState* fileSelect, SramContext* sramCtx) {
    s32 offset;

    osSyncPrintf("ＲＥＡＤ=%d(%x)  ＣＯＰＹ=%d(%x)\n", fileSelect->selectedFileIndex,
                 gSramSlotOffsets[fileSelect->selectedFileIndex], fileSelect->copyDestFileIndex,
                 gSramSlotOffsets[fileSelect->copyDestFileIndex]);

    offset = gSramSlotOffsets[fileSelect->selectedFileIndex];
    MemCpy(&gSaveContext, sramCtx->readBuff + offset, sizeof(Save));

    offset = gSramSlotOffsets[fileSelect->copyDestFileIndex];
    MemCpy(sramCtx->readBuff + offset, &gSaveContext, sizeof(Save));

    offset = gSramSlotOffsets[fileSelect->copyDestFileIndex + 3];
    MemCpy(sramCtx->readBuff + offset, &gSaveContext, sizeof(Save));

    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_WRITE);

    offset = gSramSlotOffsets[fileSelect->copyDestFileIndex];

    MemCpy(&fileSelect->deaths[fileSelect->copyDestFileIndex], sramCtx->readBuff + offset + DEATHS,
           sizeof(fileSelect->deaths[0]));
    MemCpy(&fileSelect->fileNames[fileSelect->copyDestFileIndex], sramCtx->readBuff + offset + NAME,
           sizeof(fileSelect->fileNames[0]));
    MemCpy(&fileSelect->healthCapacities[fileSelect->copyDestFileIndex], sramCtx->readBuff + offset + HEALTH_CAP,
           sizeof(fileSelect->healthCapacities[0]));
    MemCpy(&fileSelect->questItems[fileSelect->copyDestFileIndex], sramCtx->readBuff + offset + QUEST,
           sizeof(fileSelect->questItems[0]));
    MemCpy(&fileSelect->n64ddFlags[fileSelect->copyDestFileIndex], sramCtx->readBuff + offset + N64DD,
           sizeof(fileSelect->n64ddFlags[0]));
    MemCpy(&fileSelect->defense[fileSelect->copyDestFileIndex], sramCtx->readBuff + offset + DEFENSE,
           sizeof(fileSelect->defense[0]));
    MemCpy(&fileSelect->health[fileSelect->copyDestFileIndex], (sramCtx->readBuff + offset) + HEALTH,
           sizeof(fileSelect->health[0]));

    osSyncPrintf("f_64dd[%d]=%d\n", gSaveContext.fileNum, fileSelect->n64ddFlags[gSaveContext.fileNum]);
    osSyncPrintf("heart_status[%d]=%d\n", gSaveContext.fileNum, fileSelect->defense[gSaveContext.fileNum]);
    osSyncPrintf("ＣＯＰＹ終了\n"); // "Copy end"
}

/**
 *  Write the first 16 bytes of the read buffer to the SRAM header
 */
void Sram_WriteSramHeader(SramContext* sramCtx) {
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_HEADER_SIZE, OS_WRITE);
}

void Sram_InitSram(GameState* gameState, SramContext* sramCtx) {
    u16 i;

    osSyncPrintf("sram_initialize( Game *game, Sram *sram )\n");
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);

    for (i = 0; i < ARRAY_COUNTU(sZeldaMagic) - 3; i++) {
        if (sZeldaMagic[i + SRAM_HEADER_MAGIC] != sramCtx->readBuff[i + SRAM_HEADER_MAGIC]) {
            osSyncPrintf("ＳＲＡＭ破壊！！！！！！\n"); // "SRAM destruction! ! ! ! ! !"
            gSaveContext.language = sramCtx->readBuff[SRAM_HEADER_LANGUAGE];
            MemCpy(sramCtx->readBuff, sZeldaMagic, sizeof(sZeldaMagic));
            sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language;
            Sram_WriteSramHeader(sramCtx);
        }
    }

    gSaveContext.audioSetting = sramCtx->readBuff[SRAM_HEADER_SOUND] & 3;
    gSaveContext.zTargetSetting = sramCtx->readBuff[SRAM_HEADER_ZTARGET] & 1;
    gSaveContext.language = sramCtx->readBuff[SRAM_HEADER_LANGUAGE];

    if (gSaveContext.language >= LANGUAGE_MAX) {
        gSaveContext.language = LANGUAGE_ENG;
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language;
        Sram_WriteSramHeader(sramCtx);
    }

    if (CHECK_BTN_ANY(gameState->input[2].cur.button, BTN_DRIGHT)) {
        bzero(sramCtx->readBuff, SRAM_SIZE);
        for (i = 0; i < CHECKSUM_SIZE; i++) {
            sramCtx->readBuff[i] = i;
        }
        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_WRITE);
        osSyncPrintf("ＳＲＡＭ破壊！！！！！！\n"); // "SRAM destruction! ! ! ! ! !"
    }

    // "GOOD! GOOD! Size = %d + %d = %d"
    osSyncPrintf("ＧＯＯＤ！ＧＯＯＤ！ サイズ＝%d + %d ＝ %d\n", sizeof(SaveInfo), 4, sizeof(SaveInfo) + 4);
    osSyncPrintf(VT_FGCOL(BLUE));
    osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
    osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
    osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
    osSyncPrintf(VT_RST);
    func_800F6700(gSaveContext.audioSetting);
}

void Sram_Alloc(GameState* gameState, SramContext* sramCtx) {
    sramCtx->readBuff = GameState_Alloc(gameState, SRAM_SIZE, "../z_sram.c", 1294);
    ASSERT(sramCtx->readBuff != NULL, "sram->read_buff != NULL", "../z_sram.c", 1295);
}

void Sram_Init(PlayState* play, SramContext* sramCtx) {
}
