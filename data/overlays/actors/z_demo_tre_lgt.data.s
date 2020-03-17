.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80993D70
 .word 0x3F800000, 0x43080000, 0x433E0000, 0x42200000, 0x3F800000, 0x43080000, 0x435C0000, 0x42480000
glabel Demo_Tre_Lgt_InitVars
 .word 0x00AA0700, 0x00000010, 0x000E0000, 0x0000017C
.word DemoTreLgt_Init
.word DemoTreLgt_Destroy
.word DemoTreLgt_Update
.word DemoTreLgt_Draw
glabel D_80993DB0
 .word 0x06004B60, 0x06004F70
glabel D_80993DB8
 .word func_8099375C
.word func_80993848

