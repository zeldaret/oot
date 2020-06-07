.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80175660
    .space 0x4

glabel D_80175664
    .space 0x4

glabel D_80175668
    .space 0x1

glabel D_80175669
    .space 0x3

glabel D_8017566C
    .space 0x4
