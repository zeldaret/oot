.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808AD850
 .word 0x060096B0, 0x0600A2B0, 0x0600AEB0, 0x0600BAB0, 0x0600C6B0, 0x0600D2B0, 0x0600DEB0, 0x0600EAB0, 0x0600F6B0, 0x060102B0, 0x06010EB0, 0x06011AB0
glabel Bg_Spot02_Objects_InitVars
 .word 0x009C0100, 0x00000030, 0x00A10000, 0x00000174
.word BgSpot02Objects_Init
.word BgSpot02Objects_Destroy
.word BgSpot02Objects_Update
.word BgSpot02Objects_Draw
glabel D_808AD8A0
 .word 0x48500064
glabel D_808AD8A4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_808AD8B0
 .word 0x06012A50, 0x060127C0, 0x060130B0, 0x00000000

