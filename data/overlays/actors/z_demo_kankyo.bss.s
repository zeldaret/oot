.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_8098CF80
 .space 0x02
glabel D_8098CF82
 .space 0x02
glabel D_8098CF84
 .space 0x04
glabel D_8098CF88
 .space 0x04
glabel D_8098CF8C
 .space 0x0C
glabel D_8098CF98
 .space 0x04
glabel D_8098CF9C
 .space 0x04
glabel D_8098CFA0
 .space 0x04
glabel D_8098CFA4
 .space 0x04
glabel D_8098CFA8
 .space 0x10
glabel D_8098CFB8
 .space 0x04
glabel D_8098CFBC
 .space 0x04
glabel D_8098CFC0
 .space 0x10

