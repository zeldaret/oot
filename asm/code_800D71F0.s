#include "ultra64/asm.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(func_800D71F0)
    li      $at, 0x8800
    slt     $at, $a0, $at
    bnez    $at, .L800D723C
     li     $a2, 188
    srl     $a1, $a0, 8
    addi    $a1, $a1, -0x88
    multu   $a2, $a1
    andi    $a3, $a0, 0xFF
    addi    $a3, $a3, -0x40
    slti    $at, $a3, 0x40
    mflo    $a2
    bnezl   $at, .L800D722C
     mflo   $a2
    addi    $a3, $a3, -1
    mflo    $a2
.L800D722C:
    addi    $a3, $a3, 0x30A
    add     $a3, $a3, $a2
    jr      $ra
     sll    $v0, $a3, 7

.L800D723C:
    srl     $a1, $a0, 8
    addi    $a1, $a1, -0x81
    multu   $a2, $a1
    andi    $a3, $a0, 0xFF
    addi    $a3, $a3, -0x40
    slti    $at, $a3, 0x40
    mflo    $a2
    bnezl   $at, .L800D7268
     mflo   $a2
    addi    $a3, $a3, -1
    mflo    $a2
.L800D7268:
    add     $a3, $a3, $a2
    lui     $a2, %hi(D_800D7288)
    sll     $a3, $a3, 1
    addiu   $a2, %lo(D_800D7288)
    add     $a3, $a3, $a2
    lh      $a2, ($a3)
    jr      $ra
     sll    $v0, $a2, 7
END(func_800D71F0)

DATA(D_800D7288)
    .incbin "baserom.z64", 0xB4E428, 0xB4EE70 - 0xB4E428
ENDDATA(D_800D7288)
