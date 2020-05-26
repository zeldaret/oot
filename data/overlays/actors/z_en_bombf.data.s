.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Bombf_InitVars
 .word 0x004C0600, 0x00000011, 0x00310000, 0x00000210
.word EnBombf_Init
.word EnBombf_Destroy
.word EnBombf_Update
.word EnBombf_Draw
glabel D_809C8260
 .word 0x0A002939, 0x20010000, 0x02000000, 0x00000000, 0x00000000, 0x0003F828, 0x00000000, 0x00010100, 0x00090012, 0x000A0000, 0x00000000
glabel D_809C828C
 .word 0x00000000, 0x00000008, 0x00080000, 0x00000000, 0x00000000, 0x19000000, 0x00000000, 0x00000000, 0x00000064
glabel D_809C82B0
 .word 0x0A390000, 0x00000000, 0x00000001
.word D_809C828C
glabel D_809C82C0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809C82CC
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_809C82D8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809C82E4
 .word 0x00000000, 0x3F19999A, 0x00000000
glabel D_809C82F0
 .word 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000

