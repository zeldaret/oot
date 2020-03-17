.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_801463C0
    .float 10430.06

glabel D_801463C4
    .float 3.051851E-05

glabel D_801463C8
    .float 10430.06

glabel D_801463CC
    .float 3.051851E-05
