.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Relay_Objects_InitVars
 .word 0x01230100, 0x00000010, 0x006C0000, 0x0000016C
.word BgRelayObjects_Init
.word BgRelayObjects_Destroy
.word BgRelayObjects_Update
.word BgRelayObjects_Draw
glabel D_808A9500
 .word 0xB06C0005, 0x48500064
glabel D_808A9508
 .word 0x00000000, 0x00000000

