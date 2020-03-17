.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Gjyo_Bridge_InitVars
 .word 0x01480600, 0x00000000, 0x01300000, 0x00000168
.word BgGjyoBridge_Init
.word BgGjyoBridge_Destroy
.word BgGjyoBridge_Update
.word BgGjyoBridge_Draw
glabel D_80878B50
 .word 0xB0F80320, 0x48500064, 0x00000000, 0x00000000

