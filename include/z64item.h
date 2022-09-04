#ifndef Z64ITEM_H
#define Z64ITEM_H

typedef enum {
    /* 0 */ EQUIP_TYPE_SWORD,
    /* 1 */ EQUIP_TYPE_SHIELD,
    /* 2 */ EQUIP_TYPE_TUNIC,
    /* 3 */ EQUIP_TYPE_BOOTS,
    /* 4 */ EQUIP_TYPE_MAX
} EquipmentType;

// `EquipInv*` enums are for Inventory.equipment (for example used in the `CHECK_OWNED_EQUIP` macro)

typedef enum {
    /* 0 */ EQUIP_INV_SWORD_KOKIRI,
    /* 1 */ EQUIP_INV_SWORD_MASTER,
    /* 2 */ EQUIP_INV_SWORD_BGS,
    /* 3 */ EQUIP_INV_SWORD_BROKENGIANTKNIFE
} EquipInvSword;

typedef enum {
    /* 0 */ EQUIP_INV_SHIELD_DEKU,
    /* 1 */ EQUIP_INV_SHIELD_HYLIAN,
    /* 2 */ EQUIP_INV_SHIELD_MIRROR
} EquipInvShield;

typedef enum {
    /* 0 */ EQUIP_INV_TUNIC_KOKIRI,
    /* 1 */ EQUIP_INV_TUNIC_GORON,
    /* 2 */ EQUIP_INV_TUNIC_ZORA
} EquipInvTunic;

typedef enum {
    /* 0 */ EQUIP_INV_BOOTS_KOKIRI,
    /* 1 */ EQUIP_INV_BOOTS_IRON,
    /* 2 */ EQUIP_INV_BOOTS_HOVER
} EquipInvBoots;

// `EquipValue*` enums are for ItemEquips.equipment (for example used in the `CUR_EQUIP_VALUE` macro)

typedef enum {
    /* 0 */ EQUIP_VALUE_SWORD_NONE,
    /* 1 */ EQUIP_VALUE_SWORD_KOKIRI,
    /* 2 */ EQUIP_VALUE_SWORD_MASTER,
    /* 3 */ EQUIP_VALUE_SWORD_BGS,
    /* 4 */ EQUIP_VALUE_SWORD_MAX
} EquipValueSword;

typedef enum {
    /* 0 */ EQUIP_VALUE_SHIELD_NONE,
    /* 1 */ EQUIP_VALUE_SHIELD_DEKU,
    /* 2 */ EQUIP_VALUE_SHIELD_HYLIAN,
    /* 3 */ EQUIP_VALUE_SHIELD_MIRROR,
    /* 4 */ EQUIP_VALUE_SHIELD_MAX
} EquipValueShield;

typedef enum {
    /* 0 */ EQUIP_VALUE_TUNIC_NONE,
    /* 1 */ EQUIP_VALUE_TUNIC_KOKIRI,
    /* 2 */ EQUIP_VALUE_TUNIC_GORON,
    /* 3 */ EQUIP_VALUE_TUNIC_ZORA,
    /* 4 */ EQUIP_VALUE_TUNIC_MAX
} EquipValueTunic;

typedef enum {
    /* 0 */ EQUIP_VALUE_BOOTS_NONE,
    /* 1 */ EQUIP_VALUE_BOOTS_KOKIRI,
    /* 2 */ EQUIP_VALUE_BOOTS_IRON,
    /* 3 */ EQUIP_VALUE_BOOTS_HOVER,
    /* 4 */ EQUIP_VALUE_BOOTS_MAX
} EquipValueBoots;

typedef enum {
    /* 0x00 */ UPG_QUIVER,
    /* 0x01 */ UPG_BOMB_BAG,
    /* 0x02 */ UPG_STRENGTH,
    /* 0x03 */ UPG_SCALE,
    /* 0x04 */ UPG_WALLET,
    /* 0x05 */ UPG_BULLET_BAG,
    /* 0x06 */ UPG_STICKS,
    /* 0x07 */ UPG_NUTS,
    /* 0x08 */ UPG_MAX
} UpgradeType;

