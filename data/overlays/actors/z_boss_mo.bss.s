.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80927AC0
 .space 0x4B00
glabel D_8092C5C0
 .space 0x04
glabel D_8092C5C4
 .space 0x04
glabel D_8092C5C8
 .space 0x08

