.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel En_Peehat_InitVars
 .word 0x001D0500, 0x01000015, 0x00180000, 0x0000042C
.word EnPeehat_Init
.word EnPeehat_Destroy
.word EnPeehat_Update
.word EnPeehat_Draw
glabel D_80AD2740
 .word 0x0B000909, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, 0x003200A0, 0xFFBA0000, 0x00000000
glabel D_80AD276C
 .word 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00000000, 0x00000000, 0x00140064
glabel D_80AD2790
 .word 0x06000909, 0x10000000, 0x00000001
.word D_80AD276C
glabel D_80AD27A0
 .word 0x09110D00, 0x00030000, 0x00000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_80AD27F0
 .word 0xF0020102, 0xE00202D2, 0x010204C4, 0x02020202, 0x02C36060, 0x00000104, 0x02020804, 0x00000400
glabel D_80AD2810
 .word 0x304C02BC
glabel D_80AD2814
 .word 0x00000000, 0x41000000, 0x00000000
glabel D_80AD2820
 .word 0x00000000, 0xBFC00000, 0x00000000
glabel D_80AD282C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80AD2838
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80AD2844
 .word 0x00000000, 0x00000000, 0x45ABE000
glabel D_80AD2850
 .word 0x00000000, 0x00000000, 0xC5ABE000
glabel D_80AD285C
 .word 0x00000000, 0x00000000, 0xC58CA000
glabel D_80AD2868
 .word 0xC58CA000, 0x00000000, 0x00000000
glabel D_80AD2874
 .word 0x458CA000, 0x00000000, 0x00000000
glabel D_80AD2880
 .word 0x00000000, 0x00000000, 0x458CA000, 0x00000000

