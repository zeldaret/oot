.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel En_Dnt_Demo_InitVars
 .word 0x01A10600, 0x00000000, 0x00010000, 0x00000200
.word EnDntDemo_Init
.word EnDntDemo_Destroy
.word EnDntDemo_Update
.word 0x00000000
glabel D_809F15C0
 .word 0x00000001, 0x00000001, 0x00020000, 0x00010001, 0x00000001, 0x00000001, 0x00010002, 0x00020001, 0x00010001, 0x00000000, 0x00000001, 0x00020001, 0x00010001, 0x00010000, 0x00000000, 0x00020000, 0x00000000, 0x00010000, 0x00000000, 0x00020001, 0x00020000, 0x00010001, 0x00010001, 0x00010001, 0x00010002, 0x00020002, 0x00020002, 0x00020002
glabel D_809F1630
 .word 0x00040003, 0x00040002, 0x00030001
glabel D_809F163C
 .word 0x456E2000, 0xC1A00000, 0x447C8000, 0x45732000, 0xC1A00000, 0x44778000, 0x45692000, 0xC1A00000, 0x446D8000, 0x45700000, 0xC1A00000, 0x44688000, 0x45746000, 0xC1A00000, 0x44598000, 0x456C4000, 0xC1A00000, 0x44570000, 0x4567E000, 0xC1A00000, 0x44520000, 0x45714000, 0xC1A00000, 0x44458000, 0x456A6000, 0xC1A00000, 0x443B8000, 0x00000000, 0x00000000

