.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A6EE10
    .asciz "[36m ヒヨコの店(大人の時) \n[m"
    .balign 4

glabel D_80A6EE30
    .asciz "[36m ヒヨコ屋閉店 \n[m"
    .balign 4

glabel D_80A6EE48
    .asciz "[36m ヒヨコの店(子人の時) \n[m"
    .balign 4

glabel jtbl_80A6EE68
.word L80A6EC84
.word L80A6ECB0
.word func_80A6ECBC
.word func_80A6ECC8
.word func_80A6ECE8
.word 0x00000000


