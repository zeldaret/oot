.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Obj_Timeblock_InitVars
 .word 0x01D10700, 0x0A000011, 0x01900000, 0x0000017C
.word ObjTimeblock_Init
.word ObjTimeblock_Destroy
.word ObjTimeblock_Update
.word ObjTimeblock_Draw
glabel D_80BA0AF0
 .word 0x3F800000
glabel D_80BA0AF4
 .word 0x42700000
glabel D_80BA0AF8
 .word 0x00180000, 0x3F19999A, 0x42200000, 0x00190000
glabel D_80BA0B08
 .word 0x42700000, 0x42C80000, 0x430C0000, 0x43340000, 0x435C0000, 0x43820000, 0x43960000, 0x43960000
glabel D_80BA0B28
 .word 0x801F0002, 0xB0F40708, 0xB0F8012C, 0x30FC05DC
glabel D_80BA0B38
 .word 0x64788C50, 0x8CC86496, 0xC864C8F0, 0x506E8C46, 0xA0E15064, 0x82646EBE

