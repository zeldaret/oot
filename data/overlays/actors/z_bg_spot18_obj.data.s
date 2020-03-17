.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot18_Obj_InitVars
 .word 0x00B90100, 0x00000000, 0x00AF0000, 0x0000016C
.word BgSpot18Obj_Init
.word BgSpot18Obj_Destroy
.word BgSpot18Obj_Update
.word BgSpot18Obj_Draw
glabel D_808B90F0
 .word 0x01010100
glabel D_808B90F4
 .word 0x3DCCCCCD, 0x3DCCCCCD
glabel D_808B90FC
 .word 0x06002FE4, 0x0600261C
glabel D_808B9104
 .word 0x00000000, 0x00000000
glabel D_808B910C
 .word func_808B8A98
.word func_808B8910
.word func_808B8A5C
.word func_808B8B08
glabel D_808B911C
 .word 0xB070FFF6, 0xB06CFFFC, 0xB0F40578, 0xB0F801F4, 0x30FC0320
glabel D_808B9130
 .word 0xB0F404B0, 0xB0F801F4, 0x30FC02BC
glabel D_808B913C
 .word func_808B8BB4
.word func_808B8C90
glabel D_808B9144
 .word 0x06002BC0, 0x06002370, 0x00000000

