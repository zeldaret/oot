#include "global.h"
#include "assets/textures/icon_item_static/icon_item_static.h"
#include "assets/textures/icon_item_24_static/icon_item_24_static.h"
#include "assets/textures/parameter_static/parameter_static.h"

// Bit Flag array in which gBitFlags[n] is literally (1 << n)
u32 gBitFlags[] = {
    (1 << 0),  (1 << 1),  (1 << 2),  (1 << 3),  (1 << 4),  (1 << 5),  (1 << 6),  (1 << 7),
    (1 << 8),  (1 << 9),  (1 << 10), (1 << 11), (1 << 12), (1 << 13), (1 << 14), (1 << 15),
    (1 << 16), (1 << 17), (1 << 18), (1 << 19), (1 << 20), (1 << 21), (1 << 22), (1 << 23),
    (1 << 24), (1 << 25), (1 << 26), (1 << 27), (1 << 28), (1 << 29), (1 << 30), (1 << 31),
};

u16 gEquipMasks[EQUIP_TYPE_MAX] = {
    0xF << (EQUIP_TYPE_SWORD * 4),  // EQUIP_TYPE_SWORD
    0xF << (EQUIP_TYPE_SHIELD * 4), // EQUIP_TYPE_SHIELD
    0xF << (EQUIP_TYPE_TUNIC * 4),  // EQUIP_TYPE_TUNIC
    0xF << (EQUIP_TYPE_BOOTS * 4),  // EQUIP_TYPE_BOOTS
};
u16 gEquipNegMasks[EQUIP_TYPE_MAX] = {
    (u16) ~(0xF << (EQUIP_TYPE_SWORD * 4)),  // EQUIP_TYPE_SWORD
    (u16) ~(0xF << (EQUIP_TYPE_SHIELD * 4)), // EQUIP_TYPE_SHIELD
    (u16) ~(0xF << (EQUIP_TYPE_TUNIC * 4)),  // EQUIP_TYPE_TUNIC
    (u16) ~(0xF << (EQUIP_TYPE_BOOTS * 4)),  // EQUIP_TYPE_BOOTS
};

u32 gUpgradeMasks[UPG_MAX] = {
    0x00000007, // UPG_QUIVER
    0x00000038, // UPG_BOMB_BAG
    0x000001C0, // UPG_STRENGTH
    0x00000E00, // UPG_SCALE
    0x00003000, // UPG_WALLET
    0x0001C000, // UPG_BULLET_BAG
    0x000E0000, // UPG_STICKS
    0x00700000, // UPG_NUTS
};
u32 gUpgradeNegMasks[UPG_MAX] = {
    ~0x00000007, // UPG_QUIVER
    ~0x00000038, // UPG_BOMB_BAG
    ~0x000001C0, // UPG_STRENGTH
    ~0x00000E00, // UPG_SCALE
    ~0x00003000, // UPG_WALLET
    ~0x0001C000, // UPG_BULLET_BAG
    ~0x000E0000, // UPG_STICKS
    ~0x00700000, // UPG_NUTS
};

u8 gEquipShifts[EQUIP_TYPE_MAX] = {
    EQUIP_TYPE_SWORD * 4,  // EQUIP_TYPE_SWORD
    EQUIP_TYPE_SHIELD * 4, // EQUIP_TYPE_SHIELD
    EQUIP_TYPE_TUNIC * 4,  // EQUIP_TYPE_TUNIC
    EQUIP_TYPE_BOOTS * 4,  // EQUIP_TYPE_BOOTS
};

u8 gUpgradeShifts[UPG_MAX] = {
    0,  // UPG_QUIVER
    3,  // UPG_BOMB_BAG
    6,  // UPG_STRENGTH
    9,  // UPG_SCALE
    12, // UPG_WALLET
    14, // UPG_BULLET_BAG
    17, // UPG_STICKS
    20, // UPG_NUTS
};

