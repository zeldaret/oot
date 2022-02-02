#include "ultra64/asm.h"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

# padding?
    nop
    nop
    nop
    nop

LEAF(guNormalize)
    lwc1    $f4, ($a0)
    lwc1    $f6, ($a1)
    lwc1    $f8, ($a2)
    mul.s   $f10, $f4, $f4
    li      $t0, 0x3F800000 # 1.0f
    mul.s   $f16, $f6, $f6
    add.s   $f18, $f10, $f16
    mul.s   $f16, $f8, $f8
    add.s   $f10, $f16, $f18
    mtc1    $t0, $f18
    sqrt.s  $f16, $f10
    div.s   $f10, $f18, $f16
    mul.s   $f16, $f4, $f10
    nop
    mul.s   $f18, $f6, $f10
    nop
    mul.s   $f4, $f8, $f10
    swc1    $f16, ($a0)
    swc1    $f18, ($a1)
    jr      $ra
     swc1   $f4, ($a2)
END(guNormalize)
