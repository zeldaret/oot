.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Door_Killer_InitVars
 .word 0x01C10100, 0x00000010, 0x018E0000, 0x00000284
.word DoorKiller_Init
.word DoorKiller_Destroy
.word DoorKiller_Update
.word 0x00000000
glabel D_80995FB0
 .word 0x09110900, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00100000, 0x0001FFEE, 0x00000000, 0x01010000, 0x00140064, 0x00000000, 0x00000000
glabel D_80995FDC
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00640064
glabel D_80996000
 .word 0x0A000900, 0x00000000, 0x00000001
.word D_80995FDC
glabel D_80996010
 .word 0x002C0000
glabel D_80996014
 .word 0x0600E5A0, 0x00590000, 0x060035C0, 0x01870000, 0x06000000, 0x00010000, 0x0400EF38
glabel D_80996030
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_8099603C
 .word 0x00000000, 0x3F800000, 0x00000000
glabel D_80996048
 .word 0x06001250, 0x06001550, 0x060017B8, 0x06001A58, 0x00000000, 0x00000000

