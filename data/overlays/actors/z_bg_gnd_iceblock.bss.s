.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_8087AC40
 .space 0x01
glabel D_8087AC41
 .space 0x01
glabel D_8087AC42
 .space 0x0E

