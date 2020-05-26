.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Spot11_Bakudankabe_InitVars
 .word 0x019F0100, 0x00000030, 0x016F0000, 0x000001B0
.word BgSpot11Bakudankabe_Init
.word BgSpot11Bakudankabe_Destroy
.word BgSpot11Bakudankabe_Update
.word BgSpot11Bakudankabe_Draw
glabel D_808B2700
 .word 0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00280050, 0x000008D3, 0x006CF9D4
glabel D_808B272C
 .word 0x450D3000, 0x42D80000, 0xC4C1C000
glabel D_808B2738
 .word 0x450D3000, 0x42D80000, 0xC4C1C000, 0x00000000, 0x00000000, 0x00000000

