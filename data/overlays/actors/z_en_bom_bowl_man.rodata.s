.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809C4AC0
    .asciz "[32m☆ もー 肩こっちゃうよねぇ〜 		 ☆ \n[m"
    .balign 4

glabel D_809C4AF0
    .asciz "[32m☆ もっとラクしてもうかるバイトないかしら？ ☆ %d\n[m"
    .balign 4

glabel D_809C4B2C
    .asciz "[31m☆ game_play->bomchu_game_flag ☆ %d\n[m"
    .balign 4

glabel D_809C4B5C
    .asciz "[31m☆ 壁１の状態どう？ ☆ %d\n[m"
    .balign 4

glabel D_809C4B80
    .asciz "[31m☆ 壁２の状態どう？ ☆ %d\n[m"
    .balign 4

glabel D_809C4BA4
    .asciz "[31m☆ 穴情報	     ☆ %d\n[m"
    .balign 4

glabel D_809C4BC4
 .word 0x0A0A0000
glabel D_809C4BC8
    .asciz "[35m☆☆☆☆☆ 中央ＨＩＴ！！！！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809C4BFC
    .asciz "[35m☆☆☆☆☆ ボムチュウ消化 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809C4C2C
    .asciz "[33m☆ わー ☆ %d\n[m"
    .balign 4

glabel D_809C4C44
    .asciz "../z_en_bom_bowl_man.c"
    .balign 4

glabel D_809C4C5C
    .asciz "../z_en_bom_bowl_man.c"
    .balign 4

glabel D_809C4C74
 .word 0x409FAE14
glabel jtbl_809C4C78
.word L809C4468
.word L809C448C
.word L809C4498
.word L809C44A4
.word L809C44C8
.word 0x00000000


