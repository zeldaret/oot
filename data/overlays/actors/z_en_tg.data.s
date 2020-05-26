.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80B18910
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00140040, 0x00000000, 0x00000000
glabel D_80B1893C
 .word 0x00000000, 0x00000000, 0xFF000000
glabel En_Tg_InitVars
 .word 0x01AC0400, 0x00000009, 0x01820000, 0x0000020C
.word EnTg_Init
.word EnTg_Destroy
.word EnTg_Update
.word EnTg_Draw
glabel D_80B18968
 .word 0x00000000, 0x44480000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

