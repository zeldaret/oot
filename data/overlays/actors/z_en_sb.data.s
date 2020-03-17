.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Sb_InitVars
 .word 0x00C50500, 0x00000005, 0x00B50000, 0x00000208
.word EnSb_Init
.word EnSb_Destroy
.word EnSb_Update
.word EnSb_Draw
glabel D_80AF89D0
 .word 0x0A110939, 0x01000000, 0x00000000, 0xFFCFFFFF, 0x04080000, 0xFFCFFFFF, 0x00000000, 0x01010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_80AF89FC
 .word 0x000000F2, 0x00F2F212, 0xD1D2D424, 0xF2F2E4F2, 0xF2240000, 0x0000D1D4, 0xD2D2D8D4, 0x00000000
glabel D_80AF8A1C
 .word 0x89170027, 0x801F0002, 0x304C001E
glabel D_80AF8A28
 .word 0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, 0x00000000, 0x00000000

