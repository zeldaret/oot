.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Po_Event_InitVars
 .word 0x00930100, 0x00000000, 0x00990000, 0x00000248
.word BgPoEvent_Init
.word BgPoEvent_Destroy
.word BgPoEvent_Update
.word BgPoEvent_Draw
glabel D_808A7CD0
 .word 0x04000000, 0x00000000, 0x00000000, 0x0001F820, 0x00000000, 0x00010000, 0x41C80000, 0x42040000, 0x00000000, 0xC1C80000, 0x42040000, 0x00000000, 0xC1C80000, 0xC2040000, 0x00000000, 0x04000000, 0x00000000, 0x00000000, 0x0001F820, 0x00000000, 0x00010000, 0x41C80000, 0x42040000, 0x00000000, 0xC1C80000, 0xC2040000, 0x00000000, 0x41C80000, 0xC2040000, 0x00000000
glabel D_808A7D48
 .word 0x0A000900, 0x20020000, 0x00000002
.word D_808A7CD0
glabel D_808A7D58
 .word 0x00000000
glabel D_808A7D5C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_808A7D68
 .word 0xFAEAFC9E, 0x058D03D9
glabel D_808A7D70
 .word 0x04530443
glabel D_808A7D74
 .word 0xF2C8F34C
glabel D_808A7D78
 .word 0x086507B1, 0x07750000
glabel D_808A7D80
 .word 0xFA7EFABA, 0xFA060000
glabel D_808A7D88
 .word 0x485003E8
glabel D_808A7D8C
 .word 0x00000000
glabel D_808A7D90
 .word 0x00000000
glabel D_808A7D94
 .word 0x060075A0, 0x060079E0, 0x06006830, 0x06006D60, 0x06007230, 0x00000000, 0x00000000

