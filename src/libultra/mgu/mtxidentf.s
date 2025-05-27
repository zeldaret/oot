#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text
.align 5

LEAF(guMtxIdentF)
    li.s    t0,   1.0
    sw      t0,   0x00(a0)
    sw      zero, 0x04(a0)
    sw      zero, 0x08(a0)
    sw      zero, 0x0C(a0)
    sw      zero, 0x10(a0)
    sw      t0,   0x14(a0)
    sw      zero, 0x18(a0)
    sw      zero, 0x1C(a0)
    sw      zero, 0x20(a0)
    sw      zero, 0x24(a0)
    sw      t0,   0x28(a0)
    sw      zero, 0x2C(a0)
    sw      zero, 0x30(a0)
    sw      zero, 0x34(a0)
    sw      zero, 0x38(a0)
    sw      t0,   0x3C(a0)
    jr      ra
END(guMtxIdentF)
