#ifndef ULTRA64_OS_SYSTEM_H
#define ULTRA64_OS_SYSTEM_H

#include "exception.h"
#include "ultratypes.h"

extern s32 osRomType;	/* Bulk or cartridge ROM. 0=cartridge 1=bulk */
extern void* osRomBase;	/* Rom base address of the game image */
extern s32 osTvType;	/* 0 = PAL, 1 = NTSC, 2 = MPAL */
extern s32 osResetType;	/* 0 = cold reset, 1 = NMI */
extern s32 osCicId;
extern s32 osVersion;
extern u32 osMemSize;	/* Memory Size */
extern s32 osAppNMIBuffer[0x10];

extern OSIntMask __OSGlobalIntMask;

#ifdef BBPLAYER
extern u32 __osBbIsBb;
extern u32 __osBbEepromSize;
extern u32 __osBbPakSize;
extern u32 __osBbFlashSize;
extern u32 __osBbEepromAddress;
extern u32 __osBbPakAddress[4];
extern u32 __osBbFlashAddress;
extern u32 __osBbSramSize;
extern u32 __osBbSramAddress;
extern u32 __osBbHackFlags;
#endif

#endif
