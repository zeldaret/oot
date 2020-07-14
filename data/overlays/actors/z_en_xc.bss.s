.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80B42D90
 .space 0x10
glabel D_80B42DA0
 .space 0x10
glabel D_80B42DB0
 .space 0x04
glabel D_80B42DB4
 .space 0x04
glabel D_80B42DB8
 .space 0x08

