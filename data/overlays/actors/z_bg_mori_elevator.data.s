.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_808A2210
 .word 0x00000000
glabel Bg_Mori_Elevator_InitVars
 .word 0x00870100, 0x00000010, 0x00720000, 0x00000174
.word BgMoriElevator_Init
.word BgMoriElevator_Destroy
.word BgMoriElevator_Update
.word 0x00000000
glabel D_808A2234
 .word 0xB0F407D0, 0xB0F801F4, 0xB0FC0BB8, 0x485003E8, 0x00000000, 0x00000000, 0x00000000

