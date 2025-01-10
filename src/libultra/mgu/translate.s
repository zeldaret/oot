#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text
.align 5

LEAF(guTranslate)
    li.s    ft0, 65536.0

    mtc1    a1, ft1
    mul.s   ft2, ft1, ft0
    trunc.w.s ft3, ft2
    mfc1    t1, ft3

    mtc1    a2, ft1
    mul.s   ft2, ft1, ft0
    trunc.w.s ft3, ft2
    mfc1    t3, ft3

    srl     t2, t1, 0x10
    sll     t0, t2, 0x10
    srl     t2, t3, 0x10
    or      t0, t0, t2
    sw      t0, 0x18(a0)

    sll     t0, t1, 0x10
    sll     t2, t3, 0x10
    srl     t2, t2, 0x10
    or      t0, t0, t2
    sw      t0, 0x38(a0)

    mtc1    a3, ft1
    mul.s   ft2, ft1, ft0
    trunc.w.s ft3, ft2
    mfc1    t1, ft3

    srl     t2, t1, 0x10
    sll     t0, t2, 0x10
    addiu   t0, t0, 1
    sw      t0, 0x1C(a0)

    sll     t2, t1, 0x10
    sw      t2, 0x3C(a0)

    sw      zero, 0x00(a0)
    sw      zero, 0x04(a0)
    sw      zero, 0x08(a0)
    sw      zero, 0x0C(a0)
    sw      zero, 0x10(a0)
    sw      zero, 0x14(a0)
    sw      zero, 0x20(a0)
    sw      zero, 0x24(a0)
    sw      zero, 0x28(a0)
    sw      zero, 0x2C(a0)
    sw      zero, 0x30(a0)
    sw      zero, 0x34(a0)

    lui     t0, (0x00010000 >> 16)
    ori     t0, (0x00010000 & 0xFFFF)
    sw      t0, (a0)
    sw      t0, 0x14(a0)

    lui     t0, (0x00000001 >> 16)
    ori     t0, (0x00000001 & 0xFFFF)
    sw      t0, 8(a0)

    jr      ra
END(guTranslate)
