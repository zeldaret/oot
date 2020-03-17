.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AFE020
 .word 0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, 0x00000000, 0x01000000, 0x0F000000, 0x00000000, 0x000A0064, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, 0x01000000, 0x00000000, 0x00140064
glabel D_80AFE068
 .word 0x06110939, 0x10000000, 0x00000002
.word D_80AFE020
glabel D_80AFE078
 .word 0x10F2F1F2, 0x10F2F210, 0xE1F2F474, 0xF2F2F200, 0x007460D3, 0x0000D1F4, 0xF2F2F8F4, 0x0000F400
glabel En_Skb_InitVars
 .word 0x01B00500, 0x00000015, 0x01840000, 0x00000344
.word EnSkb_Init
.word EnSkb_Destroy
.word EnSkb_Update
.word EnSkb_Draw
glabel D_80AFE0B8
 .word 0x00000000, 0x41000000, 0x00000000
glabel D_80AFE0C4
 .word 0x00000000, 0xBFC00000, 0x00000000
glabel D_80AFE0D0
 .word 0xB04C07D0, 0x386CF830, 0x00000000, 0x00000000

