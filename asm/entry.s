.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

glabel entrypoint # 0x80000400
    lui   $t0, %hi(_bootSegmentBssStart) # $t0, 0x8001
    addiu $t0, %lo(_bootSegmentBssStart) # addiu $t0, $t0, 0x2370
    li    $t1, %lo(_bootSegmentBssSize) # li $t1, 0x4A30
.L8000040C:
    addi  $t1, $t1, -8
    sw    $zero, ($t0)
    sw    $zero, 4($t0)
    bnez  $t1, .L8000040C
     addi  $t0, $t0, 8
    lui   $t2, %hi(bootproc) # $t2, 0x8000
    lui   $sp, %hi(gMainThread) # $sp, 0x8001
    addiu $t2, %lo(bootproc) # addiu $t2, $t2, 0x0498
    jr    $t2
     addiu $sp, %lo(gMainThread) # addiu $sp, $sp, 0x2D60
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
