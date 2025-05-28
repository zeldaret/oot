#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

LEAF(osGetCount)
    MFC0(   v0, C0_COUNT)
    jr      ra
END(osGetCount)
