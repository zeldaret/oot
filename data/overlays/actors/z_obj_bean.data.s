.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80B90E30
 .word 0x00000000
glabel Obj_Bean_InitVars
 .word 0x01260100, 0x00400000, 0x011E0000, 0x000001F8
.word ObjBean_Init
.word ObjBean_Destroy
.word ObjBean_Update
.word ObjBean_Draw
glabel D_80B90E54
 .word 0x0A000009, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0040001E, 0xFFE10000, 0x00000000
glabel D_80B90E80
 .word 0x40400000, 0x3E99999A, 0x41200000, 0x3F000000, 0x41F00000, 0x3F000000, 0x40400000, 0x3E99999A
glabel D_80B90EA0
 .word gCuttableShrubStalkDL, gCuttableShrubTipDL
glabel D_80B90EA8
 .word 0xC8500064, 0xB0F407D0, 0xB0F800C8, 0x30FC0640, 0x00000000, 0x00000000

