.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Mori_Hashigo_InitVars
 .word 0x00E20100, 0x00000000, 0x00720000, 0x000001D0
.word BgMoriHashigo_Init
.word BgMoriHashigo_Destroy
.word BgMoriHashigo_Update
.word 0x00000000
glabel D_808A2DA0
 .word 0x04000000, 0x00000000, 0x00000000, 0x0001F820, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00190064
glabel D_808A2DC4
 .word 0x0A000900, 0x00000000, 0x00000001
.word D_808A2DA0
glabel D_808A2DD4
 .word 0xB0F403E8, 0xB0F80190, 0xB0FC03E8, 0x801F0003, 0xB04C0028, 0x485003E8
glabel D_808A2DEC
 .word 0xB0F403E8, 0xB0F80190, 0xB0FC03E8, 0x485003E8
glabel D_808A2DFC
 .word 0x40800000, 0x402CCCCD, 0x3FD9999A, 0x00000000, 0x00000000

