#include "ultra64/asm.h"

.set noat
.set noreorder

.section .text

.balign 32

#define MTX_INTPART  0
#define MTX_FRACPART 0x20

LEAF(guMtxF2L)
    li      $at, 0x47800000 // 65536.0f
    mtc1    $at, $f0
    li      $t9, 0xFFFF0000
    addiu   $t8, $a1, MTX_FRACPART
1:
    lwc1    $f4, ($a0)
    lwc1    $f10, 4($a0)
    addiu   $a1, $a1, 4
    mul.s   $f6, $f4, $f0
    addiu   $a0, $a0, 8
    mul.s   $f16, $f10, $f0
    trunc.w.s $f8, $f6
    trunc.w.s $f18, $f16
    mfc1    $t0, $f8
    mfc1    $t1, $f18
    and     $t2, $t0, $t9
    sll     $t5, $t0, 0x10
    srl     $t3, $t1, 0x10
    andi    $t6, $t1, 0xFFFF
    or      $t4, $t2, $t3
    or      $t7, $t5, $t6
    sw      $t4, (MTX_INTPART-4)($a1)
    bne     $a1, $t8, 1b
     sw     $t7, (MTX_FRACPART-4)($a1)
    jr      $ra
     nop
END(guMtxF2L)
