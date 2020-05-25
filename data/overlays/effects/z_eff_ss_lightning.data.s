.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Effect_Ss_Lightning_InitVars
.word 0x0000000D
.word func_809AAEF0
glabel D_809AB538
 .word 0x04029F30, 0x0402A530, 0x0402AB30, 0x0402B130, 0x0402B730, 0x0402BD30, 0x0402C330, 0x0402C930, 0x00000000, 0x00000000

