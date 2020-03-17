.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A2E10
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808A2E50
    .asciz "../z_bg_mori_hashigo.c"
    .balign 4

glabel D_808A2E68
    .asciz "Error : 梯子の発生失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808A2E98
    .asciz "../z_bg_mori_hashigo.c"
    .balign 4

glabel D_808A2EB0
    .asciz "Error : バンク危険！(arg_data 0x%04x)(%s %d)\n"
    .balign 4

glabel D_808A2EE0
    .asciz "../z_bg_mori_hashigo.c"
    .balign 4

glabel D_808A2EF8
    .asciz "(森の神殿 梯子とその留め金)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808A2F28
    .asciz "../z_bg_mori_hashigo.c"
    .balign 4

glabel D_808A2F40
    .asciz "../z_bg_mori_hashigo.c"
    .balign 4

glabel D_808A2F58
    .asciz "../z_bg_mori_hashigo.c"
    .balign 4



