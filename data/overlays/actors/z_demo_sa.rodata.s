.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80990DE0
    .asciz "../z_demo_sa_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80990E04
    .asciz "../z_demo_sa_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80990E28
    .asciz "Demo_Sa_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80990E64
    .asciz "Demo_Sa_inPresent_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80990EA0
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80990EDC
    .asciz "../z_demo_sa.c"
    .balign 4

glabel D_80990EEC
    .asciz "../z_demo_sa.c"
    .balign 4

glabel D_80990EFC
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80990F34
 .word 0xC61C4000
glabel D_80990F38
 .word 0x42A6AAAB, 0x00000000


