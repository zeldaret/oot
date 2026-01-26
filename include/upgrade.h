#ifndef UPGRADE_H
#define UPGRADE_H

#include "assert.h"
#include "ultra64/ultratypes.h"

typedef enum UpgradeType {
    /* 0x00 */ UPG_QUIVER,
    /* 0x01 */ UPG_BOMB_BAG,
    /* 0x02 */ UPG_STRENGTH,
    /* 0x03 */ UPG_SCALE,
    /* 0x04 */ UPG_WALLET,
    /* 0x05 */ UPG_BULLET_BAG,
    /* 0x06 */ UPG_DEKU_STICKS,
    /* 0x07 */ UPG_DEKU_NUTS,
    /* 0x08 */ UPG_MAX
} UpgradeType;

#define BIT_WIDTH_UPG_QUIVER 3

typedef enum QuiverUpgrades {
    /* 0 */ UPG_QUIVER_NONE,
    /* 1 */ UPG_QUIVER_NORMAL,
    /* 2 */ UPG_QUIVER_BIG,
    /* 3 */ UPG_QUIVER_BIGGEST,
    /* 4 */ UPG_QUIVER_MAX
} QuiverUpgrades;

static_assert(UPG_QUIVER_MAX <= 1 << BIT_WIDTH_UPG_QUIVER, "All quiver upgrade values should fit in its assigned bitwidth");

#define BIT_WIDTH_UPG_BOMB_BAG 3

typedef enum BombBagUpgrades {
    /* 0 */ UPG_BOMB_BAG_NONE,
    /* 1 */ UPG_BOMB_BAG_NORMAL,
    /* 2 */ UPG_BOMB_BAG_BIG,
    /* 3 */ UPG_BOMB_BAG_BIGGEST,
    /* 4 */ UPG_BOMB_BAG_MAX
} BombBagUpgrades;

static_assert(UPG_BOMB_BAG_MAX <= 1 << BIT_WIDTH_UPG_BOMB_BAG, "All bomb bag upgrade values should fit in its assigned bitwidth");

#define BIT_WIDTH_UPG_STRENGTH 3

typedef enum StrengthUpgrades {
    /* 0 */ UPG_STRENGTH_NONE,
    /* 1 */ UPG_STRENGTH_GORON_BRACELET,
    /* 2 */ UPG_STRENGTH_SILVER_GAUNTLETS,
    /* 3 */ UPG_STRENGTH_GOLD_GAUNTLETS,
    /* 4 */ UPG_STRENGTH_MAX
} StrengthUpgrades;

static_assert(UPG_STRENGTH_MAX <= 1 << BIT_WIDTH_UPG_STRENGTH, "All strength upgrade values should fit in its assigned bitwidth");

#define BIT_WIDTH_UPG_SCALE 3

typedef enum ScaleUpgrades {
    /* 0 */ UPG_SCALE_NONE,
    /* 1 */ UPG_SCALE_SILVER,
    /* 2 */ UPG_SCALE_GOLD,
    /* 3 */ UPG_SCALE_MAX
} ScaleUpgrades;

static_assert(UPG_SCALE_MAX <= 1 << BIT_WIDTH_UPG_SCALE, "All scale upgrade values should fit in its assigned bitwidth");

#define BIT_WIDTH_UPG_WALLET 2

typedef enum WalletUpgrades {
    /* 0 */ UPG_WALLET_CHILD,
    /* 1 */ UPG_WALLET_ADULT,
    /* 2 */ UPG_WALLET_GIANT,
    /* 3 */ UPG_WALLET_MAX
} WalletUpgrades;

static_assert(UPG_WALLET_MAX <= 1 << BIT_WIDTH_UPG_WALLET, "All wallet upgrade values should fit in its assigned bitwidth");

#define BIT_WIDTH_UPG_BULLET_BAG 3

typedef enum BulletBagUpgrades {
    /* 0 */ UPG_BULLET_BAG_NONE,
    /* 1 */ UPG_BULLET_BAG_NORMAL,
    /* 2 */ UPG_BULLET_BAG_BIG,
    /* 3 */ UPG_BULLET_BAG_BIGGEST,
    /* 4 */ UPG_BULLET_BAG_MAX
} BulletBagUpgrades;

static_assert(UPG_BULLET_BAG_MAX <= 1 << BIT_WIDTH_UPG_BULLET_BAG, "All bullet bag upgrade values should fit in its assigned bitwidth");

#define BIT_WIDTH_UPG_DEKU_STICKS 3

typedef enum DekuStickUpgrades {
    /* 0 */ UPG_DEKU_STICKS_NONE,
    /* 1 */ UPG_DEKU_STICKS_10,
    /* 2 */ UPG_DEKU_STICKS_20,
    /* 3 */ UPG_DEKU_STICKS_30,
    /* 4 */ UPG_DEKU_STICKS_MAX
} DekuStickUpgrades;

