#ifndef ULTRA64_SYSTEM_H
#define ULTRA64_SYSTEM_H

#include "ultratypes.h"
#include "exception.h"

#define OS_TV_PAL   0
#define OS_TV_NTSC  1
#define OS_TV_MPAL  2

#define OS_APP_NMI_BUFSIZE  64

#if defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)

extern s32   osRomType;     /* Bulk or cartridge ROM. 0=cartridge 1=bulk */
extern void* osRomBase;     /* Rom base address of the game image */
extern s32   osTvType;      /* 0 = PAL, 1 = NTSC, 2 = MPAL */
extern s32   osResetType;   /* 0 = cold reset, 1 = NMI */
extern s32   osCicId;
extern s32   osVersion;
extern u32   osMemSize;     /* Memory Size */
extern s32   osAppNMIBuffer[OS_APP_NMI_BUFSIZE / sizeof(s32)];

/*
 * CPU counter increments at 3/4 of bus clock rate:
 *
 * Bus Clock    PClock      Counter (1/2 PClock)
 * ---------    ----------  ------------------------
 * 62.5 Mhz     93.75 Mhz   46.875 Mhz
 */
extern u64 osClockRate;

extern OSIntMask __OSGlobalIntMask;

#define osInitialize()          \
    __osInitialize_common();    \
    __osInitialize_autodetect()

void __osInitialize_common(void);
void __osInitialize_autodetect(void);

u32 osGetMemSize(void);

s32 osAfterPreNMI(void);

#endif

#endif
