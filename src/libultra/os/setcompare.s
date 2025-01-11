#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

LEAF(__osSetCompare)
    MTC0(   a0, C0_COMPARE)
    jr      ra
END(__osSetCompare)
