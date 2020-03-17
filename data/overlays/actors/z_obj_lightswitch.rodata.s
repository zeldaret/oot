.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B97F90
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80B97F9C
    .asciz "押引ブロック発生失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B97FCC
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B97FE4
 .word 0x1B5B6D00
glabel D_80B97FE8
    .asciz "(光スイッチ)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B98008
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98020
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98038
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98050
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98068
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98080
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98098
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B980B0
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B980C8
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B980E0
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B980F8
 .word 0x38808081, 0x00000000


