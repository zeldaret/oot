.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80B01640
 .word 0x00000000
glabel D_80B01644
 .word 0x00000000
glabel D_80B01648
 .word 0x00000000
glabel D_80B0164C
 .word 0x00000000, 0x00000000
glabel D_80B01654
 .word 0x00000000
glabel En_Skj_InitVars
 .word 0x01150500, 0x02000015, 0x010A0000, 0x00000300
.word EnSkj_Init
.word EnSkj_Destroy
.word EnSkj_Update
.word EnSkj_Draw
glabel D_80B01678
 .word 0x0A110900, 0x01000000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, 0x00000000, 0x01010100, 0x00080030, 0x00000000, 0x00000000
glabel D_80B016A4
 .word 0x00000000, 0x00000200, 0xF1F2F400, 0x00000000, 0x00000000, 0x00000104, 0x02020804, 0x00000000
glabel D_80B016C4
 .word 0x0000004C, 0x0000004D, 0x0000003E, 0x0000004E
glabel D_80B016D4
 .word 0x0600051C, 0x02000000, 0x00000000, 0x060007A4, 0x02000000, 0x00000000, 0x06000E10, 0x00000000, 0x00000000, 0x06006A98, 0x02000000, 0x00000000, 0x06006D84, 0x02000000, 0x00000000, 0x06007128, 0x02000000, 0x00000000, 0x06008174, 0x00000000, 0x00000000, 0x06008374, 0x00000000, 0x00000000, 0x06008E14, 0x00000000, 0x00000000, 0x06008B9C, 0x00000000, 0x00000000
glabel D_80B0174C
 .word func_80AFEECC
.word func_80AFEF98
.word func_80AFF07C
.word func_80AFF19C
.word func_80AFF220
.word func_80AFF2E0
.word func_80AFF380
.word func_80AFF424
.word func_80AFF620
.word func_80AFF688
.word func_80AFF7D8
.word func_80AFFA0C
.word func_80AFFD14
.word func_80AFFD84
.word func_80AFFE44
.word func_80AFFED4
.word func_80AFFF58
.word func_80B00018
.word func_80B00098
.word func_80B00130
.word func_80B00210
.word func_80B002D8
.word func_80B00390
.word func_80B0042C
.word func_80B0049C
.word func_80B00554
.word func_80B00638
.word func_80B006B0
.word func_80B00740
glabel D_80B017C0
 .word 0x801F0002, 0x304C001E, 0x00000000, 0x00000000

