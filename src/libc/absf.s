#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text

LEAF(absf)
    abs.s       fv0, fa0
    jr          ra
END(absf)
