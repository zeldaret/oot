.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8089BA50
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel D_8089BA90
    .asciz "../z_bg_jya_zurerukabe.c"
    .balign 4

glabel D_8089BAAC
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_8089BAB8
    .asciz "home pos が変更されたみたい(%s %d)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel D_8089BAF0
    .asciz "../z_bg_jya_zurerukabe.c"
    .balign 4

glabel D_8089BB0C
 .word 0x1B5B6D00
glabel D_8089BB10
    .asciz "(jya ずれる壁)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel jtbl_8089BB34
.word L8089B574
.word L8089B5D8
.word L8089B574
.word L8089B574
.word L8089B5D8
.word L8089B574
.word 0x00000000