u16 gUpgradeCapacities[UPG_MAX][4] = {
    { 0, 30, 40, 50 },     // UPG_QUIVER
    { 0, 20, 30, 40 },     // UPG_BOMB_BAG
    { 0, 0, 0, 0 },        // UPG_STRENGTH (unused)
    { 0, 0, 0, 0 },        // UPG_SCALE (unused)
    { 99, 200, 500, 500 }, // UPG_WALLET
    { 0, 30, 40, 50 },     // UPG_BULLET_BAG
    { 0, 10, 20, 30 },     // UPG_STICKS
    { 0, 20, 30, 40 },     // UPG_NUTS
};

u32 gGsFlagsMasks[] = { 0x000000FF, 0x0000FF00, 0x00FF0000, 0xFF000000 };
u32 gGsFlagsShifts[] = { 0, 8, 16, 24 };

void* gItemIcons[] = {
    gDekuStickIconTex,
    gDekuNutIconTex,
    gBombIconTex,
    gFairyBowIconTex,
    gFireArrowIconTex,
    gDinsFireIconTex,
    gFairySlingshotIconTex,
    gFairyOcarinaIconTex,
    gOcarinaofTimeIconTex,
    gBombchuIconTex,
    gHookshotIconTex,
    gLongshotIconTex,
    gIceArrowIconTex,
    gFaroresWindIconTex,
    gBoomerangIconTex,
    gLensofTruthIconTex,
    gMagicBeansIconTex,
    gMegatonHammerIconTex,
    gLightArrowIconTex,
    gNayrusLoveIconTex,
    gEmptyBottleIconTex,
    gRedPotionIconTex,
    gGreenPotionIconTex,
    gBluePotionIconTex,
    gBottledFairyIconTex,
    gFishIconTex,
    gMilkFullIconTex,
    gRutosLetterIconTex,
    gBlueFireIconTex,
    gBugIconTex,
    gBigPoeIconTex,
    gMilkhalfIconTex,
    gPoeIconTex,
    gWeirdEggIconTex,
    gCuccoIconTex,
    gZeldasLetterIconTex,
    gKeatonMaskIconTex,
    gSkullMaskIconTex,
    gSpookyMaskIconTex,
    gBunnyHoodIconTex,
    gGoronMaskIconTex,
    gZoraMaskIconTex,
    gGerudoMaskIconTex,
    gMaskofTruthIconTex,
    gSoldOutIconTex,
    gPocketEggIconTex,
    gPocketCuccoIconTex,
    gCojiroIconTex,
    gOddMushroomIconTex,
    gOddPotionIconTex,
    gPoachersSawIconTex,
    gBrokenBiggoronSwordIconTex,
    gPrescriptionIconTex,
    gEyeBallFrogIconTex,
    gEyeDropsIconTex,
    gClaimCheckIconTex,
    gFairyBowFireIconTex,
    gFairyBowIceIconTex,
    gFairyBowLightIconTex,
    gKokiriSwordIconTex,
    gMasterSwordIconTex,
    gBiggoronSwordIconTex,
    gDekuShieldIconTex,
    gHylianShieldIconTex,
    gMirrorShieldIconTex,
    gKokiriTunicIconTex,
    gGoronTunicIconTex,
    gZoraTunicIconTex,
    gKokiriBootsIconTex,
    gIronBootsIconTex,
    gHoverBootsIconTex,
    gBulletBag30IconTex,
    gBulletBag40IconTex,
    gBulletBag50IconTex,
    gQuiver30IconTex,
    gQuiver40IconTex,
    gQuiver50IconTex,
    gBombBag20IconTex,
    gBombBag30IconTex,
    gBombBag40IconTex,
    gGoronsBraceletIconTex,
    gSilverGauntletsIconTex,
    gGoldenGauntletsIconTex,
    gSilverScaleIconTex,
    gGoldenScaleIconTex,
    gBrokenGiantsKnifeIconTex,
    gAdultsWalletIconTex,
    gGiantsWalletIconTex,
    gDekuSeedsIconTex,
    gFishingPoleIconTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gSongNoteTex,
    gForestMedallionIconTex,
    gFireMedallionIconTex,
    gWaterMedallionIconTex,
    gSpiritMedallionIconTex,
    gShadowMedallionIconTex,
    gLightMedallionIconTex,
    gKokiriEmeraldIconTex,
    gGoronRubyIconTex,
    gZoraSapphireIconTex,
    gStoneOfAgonyIconTex,
    gGerudosCardIconTex,
    gGoldSkulltulaIconTex,
    gHeartContainerIconTex,
    gUnusedPieceOfHeartIconTex,
    gBossKeyIconTex,
    gDungeonMapIconTex,
    gCompassIconTex,
    gBossKeyIconTex,
    gSmallMagicJarIconTex,
    gBigMagicJarIconTex,
    gHeartPieceIcon1Tex,
    gHeartPieceIcon2Tex,
    gHeartPieceIcon3Tex,
    gOcarinaCUpTex,
    gOcarinaCDownTex,
    gOcarinaCLeftTex,
    gOcarinaCRightTex,
    gOcarinaATex,
};

