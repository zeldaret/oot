.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809C56E0
 .word 0x00000033, 0x0000003E, 0x00000003, 0x00000065, 0x00000055
glabel En_Bom_Bowl_Pit_InitVars
 .word 0x014C0600, 0x00000010, 0x00010000, 0x00003704
.word EnBomBowlPit_Init
.word EnBomBowlPit_Destroy
.word EnBomBowlPit_Update
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

