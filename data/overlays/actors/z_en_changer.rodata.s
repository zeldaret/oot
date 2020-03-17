.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809D3180
 .word 0x0A0A0000
glabel D_809D3184
    .asciz "[32m☆☆☆☆☆ 宝発生(部屋はどれ？) %d\n[m"
    .balign 4

glabel D_809D31B0
    .asciz "[32m☆☆☆☆☆ ビットは？ 	     %x\n[m"
    .balign 4

glabel D_809D31D8
    .asciz "[32m☆☆☆☆☆ セーブＢＩＴは？     %x\n[m"
    .balign 4

glabel D_809D3204
    .asciz "[32m☆☆☆☆☆ もう、ゾンビ？	     %d\n[m"
    .balign 4

glabel D_809D3230
 .word 0x0A0A0000
glabel D_809D3234
    .asciz "[33m☆☆☆☆☆ 中央宝発生(ＧＲＥＡＴ) ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809D3270
    .asciz "[35m☆☆☆☆☆ 左宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809D32B4
    .asciz "[35m☆☆☆☆☆ 部屋番号は？  %x\n[m"
    .balign 4

glabel D_809D32DC
    .asciz "[35m☆☆☆☆☆ ビットはなぁに？  %x\n[m"
    .balign 4

glabel D_809D3308
    .asciz "[35m☆☆☆☆☆ すけすけ君？ %x\n[m"
    .balign 4

glabel D_809D332C
 .word 0x0A0A0000
glabel D_809D3330
    .asciz "[36m☆☆☆☆☆ 右宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809D3374
    .asciz "[36m☆☆☆☆☆ 部屋番号は？  %d\n[m"
    .balign 4

glabel D_809D339C
    .asciz "[36m☆☆☆☆☆ ビットはなぁに？  %x\n[m"
    .balign 4

glabel D_809D33C8
    .asciz "[36m☆☆☆☆☆ すけすけ君？ %x\n[m"
    .balign 4

glabel D_809D33EC
 .word 0x0A0A0000
glabel D_809D33F0
    .asciz "[32m☆☆☆☆☆ 右宝開く ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809D341C
    .asciz "[32m☆☆☆☆☆ 左宝開く ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809D3448
 .word 0xC51C4000
glabel D_809D344C
 .word 0xC51C4000
glabel D_809D3450
 .word 0x3FFEB852, 0x00000000, 0x00000000, 0x00000000


