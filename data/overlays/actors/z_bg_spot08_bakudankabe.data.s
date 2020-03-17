.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot08_Bakudankabe_InitVars
 .word 0x01A80100, 0x00400000, 0x00740000, 0x00000244
.word BgSpot08Bakudankabe_Init
.word BgSpot08Bakudankabe_Destroy
.word BgSpot08Bakudankabe_Update
.word BgSpot08Bakudankabe_Draw
glabel D_808B0830
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00000000, 0x00320032, 0x00460064, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x0000FF9C, 0x00320032, 0x00460064, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00000064, 0x00320032, 0x00460064
glabel D_808B089C
 .word 0x0A000900, 0x20000000, 0x00000003
.word D_808B0830
glabel D_808B08AC
 .word 0x00000000, 0x42E94CCD, 0x42480000, 0x42E60000, 0x42BE0000, 0x41200000, 0xC2E60000, 0x42BE0000, 0x41200000
glabel D_808B08D0
 .word 0xC0500001, 0xB0F40C80, 0xB0F80320, 0x30FC03E8

