.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80893F60
    .asciz "Error : コブラ削除された (%s %d)\n"
    .balign 4

glabel D_80893F84
    .asciz "../z_bg_jya_bigmirror.c"
    .balign 4

glabel D_80893F9C
    .asciz "Error : コブラ発生失敗 (%s %d)\n"
    .balign 4

glabel D_80893FBC
    .asciz "../z_bg_jya_bigmirror.c"
    .balign 4

glabel D_80893FD4
    .asciz "Error : Mir Ray 発生失敗 (%s %d)\n"
    .balign 4

glabel D_80893FF8
    .asciz "../z_bg_jya_bigmirror.c"
    .balign 4

glabel D_80894010
    .asciz "(jya 大鏡)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80894030
    .asciz "../z_bg_jya_bigmirror.c"
    .balign 4

glabel D_80894048
    .asciz "../z_bg_jya_bigmirror.c"
    .balign 4

glabel D_80894060
    .asciz "../z_bg_jya_bigmirror.c"
    .balign 4

glabel D_80894078
    .asciz "../z_bg_jya_bigmirror.c"
    .balign 4

glabel D_80894090
 .word 0x3DCCCCCD
glabel D_80894094
 .word 0xBA4CCCCD
glabel D_80894098
 .word 0x3FB1F0A4
glabel D_8089409C
 .word 0x3DCCCCCD


