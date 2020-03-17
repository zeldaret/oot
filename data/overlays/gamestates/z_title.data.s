.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808009A0
 .word 0x00000000, 0x00000000
glabel D_808009A8
 .word 0x64646400, 0x64646400
glabel D_808009B0
 .word 0xFFFFFF00, 0xFFFFFF00, 0x45454500, 0x00000000
