.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Tp_InitVars
 .word 0x00350500, 0x00000000, 0x00220000, 0x000001D8
.word EnTp_Init
.word EnTp_Destroy
.word EnTp_Update
.word EnTp_Draw
glabel D_80B22A90
 .word 0x00000000, 0xFFCFFFFF, 0x03080000, 0xFFCFFFFF, 0x01000000, 0x01010000, 0x00000000, 0x00000000, 0x00040064
glabel D_80B22AB4
 .word 0x01110900, 0x10000000, 0x00000001
.word D_80B22A90
glabel D_80B22AC4
 .word 0x10F20000, 0xF100E200, 0xE1E2E400, 0x00000000, 0x00000000, 0x0000E1E4, 0xE2E2E8E4, 0x0000E400
glabel D_80B22AE4
 .word 0x304C000A
glabel D_80B22AE8
 .word 0x00000000, 0x3F000000, 0x00000000
glabel D_80B22AF4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B22B00
 .word 0x00000000, 0xBF000000, 0x00000000
glabel D_80B22B0C
 .word 0xFFFFFFFF
glabel D_80B22B10
 .word 0x96969600
glabel D_80B22B14
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B22B20
 .word 0x00000000, 0xBF19999A, 0x00000000
glabel D_80B22B2C
 .word 0x0000FFFF
glabel D_80B22B30
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

