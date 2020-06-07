.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Ge3_InitVars
 .word 0x01D00400, 0x00000019, 0x01690000, 0x00000314
.word EnGe3_Init
.word EnGe3_Destroy
.word EnGe3_Update
.word EnGe3_Draw
glabel D_80A35190
 .word 0x0A000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000722, 0x00000000, 0x00010100, 0x00140032, 0x00000000, 0x00000000
glabel D_80A351BC
 .word func_80A34A80
glabel D_80A351C0
 .word 0x0600B07C
glabel D_80A351C4
 .word 0x00000000
glabel D_80A351C8
 .word 0x44160000, 0x442F0000, 0x00000000
glabel D_80A351D4
 .word 0x06005FE8, 0x060065A8, 0x06006D28

