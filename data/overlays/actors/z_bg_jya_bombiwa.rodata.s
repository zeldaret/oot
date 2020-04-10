.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80895770
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808957B0
    .asciz "../z_bg_jya_bombiwa.c"
    .balign 4

glabel D_808957C8
    .asciz "[43;30m"
    .balign 4

glabel D_808957D4
    .asciz "Ｗａｒｎｉｎｇ : Switch Number が変更された(%s %d)(SW %d)\n"
    .balign 4

glabel D_80895810
    .asciz "../z_bg_jya_bombiwa.c"
    .balign 4

glabel D_80895828
 .word 0x1B5B6D00
glabel D_8089582C
    .asciz "(jya 爆弾で破壊岩)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80895854
 .word 0x3FE66666
glabel D_80895858
 .word 0x3ECCCCCD, 0x00000000


