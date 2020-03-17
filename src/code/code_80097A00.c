#include <ultra64.h>
#include <global.h>

// Bit Flag array in which gBitFlags[n] is literally (1 << n)
u32 gBitFlags[] =
{
    (1 <<  0),  (1 <<  1),  (1 <<  2),  (1 <<  3),
    (1 <<  4),  (1 <<  5),  (1 <<  6),  (1 <<  7),
    (1 <<  8),  (1 <<  9),  (1 << 10),  (1 << 11),
    (1 << 12),  (1 << 13),  (1 << 14),  (1 << 15),
    (1 << 16),  (1 << 17),  (1 << 18),  (1 << 19),
    (1 << 20),  (1 << 21),  (1 << 22),  (1 << 23),
    (1 << 24),  (1 << 25),  (1 << 26),  (1 << 27),
    (1 << 28),  (1 << 29),  (1 << 30),  (1 << 31),
};

u16 gEquipMasks[] = { 0x000F, 0x00F0, 0x0F00, 0xF000 };
u16 gEquipNegMasks[] = { 0xFFF0, 0xFF0F, 0xF0FF, 0x0FFF };
u32 gUpgradeMasks[] = { 0x00000007, 0x00000038, 0x000001C0, 0x00000E00, 0x00003000, 0x0001C000, 0x000E0000, 0x00700000 };
u32 gUpgradeNegMasks[] = { 0xFFFFFFF8, 0xFFFFFFC7, 0xFFFFFE3F, 0xFFFFF1FF, 0xFFFFCFFF, 0xFFFE3FFF, 0xFFF1FFFF, 0xFF8FFFFF };
u8 gEquipShifts[] = { 0, 4, 8, 12 };
u8 gUpgradeShifts[] = { 0, 3, 6, 9, 12, 14, 17, 20 };

u16 gUpgradeCapacities[][4] =
{
    {   0,  30,  40,  50 }, // Quivers
    {   0,  20,  30,  40 }, // Bomb Bags
    {   0,   0,   0,   0 }, // Unused (Scale)
    {   0,   0,   0,   0 }, // Unused (Strength)
    {  99, 200, 500, 500 }, // Wallets
    {   0,  30,  40,  50 }, // Deku Seed Bullet Bags
    {   0,  10,  20,  30 }, // Deku Stick Upgrades
    {   0,  20,  30,  40 }, // Deku Nut Upgrades
};

u32 D_8012723C[] = { 0x000000FF, 0x0000FF00, 0x00FF0000, 0xFF000000 }; // Unused
u32 D_8012724C[] = { 0, 8, 16, 24 }; // Unused

