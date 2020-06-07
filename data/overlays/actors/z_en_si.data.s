.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80AFBAB0
 .word 0x0A00093D, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000090, 0x00000000, 0x00050100, 0x00140012, 0x00020000, 0x00000000
glabel D_80AFBADC
 .word 0x00000000, 0x00000000, 0xFF000000
glabel En_Si_InitVars
 .word 0x019C0700, 0x00000201, 0x00240000, 0x000001A0
.word EnSi_Init
.word EnSi_Destroy
.word EnSi_Update
.word EnSi_Draw
.word 0x00000000, 0x00000000

