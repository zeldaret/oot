.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Dh_InitVars
 .word 0x00A40500, 0x00000415, 0x00A60000, 0x00000324
.word EnDh_Init
.word EnDh_Destroy
.word EnDh_Update
.word EnDh_Draw
glabel D_809EC5C0
 .word 0x00000D09, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010100, 0x00230046, 0x00000000, 0x00000000
glabel D_809EC5EC
 .word 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010900, 0x01000000, 0x00000000, 0x00140064
glabel D_809EC610
 .word 0x06000909, 0x10000000, 0x00000001
.word D_809EC5EC
glabel D_809EC620
 .word 0x00F20000, 0x00000000, 0xF2F2F400, 0x00000000, 0x00000000, 0x0000F2F4, 0xF2F4F8F4, 0x0000F400
glabel D_809EC640
 .word 0x8917002F, 0xB04C07D0, 0xC850000A, 0x386CF254
glabel D_809EC650
 .word 0x00000000, 0x41000000, 0x00000000
glabel D_809EC65C
 .word 0x00000000, 0xBFC00000, 0x00000000
glabel D_809EC668
 .word 0x44FA0000, 0x447A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

