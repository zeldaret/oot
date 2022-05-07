#include "ultra64/asm.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(bzero)
    slti    $at, $a1, 0xC
    bnez    $at, bytezero
     negu   $v1, $a0
    andi    $v1, $v1, 3
    beqz    $v1, blkzero
     subu   $a1, $a1, $v1
    swl     $zero, ($a0)
    addu    $a0, $a0, $v1
blkzero:
    // align backwards to 0x20
    li      $at, ~0x1F
    and     $a3, $a1, $at
    // If the result is zero, the amount to zero is less than 0x20 bytes
    beqz    $a3, wordzero
     subu   $a1, $a1, $a3
    // zero in blocks of 0x20 at a time
    addu    $a3, $a3, $a0
1:
    addiu   $a0, $a0, 0x20
    sw      $zero, -0x20($a0)
    sw      $zero, -0x1C($a0)
    sw      $zero, -0x18($a0)
    sw      $zero, -0x14($a0)
    sw      $zero, -0x10($a0)
    sw      $zero, -0xC($a0)
    sw      $zero, -8($a0)
    bne     $a0, $a3, 1b
     sw     $zero, -4($a0)
wordzero:
    // align backwards to 0x4
    li      $at, ~3
    and     $a3, $a1, $at
    // If the result is zero, the amount to zero is less than 0x4 bytes
    beqz    $a3, bytezero
     subu   $a1, $a1, $a3
    // zero one word at a time
    addu    $a3, $a3, $a0
1:
    addiu   $a0, $a0, 4
    bne     $a0, $a3, 1b
     sw     $zero, -4($a0)
bytezero:
    // test if nothing left to zero
    blez    $a1, zerodone
     nop
    // zero one byte at a time
    addu    $a1, $a1, $a0
1:
    addiu   $a0, $a0, 1
    bne     $a0, $a1, 1b
     sb     $zero, -1($a0)
zerodone:
    jr      $ra
     nop
END(bzero)
