.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B1FE0

    .asciz "Spot09 Object [arg_data : 0x%04x](大工救出フラグ 0x%x)\n"
    .balign 4

glabel D_808B2018

    .asciz "Error : Spot 09 object の arg_data が判別出来ない(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B2064

    .asciz "../z_bg_spot09_obj.c"
    .balign 4

glabel D_808B207C

    .asciz "../z_bg_spot09_obj.c"
    .balign 4

glabel D_808B2094

    .asciz "../z_bg_spot09_obj.c"
    .balign 4

glabel D_808B20AC
 .word 0x2E2E2F7A, 0x5F62675F, 0x73706F74, 0x30395F6F, 0x626A2E63, 0x00000000, 0x00000000, 0x00000000, 0x00000000


