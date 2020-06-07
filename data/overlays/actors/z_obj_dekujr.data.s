.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Obj_Dekujr_InitVars
 .word 0x00D30400, 0x00000009, 0x00CC0000, 0x000001A4
.word ObjDekujr_Init
.word ObjDekujr_Destroy
.word ObjDekujr_Update
.word ObjDekujr_Draw
glabel D_80B92A00
 .word 0x00000000, 0x00003901, 0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000100, 0x003C0050, 0x00000000, 0x00000000
glabel D_80B92A2C
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

