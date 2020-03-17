.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A17010
 .word 0x00000000
glabel D_80A17014
 .word 0x00000000
glabel D_80A17018
 .word 0x00000000
glabel D_80A1701C
 .word 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000100, 0x00000000, 0x00000000, 0x00050064
glabel D_80A17040
 .word 0x0A000039, 0x10000000, 0x00000001
.word D_80A1701C
glabel En_Fish_InitVars
 .word 0x00210700, 0x00000000, 0x00010000, 0x00000254
.word EnFish_Init
.word EnFish_Destroy
.word EnFish_Update
.word EnFish_Draw
glabel D_80A17070
 .word 0xC850000A, 0xB0F40384, 0xB0F80028, 0x30FC02BC
glabel D_80A17080
 .word 0x00000000, 0x3D23D70A, 0x3DB851EC
glabel D_80A1708C
 .word 0x3F000000, 0x3DCCCCCD, 0x3E19999A, 0x00000000, 0x00000000

