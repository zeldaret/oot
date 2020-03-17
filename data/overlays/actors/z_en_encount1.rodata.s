.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A07490
 .word 0x0A0A0000
glabel D_80A07494
    .asciz "[32m☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A074C8
    .asciz "[32m☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A074FC
    .asciz "[32m☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A07530
    .asciz "[32m☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A07564
    .asciz "[32m☆☆☆☆☆ 入力エラーデッス！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A07598
 .word 0x0A0A0000
glabel D_80A0759C
 .word 0x0A0A0000
glabel D_80A075A0
    .asciz "[32m☆☆☆☆☆ 敵発生ゾーンでた！ ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A075D8
    .asciz "[33m☆☆☆☆☆ 種類		   ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A07604
    .asciz "[35m☆☆☆☆☆ 最大同時発生数     ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A0763C
    .asciz "[36m☆☆☆☆☆ 最大発生数  	   ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A07670
    .asciz "[32m☆☆☆☆☆ 発生チェック範囲   ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A076A8
 .word 0x0A0A0000
glabel D_80A076AC
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A076DC
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A0770C
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A0773C
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A0776C
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A0779C
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A077CC
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A077FC
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A0782C
    .asciz "[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n[m"
    .balign 4

glabel D_80A0785C
 .word 0x44A28000
glabel D_80A07860
 .word 0x407F5C29
glabel D_80A07864
 .word 0x403F5C29, 0x00000000, 0x00000000


