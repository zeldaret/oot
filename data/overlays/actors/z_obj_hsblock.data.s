.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Obj_Hsblock_InitVars
 .word 0x012D0100, 0x00000000, 0x011C0000, 0x00000168
.word ObjHsblock_Init
.word ObjHsblock_Destroy
.word ObjHsblock_Update
.word ObjHsblock_Draw
glabel D_80B940C0
 .word 0x42AA0000, 0x42AA0000, 0x00000000
glabel D_80B940CC
 .word 0xC8500064, 0xB0F407D0, 0xB0F80190, 0x30FC07D0
glabel D_80B940DC
 .word 0x06000730, 0x06000730, 0x06000578
glabel D_80B940E8
 .word 0xA57D3700
glabel D_80B940EC
 .word 0x06000210, 0x06000210, 0x06000470, 0x00000000, 0x00000000

