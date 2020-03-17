.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80175670
    .space 0x10

glabel D_80175680
    .space 0x8

glabel D_80175688
    .space 0x8

glabel D_80175690
    .space 0x8

glabel D_80175698
    .space 0x4

glabel D_8017569C
    .space 0x4

glabel D_801756A0
    .space 0x8

glabel D_801756A8
    .space 0x8
