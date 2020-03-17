.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Takara_Man_InitVars
 .word 0x017C0400, 0x08000039, 0x01550000, 0x00000238
.word EnTakaraMan_Init
.word EnTakaraMan_Destroy
.word EnTakaraMan_Update
.word EnTakaraMan_Draw
glabel D_80B17DD0
 .word 0x00000000
glabel D_80B17DD4
 .word 0x06000970, 0x06000D70, 0x00000000

