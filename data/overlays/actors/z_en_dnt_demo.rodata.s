.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809F16B0
 .word 0x0A0A0000
glabel D_809F16B4
    .asciz "[32m☆☆☆☆☆ デグナッツお面品評会開始 ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_809F16F0
    .asciz "[32m☆☆☆☆☆ ザコザコ ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809F171C
    .asciz "[32m☆☆☆☆☆ じじじじじじじじじじい ☆☆☆☆☆ %x\n[m"
    .balign 4

.balign 4

glabel D_809F1758
    .asciz "[31m☆☆☆☆☆ げらげら ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_809F1784
    .asciz "[32m☆☆☆☆☆ 特別！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809F17AC
    .asciz "[32m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809F17DC
    .asciz "[33m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809F180C
    .asciz "[35m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809F183C
    .asciz "[36m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809F186C
 .word 0x0A0A0000
glabel D_809F1870
    .asciz "[32m☆☆☆☆☆ 各インデックス１ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809F18A4
    .asciz "[32m☆☆☆☆☆ 各インデックス２ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809F18D8
    .asciz "[32m☆☆☆☆☆ 各インデックス３ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809F190C
 .word 0x0A000000
glabel D_809F1910
    .asciz "[33m☆☆☆☆☆ どういう評価？  ☆☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809F1944
    .asciz "[35m☆☆☆☆☆ どういうアクション？  ☆☆☆ %d\n[m"
    .balign 4

glabel D_809F1978
 .word 0x0A0A0000
glabel D_809F197C
 .word 0x457D2000
glabel jtbl_809F1980
.word L809F0E1C
.word L809F0D50
.word L809F0E1C
.word L809F0E1C
.word L809F0E1C
.word L809F0E1C
.word L809F0E1C
.word L809F0D80
glabel D_809F19A0
 .word 0x410FD70A
glabel D_809F19A4
 .word 0x40FFAE14, 0x00000000, 0x00000000


