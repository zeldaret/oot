#include "global.h"
#include "vt.h"

#define FIELD_SIZE(type, field) sizeof(((type*)0)->field)

#define SRAM_SIZE 0x8000
#define CHECKSUM_SIZE 0x9AAu
#define SAVE_MAX FIELD_SIZE(SaveContext, save)
#define SAVE_INFO_SIZE FIELD_SIZE(SaveContext, save.info)
#define SAVE_SIZE 0x1450

#define SAVECT OFFSETOF(SaveContext, save.info.sub_1C.deaths)
#define NAME OFFSETOF(SaveContext, save.info.sub_1C.playerName)
#define SAVE_64DD OFFSETOF(SaveContext, save.info.sub_1C.n64ddFlag)
#define LIFE OFFSETOF(SaveContext, save.info.sub_1C.healthCapacity)
#define ITEM OFFSETOF(SaveContext, save.info.items.questItems)
#define HEART OFFSETOF(SaveContext, save.info.items.defenseHearts)
#define HEALTH OFFSETOF(SaveContext, save.info.sub_1C.health)

#define SAVE_OFF(idx) (SAVE_SIZE * idx + 0x20)

#define CALC_CHECKSUM(i, j, ptr, sum)         \
    {                                         \
        for (i = 0; i < CHECKSUM_SIZE; i++) { \
            if (++j == 0x20u) {               \
                j = 0;                        \
            }                                 \
            sum += *ptr++;                    \
        }                                     \
    }

u16 gSramSaveOffsets[][3] = {
    {
        SAVE_OFF(0),
        SAVE_OFF(1),
        SAVE_OFF(2),
    },
    {
        SAVE_OFF(3),
        SAVE_OFF(4),
        SAVE_OFF(5),
    },
};

char sSramZeldaMagic[] = { '\0', '\0', '\0', '\x98', '\x09', '\x10', '\x21', 'Z', 'E', 'L', 'D', 'A' };

