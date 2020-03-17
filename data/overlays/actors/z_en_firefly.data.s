.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Firefly_InitVars
 .word 0x00130500, 0x00005005, 0x000D0000, 0x00000374
.word EnFirefly_Init
.word EnFirefly_Destroy
.word EnFirefly_Update
.word EnFirefly_Draw
glabel D_80A14F30
 .word 0x00000000, 0xFFCFFFFF, 0x01080000, 0xFFCFFFFF, 0x00000000, 0x09010100, 0x01000000, 0x03E80000, 0x000F0064
glabel D_80A14F54
 .word 0x03110939, 0x10000000, 0x00000001
glabel D_80A14F60
 .word D_80A14F30
glabel D_80A14F64
 .word 0x0100000A, 0x000A1E00
glabel D_80A14F6C
 .word 0x10020102, 0x01020202, 0x010204F2, 0x34020202, 0x02203400, 0x00000104, 0x02020804, 0x00000400
glabel D_80A14F8C
 .word 0xC8500005, 0xB86CFE0C, 0xB070FFFC, 0x801F0002, 0x304C0FA0
glabel D_80A14FA0
 .word 0xFFFF64FF
glabel D_80A14FA4
 .word 0xFF320000
glabel D_80A14FA8
 .word 0x64C8FFFF
glabel D_80A14FAC
 .word 0x0000FF00
glabel D_80A14FB0
 .word 0x00000000, 0x3F000000, 0x00000000
glabel D_80A14FBC
 .word 0x00000000, 0x3F000000, 0x00000000
glabel D_80A14FC8
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

