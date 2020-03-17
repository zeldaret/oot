.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Heavy_Block_InitVars
 .word 0x00920100, 0x00000000, 0x009A0000, 0x00000178
.word BgHeavyBlock_Init
.word BgHeavyBlock_Destroy
.word BgHeavyBlock_Update
.word BgHeavyBlock_Draw
glabel D_80884E70
 .word 0xC0500001, 0xB0F40FA0, 0xB0F80190, 0x30FC0190
glabel D_80884E80
 .word 0x00000000, 0x43960000, 0xC1A00000, 0x42480000, 0x43480000, 0xC1A00000, 0xC2480000, 0x43480000, 0xC1A00000, 0x00000000, 0x42C80000, 0x41F00000, 0x00000000, 0x42C80000, 0xC28C0000, 0x00000000, 0x00000000, 0xC1A00000
glabel D_80884EC8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80884ED4
 .word 0x00000000
glabel D_80884ED8
 .word 0x43C80000
glabel D_80884EDC
 .word 0x00000000

