.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel D_80AE1A50
 .word 0x00000000
glabel En_Poh_InitVars
 .word 0x000D0500, 0x00001015, 0x00010000, 0x000003A8
.word EnPoh_Init
.word EnPoh_Destroy
.word EnPoh_Update
.word 0x00000000
glabel D_80AE1A74
 .word 0x03000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00140028, 0x00140000, 0x00000000
glabel D_80AE1AA0
 .word 0x00000000, 0xFFCFFFFF, 0x00080000, 0x00000000, 0x00000000, 0x01000100, 0x12000000, 0x05780000, 0x000A0064
glabel D_80AE1AC4
 .word 0x03110939, 0x10000000, 0x00000001
.word D_80AE1AA0
glabel D_80AE1AD4
 .word 0x04000019, 0x00322800
glabel D_80AE1ADC
 .word 0x00020102, 0x11020212, 0x01020402, 0x02020202, 0x02000000, 0x00000104, 0x02020804, 0x00000400
glabel D_80AE1AFC
 .word 0xFFAAFF64, 0x00961205, 0xF8000000, 0x060015B0, 0x06000A60, 0x060004EC, 0x060006E0, 0x06002D28, 0x06002608, 0x06003850, 0xFFFFAA00, 0x96000901, 0xF4000000, 0x06001440, 0x060009DC, 0x06000570, 0x06000708, 0x060045A0, 0x06005220, 0x06001C90
glabel D_80AE1B4C
 .word 0x4B1419FF
glabel D_80AE1B50
 .word 0x506E5AFF
glabel D_80AE1B54
 .word 0x5A5532FF
glabel D_80AE1B58
 .word 0x645A64FF
glabel D_80AE1B5C
 .word 0x304C0C80
glabel D_80AE1B60
 .word 0x00000000, 0x40400000, 0x00000000
glabel D_80AE1B6C
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