typedef enum {
    /* 0x00 */ QUEST_MEDALLION_FOREST,
    /* 0x01 */ QUEST_MEDALLION_FIRE,
    /* 0x02 */ QUEST_MEDALLION_WATER,
    /* 0x03 */ QUEST_MEDALLION_SPIRIT,
    /* 0x04 */ QUEST_MEDALLION_SHADOW,
    /* 0x05 */ QUEST_MEDALLION_LIGHT,
    /* 0x06 */ QUEST_SONG_MINUET,
    /* 0x07 */ QUEST_SONG_BOLERO,
    /* 0x08 */ QUEST_SONG_SERENADE,
    /* 0x09 */ QUEST_SONG_REQUIEM,
    /* 0x0A */ QUEST_SONG_NOCTURNE,
    /* 0x0B */ QUEST_SONG_PRELUDE,
    /* 0x0C */ QUEST_SONG_LULLABY,
    /* 0x0D */ QUEST_SONG_EPONA,
    /* 0x0E */ QUEST_SONG_SARIA,
    /* 0x0F */ QUEST_SONG_SUN,
    /* 0x10 */ QUEST_SONG_TIME,
    /* 0x11 */ QUEST_SONG_STORMS,
    /* 0x12 */ QUEST_KOKIRI_EMERALD,
    /* 0x13 */ QUEST_GORON_RUBY,
    /* 0x14 */ QUEST_ZORA_SAPPHIRE,
    /* 0x15 */ QUEST_STONE_OF_AGONY,
    /* 0x16 */ QUEST_GERUDO_CARD,
    /* 0x17 */ QUEST_SKULL_TOKEN,
    /* 0x1C */ QUEST_HEART_PIECE_COUNT = 0x1C
} QuestItem;

typedef enum {
    /* 0x00 */ DUNGEON_KEY_BOSS,
    /* 0x01 */ DUNGEON_COMPASS,
    /* 0x02 */ DUNGEON_MAP
} DungeonItem;

typedef enum {
    /* 0x00 */ SLOT_STICK,
    /* 0x01 */ SLOT_NUT,
    /* 0x02 */ SLOT_BOMB,
    /* 0x03 */ SLOT_BOW,
    /* 0x04 */ SLOT_ARROW_FIRE,
    /* 0x05 */ SLOT_DINS_FIRE,
    /* 0x06 */ SLOT_SLINGSHOT,
    /* 0x07 */ SLOT_OCARINA,
    /* 0x08 */ SLOT_BOMBCHU,
    /* 0x09 */ SLOT_HOOKSHOT,
    /* 0x0A */ SLOT_ARROW_ICE,
    /* 0x0B */ SLOT_FARORES_WIND,
    /* 0x0C */ SLOT_BOOMERANG,
    /* 0x0D */ SLOT_LENS,
    /* 0x0E */ SLOT_BEAN,
    /* 0x0F */ SLOT_HAMMER,
    /* 0x10 */ SLOT_ARROW_LIGHT,
    /* 0x11 */ SLOT_NAYRUS_LOVE,
    /* 0x12 */ SLOT_BOTTLE_1,
    /* 0x13 */ SLOT_BOTTLE_2,
    /* 0x14 */ SLOT_BOTTLE_3,
    /* 0x15 */ SLOT_BOTTLE_4,
    /* 0x16 */ SLOT_TRADE_ADULT,
    /* 0x17 */ SLOT_TRADE_CHILD,
    /* 0xFF */ SLOT_NONE = 0xFF
} InventorySlot;

