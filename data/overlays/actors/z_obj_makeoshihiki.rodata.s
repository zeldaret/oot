.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B98970
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80B9897C
    .asciz "Ｅｒｒｏｒ : 押し引きブロック発生失敗(%s %d)\n"
    .balign 4

glabel D_80B989AC
    .asciz "../z_obj_makeoshihiki.c"
    .balign 4

glabel D_80B989C4
 .word 0x1B5B6D00
glabel D_80B989C8
    .asciz "(%s)(arg_data %04xF)(angleZ %d)\n"
    .balign 4

glabel D_80B989EC
    .asciz "../z_obj_makeoshihiki.c"
    .balign 4

glabel D_80B98A04
 .word 0x3A83126F, 0x00000000, 0x00000000


