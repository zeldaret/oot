.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Jya_Bombchuiwa_InitVars
 .word 0x01590100, 0x00000001, 0x00F10000, 0x000001B8
.word BgJyaBombchuiwa_Init
.word BgJyaBombchuiwa_Destroy
.word BgJyaBombchuiwa_Update
.word BgJyaBombchuiwa_Draw
glabel D_80894F40
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010100, 0x0000FED4, 0x00000000, 0x00280064
glabel D_80894F64
 .word 0x0A000921, 0x20000000, 0x00000001
.word D_80894F40
glabel D_80894F74
 .word 0x801F0003, 0xC8500064, 0xB0F403E8, 0xB0F803E8, 0x30FC03E8
glabel D_80894F88
 .word 0xC4660000
glabel D_80894F8C
 .word 0x43F00000
glabel D_80894F90
 .word 0xC45E4000
glabel D_80894F94
 .word 0x00000000, 0x00000000, 0x00000000

