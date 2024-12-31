#include "boot.h"

#if PLATFORM_IQUE

_bootSegmentBssStart_CN_HI = _bootSegmentBssStart >> 16;

_bootSegmentBssSize_CN_HI = _bootSegmentBssSize >> 16;

bootproc_CN_HI = bootproc >> 16;

BOOT_STACK_TOP_CN_HI = (sBootThreadStack + BOOT_STACK_SIZE) >> 16;
BOOT_STACK_TOP       = (sBootThreadStack + BOOT_STACK_SIZE) & 0xFFFF;

#endif
