.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ma3_InitVars
 .word 0x01C50400, 0x00000039, 0x00D00000, 0x00000284
.word EnMa3_Init
.word EnMa3_Destroy
.word EnMa3_Update
.word EnMa3_Draw
glabel D_80AA3810
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0012002E, 0x00000000, 0x00000000
glabel D_80AA383C
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_80AA3848
 .word 0x060007D4, 0x3F800000, 0x00000000, 0x00000000, 0x060007D4, 0x3F800000, 0x00000000, 0xC1200000, 0x060093BC, 0x3F800000, 0x00000000, 0x00000000, 0x06009EE0, 0x3F800000, 0x00000000, 0x00000000, 0x06009EE0, 0x3F800000, 0x00000000, 0xC1200000
glabel D_80AA3898
 .word 0x44610000, 0x00000000, 0x00000000
glabel D_80AA38A4
 .word 0x06002970, 0x06003570, 0x06003770
glabel D_80AA38B0
 .word 0x06002570, 0x06002C70, 0x06003070, 0x00000000

