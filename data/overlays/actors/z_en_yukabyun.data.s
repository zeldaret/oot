.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Yukabyun_InitVars
 .word 0x006B0500, 0x00000010, 0x005F0000, 0x000001A0
.word EnYukabyun_Init
.word EnYukabyun_Destroy
.word EnYukabyun_Update
.word EnYukabyun_Draw
glabel D_80B43F30
 .word 0x0A11093D, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, 0x00000000, 0x09010100, 0x001C0008, 0x00000000, 0x00000000
glabel D_80B43F5C
 .word 0xC0500001, 0x304C0010
glabel D_80B43F64
 .word 0x06000AF0, 0x06000000, 0x00000000

