.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Box_InitVars
 .word 0x000A0B00, 0x00000000, 0x000E0000, 0x000001FC
.word EnBox_Init
.word EnBox_Destroy
.word EnBox_Update
.word EnBox_Draw
glabel D_809CA800
 .word 0x0600024C, 0x06000128, 0x0600043C, 0x0600043C
glabel D_809CA810
 .word 0x001F0000
glabel D_809CA814
 .word 0x00000000, 0x3F800000, 0x00000000
glabel D_809CA820
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

