.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_808930E0
 .word 0x00000000
glabel Bg_Jya_1flift_InitVars
 .word 0x018E0100, 0x00000010, 0x00F10000, 0x000001BC
.word BgJya1flift_Init
.word BgJya1flift_Destroy
.word BgJya1flift_Update
.word BgJya1flift_Draw
glabel D_80893104
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00460050, 0xFFAE0000, 0x00000000
glabel D_80893130
 .word 0x43DD8000, 0xC2480000
glabel D_80893138
 .word 0xC8500064, 0xB0F404B0, 0xB0F80190, 0x30FC04B0, 0x00000000, 0x00000000

