.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Dns_InitVars
 .word 0x011A0100, 0x00000009, 0x01680000, 0x000002C8
.word EnDns_Init
.word EnDns_Destroy
.word EnDns_Update
.word EnDns_Draw
glabel D_809F03E0
 .word 0x0A000939, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00120020, 0x00000000, 0x00000000
glabel D_809F040C
 .word 0x10A010A1, 0x10A210CA, 0x10CB10CC, 0x10CD10CE, 0x10CF10DC, 0x10DD0000
glabel D_809F0424
 .word D_809F0560
.word D_809F057C
.word D_809F0598
.word D_809F05B4
.word D_809F05D0
.word D_809F05EC
.word D_809F0608
.word D_809F0624
.word D_809F0640
.word D_809F065C
.word D_809F0678
glabel D_809F0450
 .word 0x00140005, 0x00000063
.word func_809EF5A4
.word func_809EFA28
glabel D_809F0460
 .word 0x000F0001, 0x00000007
.word func_809EF658
.word func_809EF9F8
glabel D_809F0470
 .word 0x000A0001, 0x0000003E
.word func_809EF70C
.word func_809EFA58
glabel D_809F0480
 .word 0x0028001E, 0x00000069
.word func_809EF73C
.word func_809EF9F8
glabel D_809F0490
 .word 0x00320001, 0x00000029
.word func_809EF800
.word func_809EF9F8
glabel D_809F04A0
 .word 0x00280005, 0x00000001
.word func_809EF854
.word func_809EFA9C
glabel D_809F04B0
 .word 0x00460014, 0x0000004B
.word func_809EF8F4
.word func_809EFACC
glabel D_809F04C0
 .word 0x00280001, 0x00000010
.word func_809EF9A4
.word func_809EF9F8
glabel D_809F04D0
 .word 0x00280001, 0x00000011
.word func_809EF9A4
.word func_809EF9F8
glabel D_809F04E0
 .word 0x00280001, 0x00000077
.word func_809EF70C
.word func_809EFAFC
glabel D_809F04F0
 .word 0x00280001, 0x00000079
.word func_809EF70C
.word func_809EFB40
glabel D_809F0500
 .word D_809F0450
.word D_809F0460
.word D_809F0470
.word D_809F0480
.word D_809F0490
.word D_809F04A0
.word D_809F04B0
.word D_809F04C0
.word D_809F04D0
.word D_809F04E0
.word D_809F04F0
glabel D_809F052C
 .word 0x8917004E, 0x801F0002, 0x304C001E
glabel D_809F0538
 .word 0x06001108, 0x00000000, 0x00000000, 0x06004404, 0x02000000, 0x00000000, 0x060009A0, 0x02000000, 0x00000000, 0x00000000

