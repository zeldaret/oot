#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text
.align 5

LEAF(guMtxIdent)
    add     t0, zero, 1
    sll     t1, t0, 0x10
    sw      t1,   0x00(a0)
    sw      zero, 0x04(a0)
    sw      t0,   0x08(a0)
    sw      zero, 0x0C(a0)
    sw      zero, 0x10(a0)
    sw      t1,   0x14(a0)
    sw      zero, 0x18(a0)
    sw      t0,   0x1C(a0)
    sw      zero, 0x20(a0)
    sw      zero, 0x24(a0)
    sw      zero, 0x28(a0)
    sw      zero, 0x2c(a0)
    sw      zero, 0x30(a0)
    sw      zero, 0x34(a0)
    sw      zero, 0x38(a0)
    sw      zero, 0x3C(a0)
    jr      ra
END(guMtxIdent)
