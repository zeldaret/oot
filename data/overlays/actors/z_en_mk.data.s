.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Mk_InitVars
 .word 0x014A0400, 0x00000019, 0x01320000, 0x00000288
.word EnMk_Init
.word EnMk_Destroy
.word EnMk_Update
.word EnMk_Draw
glabel D_80AAD620
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_80AAD64C
 .word 0x447A0000, 0xC2C80000, 0x00000000, 0x00000000, 0x00000000

