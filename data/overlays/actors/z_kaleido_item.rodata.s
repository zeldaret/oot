.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8082F710
    .asciz "../z_kaleido_item.c"
    .balign 4

glabel D_8082F724
    .asciz "../z_kaleido_item.c"
    .balign 4

glabel D_8082F738
    .asciz "../z_kaleido_item.c"
    .balign 4

glabel D_8082F74C
    .asciz "now=%d  ccc=%d\n"
    .balign 4

glabel D_8082F75C
    .asciz "【Ｘ cursor=%d(%) (cur_xpt=%d)(ok_fg=%d)(ccc=%d)(key_angle=%d)】  "
    .balign 4

glabel D_8082F7A0
    .asciz "【Ｙ cursor=%d(%) (cur_ypt=%d)(ok_fg=%d)(ccc=%d)】  "
    .balign 4

glabel D_8082F7D8
    .asciz "../z_kaleido_item.c"
    .balign 4

glabel D_8082F7EC
 .word 0x0AA1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE10A0000
glabel D_8082F830
    .asciz "Ｃ左sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F858
    .asciz "Ｃ左sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F880
    .asciz "Ｃ下sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F8A8
    .asciz "Ｃ下sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F8D0
    .asciz "Ｃ下sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F8F8
    .asciz "Ｃ下sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F920
    .asciz "Ｃ右sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F948
    .asciz "Ｃ右sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F970
    .asciz "Ｃ右sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F998
    .asciz "Ｃ右sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4
