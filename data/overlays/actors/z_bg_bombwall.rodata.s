.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8086F040

    .asciz "Warning : move BG 登録失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8086F074

    .asciz "../z_bg_bombwall.c"
    .balign 4

glabel D_8086F088

    .asciz "(field keep 汎用爆弾壁)(arg_data 0x%04x)(angY %d)\n"
    .balign 4

.balign 8
