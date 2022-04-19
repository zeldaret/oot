#include "ultra64/asm.h"

.set noat
.set noreorder

.section .text

.balign 32

#define MTX_INTPART  0
#define MTX_FRACPART 0x20

LEAF(guMtxL2F)
    li      $at, 0x37800000 // 1.0f / 65536.0f
    mtc1    $at, $f0
    li      $t9, 0xFFFF0000
    addiu   $t8, $a1, MTX_FRACPART
1:
    lw      $t0, MTX_INTPART($a1)
    lw      $t1, MTX_FRACPART($a1)
    addiu   $a1, $a1, 4
    and     $t2, $t0, $t9
    srl     $t3, $t1, 0x10
    or      $t4, $t2, $t3
    mtc1    $t4, $f4
    sll     $t5, $t0, 0x10
    andi    $t6, $t1, 0xFFFF
    or      $t7, $t5, $t6
    cvt.s.w $f6, $f4
    mtc1    $t7, $f10
    addiu   $a0, $a0, 8
    cvt.s.w $f16, $f10
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f8, -8($a0)
    bne     $a1, $t8, 1b
     swc1   $f18, -4($a0)
    jr      $ra
     nop
END(guMtxL2F)
