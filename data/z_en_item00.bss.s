.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80157D90
glabel D_80157D90_
    .space 0x4

glabel D_80157D94
    .space 0xC
