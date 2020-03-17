.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8096CFD0
    .asciz "../z_demo_du_inKenjyanomaDemo02.c"
    .balign 4

glabel D_8096CFF4
    .asciz "../z_demo_du_inKenjyanomaDemo02.c"
    .balign 4

glabel D_8096D018
    .asciz "Demo_Du_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_8096D054
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8096D090
    .asciz "../z_demo_du.c"
    .balign 4

glabel D_8096D0A0
    .asciz "../z_demo_du.c"
    .balign 4

glabel D_8096D0B0
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8096D0E8
 .word 0xC61C4000
glabel D_8096D0EC
 .word 0x42A6AAAB


