.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Bili_InitVars
 .word 0x00340500, 0x00005005, 0x00210000, 0x00000220
.word EnBili_Init
.word EnBili_Destroy
.word EnBili_Update
.word EnBili_Draw
glabel D_809C1640
 .word 0x08110939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x03080000, 0xFFCFFFFF, 0x01000000, 0x19010100, 0x0009001C, 0xFFEC0000, 0x00000000
glabel D_809C166C
 .word 0x01000009, 0x001CFFEC, 0x1E000000
glabel D_809C1678
 .word 0x1002E002, 0x01020202, 0xF1F2F424, 0x34020202, 0x02243400, 0x00000104, 0x02020804, 0x00000400
glabel D_809C1698
 .word 0x89170017, 0x304C07D0
glabel D_809C16A0
 .word 0xFFFFFFFF
glabel D_809C16A4
 .word 0xC8FFFFFF
glabel D_809C16A8
 .word 0x00000000
glabel D_809C16AC
 .word 0x00000000, 0x00000000
glabel D_809C16B4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809C16C0
 .word 0x3F800000, 0x3F800000, 0x3F800000
glabel D_809C16CC
 .word 0x06000E08, 0x06001708, 0x06002008, 0x06002908, 0x06003208, 0x06003B08, 0x06004408, 0x06004D08, 0x00000000
glabel D_809C16F0
 .word 0xFC621603, 0x1F5BFFF8, 0xDF000000, 0x00000000
glabel D_809C1700
 .word 0xFC121603, 0xFF5BFFF8, 0xDF000000, 0x00000000

