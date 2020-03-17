.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Vb_Ball_InitVars
 .word 0x00000900, 0x00000030, 0x009C0000, 0x000001B4
.word EnVbBall_Init
.word EnVbBall_Destroy
.word EnVbBall_Update
.word EnVbBall_Draw
glabel D_80B2A000
 .word 0x0A110939, 0x10010000, 0x06000000, 0x00100700, 0x00200000, 0x00100700, 0x00000000, 0x01010100, 0x0014001E, 0x000A0000, 0x00000000
glabel D_80B2A02C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B2A038
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B2A044
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B2A050
 .word 0x00000000, 0xBF800000, 0x00000000
glabel D_80B2A05C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B2A068
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B2A074
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B2A080
 .word 0x00000000, 0xBF800000, 0x00000000, 0x00000000

