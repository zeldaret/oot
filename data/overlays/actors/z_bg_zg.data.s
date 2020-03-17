.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808C1010
 .word func_808C0CD4
.word func_808C0D08
glabel D_808C1018
 .word 0x485003E8
glabel D_808C101C
 .word func_808C0EEC
glabel Bg_Zg_InitVars
 .word 0x01770400, 0x00000010, 0x01560000, 0x0000016C
.word BgZg_Init
.word BgZg_Destroy
.word BgZg_Update
.word BgZg_Draw

