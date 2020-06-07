.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_8014A620
    .word L800F7534
    .word L800F7560
    .word L800F759C
    .word L800F75C0
    .word L800F75F4
    .word L800F7628

glabel D_8014A638
    .float 10000000000
