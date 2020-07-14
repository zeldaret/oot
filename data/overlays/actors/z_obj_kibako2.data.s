.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Obj_Kibako2_InitVars
 .word 0x01A00100, 0x00000000, 0x01700000, 0x000001B8
.word ObjKibako2_Init
.word ObjKibako2_Destroy
.word ObjKibako2_Update
.word ObjKibako2_Draw
glabel D_80B95FD0
 .word 0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x40000040, 0x00000000, 0x00010000, 0x001F0030, 0x00000000, 0x00000000
glabel D_80B95FFC
 .word 0xC8500064, 0xB0F40BB8, 0xB0F801F4, 0x30FC03E8, 0x00000000

