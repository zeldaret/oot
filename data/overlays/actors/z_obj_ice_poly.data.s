.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Obj_Ice_Poly_InitVars
 .word 0x011E0600, 0x00000010, 0x00010000, 0x000001EC
.word ObjIcePoly_Init
.word ObjIcePoly_Destroy
.word ObjIcePoly_Update
.word ObjIcePoly_Draw
glabel D_80B94B30
 .word 0x0A110939, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x02000000, 0x00020800, 0x00000000, 0x19010100, 0x00320078, 0x00000000, 0x00000000
glabel D_80B94B5C
 .word 0x0C000D00, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x4E01F7F6, 0x00000000, 0x00010000, 0x00320078, 0x00000000, 0x00000000
glabel D_80B94B88
 .word 0x3F000000, 0x3F800000, 0x3FC00000
glabel D_80B94B94
 .word 0xFFE70000, 0xFFEC0000
glabel D_80B94B9C
 .word 0xFAFAFAFF
glabel D_80B94BA0
 .word 0xB4B4B4FF
glabel D_80B94BA4
 .word 0x00000000, 0x00000000, 0x00000000

