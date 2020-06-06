.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_801493F0
    .float 0.33

glabel D_801493F4
    .float 0.66

glabel D_801493F8
    .float 262159

glabel jtbl_801493FC
    .word L800DFB54
    .word L800DFB18
    .word L800DFAB0
    .word L800DF9DC
    .word L800DF954

glabel D_80149410
    .float 2880000
