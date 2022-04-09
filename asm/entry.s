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
    la      $t0, _bootSegmentBssStart
#ifndef AVOID_UB
    # UB: li only loads the lower 16 bits of _bootSegmentBssSize when it may be larger than this,
    # so not all of bss may be cleared if it is too large
    li      $t1, _bootSegmentBssSize
#else
    la      $t1, _bootSegmentBssSize
#endif
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
