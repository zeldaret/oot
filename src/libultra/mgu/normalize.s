#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text
.align 5

LEAF(guNormalize)
    lwc1    ft0, (a0)
    lwc1    ft1, (a1)
    lwc1    ft2, (a2)
    mul.s   ft3, ft0, ft0
    li.s    t0, 1.0
    mul.s   ft4, ft1, ft1
    add.s   ft5, ft3, ft4
    mul.s   ft4, ft2, ft2
    add.s   ft3, ft4, ft5
    mtc1    t0, ft5
    sqrt.s  ft4, ft3
    div.s   ft3, ft5, ft4
    mul.s   ft4, ft0, ft3
    nop
    mul.s   ft5, ft1, ft3
    nop
    mul.s   ft0, ft2, ft3
    swc1    ft4, (a0)
    swc1    ft5, (a1)
    swc1    ft0, (a2)
    jr      ra
END(guNormalize)
