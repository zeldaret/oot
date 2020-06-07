.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Attack_Niw_InitVars
 .word 0x01440500, 0x00000010, 0x00130000, 0x000002E8
.word EnAttackNiw_Init
.word EnAttackNiw_Destroy
.word EnAttackNiw_Update
.word EnAttackNiw_Draw
glabel D_809B6170
 .word 0x801F0001, 0xB86CF830, 0x304C0000
glabel D_809B617C
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

