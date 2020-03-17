.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B103E0
    .asciz "[32m☆☆☆☆☆ エラー原 ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B10408
    .asciz "[33m☆☆☆☆☆ エラー原セカンド ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B10438
    .asciz "[32m☆☆☆☆☆ ルピーでエラー原 ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B10468
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B1049C
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B104D0
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B10504
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B10538
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B1056C
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B105A0
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B105D4
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B10608
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B1063C
    .asciz "[31m☆☆☆☆☆ １フレームの攻防！ ☆☆☆☆ \n[m"
    .balign 4

glabel D_80B10670
 .word 0x40BFAE14
glabel jtbl_80B10674
.word L80B0FBDC
.word L80B0FC10
.word L80B0FC64
.word L80B0FC98
.word L80B0FCEC
.word L80B0FD40
.word 0x00000000


