.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80880F30
 .word 0x00000000
glabel Bg_Haka_Trap_InitVars
 .word 0x00BC0100, 0x00000000, 0x00690000, 0x0000029C
.word BgHakaTrap_Init
.word BgHakaTrap_Destroy
.word BgHakaTrap_Update
.word BgHakaTrap_Draw
glabel D_80880F54
 .word 0x09110D09, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010100, 0x001E005A, 0x00000000, 0x00000000
glabel D_80880F80
 .word 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0x00000000, 0x00010000
glabel D_80880F98
 .word 0x44E10000, 0x44960000, 0x00000000
glabel D_80880FA4
 .word 0xC4E10000, 0x44960000, 0x00000000
glabel D_80880FB0
 .word 0xC4E10000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0x00000000, 0x00010000, 0x44E10000, 0x44960000, 0x00000000, 0xC4E10000, 0x00000000, 0x00000000
glabel D_80880FEC
 .word 0x44E10000, 0x00000000, 0x00000000
glabel D_80880FF8
 .word 0x0A000900, 0x20020000, 0x00000002
.word D_80880F80
glabel D_80881008
 .word 0x00000050, 0x0064FF00
glabel D_80881010
 .word 0x48500064
glabel D_80881014
 .word 0x00000000
glabel D_80881018
 .word 0x00000000
glabel D_8088101C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80881028
 .word 0x06007610, 0x06009860, 0x06007EF0, 0x06008A20, 0x060072C0
glabel D_8088103C
 .word 0x00000000

