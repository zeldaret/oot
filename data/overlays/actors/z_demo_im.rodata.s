.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80988810
    .asciz "../z_demo_im_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80988834
    .asciz "../z_demo_im_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80988858
    .asciz "Demo_Im_Ocarina_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80988894
    .asciz "Demo_Im_Ocarina_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_809888D0
    .asciz "Demo_Im_Spot00_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80988908
    .asciz "Demo_Im_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80988944
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80988980
    .asciz "../z_demo_im.c"
    .balign 4

glabel D_80988990
    .asciz "../z_demo_im.c"
    .balign 4

glabel D_809889A0
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_809889D8
 .word 0xC61C4000
glabel D_809889DC
 .word 0x42A6AAAB
glabel jtbl_809889E0
.word L80986340
.word L80986350
.word L80986394
.word L80986394
.word L80986394
.word L80986394
.word L80986364
.word L80986374
.word L80986384
glabel jtbl_80988A04
.word L80987470
.word L80987484
.word L80987498
.word L809874AC
.word L809874C0
.word 0x00000000, 0x00000000


