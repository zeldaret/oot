.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B3850
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B3890
    .asciz "../z_bg_spot12_saku.c"
    .balign 4

glabel D_808B38A8
 .word 0x3DCCCCCD
glabel D_808B38AC
 .word 0x3A83126F
glabel D_808B38B0
 .word 0x3DCCCCCD
glabel D_808B38B4
 .word 0x38D1B717
glabel D_808B38B8
 .word 0x3BEA0EA2, 0x00000000


