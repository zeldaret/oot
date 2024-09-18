#ifndef Z64INVENTORY_H
#define Z64INVENTORY_H

#include "ultra64.h"
#include "z64item.h"
#include "z64save.h"

struct PlayState;

void Inventory_ChangeEquipment(s16 equipment, u16 value);
u8 Inventory_DeleteEquipment(struct PlayState* play, s16 equipment);
void Inventory_ChangeUpgrade(s16 upgrade, s16 value);

extern u32 gBitFlags[32];
extern u16 gEquipMasks[EQUIP_TYPE_MAX];
extern u16 gEquipNegMasks[EQUIP_TYPE_MAX];
extern u32 gUpgradeMasks[UPG_MAX];
extern u8 gEquipShifts[EQUIP_TYPE_MAX];
extern u8 gUpgradeShifts[UPG_MAX];
extern u16 gUpgradeCapacities[UPG_MAX][4];
extern u32 gGsFlagsMasks[4];
extern u32 gGsFlagsShifts[4];
extern void* gItemIcons[0x82];
extern u8 gItemSlots[56];

#endif
