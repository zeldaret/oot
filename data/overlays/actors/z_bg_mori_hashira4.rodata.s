.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A35E0
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel D_808A3620
    .asciz "../z_bg_mori_hashira4.c"
    .balign 4

glabel D_808A3638
    .asciz "Error : バンク危険！(arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_808A3668
    .asciz "../z_bg_mori_hashira4.c"
    .balign 4

glabel D_808A3680
    .asciz "(森の神殿 ４本柱)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808A36A4
    .asciz "../z_bg_mori_hashira4.c"
    .balign 4

glabel D_808A36BC
    .asciz "../z_bg_mori_hashira4.c"
    .balign 4

glabel D_808A36D4
    .asciz "../z_bg_mori_hashira4.c"
    .balign 4

.balign 16

