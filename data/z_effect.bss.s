.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80157DA0
    .space 0x4

glabel D_80157DA4
    .space 0x4

glabel D_80157DA8
    .space 0x55C

glabel D_80158304
    .space 0x8F4

glabel D_80158BF8
    .space 0x4

glabel D_80158BFC
    .space 0x4

glabel D_80158C00
    .space 0x50C

glabel D_8015910C
    .space 0x16C4

glabel D_8015A7D0
    .space 0xE5C

glabel D_8015B62C
    .space 0x4

glabel D_8015B630
    .space 0x560

glabel D_8015BB90
    .space 0x4

glabel D_8015BB94
    .space 0xC
