.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Wonder_Talk_InitVars
 .word 0x01470600, 0x08000009, 0x00010000, 0x00000168
.word EnWonderTalk_Init
.word EnWonderTalk_Destroy
.word EnWonderTalk_Update
.word 0x00000000

