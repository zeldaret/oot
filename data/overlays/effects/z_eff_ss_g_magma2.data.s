.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809A6860
 .word 0x0602E4E0, 0x0602E8E0, 0x0602ECE0, 0x0602F0E0, 0x0602F4E0, 0x0602F8E0, 0x0602FCE0, 0x060300E0, 0x060304E0, 0x060308E0, 0x060308E0, 0x060308E0, 0x060308E0, 0x00000013
.word func_809A63A0
glabel D_809A689C
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

