#include "ultra64/r4300.h"
.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

BEGIN __osGetCause
    mfc0    $v0, Cause
    jr      $ra
     nop
END __osGetCause
