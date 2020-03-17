.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot12_Saku_InitVars
 .word 0x01910100, 0x00000000, 0x01620000, 0x0000016C
.word BgSpot12Saku_Init
.word BgSpot12Saku_Destroy
.word BgSpot12Saku_Update
.word BgSpot12Saku_Draw
glabel D_808B3840
 .word 0xC8500064, 0xB0F404B0, 0xB0F801F4, 0x30FC03E8

