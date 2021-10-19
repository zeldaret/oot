#include "ultra64/r4300.h"
.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osRestoreInt
    mfc0    $t0, Status
    or      $t0, $t0, $a0
    mtc0    $t0, Status
    nop
    nop
    jr      $ra
     nop