static_assert(UPG_DEKU_STICKS_MAX <= 1 << BIT_WIDTH_UPG_DEKU_STICKS, "All deku stick upgrade values should fit in its assigned bitwidth");

#define BIT_WIDTH_UPG_DEKU_NUTS 3

typedef enum DekuNutUpgrades {
    /* 0 */ UPG_DEKU_NUTS_NONE,
    /* 1 */ UPG_DEKU_NUTS_20,
    /* 2 */ UPG_DEKU_NUTS_30,
    /* 3 */ UPG_DEKU_NUTS_40,
    /* 4 */ UPG_DEKU_NUTS_MAX
} DekuNutUpgrades;

static_assert(UPG_DEKU_NUTS_MAX <= 1 << BIT_WIDTH_UPG_DEKU_NUTS, "All deku nut upgrade values should fit in its assigned bitwidth");

#define BITS_PER_BYTE 8

static_assert(
    BIT_WIDTH_UPG_QUIVER +
    BIT_WIDTH_UPG_BOMB_BAG +
    BIT_WIDTH_UPG_STRENGTH +
    BIT_WIDTH_UPG_SCALE +
    BIT_WIDTH_UPG_WALLET +
    BIT_WIDTH_UPG_BULLET_BAG +
    BIT_WIDTH_UPG_DEKU_STICKS +
    BIT_WIDTH_UPG_DEKU_NUTS <= sizeof(u32) * BITS_PER_BYTE,
    "Upgrades must fit in a u32"
);

#define SHIFT_UPG_QUIVER       0
#define SHIFT_UPG_BOMB_BAG     (SHIFT_UPG_QUIVER + BIT_WIDTH_UPG_QUIVER)
#define SHIFT_UPG_STRENGTH     (SHIFT_UPG_BOMB_BAG + BIT_WIDTH_UPG_BOMB_BAG)
#define SHIFT_UPG_SCALE        (SHIFT_UPG_STRENGTH + BIT_WIDTH_UPG_STRENGTH)
#define SHIFT_UPG_WALLET       (SHIFT_UPG_SCALE + BIT_WIDTH_UPG_SCALE)
#define SHIFT_UPG_BULLET_BAG   (SHIFT_UPG_WALLET + BIT_WIDTH_UPG_WALLET)
#define SHIFT_UPG_DEKU_STICKS  (SHIFT_UPG_BULLET_BAG + BIT_WIDTH_UPG_BULLET_BAG)
#define SHIFT_UPG_DEKU_NUTS    (SHIFT_UPG_DEKU_STICKS + BIT_WIDTH_UPG_DEKU_STICKS)

#ifndef GLUE
# define GLUE(a, b) a##b
#endif
#ifndef GLUE2
# define GLUE2(a, b) GLUE(a, b)
#endif

#define GET_UPGRADE_BITMASK(upg) (((1 << GLUE2(BIT_WIDTH_, upg)) - 1) << GLUE2(SHIFT_, upg))

#define GET_PACKED_UPGRADE_VALUE(upgValue, upg) ((upgValue & ((1 << GLUE2(BIT_WIDTH_, upg)) - 1)) << GLUE2(SHIFT_, upg))

#define GET_PACKED_UPGRADES_VALUE(quiver, bombBag, strength, scale, wallet, bulletBag, dekuSticks, dekuNuts) \
    (                                                                                                        \
        GET_PACKED_UPGRADE_VALUE(quiver,     UPG_QUIVER)      |                                              \
        GET_PACKED_UPGRADE_VALUE(bombBag,    UPG_BOMB_BAG)    |                                              \
        GET_PACKED_UPGRADE_VALUE(strength,   UPG_STRENGTH)    |                                              \
        GET_PACKED_UPGRADE_VALUE(scale,      UPG_SCALE)       |                                              \
        GET_PACKED_UPGRADE_VALUE(wallet,     UPG_WALLET)      |                                              \
        GET_PACKED_UPGRADE_VALUE(bulletBag,  UPG_BULLET_BAG)  |                                              \
        GET_PACKED_UPGRADE_VALUE(dekuSticks, UPG_DEKU_STICKS) |                                              \
        GET_PACKED_UPGRADE_VALUE(dekuNuts,   UPG_DEKU_NUTS)                                                  \
    )

#define CUR_UPG_VALUE(upg) ((s32)(gSaveContext.save.info.inventory.upgrades & gUpgradeMasks[upg]) >> gUpgradeShifts[upg])
#define CAPACITY(upg, value) gUpgradeCapacities[upg][value]
#define CUR_CAPACITY(upg) CAPACITY(upg, CUR_UPG_VALUE(upg))

#endif
