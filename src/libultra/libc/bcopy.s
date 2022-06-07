#include "ultra64/asm.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(bcopy)
    beqz    $a2, ret
     move   $a3, $a1
    beq     $a0, $a1, ret
     slt    $at, $a1, $a0
    bnezl   $at, goforwards
     slti   $at, $a2, 0x10
    add     $v0, $a0, $a2
    slt     $at, $a1, $v0
    beql    $at, $zero, goforwards
     slti   $at, $a2, 0x10
    b       gobackwards
     slti   $at, $a2, 0x10
    slti    $at, $a2, 0x10
goforwards:
    bnez    $at, forwards_bytecopy
     nop
    andi    $v0, $a0, 3
    andi    $v1, $a1, 3
    beq     $v0, $v1, forwalignable
     nop
forwards_bytecopy:
    beqz    $a2, ret
     nop
    addu    $v1, $a0, $a2
99:
    lb      $v0, ($a0)
    addiu   $a0, $a0, 1
    addiu   $a1, $a1, 1
    bne     $a0, $v1, 99b
     sb     $v0, -1($a1)
ret:
    jr      $ra
     move   $v0, $a3

forwalignable:
    beqz    $v0, forwards_32
     li     $at, 1
    beq     $v0, $at, forw_copy3
     li     $at, 2
    beql    $v0, $at, forw_copy2
     lh     $v0, ($a0)
    lb      $v0, ($a0)
    addiu   $a0, $a0, 1
    addiu   $a1, $a1, 1
    addiu   $a2, $a2, -1
    b       forwards_32
     sb     $v0, -1($a1)
    lh      $v0, ($a0)
forw_copy2:
    addiu   $a0, $a0, 2
    addiu   $a1, $a1, 2
    addiu   $a2, $a2, -2
    b       forwards_32
     sh     $v0, -2($a1)
forw_copy3:
    lb      $v0, ($a0)
    lh      $v1, 1($a0)
    addiu   $a0, $a0, 3
    addiu   $a1, $a1, 3
    addiu   $a2, $a2, -3
    sb      $v0, -3($a1)
    sh      $v1, -2($a1)

forwards:
forwards_32:
    slti    $at, $a2, 0x20
    bnezl   $at, forwards_16_
     slti   $at, $a2, 0x10
    lw      $v0, ($a0)
    lw      $v1, 4($a0)
    lw      $t0, 8($a0)
    lw      $t1, 0xC($a0)
    lw      $t2, 0x10($a0)
    lw      $t3, 0x14($a0)
    lw      $t4, 0x18($a0)
    lw      $t5, 0x1C($a0)
    addiu   $a0, $a0, 0x20
    addiu   $a1, $a1, 0x20
    addiu   $a2, $a2, -0x20
    sw      $v0, -0x20($a1)
    sw      $v1, -0x1C($a1)
    sw      $t0, -0x18($a1)
    sw      $t1, -0x14($a1)
    sw      $t2, -0x10($a1)
    sw      $t3, -0xC($a1)
    sw      $t4, -8($a1)
    b       forwards_32
     sw     $t5, -4($a1)
forwards_16:
    slti    $at, $a2, 0x10
forwards_16_: // fake label due to branch likely optimization
    bnezl   $at, forwards_4_
     slti   $at, $a2, 4
    lw      $v0, ($a0)
    lw      $v1, 4($a0)
    lw      $t0, 8($a0)
    lw      $t1, 0xC($a0)
    addiu   $a0, $a0, 0x10
    addiu   $a1, $a1, 0x10
    addiu   $a2, $a2, -0x10
    sw      $v0, -0x10($a1)
    sw      $v1, -0xC($a1)
    sw      $t0, -8($a1)
    b       forwards_16
     sw     $t1, -4($a1)
forwards_4:
    slti    $at, $a2, 4
