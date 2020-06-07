.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Fire_Rock_InitVars
 .word 0x00B50500, 0x00000030, 0x00920000, 0x000001E0
.word EnFireRock_Init
.word EnFireRock_Destroy
.word EnFireRock_Update
.word EnFireRock_Draw
glabel D_80A12CA0
 .word 0x0C110900, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x09080000, 0xFFCFFFFF, 0x00000000, 0x01010000, 0x001E001E, 0xFFF60000, 0x00000000
glabel D_80A12CCC
 .word 0x0C110900, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x01080000, 0xFFCFFFFF, 0x00000000, 0x01010000, 0x001E001E, 0xFFF60000, 0x00000000, 0x00000000, 0x00000000

