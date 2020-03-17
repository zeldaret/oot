.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B9150
    .asciz "Error : リンク年齢不詳 (%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B9184
    .asciz "../z_bg_spot18_obj.c"
    .balign 4

glabel D_808B919C
    .asciz "出現しない Object (0x%04x)\n"
    .balign 4

glabel D_808B91B8
    .asciz "Error : Obj出現判定が設定されていない(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B91F8
    .asciz "../z_bg_spot18_obj.c"
    .balign 4

glabel D_808B9210
    .asciz "Error : Obj出現判定失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B9244
    .asciz "../z_bg_spot18_obj.c"
    .balign 4

glabel D_808B925C
    .asciz "Spot18 Object [arg_data : 0x%04x]\n"
    .balign 4

glabel D_808B9280
 .word 0x3A83126F
glabel D_808B9284
 .word 0xBA83126F, 0x00000000, 0x00000000


