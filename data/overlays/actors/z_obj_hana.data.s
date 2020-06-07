.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Obj_Hana_InitVars
 .word 0x014F0600, 0x00000000, 0x00020000, 0x00000198
.word ObjHana_Init
.word ObjHana_Destroy
.word ObjHana_Update
.word ObjHana_Draw
glabel D_80B93A70
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0008000A, 0x00000000, 0x00000000
glabel D_80B93A9C
 .word 0x0000000C, 0x003CFF00
glabel D_80B93AA4
 .word 0x05000500, 0x3C23D70A, 0x00000000
glabel D_80B93AB0
 .word 0xFFFF0000, 0x0500A880, 0x3DCCCCCD, 0x42680000, 0x000A0012
glabel D_80B93AC4
 .word 0x0500B9D0, 0x3ECCCCCD, 0x00000000, 0x000C002C
glabel D_80B93AD4
 .word 0xC850000A, 0xB0F40384, 0xB0F8003C, 0x30FC0320, 0x00000000, 0x00000000, 0x00000000

