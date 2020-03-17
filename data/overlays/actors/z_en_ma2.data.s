.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ma2_InitVars
 .word 0x00D90400, 0x02000039, 0x00D00000, 0x00000284
.word EnMa2_Init
.word EnMa2_Destroy
.word EnMa2_Update
.word EnMa2_Draw
glabel D_80AA2820
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0012002E, 0x00000000, 0x00000000
glabel D_80AA284C
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_80AA2858
 .word 0x060007D4, 0x3F800000, 0x00000000, 0x00000000, 0x060007D4, 0x3F800000, 0x00000000, 0xC1200000, 0x060093BC, 0x3F800000, 0x00000000, 0x00000000, 0x06009EE0, 0x3F800000, 0x00000000, 0x00000000, 0x06009EE0, 0x3F800000, 0x00000000, 0xC1200000
glabel D_80AA28A8
 .word 0x44610000, 0x00000000, 0x00000000
glabel D_80AA28B4
 .word 0x06002970, 0x06003570, 0x06003770
glabel D_80AA28C0
 .word 0x06002570, 0x06002C70, 0x06003070, 0x00000000

