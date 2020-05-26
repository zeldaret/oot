.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Rd_InitVars
 .word 0x00900500, 0x00000415, 0x00980000, 0x0000036C
.word EnRd_Init
.word EnRd_Destroy
.word EnRd_Update
.word EnRd_Draw
glabel D_80AE48C0
 .word 0x00000909, 0x10010000, 0x01000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, 0x00140046, 0x00000000, 0x00000000
glabel D_80AE48EC
 .word 0x00F20000, 0x0000F210, 0xF1F2F400, 0x00000000, 0x00E460D3, 0x0000F1F4, 0xF2F2F8F4, 0x0000F400
glabel D_80AE490C
 .word 0xB04C07D0, 0xC850000A, 0x386CF254
glabel D_80AE4918
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80AE4924
 .word 0xC8C8FFFF
glabel D_80AE4928
 .word 0x0000FF00
glabel D_80AE492C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80AE4938
 .word 0xC8C8FFFF
glabel D_80AE493C
 .word 0x0000FF00
glabel D_80AE4940
 .word 0x43960000, 0x00000000, 0x00000000, 0x43960000, 0x00000000, 0x00000000
glabel D_80AE4958
 .word 0x3E800000, 0x3E800000, 0x3E800000, 0x00000000, 0x00000000, 0x00000000

