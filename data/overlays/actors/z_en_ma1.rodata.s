.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AA16E0
    .asciz "../z_en_ma1.c"
    .balign 4

glabel D_80AA16F0
    .asciz "../z_en_ma1.c"
    .balign 4

glabel jtbl_80AA1700
.word L80AA08B0
.word L80AA08B0
.word L80AA07C4
.word L80AA08B0
.word L80AA087C
.word L80AA087C
.word L80AA0898
.word L80AA08B0
.word L80AA08B0
.word L80AA08B0
glabel jtbl_80AA1728
.word L80AA07F0
.word L80AA0874
.word L80AA08B0
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0818
.word L80AA0834
.word L80AA0850
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA0874
.word L80AA086C
glabel D_80AA17AC
 .word 0x40490FDB
glabel D_80AA17B0
 .word 0x40490FDB
glabel D_80AA17B4
 .word 0x40490FDB
glabel D_80AA17B8
 .word 0x40490FDB, 0x00000000


