.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel jtbl_801493D0
    .word L800DCCE4
    .word L800DCD0C
    .word L800DCD20
    .word L800DCCF8
    .word L800DCDA0
    .word L800DCD60
