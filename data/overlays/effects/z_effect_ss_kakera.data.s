.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.word 0x00000019
.word func_809A9680
glabel D_809AA528
 .word 0xFFFFFFEB, 0xAA820000
glabel D_809AA530
 .word 0x3F800000, 0x42C80000, 0x42200000, 0x40A00000, 0x42C80000, 0x42200000, 0x40A00000, 0x42C80000, 0x42200000, 0x40A00000
glabel D_809AA558
 .word 0x3D4CCCCD, 0x3F800000
glabel D_809AA560
 .word 0x40800000, 0x3DCCCCCD, 0x3E99999A, 0x3F666666, 0xBDCCCCCD, 0xBE99999A, 0xBF666666
glabel D_809AA57C
 .word 0x3DCCCCCD, 0x3F800000, 0x40C00000
glabel D_809AA588
 .word func_809A9DD8
.word func_809A9DEC
.word func_809A9DEC
.word func_809A9DEC
.word func_809A9E28
.word func_809A9E28
.word func_809A9E28
.word func_809A9E68
.word func_809A9E68
.word func_809A9E68
glabel D_809AA5B0
 .word 0x41200000, 0x41A00000, 0x42200000, 0x00000000

