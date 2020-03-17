.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80893150
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80893190
    .asciz "../z_bg_jya_1flift.c"
    .balign 4

glabel D_808931A8
    .asciz "(１Ｆリフト)(flag %d)(room %d)\n"
    .balign 4

glabel D_808931C8
 .word 0x3A83126F, 0x00000000


