.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ny_InitVars
 .word 0x00EC0500, 0x00000005, 0x00E50000, 0x000002B8
.word EnNy_Init
.word EnNy_Destroy
.word EnNy_Update
.word EnNy_Draw
glabel D_80ABE330
 .word 0x00000000, 0xFFCFFFFF, 0x04080000, 0xFFCFFFFF, 0x00000000, 0x01010100, 0x00000000, 0x00000000, 0x000F0064
glabel D_80ABE354
 .word 0x0A110939, 0x10000000, 0x00000001
.word D_80ABE330
glabel D_80ABE364
 .word 0x000000F2, 0x00F2F212, 0x00F2F424, 0xF2F2E400, 0x00240000, 0x000000F4, 0xF200F8F4, 0x00000000
glabel D_80ABE384
 .word 0x89170028, 0x801F0002, 0x304C001E
glabel D_80ABE390
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80ABE39C
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_80ABE3A8
 .word 0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, 0x00000000, 0x00000000

