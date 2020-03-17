.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.word 0x00000014
.word func_809AC700
glabel D_809ACA08
 .word 0x04029A90, 0xC80000FF, 0x000000FF, 0x04029690, 0xFF6400FF, 0x640000FF, 0x04029290, 0xFFC800FF, 0xC80000FF, 0x04028E90, 0xFFFF00FF, 0xFF0000FF, 0x04028A90, 0xFFFF96FF, 0xFF9600FF, 0x04028690, 0xFFFFFFFF, 0xFFFF00FF, 0x04028290, 0xFFFFFFFF, 0x00FF00FF, 0x04027E90, 0xFFFFFFFF, 0x00FFFFFF, 0x00000000, 0x00000000

