#ifndef _MACROS_H_
#define _MACROS_H_

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))
#define ARRAY_COUNTU(arr) (u32)(sizeof(arr) / sizeof(arr[0]))

#define PHYSICAL_TO_VIRTUAL(addr) ((u32)(addr) + 0x80000000)
#define PHYSICAL_TO_VIRTUAL2(addr) ((u32)(addr) - 0x80000000)
#define SEGMENTED_TO_VIRTUAL(addr) (void*)(PHYSICAL_TO_VIRTUAL(gSegments[SEGMENT_NUMBER(addr)]) + SEGMENT_OFFSET(addr))

#define ALIGN16(val) (((val) + 0xF) & ~0xF)

#define SQ(x) ((x)*(x))
#define ABS(x) ((x) >= 0 ? (x) : -(x))
#define DECR(x) ((x) == 0 ? 0 : ((x) -= 1))
#define CLAMP(x,min,max) ((x) < (min) ? (min) : (x) > (max) ? (max) : (x))

#define PLAYER ((Player*)globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first)

#define YEARS_CHILD 5
#define YEARS_ADULT 17
#define LINK_IS_CHILD (gSaveContext.link_age != 0)
#define LINK_IS_ADULT (gSaveContext.link_age == 0)
#define LINK_AGE_IN_YEARS (LINK_IS_CHILD ? YEARS_CHILD : YEARS_ADULT)

#define SLOT(item) gItemSlots[item]
#define INV_CONTENT(item) gSaveContext.items[SLOT(item)]
#define AMMO(item) gSaveContext.ammo[SLOT(item)]
#define BEANS_BOUGHT AMMO(ITEM_BEAN + 1)

#define ALL_EQUIP_VALUE(equip) ((s32)(gSaveContext.equipment & gEquipMasks[equip]) >> gEquipShifts[equip])
#define CUR_EQUIP_VALUE(equip) ((s32)(gSaveContext.equips.equipment & gEquipMasks[equip]) >> gEquipShifts[equip])

#define CUR_UPG_VALUE(upg) ((s32)(gSaveContext.upgrades & gUpgradeMasks[upg]) >> gUpgradeShifts[upg])
#define CAPACITY(upg, value) gUpgradeCapacities[upg][value]
#define CUR_CAPACITY(upg) CAPACITY(upg, CUR_UPG_VALUE(upg))

#define SET_NEXT_GAMESTATE(curState, newInit, newStruct) \
            (curState)->init = newInit;                  \
            (curState)->size = sizeof(newStruct);

#define LOG(exp, value, format, file, line) \
     LogUtils_LogThreadId(file, line); \
     osSyncPrintf(exp " = " format "\n", value);

#define LOG_ADDRESS(exp, value, file, line) LOG(exp, value, "%08x", file, line)
#define LOG_STRING(exp, value, file, line) LOG(exp, value, "%s", file, line)
#define LOG_TIME(exp, value, file, line) LOG(exp, value, "%lld", file, line)
#define LOG_VALUE(exp, value, file, line) LOG(exp, value, "%d", file, line)

#endif