typedef enum {
    /* 0x00 */ ITEM_DEKU_STICK,
    /* 0x01 */ ITEM_DEKU_NUT,
    /* 0x02 */ ITEM_BOMB,
    /* 0x03 */ ITEM_BOW,
    /* 0x04 */ ITEM_ARROW_FIRE,
    /* 0x05 */ ITEM_DINS_FIRE,
    /* 0x06 */ ITEM_SLINGSHOT,
    /* 0x07 */ ITEM_OCARINA_FAIRY,
    /* 0x08 */ ITEM_OCARINA_OF_TIME,
    /* 0x09 */ ITEM_BOMBCHU,
    /* 0x0A */ ITEM_HOOKSHOT,
    /* 0x0B */ ITEM_LONGSHOT,
    /* 0x0C */ ITEM_ARROW_ICE,
    /* 0x0D */ ITEM_FARORES_WIND,
    /* 0x0E */ ITEM_BOOMERANG,
    /* 0x0F */ ITEM_LENS_OF_TRUTH,
    /* 0x10 */ ITEM_MAGIC_BEANS,
    /* 0x11 */ ITEM_HAMMER,
    /* 0x12 */ ITEM_ARROW_LIGHT,
    /* 0x13 */ ITEM_NAYRUS_LOVE,
    /* 0x14 */ ITEM_BOTTLE_EMPTY,
    /* 0x15 */ ITEM_BOTTLE_POTION_RED,
    /* 0x16 */ ITEM_BOTTLE_POTION_GREEN,
    /* 0x17 */ ITEM_BOTTLE_POTION_BLUE,
    /* 0x18 */ ITEM_BOTTLE_FAIRY,
    /* 0x19 */ ITEM_BOTTLE_FISH,
    /* 0x1A */ ITEM_BOTTLE_MILK_FULL,
    /* 0x1B */ ITEM_BOTTLE_RUTOS_LETTER,
    /* 0x1C */ ITEM_BOTTLE_BLUE_FIRE,
    /* 0x1D */ ITEM_BOTTLE_BUG,
    /* 0x1E */ ITEM_BOTTLE_BIG_POE,
    /* 0x1F */ ITEM_BOTTLE_MILK_HALF,
    /* 0x20 */ ITEM_BOTTLE_POE,
    /* 0x21 */ ITEM_WEIRD_EGG,
    /* 0x22 */ ITEM_CUCCO,
    /* 0x23 */ ITEM_ZELDAS_LETTER,
    /* 0x24 */ ITEM_MASK_KEATON,
    /* 0x25 */ ITEM_MASK_SKULL,
    /* 0x26 */ ITEM_MASK_SPOOKY,
    /* 0x27 */ ITEM_MASK_BUNNY_HOOD,
    /* 0x28 */ ITEM_MASK_GORON,
    /* 0x29 */ ITEM_MASK_ZORA,
    /* 0x2A */ ITEM_MASK_GERUDO,
    /* 0x2B */ ITEM_MASK_TRUTH,
    /* 0x2C */ ITEM_SOLD_OUT,
    /* 0x2D */ ITEM_POCKET_EGG,
    /* 0x2E */ ITEM_POCKET_CUCCO,
    /* 0x2F */ ITEM_COJIRO,
    /* 0x30 */ ITEM_ODD_MUSHROOM,
    /* 0x31 */ ITEM_ODD_POTION,
    /* 0x32 */ ITEM_POACHERS_SAW,
    /* 0x33 */ ITEM_BROKEN_GORONS_SWORD,
    /* 0x34 */ ITEM_PRESCRIPTION,
    /* 0x35 */ ITEM_EYEBALL_FROG,
    /* 0x36 */ ITEM_EYE_DROPS,
    /* 0x37 */ ITEM_CLAIM_CHECK,
    /* 0x38 */ ITEM_BOW_FIRE,
    /* 0x39 */ ITEM_BOW_ICE,
    /* 0x3A */ ITEM_BOW_LIGHT,
    /* 0x3B */ ITEM_SWORD_KOKIRI,
    /* 0x3C */ ITEM_SWORD_MASTER,
    /* 0x3D */ ITEM_SWORD_BIGGORON,
    /* 0x3E */ ITEM_SHIELD_DEKU,
    /* 0x3F */ ITEM_SHIELD_HYLIAN,
    /* 0x40 */ ITEM_SHIELD_MIRROR,
    /* 0x41 */ ITEM_TUNIC_KOKIRI,
    /* 0x42 */ ITEM_TUNIC_GORON,
    /* 0x43 */ ITEM_TUNIC_ZORA,
    /* 0x44 */ ITEM_BOOTS_KOKIRI,
    /* 0x45 */ ITEM_BOOTS_IRON,
    /* 0x46 */ ITEM_BOOTS_HOVER,
    /* 0x47 */ ITEM_BULLET_BAG_30,
    /* 0x48 */ ITEM_BULLET_BAG_40,
    /* 0x49 */ ITEM_BULLET_BAG_50,
    /* 0x4A */ ITEM_QUIVER_30,
    /* 0x4B */ ITEM_QUIVER_40,
    /* 0x4C */ ITEM_QUIVER_50,
    /* 0x4D */ ITEM_BOMB_BAG_20,
    /* 0x4E */ ITEM_BOMB_BAG_30,
    /* 0x4F */ ITEM_BOMB_BAG_40,
    /* 0x50 */ ITEM_STRENGTH_GORONS_BRACELET,
    /* 0x51 */ ITEM_STRENGTH_SILVER_GAUNTLETS,
    /* 0x52 */ ITEM_STRENGTH_GOLD_GAUNTLETS,
    /* 0x53 */ ITEM_SCALE_SILVER,
    /* 0x54 */ ITEM_SCALE_GOLDEN,
    /* 0x55 */ ITEM_GIANTS_KNIFE,
    /* 0x56 */ ITEM_ADULTS_WALLET,
    /* 0x57 */ ITEM_GIANTS_WALLET,
    /* 0x58 */ ITEM_DEKU_SEEDS,
    /* 0x59 */ ITEM_FISHING_POLE,
    /* 0x5A */ ITEM_SONG_MINUET,
    /* 0x5B */ ITEM_SONG_BOLERO,
    /* 0x5C */ ITEM_SONG_SERENADE,
    /* 0x5D */ ITEM_SONG_REQUIEM,
    /* 0x5E */ ITEM_SONG_NOCTURNE,
    /* 0x5F */ ITEM_SONG_PRELUDE,
    /* 0x60 */ ITEM_SONG_LULLABY,
    /* 0x61 */ ITEM_SONG_EPONA,
    /* 0x62 */ ITEM_SONG_SARIA,
    /* 0x63 */ ITEM_SONG_SUN,
    /* 0x64 */ ITEM_SONG_TIME,
    /* 0x65 */ ITEM_SONG_STORMS,
    /* 0x66 */ ITEM_MEDALLION_FOREST,
    /* 0x67 */ ITEM_MEDALLION_FIRE,
    /* 0x68 */ ITEM_MEDALLION_WATER,
    /* 0x69 */ ITEM_MEDALLION_SPIRIT,
    /* 0x6A */ ITEM_MEDALLION_SHADOW,
    /* 0x6B */ ITEM_MEDALLION_LIGHT,
    /* 0x6C */ ITEM_KOKIRI_EMERALD,
    /* 0x6D */ ITEM_GORON_RUBY,
    /* 0x6E */ ITEM_ZORA_SAPPHIRE,
    /* 0x6F */ ITEM_STONE_OF_AGONY,
    /* 0x70 */ ITEM_GERUDOS_CARD,
    /* 0x71 */ ITEM_SKULL_TOKEN,
    /* 0x72 */ ITEM_HEART_CONTAINER,
    /* 0x73 */ ITEM_HEART_PIECE,
    /* 0x74 */ ITEM_DUNGEON_BOSS_KEY,
    /* 0x75 */ ITEM_DUNGEON_COMPASS,
    /* 0x76 */ ITEM_DUNGEON_MAP,
    /* 0x77 */ ITEM_SMALL_KEY,
    /* 0x78 */ ITEM_MAGIC_JAR_SMALL,
    /* 0x79 */ ITEM_MAGIC_JAR_BIG,
    /* 0x7A */ ITEM_HEART_PIECE_2,
    /* 0x7B */ ITEM_INVALID_1,
    /* 0x7C */ ITEM_INVALID_2,
    /* 0x7D */ ITEM_INVALID_3,
    /* 0x7E */ ITEM_INVALID_4,
    /* 0x7F */ ITEM_INVALID_5,
    /* 0x80 */ ITEM_INVALID_6,
    /* 0x81 */ ITEM_INVALID_7,
    /* 0x82 */ ITEM_MILK,
    /* 0x83 */ ITEM_RECOVERY_HEART,
    /* 0x84 */ ITEM_RUPEE_GREEN,
    /* 0x85 */ ITEM_RUPEE_BLUE,
    /* 0x86 */ ITEM_RUPEE_RED,
    /* 0x87 */ ITEM_RUPEE_PURPLE,
    /* 0x88 */ ITEM_RUPEE_GOLD,
    /* 0x89 */ ITEM_INVALID_8,
    /* 0x8A */ ITEM_DEKU_STICKS_5,
    /* 0x8B */ ITEM_DEKU_STICKS_10,
    /* 0x8C */ ITEM_DEKU_NUTS_5,
    /* 0x8D */ ITEM_DEKU_NUTS_10,
    /* 0x8E */ ITEM_BOMBS_5,
    /* 0x8F */ ITEM_BOMBS_10,
    /* 0x90 */ ITEM_BOMBS_20,
    /* 0x91 */ ITEM_BOMBS_30,
    /* 0x92 */ ITEM_ARROWS_5,
    /* 0x93 */ ITEM_ARROWS_10,
    /* 0x94 */ ITEM_ARROWS_30,
    /* 0x95 */ ITEM_DEKU_SEEDS_30,
    /* 0x96 */ ITEM_BOMBCHUS_5,
    /* 0x97 */ ITEM_BOMBCHUS_20,
    /* 0x98 */ ITEM_DEKU_STICK_UPGRADE_20,
    /* 0x99 */ ITEM_DEKU_STICK_UPGRADE_30,
    /* 0x9A */ ITEM_DEKU_NUT_UPGRADE_30,
    /* 0x9B */ ITEM_DEKU_NUT_UPGRADE_40,
    /* 0xFC */ ITEM_LAST_USED = 0xFC,
    /* 0xFE */ ITEM_NONE_FE = 0xFE,
    /* 0xFF */ ITEM_NONE = 0xFF
} ItemID;