// TODO: use symbols for these icon textures once textures are properly in C
u32 gItemIcons[] =
{
    0x08000000,
    0x08001000,
    0x08002000,
    0x08003000,
    0x08004000,
    0x08005000,
    0x08006000,
    0x08007000,
    0x08008000,
    0x08009000,
    0x0800A000,
    0x0800B000,
    0x0800C000,
    0x0800D000,
    0x0800E000,
    0x0800F000,
    0x08010000,
    0x08011000,
    0x08012000,
    0x08013000,
    0x08014000,
    0x08015000,
    0x08016000,
    0x08017000,
    0x08018000,
    0x08019000,
    0x0801A000,
    0x0801B000,
    0x0801C000,
    0x0801D000,
    0x0801E000,
    0x0801F000,
    0x08020000,
    0x08021000,
    0x08022000,
    0x08023000,
    0x08024000,
    0x08025000,
    0x08026000,
    0x08027000,
    0x08028000,
    0x08029000,
    0x0802A000,
    0x0802B000,
    0x0802C000,
    0x0802D000,
    0x0802E000,
    0x0802F000,
    0x08030000,
    0x08031000,
    0x08032000,
    0x08033000,
    0x08034000,
    0x08035000,
    0x08036000,
    0x08037000,
    0x08038000,
    0x08039000,
    0x0803A000,
    0x0803B000,
    0x0803C000,
    0x0803D000,
    0x0803E000,
    0x0803F000,
    0x08040000,
    0x08041000,
    0x08042000,
    0x08043000,
    0x08044000,
    0x08045000,
    0x08046000,
    0x08047000,
    0x08048000,
    0x08049000,
    0x0804A000,
    0x0804B000,
    0x0804C000,
    0x0804D000,
    0x0804E000,
    0x0804F000,
    0x08050000,
    0x08051000,
    0x08052000,
    0x08053000,
    0x08054000,
    0x08055000,
    0x08056000,
    0x08057000,
    0x08058000,
    0x08059000,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x08089440,
    0x09000000,
    0x09000900,
    0x09001200,
    0x09001B00,
    0x09002400,
    0x09002D00,
    0x09003600,
    0x09003F00,
    0x09004800,
    0x09005100,
    0x09005A00,
    0x09006300,
    0x09006C00,
    0x09007500,
    0x09007E00,
    0x09009000,
    0x09008700,
    0x09007E00,
    0x0900A200,
    0x0900AB00,
    0x0805A000,
    0x0805A900,
    0x0805B200,
    0x02002D40,
    0x02002A40,
    0x02002C40,
    0x02002B40,
    0x02002940,
};

// Used to map item IDs to inventory slots
u8 gItemSlots[] =
{
    SLOT_STICK,
    SLOT_NUT,
    SLOT_BOMB,
    SLOT_BOW,
    SLOT_ARROW_FIRE,
    SLOT_DINS_FIRE,
    SLOT_SLINGSHOT,
    SLOT_OCARINA,
    SLOT_OCARINA,
    SLOT_BOMBCHU,
    SLOT_HOOKSHOT,
    SLOT_HOOKSHOT,
    SLOT_ARROW_ICE,
    SLOT_FARORES_WIND,
    SLOT_BOOMERANG,
    SLOT_LENS,
    SLOT_BEAN,
    SLOT_HAMMER,
    SLOT_ARROW_LIGHT,
    SLOT_NAYRUS_LOVE,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_BOTTLE_1,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_CHILD,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT,
    SLOT_TRADE_ADULT
};

void Inventory_ChangeEquipment(s16 equipment, u16 value)
{
    gSaveContext.equips.equipment &= gEquipNegMasks[equipment];
    gSaveContext.equips.equipment |= value << gEquipShifts[equipment];
}

u8 Inventory_DeleteEquipment(GlobalContext* globalCtx, s16 equipment)
{
    Player* player = PLAYER;
    s32 pad;
    u16 sp26;

    sp26 = gSaveContext.equips.equipment & gEquipMasks[equipment];

    // Translates to: "Erasing equipment item = %d  zzz=%d"
    osSyncPrintf("装備アイテム抹消 = %d  zzz=%d\n", equipment, sp26);

    if (sp26)
    {
        sp26 >>= gEquipShifts[equipment];

        gSaveContext.equips.equipment &= gEquipNegMasks[equipment];
        gSaveContext.equipment ^= gBitFlags[sp26 - 1] << gEquipShifts[equipment];

        if (equipment == EQUIP_TUNIC)
            gSaveContext.equips.equipment |= 0x0100;

        if (equipment == EQUIP_SWORD)
        {
            gSaveContext.equips.button_items[0] = ITEM_NONE;
            gSaveContext.inf_table[29] = 1;
        }

        func_8008ECAC(globalCtx, player);
        globalCtx->pauseCtx.unk_238 = 10;
    }

    return sp26;
}

void Inventory_ChangeUpgrade(s16 upgrade, s16 value)
{
    gSaveContext.upgrades &= gUpgradeNegMasks[upgrade];
    gSaveContext.upgrades |= value << gUpgradeShifts[upgrade];
}