SaveSub1C sSramSaveSub1CDefault = {
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
    { 0 },                                              // unk_1F
    0,                                                  // doubleMagic
    0,                                                  // doubleDefense
    0,                                                  // bgsFlag
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

ItemEquips sSramItemsEquipsDefault = {
    { ITEM_NONE, ITEM_NONE, ITEM_NONE, ITEM_NONE }, // buttonItems
    { SLOT_NONE, SLOT_NONE, SLOT_NONE },            // cButtonSlots
    0x1100,                                         // equipment
};

SaveItems sSramSaveItemsDefault = {
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

u16 sSramChecksumDefault = 0;

SaveSub1C sSramSaveSub1CDebug = {
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
    {
        0,
    }, // unk_1F
    0, // doubleMagic
    0, // doubleDefense
    0, // bgsFlag
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

ItemEquips sSramItemsEquipsDebug = {
    { ITEM_SWORD_MASTER, ITEM_BOW, ITEM_BOMB, ITEM_OCARINA_FAIRY }, // buttonItems
    { SLOT_BOW, SLOT_BOMB, SLOT_OCARINA },                          // cButtonSlots
    0x1122,                                                         // equipment
};

SaveItems sSramSaveItemsDebug = {
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

u16 sSramChecksumDebug = 0;

s16 sSramEntranceIndices[] = {
    0x0000, 0x0004, 0x0028, 0x0169, 0x0165, 0x0010, 0x0082, 0x0037,
    0x0098, 0x0088, 0x041B, 0x0008, 0x0486, 0x0467, 0x0179, 0x056C,
};

void Sram_InitSaveSlotDefault(void) {
    SaveContext* temp = &gSaveContext;

    bzero(&gSaveContext.save.info, SAVE_INFO_SIZE);
    gSaveContext.save.unk_14 = 0;
    gSaveContext.save.unk_18 = 0;

    gSaveContext.save.info.sub_1C = sSramSaveSub1CDefault;
    gSaveContext.save.info.equips = sSramItemsEquipsDefault;
    gSaveContext.save.info.items = sSramSaveItemsDefault;

    temp->save.info.checksum = sSramChecksumDefault;
    gSaveContext.save.info.horseData.scene = SCENE_SPOT00;
    gSaveContext.save.info.horseData.pos.x = -1840;
    gSaveContext.save.info.horseData.pos.y = 72;
    gSaveContext.save.info.horseData.pos.z = 5497;
    gSaveContext.save.info.horseData.angle = -0x6AD9;
    gSaveContext.save.info.sub_1C.magicLevel = 0;
    gSaveContext.save.info.infTable[29] = 1;
    gSaveContext.save.info.sceneFlags[5].swch = 0x40000000;
}

void Sram_InitSaveSlotDebug(void) {
    SaveContext* temp = &gSaveContext;

    bzero(&gSaveContext.save.info, SAVE_INFO_SIZE);
    gSaveContext.save.unk_14 = 0;
    gSaveContext.save.unk_18 = 0;

    gSaveContext.save.info.sub_1C = sSramSaveSub1CDebug;
    gSaveContext.save.info.equips = sSramItemsEquipsDebug;
    gSaveContext.save.info.items = sSramSaveItemsDebug;

    temp->save.info.checksum = sSramChecksumDebug;
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
        Inventory_ChangeEquipment(0, 1);
        if (gSaveContext.fileNum == 0xFF) {
            gSaveContext.save.info.equips.buttonItems[1] = ITEM_SLINGSHOT;
            gSaveContext.save.info.equips.cButtonSlots[0] = SLOT_SLINGSHOT;
            Inventory_ChangeEquipment(1, 1);
        }
    }

    gSaveContext.save.entranceIndex = 0xCD;
    gSaveContext.save.info.sub_1C.magicLevel = 0;
    gSaveContext.save.info.sceneFlags[5].swch = 0x40000000;
}

// regalloc differences at the end
#ifdef NON_MATCHING
void Sram_OpenSaveSlot(Sram* sram) {
    u16 i;
    u16 j;
    u8* ptr;

    osSyncPrintf("個人Ｆｉｌｅ作成\n"); // Create personal file
    i = gSramSaveOffsets[0][gSaveContext.fileNum];
    osSyncPrintf("ぽいんと＝%x(%d)\n", i, gSaveContext.fileNum); // Point=
    MemCopy(&gSaveContext, sram->readBuff + i, SAVE_MAX);
    osSyncPrintf(VT_FGCOL(YELLOW));
    osSyncPrintf("SCENE_DATA_ID = %d   SceneNo = %d\n", gSaveContext.save.info.sub_1C.savedSceneNum,
                 ((void)0, gSaveContext.save.entranceIndex));

    switch (gSaveContext.save.info.sub_1C.savedSceneNum) {
        case 0x00:
        case 0x01:
        case 0x02:
        case 0x03:
        case 0x04:
        case 0x05:
        case 0x06:
        case 0x07:
        case 0x08:
        case 0x09:
        case 0x0A:
        case 0x0B:
        case 0x0C:
        case 0x0D:
            gSaveContext.save.entranceIndex =
                sSramEntranceIndices[gSaveContext.save.info.sub_1C.savedSceneNum];
            break;
        case 0x11:
            gSaveContext.save.entranceIndex = 0;
            break;
        case 0x12:
            gSaveContext.save.entranceIndex = 4;
            break;
        case 0x13:
            gSaveContext.save.entranceIndex = 0x28;
            break;
        case 0x14:
            gSaveContext.save.entranceIndex = 0x169;
            break;
        case 0x15:
            gSaveContext.save.entranceIndex = 0x165;
            break;
        case 0x16:
            gSaveContext.save.entranceIndex = 0x10;
            break;
        case 0x17:
            gSaveContext.save.entranceIndex = 0x82;
            break;
        case 0x18:
            gSaveContext.save.entranceIndex = 0x37;
            break;
        case 0x0E:
        case 0x0F:
        case 0x19:
        case 0x1A:
        case 0x4F:
            gSaveContext.save.entranceIndex = 0x41B;
            break;

        default:
            if (gSaveContext.save.info.sub_1C.savedSceneNum != 0x34) {
                gSaveContext.save.entranceIndex = (LINK_AGE_IN_YEARS == YEARS_CHILD) ? 0xBB : 0x5F4;
            } else {
                gSaveContext.save.entranceIndex = 0xBB;
            }
            break;
    }

    osSyncPrintf("scene_no = %d\n", gSaveContext.save.entranceIndex);
    osSyncPrintf(VT_RST);
    if (gSaveContext.save.info.sub_1C.health < 0x30) {
        gSaveContext.save.info.sub_1C.health = 0x30;
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

    if ((gSaveContext.save.info.eventChkInf[4] & 1) && !CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
        gSaveContext.save.info.eventChkInf[4] &= ~1;
        INV_CONTENT(ITEM_LETTER_ZELDA) = ITEM_CHICKEN;

        for (i = 1; i < 4; i++) {
            if (gSaveContext.save.info.equips.buttonItems[i] == ITEM_LETTER_ZELDA) {
                gSaveContext.save.info.equips.buttonItems[i] = ITEM_CHICKEN;
            }
        }
    }

    if (LINK_AGE_IN_YEARS == YEARS_ADULT && !CHECK_OWNED_EQUIP(EQUIP_SWORD, 1)) {
        gSaveContext.save.info.items.equipment |= gBitFlags[1] << gEquipShifts[EQUIP_SWORD];
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

    gSaveContext.save.info.sub_1C.magicLevel = 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_sram/Sram_OpenSaveSlot.s")
#endif

void Sram_WriteSaveSlot(u32 unk) {
    u16 off;
    u16 checksum;
    u16 j;
    u16* ptr;

    gSaveContext.save.info.checksum = 0;

    ptr = (u16*)&gSaveContext;
    checksum = 0;
    j = 0;
    CALC_CHECKSUM(off, j, ptr, checksum);
    gSaveContext.save.info.checksum = checksum;

    ptr = (u16*)&gSaveContext;
    checksum = 0;
    CALC_CHECKSUM(off, j, ptr, checksum);

    off = gSramSaveOffsets[0][gSaveContext.fileNum];
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + off, &gSaveContext, SAVE_SIZE, OS_WRITE);

    ptr = (u16*)&gSaveContext;
    checksum = 0;
    CALC_CHECKSUM(off, j, ptr, checksum);

    off = gSramSaveOffsets[1][gSaveContext.fileNum];
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + off, &gSaveContext, SAVE_SIZE, OS_WRITE);
}

// There's a problem with how "off" is loaded
#ifdef NON_MATCHING
void Sram_LoadSaveSlots(FileChooseContext* fileChoose, Sram* sram) {
    u16 fileIdx; // 0x72
    u16 oldChecksum;
    u16 newChecksum;
    u16 dayTime; // 0x66
    // u16* offPtr;
    s32 off;
    u16 i;
    u16 j;
    u16* ptr;

    osSyncPrintf("ＳＲＡＭ ＳＴＡＲＴ─ＬＯＡＤ\n");
    bzero(sram->readBuff, SRAM_SIZE);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_READ);

    dayTime = gSaveContext.save.dayTime;

    for (fileIdx = 0; fileIdx < 3; fileIdx++) {
        off = gSramSaveOffsets[0][fileIdx];
        osSyncPrintf("ぽいんと＝%x(%d)    SAVE_MAX=%d\n", off, gSaveContext.fileNum, SAVE_MAX);
        MemCopy(&gSaveContext, sram->readBuff + off, SAVE_MAX);

        oldChecksum = gSaveContext.save.info.checksum;
        gSaveContext.save.info.checksum = 0;
        osSyncPrintf("\n＝＝＝＝＝＝＝＝＝＝＝＝＝  Ｓ（%d） ＝＝＝＝＝＝＝＝＝＝＝＝＝\n", fileIdx);

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
            osSyncPrintf("ＥＲＲＯＲ！！！ ＝ %x(%d)\n", off, fileIdx);
            off = gSramSaveOffsets[1][fileIdx];
            MemCopy(&gSaveContext, sram->readBuff + off, SAVE_MAX);

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
                // offPtr = &gSramSaveOffsets[1][fileIdx];
                osSyncPrintf("ＥＲＲＯＲ！！！ ＝ %x(%d+3)\n", off, fileIdx);
                bzero(&gSaveContext.save.entranceIndex, sizeof(gSaveContext.save.entranceIndex));
                bzero(&gSaveContext.save.linkAge, sizeof(gSaveContext.save.linkAge));
                bzero(&gSaveContext.save.cutsceneIndex, sizeof(gSaveContext.save.cutsceneIndex));
                bzero(&gSaveContext.save.dayTime, sizeof(gSaveContext.save.dayTime));
                bzero(&gSaveContext.save.nightFlag, sizeof(gSaveContext.save.nightFlag));
                bzero(&gSaveContext.save.unk_14, sizeof(gSaveContext.save.unk_14));
                bzero(&gSaveContext.save.unk_18, sizeof(gSaveContext.save.unk_18));
                if (fileIdx == 0) {
                    Sram_InitSaveSlotDebug();
                    gSaveContext.save.info.sub_1C.newf[0] = 'Z';
                    gSaveContext.save.info.sub_1C.newf[1] = 'E';
                    gSaveContext.save.info.sub_1C.newf[2] = 'L';
                    gSaveContext.save.info.sub_1C.newf[3] = 'D';
                    gSaveContext.save.info.sub_1C.newf[4] = 'A';
                    gSaveContext.save.info.sub_1C.newf[5] = 'Z';
                    osSyncPrintf(
                        "newf=%x,%x,%x,%x,%x,%x\n", gSaveContext.save.info.sub_1C.newf[0],
                        gSaveContext.save.info.sub_1C.newf[1], gSaveContext.save.info.sub_1C.newf[2],
                        gSaveContext.save.info.sub_1C.newf[3], gSaveContext.save.info.sub_1C.newf[4],
                        gSaveContext.save.info.sub_1C.newf[5]);
                } else {
                    Sram_InitSaveSlotDefault();
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
                osSyncPrintf("\nCheck_Sum=%x(%x)\n", gSaveContext.save.info.checksum, newChecksum); // ??

                off = gSramSaveOffsets[1][fileIdx];
                SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + off, &gSaveContext, SAVE_SIZE, OS_WRITE);
                osSyncPrintf(
                    "????#%x,%x,%x,%x,%x,%x\n", gSaveContext.save.info.sub_1C.newf[0],
                    gSaveContext.save.info.sub_1C.newf[1], gSaveContext.save.info.sub_1C.newf[2],
                    gSaveContext.save.info.sub_1C.newf[3], gSaveContext.save.info.sub_1C.newf[4],
                    gSaveContext.save.info.sub_1C.newf[5]);
                osSyncPrintf("\nぽいんと＝%x(%d+3)  check_sum=%x(%x)\n", off, fileIdx,
                             gSaveContext.save.info.checksum, newChecksum);
            }
            off = gSramSaveOffsets[0][fileIdx];
            SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + off, &gSaveContext, SAVE_SIZE, OS_WRITE);
            osSyncPrintf("ぽいんと＝%x(%d)  check_sum=%x(%x)\n", off, fileIdx, gSaveContext.save.info.checksum,
                         newChecksum);
        } else {
            // SAVE data OK! ! ! !
            osSyncPrintf("\nＳＡＶＥデータ ＯＫ！！！！\n");
        }
    }

    bzero(sram->readBuff, SRAM_SIZE);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_READ);
    gSaveContext.save.dayTime = dayTime;
    osSyncPrintf("SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  64DD=%x,  HEART=%x\n", SAVECT, NAME, LIFE, ITEM, SAVE_64DD,
                 HEART);

    MemCopy(&fileChoose->deaths[0], sram->readBuff + SAVE_OFF(0) + SAVECT, sizeof(fileChoose->deaths[0]));
    MemCopy(&fileChoose->deaths[1], sram->readBuff + SAVE_OFF(1) + SAVECT, sizeof(fileChoose->deaths[0]));
    MemCopy(&fileChoose->deaths[2], sram->readBuff + SAVE_OFF(2) + SAVECT, sizeof(fileChoose->deaths[0]));

    MemCopy(&fileChoose->fileNames[0], sram->readBuff + SAVE_OFF(0) + NAME, sizeof(fileChoose->fileNames[0]));
    MemCopy(&fileChoose->fileNames[1], sram->readBuff + SAVE_OFF(1) + NAME, sizeof(fileChoose->fileNames[0]));
    MemCopy(&fileChoose->fileNames[2], sram->readBuff + SAVE_OFF(2) + NAME, sizeof(fileChoose->fileNames[0]));

    MemCopy(&fileChoose->healthCapacities[0], sram->readBuff + SAVE_OFF(0) + LIFE,
            sizeof(fileChoose->healthCapacities[0]));
    MemCopy(&fileChoose->healthCapacities[1], sram->readBuff + SAVE_OFF(1) + LIFE,
            sizeof(fileChoose->healthCapacities[0]));
    MemCopy(&fileChoose->healthCapacities[2], sram->readBuff + SAVE_OFF(2) + LIFE,
            sizeof(fileChoose->healthCapacities[0]));

    MemCopy(&fileChoose->questItems[0], sram->readBuff + SAVE_OFF(0) + ITEM, sizeof(fileChoose->questItems[0]));
    MemCopy(&fileChoose->questItems[1], sram->readBuff + SAVE_OFF(1) + ITEM, sizeof(fileChoose->questItems[0]));
    MemCopy(&fileChoose->questItems[2], sram->readBuff + SAVE_OFF(2) + ITEM, sizeof(fileChoose->questItems[0]));

    MemCopy(&fileChoose->n64ddFlags[0], sram->readBuff + SAVE_OFF(0) + SAVE_64DD, sizeof(fileChoose->n64ddFlags[0]));
    MemCopy(&fileChoose->n64ddFlags[1], sram->readBuff + SAVE_OFF(1) + SAVE_64DD, sizeof(fileChoose->n64ddFlags[0]));
    MemCopy(&fileChoose->n64ddFlags[2], sram->readBuff + SAVE_OFF(2) + SAVE_64DD, sizeof(fileChoose->n64ddFlags[0]));

    MemCopy(&fileChoose->heartStatus[0], sram->readBuff + SAVE_OFF(0) + HEART, sizeof(fileChoose->heartStatus[0]));
    MemCopy(&fileChoose->heartStatus[1], sram->readBuff + SAVE_OFF(1) + HEART, sizeof(fileChoose->heartStatus[0]));
    MemCopy(&fileChoose->heartStatus[2], sram->readBuff + SAVE_OFF(2) + HEART, sizeof(fileChoose->heartStatus[0]));

    MemCopy(&fileChoose->nowLife[0], sram->readBuff + SAVE_OFF(0) + HEALTH, sizeof(fileChoose->nowLife[0]));
    MemCopy(&fileChoose->nowLife[1], sram->readBuff + SAVE_OFF(1) + HEALTH, sizeof(fileChoose->nowLife[0]));
    MemCopy(&fileChoose->nowLife[2], sram->readBuff + SAVE_OFF(2) + HEALTH, sizeof(fileChoose->nowLife[0]));

    osSyncPrintf("f_64dd=%d, %d, %d\n", fileChoose->n64ddFlags[0], fileChoose->n64ddFlags[1],
                 fileChoose->n64ddFlags[2]);
    osSyncPrintf("heart_status=%d, %d, %d\n", fileChoose->heartStatus[0], fileChoose->heartStatus[1],
                 fileChoose->heartStatus[2]);
    osSyncPrintf("now_life=%d, %d, %d\n", fileChoose->nowLife[0], fileChoose->nowLife[1], fileChoose->nowLife[2]);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_sram/Sram_LoadSaveSlots.s")
