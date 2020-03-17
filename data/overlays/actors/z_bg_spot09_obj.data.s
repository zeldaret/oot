.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot09_Obj_InitVars
 .word 0x00B80100, 0x00000000, 0x00AE0000, 0x00000168
.word BgSpot09Obj_Init
.word BgSpot09Obj_Destroy
.word BgSpot09Obj_Update
.word BgSpot09Obj_Draw
glabel D_808B1F90
 .word 0x00000000, 0x06005520, 0x0600283C, 0x06008458, 0x06007580
glabel D_808B1FA4
 .word func_808B1BEC
.word func_808B1AE0
.word func_808B1BA0
glabel D_808B1FB0
 .word 0xB0F41C20, 0xB0F80BB8, 0x30FC1C20
glabel D_808B1FBC
 .word 0xB0F41C20, 0xB0F80320, 0x30FC05DC
glabel D_808B1FC8
 .word 0x06000100, 0x06003970, 0x06001120, 0x06007D40, 0x06006210, 0x00000000

