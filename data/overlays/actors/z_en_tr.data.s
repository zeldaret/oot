.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Tr_InitVars
 .word 0x00CC0400, 0x00000010, 0x00C10000, 0x000002E8
.word EnTr_Init
.word EnTr_Destroy
.word EnTr_Update
.word EnTr_Draw
.word 0x06003FC8, 0x06001CDC
glabel D_80B24368
 .word 0x06002BC4, 0x06000BFC
glabel D_80B24370
 .word 0x060035CC, 0x060013CC
glabel D_80B24378
 .word 0x060049C8, 0x060049C8
glabel D_80B24380
 .word 0x06012E1C, 0x06012E1C
glabel D_80B24388
 .word 0x00000000, 0x41A00000, 0xC1F00000, 0x41A00000, 0xC1A00000, 0xC1A00000, 0x41F00000
glabel D_80B243A4
 .word 0x00000000, 0x41F00000, 0x00000000, 0xC1F00000, 0x41F00000, 0xC1F00000, 0x00000000
glabel D_80B243C0
 .word 0xFFC800FF, 0xFF0000FF, 0xFFFFFFFF, 0x0000FFFF
glabel D_80B243D0
 .word 0x060086D8, 0x060094D8, 0x060098D8
glabel D_80B243DC
 .word 0x450FC000, 0x00000000, 0xC4160000
glabel D_80B243E8
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

