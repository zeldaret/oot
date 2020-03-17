.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80892620
 .word 0x0A110900, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00040000, 0x4FC007CA, 0x00000000, 0x01010000, 0x000D0078, 0x00000000, 0x00000000
glabel Bg_Ice_Turara_InitVars
 .word 0x01C70600, 0x00000000, 0x006B0000, 0x000001B8
.word BgIceTurara_Init
.word BgIceTurara_Destroy
.word BgIceTurara_Update
.word BgIceTurara_Draw
glabel D_8089266C
 .word 0xB0F80258, 0xB06CFFFD, 0xB070FFE2, 0x48500064
glabel D_8089267C
 .word 0x00000000, 0xBF800000, 0x00000000
glabel D_80892688
 .word 0xAAFFFFFF
glabel D_8089268C
 .word 0x003264FF

