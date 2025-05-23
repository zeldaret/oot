#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text

LEAF(bcopy)
    move    a3, a1
    beqz    a2, ret
    beq     a0, a1, ret
    blt     a1, a0, goforwards
    add     v0, a0, a2
    bge     a1, v0, goforwards
    b       gobackwards

goforwards:
    blt     a2, 0x10, forwards_bytecopy
    and     v0, a0, 3
    and     v1, a1, 3
    beq     v0, v1, forwalignable

forwards_bytecopy:
    beqz    a2, ret
    addu    v1, a0, a2
99:
    lb      v0, (a0)
    addu    a0, a0, 1
    sb      v0, (a1)
    addu    a1, a1, 1
    bne     a0, v1, 99b
ret:
    move    v0, a3
    jr      ra

forwalignable:
    beqz    v0, forwards_32
    beq     v0, 1, forw_copy3
    beq     v0, 2, forw_copy2

    lb      v0, (a0)
    addu    a0, a0, 1
    sb      v0, (a1)
    addu    a1, a1, 1
    addu    a2, a2, -1
    b       forwards_32

forw_copy2:
    lh      v0, (a0)
    addu    a0, a0, 2
    sh      v0, (a1)
    addu    a1, a1, 2
    addu    a2, a2, -2
    b       forwards_32

forw_copy3:
    lb      v0, (a0)
    lh      v1, 1(a0)
    addiu   a0, a0, 3
    sb      v0, (a1)
    sh      v1, 1(a1)
    addiu   a1, a1, 3
    addiu   a2, a2, -3

forwards:
forwards_32:
    blt     a2, 32, forwards_16
    lw      v0, 0(a0)
    lw      v1, 4(a0)
    lw      t0, 8(a0)
    lw      t1, 12(a0)
    lw      t2, 16(a0)
    lw      t3, 20(a0)
    lw      t4, 24(a0)
    lw      t5, 28(a0)
    addiu   a0, a0, 32
    sw      v0, 0(a1)
    sw      v1, 4(a1)
    sw      t0, 8(a1)
    sw      t1, 12(a1)
    sw      t2, 16(a1)
    sw      t3, 20(a1)
    sw      t4, 24(a1)
    sw      t5, 28(a1)
    addiu   a1, a1, 32
    addiu   a2, a2, -32
    b       forwards_32

forwards_16:
    blt     a2, 16, forwards_4
    lw      v0, 0(a0)
    lw      v1, 4(a0)
    lw      t0, 8(a0)
    lw      t1, 12(a0)
    addiu   a0, a0, 16
    sw      v0, 0(a1)
    sw      v1, 4(a1)
    sw      t0, 8(a1)
    sw      t1, 12(a1)
    addiu   a1, a1, 16
    addiu   a2, a2, -16
    b       forwards_16

forwards_4:
    blt     a2, 4, forwards_bytecopy

    lw      v0, 0(a0)
    addiu   a0, a0, 4
    sw      v0, 0(a1)
    addiu   a1, a1, 4
    addiu   a2, a2, -4
    b       forwards_4

gobackwards:
    add     a0, a0,a2
    add     a1, a1,a2
    blt     a2, 16, backwards_bytecopy

    andi    v0, a0, 0x3
    andi    v1, a1, 0x3
    beq     v0, v1, backalignable

backwards_bytecopy:
    beqz    a2, ret
    addiu   a0, a0, -1
    addiu   a1, a1, -1
    subu    v1, a0,a2
99:
    lb      v0, 0(a0)
    addiu   a0, a0, -1
    sb      v0, 0(a1)
    addiu   a1, a1, -1
    bne     a0, v1,99b

    move    v0, a3
    jr      ra

backalignable:
    beqz    v0, backwards
    beq     v0, 3, back_copy3
    beq     v0, 2, back_copy2
    lb      v0, -1(a0)
    addiu   a0, a0, -1
    sb      v0, -1(a1)
    addiu   a1, a1, -1
    addiu   a2, a2, -1
    b       backwards

back_copy2:
    lh      v0, -2(a0)
    addiu   a0, a0, -2
    sh      v0, -2(a1)
    addiu   a1, a1, -2
    addiu   a2, a2, -2
    b       backwards

back_copy3:
    lb      v0, -1(a0)
    lh      v1, -3(a0)
    addiu   a0, a0, -3
    sb      v0, -1(a1)
    sh      v1, -3(a1)
    addiu   a1, a1, -3
    addiu   a2, a2, -3

backwards:
backwards_32:
    blt     a2, 32, backwards_16
    lw      v0, -4(a0)
    lw      v1, -8(a0)
    lw      t0, -12(a0)
    lw      t1, -16(a0)
    lw      t2, -20(a0)
    lw      t3, -24(a0)
    lw      t4, -28(a0)
    lw      t5, -32(a0)
    addiu   a0, a0, -32
    sw      v0, -4(a1)
    sw      v1, -8(a1)
    sw      t0, -12(a1)
    sw      t1, -16(a1)
    sw      t2, -20(a1)
    sw      t3, -24(a1)
    sw      t4, -28(a1)
    sw      t5, -32(a1)
    addiu   a1, a1, -32
    addiu   a2, a2, -32
    b       backwards_32

backwards_16:
    blt     a2, 16, backwards_4
    lw      v0, -4(a0)
    lw      v1, -8(a0)
    lw      t0, -12(a0)
    lw      t1, -16(a0)
    addiu   a0, a0, -16
    sw      v0, -4(a1)
    sw      v1, -8(a1)
    sw      t0, -12(a1)
    sw      t1, -16(a1)
    addiu   a1, a1, -16
    addiu   a2, a2, -16
    b       backwards_16

backwards_4:
    blt     a2, 4, backwards_bytecopy
    lw      v0, -4(a0)
    addiu   a0, a0, -4
    sw      v0, -4(a1)
    addiu   a1, a1, -4
    addiu   a2, a2, -4
    b       backwards_4
END(bcopy)
