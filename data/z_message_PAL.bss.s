.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_801759A0
    .space 0x4

glabel D_801759A4
    .space 0x4

glabel D_801759A8
    .space 0x2

glabel D_801759AA
    .space 0x2

glabel D_801759AC
    .space 0x2

glabel D_801759AE
    .space 0x2

glabel D_801759B0
    .space 0x2

glabel D_801759B2
    .space 0x2

glabel D_801759B4
    .space 0x2

glabel D_801759B6
    .space 0x2

glabel D_801759B8
    .space 0x2

glabel D_801759BA
    .space 0x2

glabel D_801759BC
    .space 0x2

glabel D_801759BE
    .space 0x2
