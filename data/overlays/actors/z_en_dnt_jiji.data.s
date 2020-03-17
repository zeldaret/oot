.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Dnt_Jiji_InitVars
 .word 0x01A20400, 0x00000019, 0x01710000, 0x000002A8
.word EnDntJiji_Init
.word EnDntJiji_Destroy
.word EnDntJiji_Update
.word EnDntJiji_Draw
glabel D_809F2FA0
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x001E0050, 0x00000000, 0x00000000
glabel D_809F2FCC
 .word 0x060030A0, 0x06002EA0, 0x06003020, 0x00000000, 0x00000000

