.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A909F0
 .word 0x0A0A0000
glabel D_80A909F4
    .asciz "[32m☆☆☆☆☆ 梅田参号見参！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A90A24
    .asciz "[33m☆☆☆☆☆ 元？(引数０) ☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90A54
    .asciz "[33m☆☆☆☆☆ 元？(Ｚアングル) ☆☆ %f\n[m"
    .balign 4

glabel D_80A90A84
    .asciz "[33m☆☆☆☆☆ 補正座標Ｘ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90AB4
    .asciz "[33m☆☆☆☆☆ 補正座標Ｙ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90AE4
    .asciz "[33m☆☆☆☆☆ 補正座標Ｚ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90B14
    .asciz "[33m☆☆☆☆☆ SAVE       ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A90B44
 .word 0x0A0A0000
glabel D_80A90B48
    .asciz "[32m☆☆☆☆☆ SAVE 終了 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A90B74
    .asciz "[32m☆☆☆☆☆ SAVE 終了 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A90BA0
    .asciz "[33m☆☆☆☆☆ this->actor.player_distance ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90BE0
    .asciz "[33m☆☆☆☆☆ this->hosei.x ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80A90C10
 .word 0x0A0A0000, 0x00000000, 0x00000000, 0x00000000


