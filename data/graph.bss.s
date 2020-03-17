.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_801665D0
    .space 0x4

glabel D_801665D4
    .space 0x4

glabel D_801665D8
    .space 0x4

glabel D_801665DC
    .space 0x4

glabel D_801665E0
    .space 0x10

glabel D_801665F0
    .space 0x58

glabel D_80166648
    .space 0x18
