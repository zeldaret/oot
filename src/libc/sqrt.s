#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text

LEAF(sqrt)
    sqrt.d      fv0, fa0
    jr          ra
END(sqrt)