#endif

void Sram_InitSaveSlot(FileChooseContext* fileChoose, Sram* sram) {

    u16 off;
    u16 j;
    u16* ptr;
    u16 checksum;

    if (fileChoose->btnIdx != 0) {
        Sram_InitSaveSlotDefault();
    } else {
        Sram_InitSaveSlotDebug();
    }

    gSaveContext.save.entranceIndex = 0xBB;
    gSaveContext.save.linkAge = 1;
    gSaveContext.save.dayTime = 0x6AAB;
    gSaveContext.save.cutsceneIndex = 0xFFF1;

    if (fileChoose->btnIdx == 0) {
        gSaveContext.save.cutsceneIndex = 0;
    }

    for (off = 0; off < 8; off++) {
        gSaveContext.save.info.sub_1C.playerName[off] = fileChoose->fileNames[fileChoose->btnIdx][off];
    }

    gSaveContext.save.info.sub_1C.newf[0] = 'Z';
    gSaveContext.save.info.sub_1C.newf[1] = 'E';
    gSaveContext.save.info.sub_1C.newf[2] = 'L';
    gSaveContext.save.info.sub_1C.newf[3] = 'D';
    gSaveContext.save.info.sub_1C.newf[4] = 'A';
    gSaveContext.save.info.sub_1C.newf[5] = 'Z';

    gSaveContext.save.info.sub_1C.n64ddFlag = fileChoose->n64ddFlag;
    osSyncPrintf("６４ＤＤフラグ=%d\n", fileChoose->n64ddFlag);
    osSyncPrintf("newf=%x,%x,%x,%x,%x,%x\n", gSaveContext.save.info.sub_1C.newf[0],
                 gSaveContext.save.info.sub_1C.newf[1], gSaveContext.save.info.sub_1C.newf[2],
                 gSaveContext.save.info.sub_1C.newf[3], gSaveContext.save.info.sub_1C.newf[4],
                 gSaveContext.save.info.sub_1C.newf[5]);
    osSyncPrintf("\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n");

    ptr = (u16*)&gSaveContext;
    j = 0;
    checksum = 0;

    for (off = 0; off < CHECKSUM_SIZE; off++) {
        osSyncPrintf("%x ", *ptr);
        checksum += *ptr++;
        if (++j == 0x20u) {
            osSyncPrintf("\n");
            j = 0;
        }
    }

    gSaveContext.save.info.checksum = checksum;
    // Checksum = %x
    osSyncPrintf("\nチェックサム＝%x\n", gSaveContext.save.info.checksum);

    off = gSramSaveOffsets[0][gSaveContext.fileNum];
    osSyncPrintf("I=%x no=%d\n", off, gSaveContext.fileNum);
    MemCopy(sram->readBuff + off, &gSaveContext, SAVE_MAX);

    off = gSramSaveOffsets[1][gSaveContext.fileNum];
    osSyncPrintf("I=%x no=%d\n", off, gSaveContext.fileNum + 3);
    MemCopy(sram->readBuff + off, &gSaveContext, SAVE_MAX);

    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_WRITE);

    // SAVE end
    osSyncPrintf("ＳＡＶＥ終了\n");
    osSyncPrintf("z_common_data.file_no = %d\n", gSaveContext.fileNum);
    osSyncPrintf("SAVECT=%x, NAME=%x, LIFE=%x, ITEM=%x,  SAVE_64DD=%x\n", SAVECT, NAME, LIFE, ITEM, SAVE_64DD);

    j = gSramSaveOffsets[0][gSaveContext.fileNum];
    MemCopy(&fileChoose->deaths[gSaveContext.fileNum], sram->readBuff + j + SAVECT, sizeof(fileChoose->deaths[0]));
    MemCopy(&fileChoose->fileNames[gSaveContext.fileNum], sram->readBuff + j + NAME, sizeof(fileChoose->fileNames[0]));
    MemCopy(&fileChoose->healthCapacities[gSaveContext.fileNum], sram->readBuff + j + LIFE,
            sizeof(fileChoose->healthCapacities[0]));
    MemCopy(&fileChoose->questItems[gSaveContext.fileNum], sram->readBuff + j + ITEM,
            sizeof(fileChoose->questItems[0]));
    MemCopy(&fileChoose->n64ddFlags[gSaveContext.fileNum], sram->readBuff + j + SAVE_64DD,
            sizeof(fileChoose->n64ddFlags[0]));
    MemCopy(&fileChoose->heartStatus[gSaveContext.fileNum], sram->readBuff + j + HEART,
            sizeof(fileChoose->heartStatus[0]));
    MemCopy(&fileChoose->nowLife[gSaveContext.fileNum], sram->readBuff + j + HEALTH, sizeof(fileChoose->nowLife[0]));

    osSyncPrintf("f_64dd[%d]=%d\n", gSaveContext.fileNum, fileChoose->n64ddFlags[gSaveContext.fileNum]);
    osSyncPrintf("heart_status[%d]=%d\n", gSaveContext.fileNum, fileChoose->heartStatus[gSaveContext.fileNum]);
    osSyncPrintf("now_life[%d]=%d\n", gSaveContext.fileNum, fileChoose->nowLife[gSaveContext.fileNum]);
}

