.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A0B320
 .word 0x00000001, 0x00020013, 0x00140000, 0x00010005, 0x001401F4, 0x00320000
glabel En_Ex_Ruppy_InitVars
 .word 0x01310600, 0x00000010, 0x00010000, 0x00000164
.word EnExRuppy_Init
.word EnExRuppy_Destroy
.word EnExRuppy_Update
.word EnExRuppy_Draw
glabel D_80A0B358
 .word 0x00000000, 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_80A0B370
 .word 0x00000000, 0x3C23D70A, 0x00000000
glabel D_80A0B37C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A0B388
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_80A0B394
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A0B3A0
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_80A0B3AC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A0B3B8
 .word 0x04042140, 0x04042160, 0x04042180, 0x040421C0, 0x040421A0, 0x00000000

