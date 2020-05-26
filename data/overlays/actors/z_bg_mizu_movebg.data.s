.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Mizu_Movebg_InitVars
 .word 0x00640100, 0x00000010, 0x00590000, 0x00000188
.word BgMizuMovebg_Init
.word BgMizuMovebg_Destroy
.word BgMizuMovebg_Update
.word BgMizuMovebg_Draw
glabel D_8089EB40
 .word 0xC2E66667, 0xC2E66667, 0xC2E66667, 0x00000000
glabel D_8089EB50
 .word 0x06000190, 0x06000680, 0x06000C20, 0x06002E10, 0x06002E10, 0x06002E10, 0x06002E10, 0x060011F0
glabel D_8089EB70
 .word 0x060003F0, 0x06000998, 0x06000ED0, 0x06003590, 0x06003590, 0x06003590, 0x06003590, 0x060015F8
glabel D_8089EB90
 .word 0xB0F805DC, 0xB0FC044C, 0xB0F403E8, 0x48500064
glabel D_8089EBA0
 .word 0x00000000, 0x42A00000, 0x41B80000
glabel D_8089EBAC
 .word 0x00000000, 0x42A00000, 0x41B80000, 0x00000000, 0x00000000

