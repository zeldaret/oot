.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80970630
    .asciz "[31mDemo_Ec_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8097066C
    .asciz "../z_demo_ec.c"
    .balign 4

glabel D_8097067C
    .asciz "../z_demo_ec.c"
    .balign 4

glabel D_8097068C
    .asciz "../z_demo_ec.c"
    .balign 4

glabel D_8097069C
    .asciz "../z_demo_ec.c"
    .balign 4

glabel D_809706AC
    .asciz "../z_demo_ec.c"
    .balign 4

glabel D_809706BC
    .asciz "../z_demo_ec.c"
    .balign 4

glabel D_809706CC
    .asciz "[31mかつらが無い!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_809706F4
    .asciz "[31mかつらが無い!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8097071C
    .asciz "[31m Demo_Ec_main_init:初期化処理がおかしいarg_data = %d!\n[m"
    .balign 4

glabel D_8097075C
    .asciz "[31mDemo_Ec_main_bank:バンクを読めない arg_data = %d!\n[m"
    .balign 4

glabel D_80970798
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_809707D4
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.balign 8



