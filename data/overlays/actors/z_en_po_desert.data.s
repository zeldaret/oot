.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Po_Desert_InitVars
 .word 0x01BF0100, 0x00001090, 0x006D0000, 0x00000284
.word EnPoDesert_Init
.word EnPoDesert_Destroy
.word EnPoDesert_Update
.word EnPoDesert_Draw
glabel D_80AD39A0
 .word 0x03000039, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00190032, 0x00140000, 0x00000000
glabel D_80AD39CC
 .word 0x8917005C, 0xB0F407D0, 0x304C0C80
glabel D_80AD39D8
 .word 0x00000000, 0x44AF0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

