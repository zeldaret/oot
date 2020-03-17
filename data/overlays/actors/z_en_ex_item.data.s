.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ex_Item_InitVars
 .word 0x01680600, 0x00000030, 0x00010000, 0x00000184
.word EnExItem_Init
.word EnExItem_Destroy
.word EnExItem_Update
.word EnExItem_Draw
glabel D_80A09E00
 .word 0x00630064, 0x00650000
glabel D_80A09E08
 .word 0x0403F140, 0x00000000

