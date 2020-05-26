.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_801612F0
    .space 0x68

glabel D_80161358
    .space 0x8

glabel D_80161360
    .space 0x30
