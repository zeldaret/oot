.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B38E10
 .word 0x0A0A0000
glabel D_80B38E14
    .asciz "[32m☆☆☆☆☆ 不思議不思議まか不思議 	   ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80B38E54
    .asciz "[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B38E94
    .asciz "[33m☆☆☆☆☆ うっかり兵セット完了 ☆☆☆☆☆ \n[m"
    .balign 4

glabel jtbl_80B38ECC
.word L80B382D8
.word L80B38338
.word L80B38388
.word L80B383A4
.word L80B3855C
.word L80B38410
.word L80B38470
.word L80B384C0
.word L80B384D0
.word L80B38538
.word 0x00000000, 0x00000000, 0x00000000

