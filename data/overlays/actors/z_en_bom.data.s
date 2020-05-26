.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Bom_InitVars
 .word 0x00100300, 0x00000030, 0x00010000, 0x00000208
.word EnBom_Init
.word EnBom_Destroy
.word EnBom_Update
.word EnBom_Draw
glabel D_809C3430
 .word 0x00002939, 0x20010000, 0x02000000, 0x00000000, 0x00000000, 0x0003F828, 0x00000000, 0x00010100, 0x0006000B, 0x000E0000, 0x00000000
glabel D_809C345C
 .word 0x00000000, 0x00000008, 0x00080000, 0x00000000, 0x00000000, 0x19000000, 0x00000000, 0x00000000, 0x00000064
glabel D_809C3480
 .word 0x00390000, 0x00000000, 0x00000001
.word D_809C345C
glabel D_809C3490
 .word 0xC0500000, 0xB04C07D0, 0x386CF060
glabel D_809C349C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809C34A8
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_809C34B4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809C34C0
 .word 0x00000000, 0x3F19999A, 0x00000000
glabel D_809C34CC
 .word 0xFFFFFFFF

