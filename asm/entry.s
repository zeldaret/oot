#include "ultra64/asm.h"
#include "boot.h"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

LEAF(entrypoint)
    # Clear boot segment .bss
    lui     $t0, %hi(_bootSegmentBssStart)
    addiu   $t0, %lo(_bootSegmentBssStart)
    li      $t1, %lo(_bootSegmentBssSize)
.clear_bss:
    addi    $t1, $t1, -8
    sw      $zero, ($t0)
    sw      $zero, 4($t0)
    bnez    $t1, .clear_bss
     addi   $t0, $t0, 8
    # Set up stack and enter program code
    lui     $t2, %hi(bootproc)
    lui     $sp, %hi(sBootThreadStack + BOOT_STACK_SIZE)
    addiu   $t2, %lo(bootproc)
    jr      $t2
     addiu  $sp, %lo(sBootThreadStack + BOOT_STACK_SIZE)
END(entrypoint)

.fill 0x60 - (. - entrypoint)
