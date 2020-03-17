.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ma1_InitVars
 .word 0x00E70400, 0x02000039, 0x00E00000, 0x00000210
.word EnMa1_Init
.word EnMa1_Destroy
.word EnMa1_Update
.word EnMa1_Draw
glabel D_80AA1640
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0012002E, 0x00000000, 0x00000000
glabel D_80AA166C
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_80AA1678
 .word 0x06000820, 0x3F800000, 0x00000000, 0x00000000, 0x06000820, 0x3F800000, 0x00000000, 0xC1200000, 0x06008D64, 0x3F800000, 0x00000000, 0x00000000, 0x06008D64, 0x3F800000, 0x00000000, 0xC1200000
glabel D_80AA16B8
 .word 0x44480000, 0x00000000, 0x00000000
glabel D_80AA16C4
 .word 0x06001F18, 0x06002B18, 0x06002F18
glabel D_80AA16D0
 .word 0x06001B18, 0x06002318, 0x06002718, 0x00000000

