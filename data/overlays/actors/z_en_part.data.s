.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Part_InitVars
 .word 0x00070700, 0x00000010, 0x00010000, 0x0000015C
.word EnPart_Init
.word EnPart_Destroy
.word EnPart_Update
.word EnPart_Draw
glabel D_80ACF1B0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80ACF1BC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80ACF1C8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80ACF1D4
 .word 0x00000000, 0x41000000, 0x00000000
glabel D_80ACF1E0
 .word 0x00000000, 0xBFC00000, 0x00000000
glabel D_80ACF1EC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80ACF1F8
 .word func_80ACDDE8
.word func_80ACE13C
.word func_80ACE5B8
.word func_80ACE5C8
.word func_80ACE7E8
.word 0x00000000

