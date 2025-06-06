#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

LEAF(__osGetFpcCsr)
    CFC1(   v0, C1_FPCSR)
    jr      ra
END(__osGetFpcCsr)
