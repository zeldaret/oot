.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B60A0
    .asciz "Spot16 obj 爆弾石 破壊済み\n"
    .balign 4

glabel D_808B60BC
    .asciz "Error : バンク危険！(arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_808B60EC
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B6108
    .asciz "Error : arg_data おかしいな(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B6140
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B615C
    .asciz "Spot16 obj 爆弾石 (scaleX %f)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B618C
    .asciz "Error 補正出来ない(%s %d)(arg_data 0x%04x)(hosei_angY %x)\n"
    .balign 4

glabel D_808B61C8
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B61E4
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B6200
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B621C
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B6238
 .word 0x3ADA740E
glabel jtbl_808B623C
.word L808B50DC
.word L808B50DC
.word L808B50DC
.word L808B50DC
.word L808B50DC
.word L808B50DC
glabel D_808B6254
 .word 0x3FA66666
glabel D_808B6258
 .word 0x44C56000
glabel D_808B625C
 .word 0x44458000
glabel D_808B6260
 .word 0x481C4000, 0x00000000, 0x00000000, 0x00000000


