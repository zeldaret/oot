.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809785E0
    .asciz "[31mDemo_Geff_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8097861C
    .asciz "../z_demo_geff.c"
    .balign 4

glabel D_80978630
    .asciz "../z_demo_geff.c"
    .balign 4

glabel D_80978644
    .asciz "../z_demo_geff.c"
    .balign 4

glabel D_80978658
    .asciz "../z_demo_geff.c"
    .balign 4

glabel D_8097866C
    .asciz "../z_demo_geff.c"
    .balign 4

glabel D_80978680
    .asciz "[31m Demo_Geff_main_init:初期化処理がおかしいarg_data = %d!\n[m"
    .balign 4

glabel D_809786C4
    .asciz "[31mDemo_Geff_main_bank:バンクを読めない arg_data = %d!\n[m"
    .balign 4

glabel D_80978704
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80978740
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel jtbl_80978778
.word L80978064
.word func_809780E0
.word L8097816C
.word L80978064
.word func_809780E0
.word L8097816C
.word L80978064
.word func_809780E0
glabel D_80978798
 .word 0x3C23D70A
glabel D_8097879C
 .word 0x3E99999A
glabel D_809787A0
 .word 0x3C23D70A
glabel D_809787A4
 .word 0x3E19999A
glabel D_809787A8
 .word 0x3E947AE1
glabel D_809787AC
 .word 0x3DF5C28F
glabel D_809787B0
 .word 0x3C23D70A
glabel D_809787B4
 .word 0x3DCCCCCD
glabel D_809787B8
 .word 0x3E19999A
glabel D_809787BC
 .word 0x3E4CCCCD


