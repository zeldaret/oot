.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_801495F0
    .word L800E9034
    .word L800E9040
    .word L800E9060
    .word L800E9070
    .word L800E91B0
    .word L800E92A0
    .word L800E91E8
    .word L800E91E8
    .word L800E9278

glabel D_80149614
    .float 32767

glabel D_80149618
    .float 1.0E-5
