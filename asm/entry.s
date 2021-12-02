.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.set BOOT_STACK_SIZE, 0x400

glabel entrypoint # 0x80000400
    lui   $t0, %hi(_bootSegmentBssStart)
    addiu $t0, %lo(_bootSegmentBssStart)
    li    $t1, %lo(_bootSegmentBssSize)
.L8000040C:
    addi  $t1, $t1, -8
    sw    $zero, ($t0)
    sw    $zero, 4($t0)
    bnez  $t1, .L8000040C
     addi  $t0, $t0, 8
    lui   $t2, %hi(bootproc)
    lui   $sp, %hi(sBootThreadStack + BOOT_STACK_SIZE)
    addiu $t2, %lo(bootproc)
    jr    $t2
     addiu $sp, %lo(sBootThreadStack + BOOT_STACK_SIZE)
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
