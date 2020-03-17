.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Goma_InitVars
 .word 0x00280500, 0x00000035, 0x001E0000, 0x000003A4
.word EnGoma_Init
.word EnGoma_Destroy
.word EnGoma_Update
.word EnGoma_Draw
glabel D_80A4B7A0
 .word 0x03110039, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFDFFFFF, 0x00000000, 0x01000100, 0x000F001E, 0x000A0000, 0x00000000
glabel D_80A4B7CC
 .word 0x03000900, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFDFFFFF, 0x00000000, 0x00010000, 0x000F001E, 0x000A0000, 0x00000000
glabel D_80A4B7F8
 .word 0x00000000
glabel D_80A4B7FC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A4B808
 .word 0x801F0003, 0x89170003, 0xB86C0000, 0x304C0014
glabel D_80A4B818
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A4B824
 .word 0x00000000, 0xBF000000, 0x00000000
glabel D_80A4B830
 .word 0x00000000, 0x00000000, 0x41A00000
glabel D_80A4B83C
 .word 0x437F0000, 0x00000000, 0x42480000
glabel D_80A4B848
 .word 0x41880000, 0x437F0000, 0x42480000
glabel D_80A4B854
 .word 0x00000000, 0x432A0000, 0x42480000
glabel D_80A4B860
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A4B86C
 .word 0x00000000, 0x3F800000, 0x00000000
glabel D_80A4B878
 .word 0xFFFFFFFF
glabel D_80A4B87C
 .word 0x0064FFFF

