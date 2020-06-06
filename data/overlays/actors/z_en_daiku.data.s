.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Daiku_InitVars
 .word 0x01330400, 0x00000019, 0x01220000, 0x0000034C
.word EnDaiku_Init
.word EnDaiku_Destroy
.word EnDaiku_Update
.word EnDaiku_Draw
glabel D_809E4060
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00120042, 0x00000000, 0x00000000
glabel D_809E408C
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_809E4098
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_809E40B8
 .word 0x06001AB0, 0x3F800000, 0x00000000, 0x00000000, 0x06007DE0, 0x3F800000, 0x00000000, 0x00000000, 0x0600885C, 0x3F800000, 0x00000000, 0x00000000, 0x06000C44, 0x3F800000, 0x00000000, 0x00000000, 0x06008164, 0x3F800000, 0x00000000, 0x00000000
glabel D_809E4108
 .word 0x00000000, 0x43020000, 0x435C0000
glabel D_809E4114
 .word 0x00000064, 0xC1A00000, 0x41B00000, 0x438C0000, 0x0000006E, 0x42480000, 0x43340000, 0x43AF0000, 0x00000064, 0xC2200000, 0x42700000, 0x42700000, 0x00000078
glabel D_809E4148
 .word 0x00000000, 0x00000000, 0x42F00000
glabel D_809E4154
 .word 0x06005BD0, 0x06005AC0, 0x06005990, 0x06005880
glabel D_809E4164
 .word 0x442F0000, 0x44898000, 0x00000000

