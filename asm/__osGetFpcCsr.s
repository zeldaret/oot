#include "ultra64/asm.h"
#include "ultra64/r4300.h"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

LEAF(__osGetFpcCsr)
    cfc1    $v0, C1_FPCSR
    jr      $ra
     nop
END(__osGetFpcCsr)
