.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Gnd_Iceblock_InitVars
 .word 0x01B70600, 0x00000030, 0x01790000, 0x00000174
.word BgGndIceblock_Init
.word BgGndIceblock_Destroy
.word BgGndIceblock_Update
.word BgGndIceblock_Draw
glabel D_8087A740
 .word 0xFAFAFAFF
glabel D_8087A744
 .word 0xB4B4B4FF
glabel D_8087A748
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_8087A754
 .word 0x48500064
glabel D_8087A758
 .word 0x00000000, 0x00000202, 0x02020303, 0x03040404, 0x06060606, 0x06060000
glabel D_8087A770
 .word 0x05040302, 0x01000504, 0x02010601, 0x00050302, 0x05040302, 0x01000000, 0x00000000, 0x00000000

