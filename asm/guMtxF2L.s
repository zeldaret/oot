.include "macro.inc"

# assembler directives
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

    nop
    nop
    nop
    nop

glabel guMtxF2L
    li    $at, 0x47800000 # 65536.0
    mtc1  $at, $f0
    lui     $t9, 0xffff
    addiu   $t8, $a1, 0x20
.L801064F0:
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
    andi    $t6, $t1, 0xffff
    or      $t4, $t2, $t3
    or      $t7, $t5, $t6
    sw      $t4, -4($a1)
    bne     $a1, $t8, .L801064F0
     sw     $t7, 0x1c($a1)
    jr      $ra
     nop   
