.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808AB870
    .asciz "[31mBg_Spot01_Idohashira_Get_FreeFallで割り算出来ない!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_808AB8BC
    .asciz "Bg_Spot01_Idohashira_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_808AB8FC
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_808AB938
    .asciz "../z_bg_spot01_idohashira.c"
    .balign 4

glabel D_808AB954
    .asciz "../z_bg_spot01_idohashira.c"
    .balign 4

glabel D_808AB970
    .asciz "../z_bg_spot01_idohashira.c"
    .balign 4

glabel D_808AB98C
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_808AB9C4
 .word 0x44A28000
glabel D_808AB9C8
 .word 0x44A28000
glabel D_808AB9CC
 .word 0x44898000
glabel D_808AB9D0
 .word 0x44898000, 0x00000000, 0x00000000, 0x00000000


