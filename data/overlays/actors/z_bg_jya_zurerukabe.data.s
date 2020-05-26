.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_8089B9C0
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel Bg_Jya_Zurerukabe_InitVars
 .word 0x00FA0100, 0x00000010, 0x00F10000, 0x00000170
.word BgJyaZurerukabe_Init
.word BgJyaZurerukabe_Destroy
.word BgJyaZurerukabe_Update
.word BgJyaZurerukabe_Draw
glabel D_8089B9F0
 .word 0x03AF0413, 0x04DB053F
glabel D_8089B9F8
 .word 0xFFFF0001, 0xFFFF0001
glabel D_8089BA00
 .word 0x00300030, 0x00240024
glabel D_8089BA08
 .word 0x41000000, 0x41000000, 0x41200000, 0x41200000
glabel D_8089BA18
 .word 0x03880395, 0x03EA03FF, 0x04540467, 0x04B404C1, 0x05180528, 0x05810590
glabel D_8089BA30
 .word 0x00000000, 0x00010002, 0x00020003
glabel D_8089BA3C
 .word 0xC8500064, 0xB0F403E8, 0xB0F804B0, 0x30FC03E8, 0x00000000

