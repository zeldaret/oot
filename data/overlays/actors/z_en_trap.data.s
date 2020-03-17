.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Trap_InitVars
 .word 0x00800100, 0x00000010, 0x00850000, 0x000001EC
.word EnTrap_Init
.word EnTrap_Destroy
.word EnTrap_Update
.word EnTrap_Draw
glabel D_80B25830
 .word 0x00000935, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00001000, 0x00000000, 0x00010100, 0x001E0014, 0x00000000, 0x00000000, 0x00000000

