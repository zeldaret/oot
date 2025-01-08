#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text
.align 5

#define MTX_INTPART  0
#define MTX_FRACPART 0x20

LEAF(guMtxF2L)
    li.s    fv0, 65536.0
    li      t9, 0xFFFF0000
    addu    t8, a1, MTX_FRACPART
1:
    lwc1    ft0, 0(a0)
    mul.s   ft1, ft0, fv0
    trunc.w.s ft2, ft1
    lwc1    ft3, 4(a0)
    mul.s   ft4, ft3, fv0
    trunc.w.s ft5, ft4
    mfc1    t0, ft2
    mfc1    t1, ft5
    and     t2, t0, t9
    srl     t3, t1, 0x10
    or      t4, t2, t3
    sw      t4, (MTX_INTPART)(a1)
    sll     t5, t0, 0x10
    and     t6, t1, 0xFFFF
    or      t7, t5, t6
    sw      t7, (MTX_FRACPART)(a1)
    addu    a1, a1, 4
    addu    a0, a0, 8
    bne     a1, t8, 1b

    jr      ra
END(guMtxF2L)