forwards_4_: // fake label due to branch likely optimization
    bnez    $at, forwards_bytecopy
     nop
    lw      $v0, ($a0)
    addiu   $a0, $a0, 4
    addiu   $a1, $a1, 4
    addiu   $a2, $a2, -4
    b       forwards_4
     sw     $v0, -4($a1)
    slti    $at, $a2, 0x10
gobackwards:
    add     $a0, $a0, $a2
    bnez    $at, backwards_bytecopy
     add    $a1, $a1, $a2
    andi    $v0, $a0, 3
    andi    $v1, $a1, 3
    beq     $v0, $v1, backalignable
     nop
backwards_bytecopy:
    beqz    $a2, ret
     nop
    addiu   $a0, $a0, -1
    addiu   $a1, $a1, -1
    subu    $v1, $a0, $a2
99:
    lb      $v0, ($a0)
    addiu   $a0, $a0, -1
    addiu   $a1, $a1, -1
    bne     $a0, $v1, 99b
     sb     $v0, 1($a1)
    jr      $ra
     move   $v0, $a3

backalignable:
    beqz    $v0, backwards_32
     li     $at, 3
    beq     $v0, $at, back_copy3
     li     $at, 2
    beql    $v0, $at, back_copy2
     lh     $v0, -2($a0)
    lb      $v0, -1($a0)
    addiu   $a0, $a0, -1
    addiu   $a1, $a1, -1
    addiu   $a2, $a2, -1
    b       backwards_32
     sb     $v0, ($a1)
    lh      $v0, -2($a0)
back_copy2:
    addiu   $a0, $a0, -2
    addiu   $a1, $a1, -2
    addiu   $a2, $a2, -2
    b       backwards_32
     sh     $v0, ($a1)
back_copy3:
    lb      $v0, -1($a0)
    lh      $v1, -3($a0)
    addiu   $a0, $a0, -3
    addiu   $a1, $a1, -3
    addiu   $a2, $a2, -3
    sb      $v0, 2($a1)
    sh      $v1, ($a1)

backwards:
backwards_32:
    slti    $at, $a2, 0x20
    bnezl   $at, backwards_16_
     slti   $at, $a2, 0x10
    lw      $v0, -4($a0)
    lw      $v1, -8($a0)
    lw      $t0, -0xc($a0)
    lw      $t1, -0x10($a0)
    lw      $t2, -0x14($a0)
    lw      $t3, -0x18($a0)
    lw      $t4, -0x1c($a0)
    lw      $t5, -0x20($a0)
    addiu   $a0, $a0, -0x20
    addiu   $a1, $a1, -0x20
    addiu   $a2, $a2, -0x20
    sw      $v0, 0x1C($a1)
    sw      $v1, 0x18($a1)
    sw      $t0, 0x14($a1)
    sw      $t1, 0x10($a1)
    sw      $t2, 0xC($a1)
    sw      $t3, 8($a1)
    sw      $t4, 4($a1)
    b       backwards_32
     sw     $t5, ($a1)
backwards_16:
    slti    $at, $a2, 0x10
backwards_16_: // fake label due to branch likely optimization
    bnezl   $at, backwards_4_
     slti   $at, $a2, 4
    lw      $v0, -4($a0)
    lw      $v1, -8($a0)
    lw      $t0, -0xC($a0)
    lw      $t1, -0x10($a0)
    addiu   $a0, $a0, -0x10
    addiu   $a1, $a1, -0x10
    addiu   $a2, $a2, -0x10
    sw      $v0, 0xC($a1)
    sw      $v1, 8($a1)
    sw      $t0, 4($a1)
    b       backwards_16
     sw     $t1, ($a1)
backwards_4:
    slti    $at, $a2, 4
backwards_4_: // fake label due to branch likely optimization
    bnez    $at, backwards_bytecopy
     nop
    lw      $v0, -4($a0)
    addiu   $a0, $a0, -4
    addiu   $a1, $a1, -4
    addiu   $a2, $a2, -4
    b       backwards_4
     sw     $v0, ($a1)
END(bcopy)
