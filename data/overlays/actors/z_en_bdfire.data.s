.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Bdfire_InitVars
 .word 0x00000500, 0x00000030, 0x00190000, 0x000001E4
.word EnBdfire_Init
.word EnBdfire_Destroy
.word EnBdfire_Update
.word EnBdfire_Draw
glabel D_809BCB10
 .word 0x060264E0, 0x060274E0, 0x060284E0, 0x060294E0, 0x0602A4E0, 0x0602B4E0, 0x0602C4E0, 0x0602D4E0

