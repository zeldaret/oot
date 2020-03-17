.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Diving_Game_InitVars
 .word 0x01240400, 0x00000019, 0x00FE0000, 0x00000398
.word EnDivingGame_Init
.word EnDivingGame_Destroy
.word EnDivingGame_Update
.word EnDivingGame_Draw
glabel D_809EF0B0
 .word 0x00000000
glabel D_809EF0B4
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x000A000A, 0x00000000, 0x00000000
glabel D_809EF0E0
 .word 0x06003E40, 0x06004640, 0x06004E40, 0x00000000