#define ITEM_TRADE_CHILD ITEM_WEIRD_EGG
#define ITEM_TRADE_ADULT ITEM_POCKET_EGG

// Get Item result may vary depending on context (chest/shop/scrub/drop)
typedef enum {
    /* 0x00 */ GI_NONE,
    /* 0x01 */ GI_BOMBS_5,
    /* 0x02 */ GI_NUTS_5,
    /* 0x03 */ GI_BOMBCHUS_10,
    /* 0x04 */ GI_BOW,
    /* 0x05 */ GI_SLINGSHOT,
    /* 0x06 */ GI_BOOMERANG,
    /* 0x07 */ GI_STICKS_1,
    /* 0x08 */ GI_HOOKSHOT,
    /* 0x09 */ GI_LONGSHOT,
    /* 0x0A */ GI_LENS,
    /* 0x0B */ GI_LETTER_ZELDA,
    /* 0x0C */ GI_OCARINA_OOT,
    /* 0x0D */ GI_HAMMER,
    /* 0x0E */ GI_COJIRO,
    /* 0x0F */ GI_BOTTLE,
    /* 0x10 */ GI_POTION_RED,
    /* 0x11 */ GI_POTION_GREEN,
    /* 0x12 */ GI_POTION_BLUE,
    /* 0x13 */ GI_FAIRY,
    /* 0x14 */ GI_MILK_BOTTLE,
    /* 0x15 */ GI_LETTER_RUTO,
    /* 0x16 */ GI_BEAN,
    /* 0x17 */ GI_MASK_SKULL,
    /* 0x18 */ GI_MASK_SPOOKY,
    /* 0x19 */ GI_CHICKEN, // uses bean message ID
    /* 0x1A */ GI_MASK_KEATON,
    /* 0x1B */ GI_MASK_BUNNY,
    /* 0x1C */ GI_MASK_TRUTH,
    /* 0x1D */ GI_POCKET_EGG,
    /* 0x1E */ GI_POCKET_CUCCO, // uses bean message ID
    /* 0x1F */ GI_ODD_MUSHROOM,
    /* 0x20 */ GI_ODD_POTION,
    /* 0x21 */ GI_SAW,
    /* 0x22 */ GI_SWORD_BROKEN,
    /* 0x23 */ GI_PRESCRIPTION,
    /* 0x24 */ GI_FROG,
    /* 0x25 */ GI_EYEDROPS,
    /* 0x26 */ GI_CLAIM_CHECK,
    /* 0x27 */ GI_SWORD_KOKIRI,
    /* 0x28 */ GI_SWORD_KNIFE,
    /* 0x29 */ GI_SHIELD_DEKU,   // or blue rupee if you have the shield
    /* 0x2A */ GI_SHIELD_HYLIAN, // or blue rupee if you have the shield
    /* 0x2B */ GI_SHIELD_MIRROR,
    /* 0x2C */ GI_TUNIC_GORON, // or blue rupee if you have the tunic
    /* 0x2D */ GI_TUNIC_ZORA,  // or blue rupee if you have the tunic
    /* 0x2E */ GI_BOOTS_IRON,
    /* 0x2F */ GI_BOOTS_HOVER,
    /* 0x30 */ GI_QUIVER_40,
    /* 0x31 */ GI_QUIVER_50,
    /* 0x32 */ GI_BOMB_BAG_20,
    /* 0x33 */ GI_BOMB_BAG_30,
    /* 0x34 */ GI_BOMB_BAG_40,
    /* 0x35 */ GI_GAUNTLETS_SILVER,
    /* 0x36 */ GI_GAUNTLETS_GOLD,
    /* 0x37 */ GI_SCALE_SILVER,
    /* 0x38 */ GI_SCALE_GOLD,
    /* 0x39 */ GI_STONE_OF_AGONY,
    /* 0x3A */ GI_GERUDO_CARD,
    /* 0x3B */ GI_OCARINA_FAIRY, // uses Ocarina of Time message ID
    /* 0x3C */ GI_SEEDS_5,
    /* 0x3D */ GI_HEART_CONTAINER,
    /* 0x3E */ GI_HEART_PIECE,
    /* 0x3F */ GI_KEY_BOSS,
    /* 0x40 */ GI_COMPASS,
    /* 0x41 */ GI_MAP,
    /* 0x42 */ GI_KEY_SMALL,
    /* 0x43 */ GI_MAGIC_SMALL, // or blue rupee if not from a drop
    /* 0x44 */ GI_MAGIC_LARGE, // or blue rupee if not from a drop
    /* 0x45 */ GI_WALLET_ADULT,
    /* 0x46 */ GI_WALLET_GIANT,
    /* 0x47 */ GI_WEIRD_EGG,
    /* 0x48 */ GI_RECOVERY_HEART,
    /* 0x49 */ GI_ARROWS_SMALL,  // amount changes depending on context
    /* 0x4A */ GI_ARROWS_MEDIUM, // amount changes depending on context
    /* 0x4B */ GI_ARROWS_LARGE,  // amount changes depending on context
    /* 0x4C */ GI_RUPEE_GREEN,
    /* 0x4D */ GI_RUPEE_BLUE,
    /* 0x4E */ GI_RUPEE_RED,
    /* 0x4F */ GI_HEART_CONTAINER_2,
    /* 0x50 */ GI_MILK,
    /* 0x51 */ GI_MASK_GORON,
    /* 0x52 */ GI_MASK_ZORA,
    /* 0x53 */ GI_MASK_GERUDO,
    /* 0x54 */ GI_BRACELET,
    /* 0x55 */ GI_RUPEE_PURPLE,
    /* 0x56 */ GI_RUPEE_GOLD,
    /* 0x57 */ GI_SWORD_BGS,
    /* 0x58 */ GI_ARROW_FIRE,
    /* 0x59 */ GI_ARROW_ICE,
    /* 0x5A */ GI_ARROW_LIGHT,
    /* 0x5B */ GI_SKULL_TOKEN,
    /* 0x5C */ GI_DINS_FIRE,
    /* 0x5D */ GI_FARORES_WIND,
    /* 0x5E */ GI_NAYRUS_LOVE,
    /* 0x5F */ GI_BULLET_BAG_30,
    /* 0x60 */ GI_BULLET_BAG_40,
    /* 0x61 */ GI_STICKS_5,
    /* 0x62 */ GI_STICKS_10,
    /* 0x63 */ GI_NUTS_5_2,
    /* 0x64 */ GI_NUTS_10,
    /* 0x65 */ GI_BOMBS_1,
    /* 0x66 */ GI_BOMBS_10,
    /* 0x67 */ GI_BOMBS_20,
    /* 0x68 */ GI_BOMBS_30,
    /* 0x69 */ GI_SEEDS_30,
    /* 0x6A */ GI_BOMBCHUS_5,
    /* 0x6B */ GI_BOMBCHUS_20,
    /* 0x6C */ GI_FISH,
    /* 0x6D */ GI_BUGS,
    /* 0x6E */ GI_BLUE_FIRE,
    /* 0x6F */ GI_POE,
    /* 0x70 */ GI_BIG_POE,
    /* 0x71 */ GI_DOOR_KEY,          // specific to chest minigame
    /* 0x72 */ GI_RUPEE_GREEN_LOSE,  // specific to chest minigame
    /* 0x73 */ GI_RUPEE_BLUE_LOSE,   // specific to chest minigame
    /* 0x74 */ GI_RUPEE_RED_LOSE,    // specific to chest minigame
    /* 0x75 */ GI_RUPEE_PURPLE_LOSE, // specific to chest minigame
    /* 0x76 */ GI_HEART_PIECE_WIN,   // specific to chest minigame
    /* 0x77 */ GI_STICK_UPGRADE_20,
    /* 0x78 */ GI_STICK_UPGRADE_30,
    /* 0x79 */ GI_NUT_UPGRADE_30,
    /* 0x7A */ GI_NUT_UPGRADE_40,
    /* 0x7B */ GI_BULLET_BAG_50,
    /* 0x7C */ GI_ICE_TRAP, // freezes link when opened from a chest
    /* 0x7D */ GI_TEXT_0, // no model appears over Link, shows text id 0 (pocket egg)
    /* 0x7E */ GI_MAX
} GetItemID;

