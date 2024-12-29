#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

LEAF(__osSetWatchLo)
    MTC0(   a0, C0_WATCHLO)
    NOP
    jr      ra
END(__osSetWatchLo)
