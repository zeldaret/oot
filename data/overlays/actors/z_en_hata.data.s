.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Hata_InitVars
 .word 0x00260600, 0x00000000, 0x00760000, 0x0000027C
.word EnHata_Init
.word EnHata_Destroy
.word EnHata_Update
.word EnHata_Draw
.word 0x0A000939, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000080, 0x00000000, 0x00050100, 0x001000F6, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xFF000000
glabel D_80A51248
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