typedef enum {
    /* 0x00 */ GID_BOTTLE,
    /* 0x01 */ GID_KEY_SMALL,
    /* 0x02 */ GID_SONG_MINUET,
    /* 0x03 */ GID_SONG_BOLERO,
    /* 0x04 */ GID_SONG_SERENADE,
    /* 0x05 */ GID_SONG_REQUIEM,
    /* 0x06 */ GID_SONG_NOCTURNE,
    /* 0x07 */ GID_SONG_PRELUDE,
    /* 0x08 */ GID_RECOVERY_HEART,
    /* 0x09 */ GID_KEY_BOSS,
    /* 0x0A */ GID_COMPASS,
    /* 0x0B */ GID_MEDALLION_FOREST,
    /* 0x0C */ GID_MEDALLION_FIRE,
    /* 0x0D */ GID_MEDALLION_WATER,
    /* 0x0E */ GID_MEDALLION_SPIRIT,
    /* 0x0F */ GID_MEDALLION_SHADOW,
    /* 0x10 */ GID_MEDALLION_LIGHT,
    /* 0x11 */ GID_NUTS,
    /* 0x12 */ GID_HEART_CONTAINER,
    /* 0x13 */ GID_HEART_PIECE,
    /* 0x14 */ GID_QUIVER_30,
    /* 0x15 */ GID_QUIVER_40,
    /* 0x16 */ GID_QUIVER_50,
    /* 0x17 */ GID_BOMB_BAG_20,
    /* 0x18 */ GID_BOMB_BAG_30,
    /* 0x19 */ GID_BOMB_BAG_40,
    /* 0x1A */ GID_STICK,
    /* 0x1B */ GID_DUNGEON_MAP,
    /* 0x1C */ GID_SHIELD_DEKU,
    /* 0x1D */ GID_MAGIC_SMALL,
    /* 0x1E */ GID_MAGIC_LARGE,
    /* 0x1F */ GID_BOMB,
    /* 0x20 */ GID_STONE_OF_AGONY,
    /* 0x21 */ GID_WALLET_ADULT,
    /* 0x22 */ GID_WALLET_GIANT,
    /* 0x23 */ GID_GERUDO_CARD,
    /* 0x24 */ GID_ARROWS_SMALL,
    /* 0x25 */ GID_ARROWS_MEDIUM,
    /* 0x26 */ GID_ARROWS_LARGE,
    /* 0x27 */ GID_BOMBCHU,
    /* 0x28 */ GID_EGG,
    /* 0x29 */ GID_SCALE_SILVER,
    /* 0x2A */ GID_SCALE_GOLDEN,
    /* 0x2B */ GID_SHIELD_HYLIAN,
    /* 0x2C */ GID_HOOKSHOT,
    /* 0x2D */ GID_LONGSHOT,
    /* 0x2E */ GID_OCARINA_TIME,
    /* 0x2F */ GID_MILK,
    /* 0x30 */ GID_MASK_KEATON,
    /* 0x31 */ GID_MASK_SPOOKY,
    /* 0x32 */ GID_SLINGSHOT,
    /* 0x33 */ GID_BOOMERANG,
    /* 0x34 */ GID_BOW,
    /* 0x35 */ GID_LENS,
    /* 0x36 */ GID_POTION_GREEN,
    /* 0x37 */ GID_POTION_RED,
    /* 0x38 */ GID_POTION_BLUE,
    /* 0x39 */ GID_SHIELD_MIRROR,
    /* 0x3A */ GID_LETTER_ZELDA,
    /* 0x3B */ GID_TUNIC_GORON,
    /* 0x3C */ GID_TUNIC_ZORA,
    /* 0x3D */ GID_BEAN,
    /* 0x3E */ GID_FISH,
    /* 0x3F */ GID_SAW,
    /* 0x40 */ GID_HAMMER,
    /* 0x41 */ GID_GRASS,
    /* 0x42 */ GID_SWORD_BGS,
    /* 0x43 */ GID_CHICKEN,
    /* 0x44 */ GID_LETTER_RUTO,
    /* 0x45 */ GID_OCARINA_FAIRY,
    /* 0x46 */ GID_BOOTS_IRON,
    /* 0x47 */ GID_SEEDS,
    /* 0x48 */ GID_GAUNTLETS_SILVER,
    /* 0x49 */ GID_GAUNTLETS_GOLD,
    /* 0x4A */ GID_NCOIN_YELLOW,
    /* 0x4B */ GID_NCOIN_RED,
    /* 0x4C */ GID_NCOIN_GREEN,
    /* 0x4D */ GID_NCOIN_BLUE,
    /* 0x4E */ GID_MASK_SKULL,
    /* 0x4F */ GID_MASK_BUNNY,
    /* 0x50 */ GID_MASK_TRUTH,
    /* 0x51 */ GID_EYEDROPS,
    /* 0x52 */ GID_ODD_POTION,
    /* 0x53 */ GID_ODD_MUSHROOM,
    /* 0x54 */ GID_CLAIM_CHECK,
    /* 0x55 */ GID_SWORD_BROKEN,
    /* 0x56 */ GID_PRESCRIPTION,
    /* 0x57 */ GID_BRACELET,
    /* 0x58 */ GID_SOLDOUT,
    /* 0x59 */ GID_FROG,
    /* 0x5A */ GID_MASK_GORON,
    /* 0x5B */ GID_MASK_ZORA,
    /* 0x5C */ GID_MASK_GERUDO,
    /* 0x5D */ GID_COJIRO,
    /* 0x5E */ GID_BOOTS_HOVER,
    /* 0x5F */ GID_ARROW_FIRE,
    /* 0x60 */ GID_ARROW_ICE,
    /* 0x61 */ GID_ARROW_LIGHT,
    /* 0x62 */ GID_SKULL_TOKEN,
    /* 0x63 */ GID_DINS_FIRE,
    /* 0x64 */ GID_FARORES_WIND,
    /* 0x65 */ GID_NAYRUS_LOVE,
    /* 0x66 */ GID_BLUE_FIRE,
    /* 0x67 */ GID_BUG,
    /* 0x68 */ GID_BUTTERFLY,
    /* 0x69 */ GID_POE,
    /* 0x6A */ GID_FAIRY,
    /* 0x6B */ GID_BULLET_BAG,
    /* 0x6C */ GID_RUPEE_GREEN,
    /* 0x6D */ GID_RUPEE_BLUE,
    /* 0x6E */ GID_RUPEE_RED,
    /* 0x6F */ GID_BIG_POE,
    /* 0x70 */ GID_RUPEE_PURPLE,
    /* 0x71 */ GID_RUPEE_GOLD,
    /* 0x72 */ GID_BULLET_BAG_50,
    /* 0x73 */ GID_SWORD_KOKIRI,
    /* 0x74 */ GID_SKULL_TOKEN_2,
    /* 0x75 */ GID_MAX
} GetItemDrawID;

