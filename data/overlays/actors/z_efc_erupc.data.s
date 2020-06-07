.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Efc_Erupc_InitVars
 .word 0x01760700, 0x00000030, 0x014D0000, 0x000018CC
.word EfcErupc_Init
.word EfcErupc_Destroy
.word EfcErupc_Update
.word EfcErupc_Draw
.word 0xFF8000FF, 0x0000FFFF, 0x00FF0000
glabel D_8099D77C
 .word 0xFF8000FF, 0x00000000, 0x00640000, 0x00000000, 0x00000000

