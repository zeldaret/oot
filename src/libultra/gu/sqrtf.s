#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text

LEAF(sqrtf)
    sqrt.s  fv0, fa0
    j       ra
END(sqrtf)
