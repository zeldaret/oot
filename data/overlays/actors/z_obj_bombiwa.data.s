.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Obj_Bombiwa_InitVars
 .word 0x01270600, 0x00000000, 0x01630000, 0x00000198
.word ObjBombiwa_Init
.word ObjBombiwa_Destroy
.word ObjBombiwa_Update
.word ObjBombiwa_Draw
glabel D_80B91AA0
 .word 0x0C000D39, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x4FC1FFFE, 0x00000000, 0x00010100, 0x00370046, 0x00000000, 0x00000000
glabel D_80B91ACC
 .word 0x0000000C, 0x003CFF00
glabel D_80B91AD4
 .word 0xC8500064, 0xB0F407D0, 0xB0F8015E, 0x30FC03E8
glabel D_80B91AE4
 .word 0x0011000E, 0x000A0008, 0x00070005, 0x00030002
glabel D_80B91AF4
 .word 0x00000000, 0x00000000, 0x00000000

