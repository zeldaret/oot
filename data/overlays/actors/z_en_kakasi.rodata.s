.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A8FE30
 .word 0x0A0A0000
glabel D_80A8FE34
    .asciz "[33m☆☆☆☆☆ Ｌｅｔ’ｓ ＤＡＮＣＥ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A8FE70
    .asciz "[34m☆☆☆☆☆ 終り？ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A8FE98
    .asciz "game_play->message.msg_mode=%d\n"
    .balign 4

glabel D_80A8FEB8
 .word 0x0A0A0000
glabel D_80A8FEBC
    .asciz "[33m☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A8FEE8
 .word 0x412FD70A
glabel D_80A8FEEC
 .word 0x409FAE14
glabel D_80A8FEF0
 .word 0x403F5C29
glabel jtbl_80A8FEF4
.word L80A8F3D8
.word L80A8F408
.word L80A8F424
.word L80A8F444
.word L80A8F464
.word 0x00000000, 0x00000000


