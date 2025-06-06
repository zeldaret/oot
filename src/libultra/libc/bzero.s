#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text

LEAF(bzero)
    negu    v1, a0
    blt     a1, 0xC, bytezero

    and     v1, v1, 3
    subu    a1, a1, v1
    beqz    v1, blkzero

    swl     zero, (a0)
    addu    a0, a0, v1
blkzero:
    /* align backwards to 0x20 */
    and     a3, a1, ~(0x20 - 1)
    /* If the result is zero, the amount to zero is less than 0x20 bytes */
    subu    a1, a1, a3
    beqz    a3, wordzero
    /* zero in blocks of 0x20 at a time */
    addu    a3, a3, a0
1:
    sw      zero, 0(a0)
    sw      zero, 4(a0)
    sw      zero, 8(a0)
    sw      zero, 12(a0)
    addiu   a0, a0, 0x20
    sw      zero, -16(a0)
    sw      zero, -12(a0)
    sw      zero, -8(a0)
    sw      zero, -4(a0)
    bne     a0, a3, 1b

wordzero:
    /* align backwards to 0x4 */
    and     a3, a1, ~3
    /* If the result is zero, the amount to zero is less than 0x4 bytes */
    subu    a1, a1, a3
    beqz    a3, bytezero
    /* zero one word at a time */
    addu    a3, a3, a0
1:
    addu    a0, a0, 4
    sw      zero, -4(a0)
    bne     a0, a3, 1b
bytezero:
    /* test if nothing left to zero */
    blez    a1, zerodone
    /* zero one byte at a time */
    addu    a1, a1, a0
1:
    addiu   a0, a0, 1
    sb      zero, -1(a0)
    bne     a0, a1, 1b
zerodone:
    jr      ra
END(bzero)
