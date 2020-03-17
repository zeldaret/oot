.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AC0300
 .word 0x0A0A0000
glabel D_80AC0304
    .asciz "[32m☆☆☆☆☆ オカリナタグ発生 ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80AC0338
    .asciz "[32m☆☆☆☆☆ セーブ情報	 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC0368
    .asciz "[33m☆☆☆☆☆ 種類インデックス ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC039C
    .asciz "[35m☆☆☆☆☆ 正解情報	 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC03C8
    .asciz "[36m☆☆☆☆☆ 範囲情報	 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC03F4
    .asciz "[36m☆☆☆☆☆ 処理範囲情報	 ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80AC0424
    .asciz "[32m☆☆☆☆☆ 当り？		 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC0450
 .word 0x0A0A0000
glabel D_80AC0454
    .asciz "[31m☆☆☆☆☆ 北！！！！！ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80AC0484
    .asciz "[32m☆☆☆☆☆ オカリナ透明君デモ開始チェックエラー原 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AC04D0
    .asciz "[35m☆☆☆☆☆ 開けゴマゴマゴマ！ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel jtbl_80AC0508
.word L80ABEEE8
.word L80ABEEC8
.word L80ABEF10
.word L80ABEEE8
.word L80ABEEF8
.word L80ABEEE8
.word L80ABEEB8
glabel D_80AC0524
 .word 0x3F983809, 0x00000000, 0x00000000


