.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Bom_Bowl_Man_InitVars
 .word 0x014B0400, 0x08000039, 0x01600000, 0x00000264
.word EnBomBowlMan_Init
.word EnBomBowlMan_Destroy
.word EnBomBowlMan_Update
.word EnBomBowlMan_Draw
glabel D_809C4A10
 .word 0x41800000, 0x42380000, 0x00000000, 0x42100000, 0x42600000, 0x00000000
glabel D_809C4A28
 .word 0x42700000, 0xC2700000, 0xC3D70000, 0x00000000, 0xC2F00000, 0xC41B0000
glabel D_809C4A40
 .word 0x3C23D70A, 0x3CF5C28F
glabel D_809C4A48
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_809C4A54
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809C4A60
 .word 0x00000000, 0x41B00000, 0x00000000, 0x00000000, 0x41B00000, 0x00000000, 0x00000000, 0x41000000, 0x00000000, 0x00000000, 0x41100000, 0x00000000, 0x00000000, 0xC0000000, 0x00000000
glabel D_809C4A9C
 .word 0x42684268, 0xFC180000, 0x42680000
glabel D_809C4AA8
 .word 0x06004110, 0x06004910, 0x06005110, 0x00000000, 0x00000000, 0x00000000

