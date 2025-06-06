#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

LEAF(__osSetSR)
    MTC0(   a0, C0_SR)
    NOP
    jr      ra
END(__osSetSR)
