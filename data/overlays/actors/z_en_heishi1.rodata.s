.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A52930
    .asciz "[32m 種類☆☆☆☆☆☆☆☆☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A5295C
    .asciz "[33m れえるでぇたぁ☆☆☆☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A52988
    .asciz "[35m anime_frame_speed ☆☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A529B4
    .asciz "[35m 補間フレーム☆☆☆☆☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A529E0
    .asciz "[35m point間の移動スピード目標値 ☆ %f\n[m"
    .balign 4

glabel D_80A52A0C
    .asciz "[35m point間の移動スピード最大 ☆☆ %f\n[m"
    .balign 4

glabel D_80A52A38
    .asciz "[35m (体)反転アングルスピード目標値 %f\n[m"
    .balign 4

glabel D_80A52A64
    .asciz "[35m (体)反転アングルスピード最大☆ %f\n[m"
    .balign 4

glabel D_80A52A90
    .asciz "[35m (頭)反転アングルスピード加算値 %f\n[m"
    .balign 4

glabel D_80A52ABC
    .asciz "[35m (頭)反転アングルスピード最大☆ %f\n[m"
    .balign 4

glabel D_80A52AE8
    .asciz "[32m 今時間 %d\n[m"
    .balign 4

glabel D_80A52AFC
    .asciz "[33m チェック時間 %d\n[m"
    .balign 4

glabel D_80A52B18
 .word 0x0A0A0000
glabel D_80A52B1C
    .asciz "[31m 種類  %d\n[m"
    .balign 4

glabel D_80A52B30
    .asciz "[31m ぱす  %d\n[m"
    .balign 4

glabel D_80A52B44
    .asciz "[31m 反転  %d\n[m"
    .balign 4

glabel D_80A52B58
    .asciz "[31m 時間  %d\n[m"
    .balign 4

glabel D_80A52B6C
    .asciz "[31m 点座  %d\n[m"
    .balign 4

glabel D_80A52B80
 .word 0x0A0A0000
glabel D_80A52B84
    .asciz "[32m 種類  %d\n[m"
    .balign 4

glabel D_80A52B98
    .asciz "[32m ぱす  %d\n[m"
    .balign 4

glabel D_80A52BAC
    .asciz "[32m 反転  %d\n[m"
    .balign 4

glabel D_80A52BC0
    .asciz "[32m 時間  %d\n[m"
    .balign 4

glabel D_80A52BD4
 .word 0x0A0A0000
glabel D_80A52BD8
    .asciz "[32m☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A52C00
    .asciz "[32m☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A52C28
 .word 0x3FFEB852
glabel D_80A52C2C
 .word 0x4622F983
glabel D_80A52C30
 .word 0x3FFEB852
glabel D_80A52C34
 .word 0x3FFEB852
glabel D_80A52C38
 .word 0x44098000
glabel D_80A52C3C
 .word 0x40490FDB
glabel D_80A52C40
 .word 0xC079999A, 0x00000000, 0x00000000, 0x00000000


