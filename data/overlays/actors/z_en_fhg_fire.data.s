.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Fhg_Fire_InitVars
 .word 0x00000900, 0x00000030, 0x005A0000, 0x00000204
.word EnFhgFire_Init
.word EnFhgFire_Destroy
.word EnFhgFire_Update
.word EnFhgFire_Draw
glabel D_80A11790
 .word 0x0A110939, 0x10010000, 0x06000000, 0x00100700, 0x03200000, 0x0D900700, 0x00000000, 0x01010100, 0x0014001E, 0x000A0000, 0x00000000
glabel D_80A117BC
 .word 0x00000000, 0xBF800000, 0x00000000
glabel D_80A117C8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A117D4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A117E0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A117EC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A117F8
 .word 0x00000000, 0xBF000000, 0x00000000
glabel D_80A11804
 .word 0x00000000, 0xBF000000, 0x00000000
glabel D_80A11810
 .word 0x00000000, 0xBF800000, 0x00000000, 0x04051DB0, 0x040521B0, 0x040525B0, 0x040529B0, 0x04052DB0, 0x040531B0, 0x040535B0, 0x040539B0, 0x00000000

