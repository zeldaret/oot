#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text
.align 5

#define MTX_INTPART  0
#define MTX_FRACPART 0x20

#define FIXTOF 0.0000152587890625 /* 1.0f / 65536.0f */

LEAF(guMtxL2F)
    li.s    fv0, FIXTOF
    li      t9, 0xFFFF0000
    addiu   t8, a1, MTX_FRACPART
1:
    lw      t0, MTX_INTPART(a1)
    lw      t1, MTX_FRACPART(a1)

    and     t2, t0, t9
    srl     t3, t1, 0x10
    or      t4, t2, t3

    sll     t5, t0, 0x10
    and     t6, t1, 0xFFFF
    or      t7, t5, t6

    mtc1    t4, ft0
    cvt.s.w ft1, ft0
    mul.s   ft2, ft1, fv0

    mtc1    t7, ft3
    cvt.s.w ft4, ft3
    mul.s   ft5, ft4, fv0

    swc1    ft2, 0(a0)
    swc1    ft5, 4(a0)
    addu    a0, a0, 8
    addu    a1, a1, 4
    bne     a1, t8, 1b

    jr      ra
END(guMtxL2F)
