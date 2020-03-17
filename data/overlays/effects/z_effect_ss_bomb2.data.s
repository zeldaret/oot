.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.word 0x00000003
.word func_8099F650
glabel D_8099FED8
 .word func_8099F748
.word func_8099F960
glabel D_8099FEE0
 .word 0x04007F80, 0x04008780, 0x04008F80, 0x04009780, 0x04009F80, 0x0400A780, 0x0400AF80, 0x0400B780
glabel D_8099FF00
 .word 0x04007F80, 0x04008780, 0x04008F80, 0x04009780, 0x04009F80, 0x0400A780, 0x0400AF80, 0x0400B780

