.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Horse_Game_Check_InitVars
 .word 0x00DB0100, 0x00000010, 0x00010000, 0x000001A4
.word EnHorseGameCheck_Init
.word EnHorseGameCheck_Destroy
.word EnHorseGameCheck_Update
.word EnHorseGameCheck_Draw
glabel D_80A68440
 .word 0x44D48000, 0x3F800000, 0xC4070000, 0x42EA0000, 0x3F800000, 0x43F40000, 0xC4D48000, 0x3F800000, 0xC4070000
glabel D_80A68464
 .word 0xC3480000, 0x42A00000, 0xC50FC000, 0xC4B7C000
glabel D_80A68474
 .word 0x44480000, 0x447A0000, 0xC5354000, 0xC528C000, 0x00000000, 0x00000000, 0x00000000
glabel D_80A68490
 .word 0x444D0000, 0xC2300000, 0xC4CEE000, 0x44BB2000, 0xC1A80000, 0xC495C000, 0x44CEE000, 0xC2300000, 0xC3C60000, 0x44A16000, 0xC2300000, 0x434D0000, 0x43BD8000, 0xC1A80000, 0x43E38000, 0xC2BE0000, 0xC1A80000, 0x43E38000, 0xC46AC000, 0x3F800000, 0x43E38000, 0xC4CD8000, 0xC1A80000, 0xC4816000
glabel D_80A684F0
 .word 0x00000000
.word func_80A67550
.word func_80A67BDC
.word func_80A67C50
.word func_80A67C88
glabel D_80A68504
 .word 0x00000000
.word func_80A67608
.word func_80A67BF8
.word func_80A67C68
.word func_80A67CD4
glabel D_80A68518
 .word 0x00000000
.word func_80A67764
.word func_80A67C08
.word func_80A67C78
.word func_80A67DFC
.word 0x00000000

