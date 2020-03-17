.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80BA1B50
 .word 0x00000000
glabel D_80BA1B54
 .word 0x00000000
glabel D_80BA1B58
 .word 0x00000000
glabel D_80BA1B5C
 .word 0x00000000
glabel Obj_Tsubo_InitVars
 .word 0x01110600, 0x00800010, 0x00010000, 0x000001A0
.word ObjTsubo_Init
.word ObjTsubo_Destroy
.word ObjTsubo_Update
.word 0x00000000
glabel D_80BA1B80
 .word 0x0003012C
glabel D_80BA1B84
 .word 0x05017870, 0x060017C0
glabel D_80BA1B8C
 .word 0x05017A60, 0x06001960
glabel D_80BA1B94
 .word 0x0C090939, 0x20010000, 0x00000000, 0x00000002, 0x00010000, 0x4FC1FFFE, 0x00000000, 0x01010100, 0x0009001A, 0x00000000, 0x00000000
glabel D_80BA1BC0
 .word 0x0000000C, 0x003CFF00
glabel D_80BA1BC8
 .word 0xB86CFB50, 0xB870B1E0, 0xC8500096, 0xB0F40384, 0xB0F80064, 0x30FC0320

