.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80858AA0
 .space 0x04
glabel D_80858AA4
 .space 0x04
glabel D_80858AA8
 .space 0x0C
glabel D_80858AB4
 .space 0x04
glabel D_80858AB8
 .space 0x04
glabel D_80858ABC
 .space 0x04
glabel D_80858AC0
 .space 0x08
glabel D_80858AC8
 .space 0x10
glabel D_80858AD8
 .space 0x98
 