// Used to map item IDs to inventory slots
u8 gItemSlots[] = {
    SLOT_STICK,       SLOT_NUT,          SLOT_BOMB,        SLOT_BOW,         SLOT_ARROW_FIRE,  SLOT_DINS_FIRE,
    SLOT_SLINGSHOT,   SLOT_OCARINA,      SLOT_OCARINA,     SLOT_BOMBCHU,     SLOT_HOOKSHOT,    SLOT_HOOKSHOT,
    SLOT_ARROW_ICE,   SLOT_FARORES_WIND, SLOT_BOOMERANG,   SLOT_LENS,        SLOT_BEAN,        SLOT_HAMMER,
    SLOT_ARROW_LIGHT, SLOT_NAYRUS_LOVE,  SLOT_BOTTLE_1,    SLOT_BOTTLE_1,    SLOT_BOTTLE_1,    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,    SLOT_BOTTLE_1,     SLOT_BOTTLE_1,    SLOT_BOTTLE_1,    SLOT_BOTTLE_1,    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,    SLOT_BOTTLE_1,     SLOT_BOTTLE_1,    SLOT_TRADE_CHILD, SLOT_TRADE_CHILD, SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD, SLOT_TRADE_CHILD,  SLOT_TRADE_CHILD, SLOT_TRADE_CHILD, SLOT_TRADE_CHILD, SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD, SLOT_TRADE_CHILD,  SLOT_TRADE_CHILD, SLOT_TRADE_ADULT, SLOT_TRADE_ADULT, SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT, SLOT_TRADE_ADULT,  SLOT_TRADE_ADULT, SLOT_TRADE_ADULT, SLOT_TRADE_ADULT, SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT, SLOT_TRADE_ADULT,
};

void Inventory_ChangeEquipment(s16 equipment, u16 value) {
    gSaveContext.equips.equipment &= gEquipNegMasks[equipment];
    gSaveContext.equips.equipment |= value << gEquipShifts[equipment];
}

u8 Inventory_DeleteEquipment(PlayState* play, s16 equipment) {
    Player* player = GET_PLAYER(play);
    s32 pad;
    u16 equipValue = gSaveContext.equips.equipment & gEquipMasks[equipment];

    // "Erasing equipment item = %d  zzz=%d"
    osSyncPrintf("装備アイテム抹消 = %d  zzz=%d\n", equipment, equipValue);

    if (equipValue) {
        equipValue >>= gEquipShifts[equipment];

        gSaveContext.equips.equipment &= gEquipNegMasks[equipment];
        gSaveContext.inventory.equipment ^= OWNED_EQUIP_FLAG(equipment, equipValue - 1);

        if (equipment == EQUIP_TYPE_TUNIC) {
            gSaveContext.equips.equipment |= EQUIP_VALUE_TUNIC_KOKIRI << (EQUIP_TYPE_TUNIC * 4);
        }

        if (equipment == EQUIP_TYPE_SWORD) {
            gSaveContext.equips.buttonItems[0] = ITEM_NONE;
            gSaveContext.infTable[INFTABLE_1DX_INDEX] = 1;
        }

        Player_SetEquipmentData(play, player);
        play->pauseCtx.cursorSpecialPos = PAUSE_CURSOR_PAGE_LEFT;
    }

    return equipValue;
}

void Inventory_ChangeUpgrade(s16 upgrade, s16 value) {
    gSaveContext.inventory.upgrades &= gUpgradeNegMasks[upgrade];
    gSaveContext.inventory.upgrades |= value << gUpgradeShifts[upgrade];
}
