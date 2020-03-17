.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot11_Oasis_InitVars
 .word 0x01C20100, 0x00000010, 0x016F0000, 0x00000154
.word BgSpot11Oasis_Init
.word Actor_Noop
.word BgSpot11Oasis_Update
.word 0x00000000
glabel D_808B2E10
 .word 0x04EC07F8
glabel D_808B2E14
 .word 0x04EB079B, 0x046F0744, 0x043F0778
glabel D_808B2E20
 .word 0x049507FC
glabel D_808B2E24
 .word 0xC0500001, 0xB0F40BB8, 0xB0F804B0, 0x30FC03E8
glabel D_808B2E34
 .word 0x00000000, 0xC2C80000, 0x00000000, 0x42C80000, 0xC2A00000, 0xC2480000, 0xC2480000, 0xC2A00000, 0xC2C80000, 0xC2960000, 0xC2B40000, 0x42B40000, 0x41F00000, 0xC2C80000, 0x42200000

