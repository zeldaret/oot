.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Obj_Hamishi_InitVars
 .word 0x01D20600, 0x00000000, 0x00020000, 0x000001A8
.word ObjHamishi_Init
.word ObjHamishi_Destroy
.word ObjHamishi_Update
.word ObjHamishi_Draw
glabel D_80B93750
 .word 0x0C000D39, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x4FC1FFF6, 0x00000000, 0x00010100, 0x00320046, 0x00000000, 0x00000000
glabel D_80B9377C
 .word 0x0000000C, 0x003CFF00
glabel D_80B93784
 .word 0x00910087, 0x00730055, 0x004B0035, 0x002D0028, 0x00230000
glabel D_80B93798
 .word 0xC8500190, 0xB0F407D0, 0xB0F800FA, 0x30FC01F4, 0x00000000, 0x00000000