void Sram_ClearSaveSlot(FileChooseContext* fileChoose, Sram* sram) {
    s32 off;

    Sram_InitSaveSlotDefault();

    off = gSramSaveOffsets[0][fileChoose->selectedFileIdx];
    MemCopy(sram->readBuff + off, &gSaveContext, SAVE_MAX);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + off, &gSaveContext, SAVE_SIZE, OS_WRITE);

    MemCopy(&fileChoose->n64ddFlags[fileChoose->selectedFileIdx], sram->readBuff + off + SAVE_64DD,
            sizeof(fileChoose->n64ddFlags[0]));

    off = gSramSaveOffsets[1][fileChoose->selectedFileIdx];
    MemCopy(sram->readBuff + off, &gSaveContext, SAVE_MAX);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000) + off, &gSaveContext, SAVE_SIZE, OS_WRITE);

    osSyncPrintf("ＣＬＥＡＲ終了\n");
}

void Sram_CopySaveSlot(FileChooseContext* fileChoose, Sram* sram) {
    s32 off;

    osSyncPrintf("ＲＥＡＤ=%d(%x)  ＣＯＰＹ=%d(%x)\n", fileChoose->selectedFileIdx,
                 gSramSaveOffsets[0][fileChoose->selectedFileIdx], fileChoose->copyDsFiletIdx,
                 gSramSaveOffsets[0][fileChoose->copyDsFiletIdx]);
    off = gSramSaveOffsets[0][fileChoose->selectedFileIdx];
    MemCopy(&gSaveContext, sram->readBuff + off, SAVE_MAX);
    off = gSramSaveOffsets[0][fileChoose->copyDsFiletIdx];
    MemCopy(sram->readBuff + off, &gSaveContext, SAVE_MAX);
    off = gSramSaveOffsets[1][fileChoose->copyDsFiletIdx];
    MemCopy(sram->readBuff + off, &gSaveContext, SAVE_MAX);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sram->readBuff, SRAM_SIZE, OS_WRITE);
    off = gSramSaveOffsets[0][fileChoose->copyDsFiletIdx];
    MemCopy(&fileChoose->deaths[fileChoose->copyDsFiletIdx], sram->readBuff + off + SAVECT,
            sizeof(fileChoose->deaths[0]));
    MemCopy(&fileChoose->fileNames[fileChoose->copyDsFiletIdx], sram->readBuff + off + NAME,
            sizeof(fileChoose->fileNames[0]));
    MemCopy(&fileChoose->healthCapacities[fileChoose->copyDsFiletIdx], sram->readBuff + off + LIFE,
            sizeof(fileChoose->healthCapacities[0]));
    MemCopy(&fileChoose->questItems[fileChoose->copyDsFiletIdx], sram->readBuff + off + ITEM,
            sizeof(fileChoose->questItems[0]));
    MemCopy(&fileChoose->n64ddFlags[fileChoose->copyDsFiletIdx], sram->readBuff + off + SAVE_64DD,
            sizeof(fileChoose->n64ddFlags[0]));
    MemCopy(&fileChoose->heartStatus[fileChoose->copyDsFiletIdx], sram->readBuff + off + HEART,
            sizeof(fileChoose->heartStatus[0]));
    MemCopy(&fileChoose->nowLife[fileChoose->copyDsFiletIdx],
            (sram->readBuff + off) + OFFSETOF(SaveContext, save.info.sub_1C.health),
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

    for (i = 0; i < ARRAY_COUNTU(sSramZeldaMagic) - 3; i++) {
        if (sSramZeldaMagic[i + 3] != sram->readBuff[i + 3]) {
            // SRAM destruction! ! ! ! ! !
            osSyncPrintf("ＳＲＡＭ破壊！！！！！！\n");
            gSaveContext.language = sram->readBuff[2];
            MemCopy(sram->readBuff, sSramZeldaMagic, sizeof(sSramZeldaMagic));
            sram->readBuff[2] = gSaveContext.language;
            Sram_Write16Bytes(sram);
        }
    }
    gSaveContext.audioSetting = sram->readBuff[0] & 3;
    gSaveContext.zTargetingSetting = sram->readBuff[1] & 1;
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
    osSyncPrintf("ＧＯＯＤ！ＧＯＯＤ！ サイズ＝%d + %d ＝ %d\n", SAVE_INFO_SIZE, 4, SAVE_INFO_SIZE + 4);
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
