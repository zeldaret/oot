#ifndef SYS_UCODE_H
#define SYS_UCODE_H

#include "ultra64.h"

u64* SysUcode_GetUCodeBoot(void);
size_t SysUcode_GetUCodeBootSize(void);
u64* SysUcode_GetUCode(void);
u64* SysUcode_GetUCodeData(void);

#endif
