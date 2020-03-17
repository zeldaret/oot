.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B39970
 .word 0x0A0A0000
glabel D_80B39974
    .asciz "[32m☆☆☆☆☆ 特殊会話くん ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80B399A4
    .asciz "[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B399E4
    .asciz "[32m ☆☆☆☆☆ 石板ＧＯ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B39A10
    .asciz "[35m☆☆☆☆☆ 注目座標	       	☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B39A44
    .asciz "[32m ☆☆☆☆☆ こども ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B39A6C
    .asciz "[36m ☆☆☆☆☆ おとな ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B39A94
    .asciz "[36m☆☆☆☆☆ this->actor.talk_message    ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80B39AD4
    .asciz "[32m ☆☆☆☆☆ 日記帳スタート！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B39B08
    .asciz "[35m☆☆☆☆☆ 注目座標	       	☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B39B3C
    .asciz "[35m☆☆☆☆☆ 注目座標	       	☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B39B70
    .asciz "[35m☆☆☆☆☆ 注目座標	       	☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B39BA4
    .asciz "[35m☆☆☆☆☆ 注目座標	       	☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B39BD8
    .asciz "[36m☆☆☆☆☆ this->actor.talk_message    ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80B39C18
 .word 0x0A0A0000
glabel D_80B39C1C
    .asciz "[33m☆☆☆☆☆ セーブ情報		☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B39C4C
    .asciz "[35m☆☆☆☆☆ 種類インデックス	☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B39C80
    .asciz "[36m☆☆☆☆☆ 実質メッセージ種類     %x\n[m"
    .balign 4

glabel D_80B39CB0
    .asciz "[32m☆☆☆☆☆ 指定範囲               %d\n[m"
    .balign 4

glabel D_80B39CE0
 .word 0x0A0A0000
glabel D_80B39CE4
    .asciz "[32m ☆☆☆☆☆ まだコドモなの！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B39D18
    .asciz "[33m ☆☆☆☆☆ アダルトなの。。。 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B39D4C
    .asciz "[35m ☆☆☆☆☆ はずれ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel jtbl_80B39D78
.word L80B39228
.word L80B392C0
.word L80B39314
.word L80B39358
.word L80B393B8
.word 0x00000000


