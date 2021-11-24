.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

BEGIN Mio0_Decompress
    lw      $a3, 8($a0)
    lw      $t9, 0xc($a0)
    lw      $t8, 4($a0)
    add     $a3, $a3, $a0
    add     $t9, $t9, $a0
    move    $a2, $zero
    addi    $a0, $a0, 0x10
    add     $t8, $t8, $a1
.L800025D0:
    bnez    $a2, .L800025E4
     nop
    lw      $t0, ($a0)
    li      $a2, 32
    addi    $a0, $a0, 4
.L800025E4:
    slt     $t1, $t0, $zero
    beqz    $t1, .L80002604
     nop
    lb      $t2, ($t9)
    addi    $t9, $t9, 1
    addi    $a1, $a1, 1
    b       .L80002638
     sb     $t2, -1($a1)
.L80002604:
    lhu     $t2, ($a3)
    addi    $a3, $a3, 2
    srl     $t3, $t2, 0xc
    andi    $t2, $t2, 0xfff
    beqz    $t3, .L8000264C
     sub    $t1, $a1, $t2
    addi    $t3, $t3, 2
.L80002620:
    lb      $t2, -1($t1)
    addi    $t3, $t3, -1
    addi    $t1, $t1, 1
    addi    $a1, $a1, 1
    bnez    $t3, .L80002620
     sb     $t2, -1($a1)
.L80002638:
    sll     $t0, $t0, 1
    bne     $a1, $t8, .L800025D0
     addi   $a2, $a2, -1
    jr      $ra
     nop
.L8000264C:
    lbu     $t3, ($t9)
    addi    $t9, $t9, 1
    b       .L80002620
     addi   $t3, $t3, 0x12
END Mio0_Decompress
