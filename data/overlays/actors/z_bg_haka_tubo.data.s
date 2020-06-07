.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Haka_Tubo_InitVars
 .word 0x00BB0100, 0x00000010, 0x00690000, 0x00000204
.word BgHakaTubo_Init
.word BgHakaTubo_Destroy
.word BgHakaTubo_Update
.word BgHakaTubo_Draw
glabel D_80881B60
 .word 0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x0019003C, 0x001E0000, 0x00000000
glabel D_80881B8C
 .word 0x0A110009, 0x20010000, 0x00000000, 0x20000000, 0x01040000, 0x00000008, 0x00000000, 0x19000100, 0x003C002D, 0x00EB0000, 0x00000000
glabel D_80881BB8
 .word 0x00000000
glabel D_80881BBC
 .word 0x48500064
glabel D_80881BC0
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

