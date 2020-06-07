.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Haka_Ship_InitVars
 .word 0x00B00100, 0x00000030, 0x00690000, 0x00000178
.word BgHakaShip_Init
.word BgHakaShip_Destroy
.word BgHakaShip_Update
.word BgHakaShip_Draw
glabel D_8087FAC0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

