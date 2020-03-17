.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ds_InitVars
 .word 0x01490400, 0x00000009, 0x010F0000, 0x000001F0
.word EnDs_Init
.word EnDs_Destroy
.word EnDs_Update
.word EnDs_Draw
glabel D_809FDB40
 .word 0x44898000, 0x43FA0000, 0x00000000, 0x00000000

