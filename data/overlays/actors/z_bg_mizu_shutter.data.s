.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Mizu_Shutter_InitVars
 .word 0x01BB0600, 0x00000010, 0x00590000, 0x00000190
.word BgMizuShutter_Init
.word BgMizuShutter_Destroy
.word BgMizuShutter_Update
.word BgMizuShutter_Draw
glabel D_8089F540
 .word 0x06007130, 0x060072D0
glabel D_8089F548
 .word 0x06007250, 0x060073F0
glabel D_8089F550
 .word 0x00000000, 0x42C80000, 0x00000000, 0x00000000, 0x430C0000, 0x00000000
glabel D_8089F568
 .word 0xB0F805DC, 0xB0FC044C, 0xB0F403E8, 0x48500064, 0x00000000, 0x00000000

