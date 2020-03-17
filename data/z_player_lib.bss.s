.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80160000
    .space 0x1

glabel D_80160001
    .space 0x3

glabel D_80160004
    .space 0x1

glabel D_80160005
    .space 0x1

glabel D_80160006
    .space 0x2

glabel D_80160008
    .space 0x8

glabel D_80160010
    .space 0x4

glabel D_80160014
    .space 0x4

glabel D_80160018
    .space 0x8
