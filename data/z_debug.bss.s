.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel gGameInfo
    .space 0x8

glabel D_8015FA98
    .space 0x3

glabel D_8015FA9B
    .space 0x17D

glabel D_8015FC18
    .space 0x98
