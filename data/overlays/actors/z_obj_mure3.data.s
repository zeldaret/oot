.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Obj_Mure3_InitVars
 .word 0x01AB0100, 0x00000000, 0x00010000, 0x00000170
.word ObjMure3_Init
.word ObjMure3_Destroy
.word ObjMure3_Update
.word 0x00000000
glabel D_80B9B0C0
 .word 0x00050005, 0x00070000
glabel D_80B9B0C8
 .word 0xB0F40064, 0xB0F80708, 0x30FC0064
glabel D_80B9B0D4
 .word func_80B9A9D0
.word func_80B9AA90
.word func_80B9ABA0

