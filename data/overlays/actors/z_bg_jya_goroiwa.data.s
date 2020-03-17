.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Jya_Goroiwa_InitVars
 .word 0x00F90600, 0x00000010, 0x011F0000, 0x000001BC
.word BgJyaGoroiwa_Init
.word BgJyaGoroiwa_Destroy
.word BgJyaGoroiwa_Update
.word BgJyaGoroiwa_Draw
glabel D_80897F70
 .word 0x00000000, 0x20000000, 0x00040000, 0x00000000, 0x00000000, 0x01000100, 0x00000000, 0x00000000, 0x003A0064
glabel D_80897F94
 .word 0x0A110039, 0x20000000, 0x00000001
.word D_80897F70
glabel D_80897FA4
 .word 0x0100000F, 0x0000FE00
glabel D_80897FAC
 .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8, 0x00000000

