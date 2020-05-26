.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80B41D40
 .word 0x00000009, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00190050, 0x00000000, 0x00000000
glabel D_80B41D6C
 .word 0x06004CC0, 0x060050C0, 0x060054C0
glabel D_80B41D78
 .word 0xC418C000, 0x44360000, 0xC0000000
glabel D_80B41D84
 .word 0xC485A000, 0x42180000, 0x00000000
glabel D_80B41D90
 .word 0x00000000
glabel D_80B41D94
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B41DA0
 .word 0x00000000
glabel D_80B41DA4
 .word 0x00000000
glabel D_80B41DA8
 .word 0x00000001
glabel D_80B41DAC
 .word 0x00000001
glabel D_80B41DB0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B41DBC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B41DC8
 .word func_80B3E224
.word func_80B3E25C
.word func_80B3E294
.word func_80B3E30C
.word func_80B3E368
.word func_80B3E3C4
.word func_80B3E420
.word func_80B3E464
.word func_80B3E4AC
.word func_80B3E4F8
.word func_80B3E53C
.word func_80B3E580
.word func_80B3E5C8
.word func_80B3E610
.word func_80B3E668
.word func_80B3E6D0
.word func_80B3E738
.word func_80B3E7A0
.word func_80B3E804
.word func_80B3E85C
.word func_80B3ED48
.word func_80B3ED68
.word func_80B3ED88
.word func_80B3EDCC
.word func_80B3EE28
.word func_80B3EE34
.word func_80B3EE40
.word func_80B3EE4C
.word func_80B3EE58
.word func_80B3F124
.word func_80B3F144
.word func_80B3F16C
.word func_80B3F1A8
.word func_80B3F1D0
.word func_80B3F1F8
.word func_80B3F220
.word func_80B3F248
.word func_80B3F270
.word func_80B3F298
.word func_80B3F2C0
.word func_80B3F2E8
.word func_80B3F344
.word func_80B3F36C
.word func_80B3F394
.word func_80B3F3BC
.word func_80B3F7F8
.word func_80B3F820
.word func_80B3F848
.word func_80B3F8A0
.word func_80B3F8C8
.word func_80B3F928
.word func_80B3F988
.word func_80B3F9E8
.word func_80B400E4
.word func_80B40104
.word func_80B4015C
.word func_80B401CC
.word func_80B41000
.word func_80B41020
.word func_80B41068
.word func_80B410AC
.word func_80B41110
.word func_80B41174
.word func_80B411AC
.word func_80B41204
.word func_80B41248
.word func_80B41284
.word func_80B412AC
.word func_80B412D4
.word func_80B412FC
.word func_80B41324
.word func_80B4134C
.word func_80B41374
.word func_80B4139C
.word func_80B413C4
.word func_80B41414
.word func_80B4143C
.word func_80B41464
.word func_80B4148C
.word func_80B417E4
.word func_80B41844
glabel D_80B41F0C
 .word 0x00000000, 0x41200000, 0x00000000
glabel D_80B41F18
 .word func_80B41B98
.word func_80B41BA4
.word func_80B3E908
.word func_80B3EA7C
.word func_80B402C4
.word func_80B414AC
glabel En_Xc_InitVars
 .word 0x00480400, 0x00000010, 0x008A0000, 0x0000033C
.word EnXc_Init
.word EnXc_Destroy
.word EnXc_Update
.word EnXc_Draw

