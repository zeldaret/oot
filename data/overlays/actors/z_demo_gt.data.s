.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_809825C0
 .word 0x64506400
glabel D_809825C4
 .word 0xFF6E6000
glabel D_809825C8
 .word 0x00000000, 0x40C00000, 0x00000000
glabel D_809825D4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809825E0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809825EC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809825F8
 .word 0x48500064
glabel D_809825FC
 .word 0x00000000, 0xC1800000, 0x00000000
glabel D_80982608
 .word 0x00000000, 0x3F99999A, 0x00000000
glabel D_80982614
 .word 0x00000000
glabel D_80982618
 .word 0xC1400000, 0xC1880000, 0x40A00000
glabel D_80982624
 .word 0x00000000
glabel D_80982628
 .word 0x3F800000, 0x00000000
glabel D_80982630
 .word 0x00000000
glabel D_80982634
 .word 0x00000000, 0x00000000
glabel D_8098263C
 .word 0x438C0000
glabel D_80982640
 .word 0x41000000
glabel D_80982644
 .word 0x0000000B
glabel D_80982648
 .word 0x00000001
glabel D_8098264C
 .word 0x00030000
glabel D_80982650
 .word 0x40A00000, 0xC1800000, 0xC1800000
glabel D_8098265C
 .word 0x00000000
glabel D_80982660
 .word 0x00000000
glabel D_80982664
 .word 0x00000000, 0x00000000, 0xC1200000
glabel D_80982670
 .word 0x40A00000, 0xC0400000, 0x00000000
glabel D_8098267C
 .word 0x40A00000, 0xC0400000, 0x00000000
glabel D_80982688
 .word 0x40A00000, 0xC1800000, 0xC1800000
glabel D_80982694
 .word 0x41700000, 0xC1D00000, 0x00000000
glabel D_809826A0
 .word 0x40A00000, 0xC1800000, 0xC1800000
glabel D_809826AC
 .word 0x40A00000, 0xC1800000, 0xC1800000
glabel D_809826B8
 .word 0x41A00000, 0x40C00000, 0x00000000
glabel D_809826C4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809826D0
 .word 0x00000000, 0xC1880000, 0x00000000
glabel D_809826DC
 .word 0x00000000, 0xC1F00000, 0x00000000
glabel D_809826E8
 .word func_8097F428
.word func_8097FF14
.word func_80980DB0
.word func_809810A0
.word func_80981588
.word func_80981994
.word func_80981E04
.word func_809821C4
.word func_8097F498
.word func_8097FF5C
.word func_80980DF0
.word func_809810E0
.word func_809815C8
.word func_809819D4
.word func_80981E44
.word func_80982204
.word func_80981114
.word func_809815FC
.word func_80981A08
glabel D_80982734
 .word func_8098254C
.word func_8097F508
.word func_8097FF9C
.word func_80980E24
.word func_809811AC
.word func_80981694
.word func_80981AA0
.word func_80981E84
.word func_80982244
glabel Demo_Gt_InitVars
 .word 0x01740600, 0x00000030, 0x014C0000, 0x000001A8
.word DemoGt_Init
.word DemoGt_Destroy
.word DemoGt_Update
.word DemoGt_Draw
.word 0x00000000, 0x00000000

