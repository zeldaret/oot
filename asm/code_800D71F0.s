.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800D71F0
    li      $at, 0x8800
    slt     $at, $a0, $at
    bnez    $at, .L800D723C
     li     $a2, 188
    srl     $a1, $a0, 8
    addi    $a1, $a1, -0x88
    multu   $a2, $a1
    andi    $a3, $a0, 0xff
    addi    $a3, $a3, -0x40
    slti    $at, $a3, 0x40
    mflo    $a2
    bnezl   $at, .L800D722C
     mflo   $a2
    addi    $a3, $a3, -1
    mflo    $a2
.L800D722C:
    addi    $a3, $a3, 0x30a
    add     $a3, $a3, $a2
    jr      $ra
     sll    $v0, $a3, 7

.L800D723C:
    srl     $a1, $a0, 8
    addi    $a1, $a1, -0x81
    multu   $a2, $a1
    andi    $a3, $a0, 0xff
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

glabel D_800D7288
    .incbin "baserom/code", 0xBA428, 0xA48
