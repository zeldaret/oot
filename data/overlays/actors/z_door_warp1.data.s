.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Door_Warp1_InitVars
 .word 0x005D0700, 0x00000000, 0x00480000, 0x000001F0
.word DoorWarp1_Init
.word DoorWarp1_Destroy
.word DoorWarp1_Update
.word DoorWarp1_Draw
glabel D_8099C5A0
 .word 0xC85003E8, 0xB0F40FA0, 0xB0F80320, 0x30FC0FA0

