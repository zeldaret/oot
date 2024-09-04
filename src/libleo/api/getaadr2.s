#include "ultra64/asm.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(LeoGetAAdr2)
    li      $at, 0x10000
    srl     $t8, $a0, 0xF
    ori     $at, $at, 0xFFFE
    and     $v1, $t8, $at
    li      $at, 0x70000
    ori     $at, $at, 0xEE80
    srl     $t2, $a0, 0x8
    add     $v0, $v1, $at
    andi    $t3, $t2, 0xF
    andi    $t5, $a0, 0xFE
    addi    $t4, $t3, 1
    sll     $t6, $t5, 0x18
    andi    $t9, $a0, 0x1
    srl     $v1, $a0, 0xC
    sw      $t4, ($a2)
    sra     $t7, $t6, 0x19
    sll     $t8, $t9, 0x4
    andi    $t1, $v1, 0xF
    sw      $t7, ($a3)
    or      $t2, $t1, $t8
    jr      $ra
     sw     $t2, ($a1)
END(LeoGetAAdr2)
