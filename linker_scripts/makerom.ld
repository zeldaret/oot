#include "boot.h"

/* These are only here due to iQue entry.s using ori to load the lower halves of symbols
 * rather than addiu, so the usual relocation operators %hi() and %lo() can't be used. */

_bootSegmentBssStart_HI = _bootSegmentBssStart >> 16;

_bootSegmentBssSize_HI = _bootSegmentBssSize >> 16;

bootproc_HI = bootproc >> 16;

BOOT_STACK_TOP    = (sBootThreadStack + BOOT_STACK_SIZE);
BOOT_STACK_TOP_HI = BOOT_STACK_TOP >> 16;
