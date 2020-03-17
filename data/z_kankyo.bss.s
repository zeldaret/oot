.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_8015FCF0
    .space 0x8

glabel D_8015FCF8
    .space 0xC

glabel D_8015FD04
    .space 0x2

glabel D_8015FD06
    .space 0x2

glabel D_8015FD08
    .space 0x4

glabel D_8015FD0C
    .space 0x4

glabel D_8015FD10
    .space 0x60

glabel D_8015FD70
    .space 0xC

glabel D_8015FD7C
    .space 0x2

glabel D_8015FD7E
    .space 0x2

glabel D_8015FD80
    .space 0x4

glabel D_8015FD84
    .space 0x4

glabel D_8015FD88
    .space 0x10

glabel D_8015FD98
    .space 0x8

glabel D_8015FDA0
    .space 0xE

glabel D_8015FDAE
    .space 0x2

glabel D_8015FDB0
    .space 0x10
