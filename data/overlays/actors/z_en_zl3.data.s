.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B5A410
 .word 0x00000009, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00190050, 0x00000000, 0x00000000
glabel D_80B5A43C
 .word 0x060030C8, 0x06003C48, 0x06004048, 0x06004548, 0x06004948, 0x06004D48, 0x06005148, 0x00000000
glabel D_80B5A45C
 .word 0x06003508, 0x06005548, 0x06005948
glabel D_80B5A468
 .word 0x00000000
glabel D_80B5A46C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B5A478
 .word 0x00000000, 0x41200000, 0x00000000
glabel D_80B5A484
 .word 0x00000000
glabel D_80B5A488
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B5A494
 .word 0xFFFFFFFF
glabel D_80B5A498
 .word 0x43140000, 0x43820000, 0xC2AE0000
glabel D_80B5A4A4
 .word 0xC1400000, 0x43820000, 0xC3130000, 0x42280000, 0x43820000, 0x41500000
glabel D_80B5A4BC
 .word 0x00000000
glabel D_80B5A4C0
 .word func_80B59DB8
.word func_80B55550
.word func_80B555A4
.word func_80B55604
.word func_80B5566C
.word func_80B556CC
.word func_80B5572C
.word func_80B56658
.word func_80B566AC
.word func_80B5670C
.word func_80B5676C
.word func_80B567CC
.word func_80B5682C
.word func_80B568B4
.word func_80B5691C
.word func_80B5697C
.word func_80B569E4
.word func_80B56A68
.word func_80B56AE0
.word func_80B56B54
.word func_80B56BA8
.word func_80B56C24
.word func_80B56C84
.word func_80B56CE4
.word func_80B56D44
.word func_80B58D50
.word func_80B58DB0
.word func_80B58E10
.word func_80B58E7C
.word func_80B58EF4
.word func_80B58F6C
.word func_80B58FDC
.word func_80B5904C
.word func_80B590BC
.word func_80B5912C
.word func_80B591BC
.word func_80B5922C
.word func_80B592A8
.word func_80B59340
.word func_80B593D0
glabel D_80B5A560
 .word func_80B5458C
.word func_80B5944C
glabel D_80B5A568
 .word func_80B59FE8
.word func_80B59FF4
.word func_80B5A1D0
glabel En_Zl3_InitVars
 .word 0x01790400, 0x00000010, 0x00600000, 0x00000420
.word EnZl3_Init
.word EnZl3_Destroy
.word EnZl3_Update
.word EnZl3_Draw
.word 0x00000000, 0x00000000, 0x00000000

