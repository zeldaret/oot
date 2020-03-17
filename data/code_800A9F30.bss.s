.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80160FD0
    .space 0x40

glabel D_80161010
    .space 0xC4

glabel D_801610D4
    .space 0x1

glabel D_801610D5
    .space 0x5

glabel D_801610DA
    .space 0x6
