.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Fd_Fire_InitVars
 .word 0x00A30500, 0x00000015, 0x00030000, 0x000001AC
.word EnFdFire_Init
.word EnFdFire_Destroy
.word EnFdFire_Update
.word EnFdFire_Draw
glabel D_80A0F030
 .word 0x0A110939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x01080000, 0x0D840008, 0x00000000, 0x01010100, 0x000C002E, 0x00000000, 0x00000000
glabel D_80A0F05C
 .word 0x01000000, 0x00000000, 0xFF000000
glabel D_80A0F068
 .word 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000400, 0x00000000, 0x00000000, 0x00000000
glabel D_80A0F088
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A0F094
 .word 0x00000000, 0x43520000, 0x42700000, 0x43870000, 0x42F00000, 0x43A50000, 0x43340000, 0x41F00000, 0x43700000, 0x42B40000, 0x43960000, 0x43160000
glabel D_80A0F0C4
 .word 0xFFFF00FF, 0xFFFFFFFF
glabel D_80A0F0CC
 .word 0xFF0A00FF, 0x000AFFFF
glabel D_80A0F0D4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A0F0E0
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

