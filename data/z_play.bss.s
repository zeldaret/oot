.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_801613B0
    .space 0xDC

glabel D_8016148C
    .space 0x4

glabel D_80161490
    .space 0x8

glabel D_80161498
    .space 0x18

glabel D_801614B0
    .space 0x3

glabel D_801614B3
    .space 0x5

glabel D_801614B8
    .space 0x10

glabel D_801614C8
    .space 0x8

glabel D_801614D0
    .space 0x2B2F

glabel D_80163FFF
    .space 0x24D1