typedef enum {
    /* 0x00 */ EXCH_ITEM_NONE,
    /* 0x01 */ EXCH_ITEM_ZELDAS_LETTER,
    /* 0x02 */ EXCH_ITEM_WEIRD_EGG,
    /* 0x03 */ EXCH_ITEM_CUCCO,
    /* 0x04 */ EXCH_ITEM_MAGIC_BEANS,
    /* 0x05 */ EXCH_ITEM_POCKET_EGG,
    /* 0x06 */ EXCH_ITEM_POCKET_CUCCO,
    /* 0x07 */ EXCH_ITEM_COJIRO,
    /* 0x08 */ EXCH_ITEM_ODD_MUSHROOM,
    /* 0x09 */ EXCH_ITEM_ODD_POTION,
    /* 0x0A */ EXCH_ITEM_POACHERS_SAW,
    /* 0x0B */ EXCH_ITEM_BROKEN_GORONS_SWORD,
    /* 0x0C */ EXCH_ITEM_PRESCRIPTION,
    /* 0x0D */ EXCH_ITEM_EYEBALL_FROG,
    /* 0x0E */ EXCH_ITEM_EYE_DROPS,
    /* 0x0F */ EXCH_ITEM_CLAIM_CHECK,
    /* 0x10 */ EXCH_ITEM_MASK_SKULL,
    /* 0x11 */ EXCH_ITEM_MASK_SPOOKY,
    /* 0x12 */ EXCH_ITEM_MASK_KEATON,
    /* 0x13 */ EXCH_ITEM_MASK_BUNNY_HOOD,
    /* 0x14 */ EXCH_ITEM_MASK_TRUTH,
    /* 0x15 */ EXCH_ITEM_MASK_GORON,
    /* 0x16 */ EXCH_ITEM_MASK_ZORA,
    /* 0x17 */ EXCH_ITEM_MASK_GERUDO,
    /* 0x18 */ EXCH_ITEM_BOTTLE_FISH,
    /* 0x19 */ EXCH_ITEM_BOTTLE_BLUE_FIRE,
    /* 0x1A */ EXCH_ITEM_BOTTLE_BUG,
    /* 0x1B */ EXCH_ITEM_BOTTLE_POE,
    /* 0x1C */ EXCH_ITEM_BOTTLE_BIG_POE,
    /* 0x1D */ EXCH_ITEM_BOTTLE_RUTOS_LETTER,
    /* 0x1E */ EXCH_ITEM_MAX
} ExchangeItemID;

#endif
