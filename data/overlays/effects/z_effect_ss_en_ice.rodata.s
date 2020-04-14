.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A3BA0
    .asciz "Effect_Ss_En_Ice_ct():pid->mode_swがエラーです。\n"
    .balign 4

glabel D_809A3BD4
    .asciz "../z_eff_en_ice.c"
    .balign 4

glabel D_809A3BE8
    .asciz "../z_eff_en_ice.c"
    .balign 4

glabel D_809A3BFC
    .asciz "../z_eff_en_ice.c"
    .balign 4

glabel D_809A3C10
    .float 0.01
    .balign 4

glabel D_809A3C14
    .float 9.58738019108e-05
    .balign 4

glabel D_809A3C18
    .float 9.58738019108e-05
    .balign 4

glabel D_809A3C1C
 .word 0x42B3999A
glabel D_809A3C20
 .word 0x477FFF00, 0x00000000, 0x00000000, 0x00000000


