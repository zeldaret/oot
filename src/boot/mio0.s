#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text

/**
 *  void Mio0_Decompress(void* src, void* dst);
 *
 *  Decompress Mio0 chunk
 */
LEAF(Mio0_Decompress)
    lw      a3, 0x08(a0)    /* compressed offset */
    lw      t9, 0x0C(a0)    /* uncompressed offset */
    lw      t8, 0x04(a0)    /* decompressed length */
    add     a3, a3, a0      /* compressed start */
    add     t9, t9, a0      /* uncompressed start */
    move    a2, zero        /* 0 */
    addi    a0, a0, 0x10    /* move past header */
    add     t8, t8, a1      /* dst + decompressed length = end */
mainloop:
    bnez    a2, 1f

    lw      t0, (a0)
    li      a2, 32
    addi    a0, a0, 4
1:
    slt     t1, t0, zero
    beqz    t1, read_comp

    lb      t2, (t9)      /* read 1 byte from uncompressed data */
    sb      t2, (a1)      /* store uncompressed byte */
    addi    t9, t9, 1     /* advance uncompressed start */
    addi    a1, a1, 1
    b       next_iter

read_comp:
    lhu     t2, (a3)      /* read 2 bytes from compressed data */
    addi    a3, a3, 2     /* advance compressed start */
    srl     t3, t2, 0xC
    andi    t2, t2, 0xFFF
    sub     t1, a1, t2
    beqz    t3, 3f

    addi    t3, t3, 2
2:
    lb      t2, -1(t1)
    addi    t3, t3, -1
    addi    t1, t1, 1
    sb      t2, (a1)
    addi    a1, a1, 1
    bnez    t3, 2b

next_iter:
    sll     t0, t0, 1
    addi    a2, a2, -1
    bne     a1, t8, mainloop /* continue until decompressed length is reached */

    jr      ra
3:
    lbu     t3, (t9)
    addi    t9, t9, 1
    addi    t3, t3, 0x12
    b       2b
END(Mio0_Decompress)
