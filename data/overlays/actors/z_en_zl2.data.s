.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B52810
 .word 0x060030C8, 0x06003C48, 0x06004048, 0x06004548, 0x06004948, 0x06004D48, 0x06005148, 0x06005D48, 0x06006148
glabel D_80B52834
 .word 0x06003508, 0x06005548, 0x06005948
glabel D_80B52840
 .word func_80B521A0
.word func_80B50BBC
.word func_80B50BEC
.word func_80B50C40
.word func_80B50CA8
.word func_80B50CFC
.word func_80B50D50
.word func_80B50D94
.word func_80B50DE8
.word func_80B50E3C
.word func_80B50E90
.word func_80B50EE4
.word func_80B50F38
.word func_80B50F8C
.word func_80B50FE8
.word func_80B51034
.word func_80B51080
.word func_80B510CC
.word func_80B51118
.word func_80B51164
.word func_80B511B0
.word func_80B511FC
.word func_80B51250
.word func_80B512B8
.word func_80B51310
.word func_80B51A5C
.word func_80B51A8C
.word func_80B51AE4
.word func_80B51B44
.word func_80B51BA8
.word func_80B51C0C
.word func_80B51C64
.word func_80B51CA8
.word func_80B52068
.word func_80B52098
.word func_80B52108
glabel D_80B528D0
 .word func_80B4F45C
glabel D_80B528D4
 .word func_80B523BC
.word func_80B523C8
.word func_80B525D4
glabel En_Zl2_InitVars
 .word 0x004D0400, 0x00000010, 0x00600000, 0x00000280
.word EnZl2_Init
.word EnZl2_Destroy
.word EnZl2_Update
.word EnZl2_Draw

