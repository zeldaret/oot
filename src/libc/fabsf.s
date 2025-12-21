#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text

LEAF(fabsf)
    abs.s       fv0, fa0
    jr          ra
END(fabsf)
