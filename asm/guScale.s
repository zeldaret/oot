#include "ultra64/asm.h"

.set noat
.set noreorder

.section .text

.balign 32

LEAF(guScale)
    li      $at, 0x47800000 // 65536.0f
    mtc1    $at, $f4
    mtc1    $a1, $f6
    sw      $zero, 4($a0)
    sw      $zero, 0xC($a0)
    mul.s   $f8, $f6, $f4
    mtc1    $a2, $f6
    sw      $zero, 0x10($a0)
    sw      $zero, 0x18($a0)
    sw      $zero, 0x24($a0)
    sw      $zero, 0x2C($a0)
    sw      $zero, 0x30($a0)
    trunc.w.s $f10, $f8
    mul.s   $f8, $f6, $f4
    mtc1    $a3, $f6
    sw      $zero, 0x38($a0)
    mfc1    $t1, $f10
    sw      $zero, 0x3C($a0)
    srl     $t2, $t1, 0x10
    trunc.w.s $f10, $f8
    mul.s   $f8, $f6, $f4
    sll     $t0, $t2, 0x10
    sll     $t2, $t1, 0x10
    mfc1    $t1, $f10
    sw      $t0, ($a0)
    sw      $t2, 0x20($a0)
    srl     $t0, $t1, 0x10
    trunc.w.s $f10, $f8
    andi    $t2, $t1, 0xFFFF
    sw      $t2, 0x28($a0)
    sw      $t0, 8($a0)
    mfc1    $t1, $f10
    nop
    srl     $t2, $t1, 0x10
    sll     $t0, $t2, 0x10
    sw      $t0, 0x14($a0)
    li      $t0, 1
    sll     $t2, $t1, 0x10
    sw      $t2, 0x34($a0)
    jr      $ra
     sw     $t0, 0x1C($a0)
END(guScale)
