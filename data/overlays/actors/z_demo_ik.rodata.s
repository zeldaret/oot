.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809847B0
    .asciz "Demo_Ik_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.balign 4

glabel D_809847E4
    .asciz "../z_demo_ik_inArmer.c"
    .balign 4

glabel D_809847FC
    .asciz "../z_demo_ik_inArmer.c"
    .balign 4

glabel D_80984814
    .asciz "../z_demo_ik_inArmer.c"
    .balign 4

glabel D_8098482C
    .asciz "../z_demo_ik_inArmer.c"
    .balign 4

glabel D_80984844
    .asciz "../z_demo_ik_inArmer.c"
    .balign 4

glabel D_8098485C
    .asciz "../z_demo_ik_inArmer.c"
    .balign 4

glabel D_80984874
    .asciz "Demo_Ik_inFace_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_809848AC
    .asciz "../z_demo_ik_inFace.c"
    .balign 4

glabel D_809848C4
    .asciz "../z_demo_ik_inFace.c"
    .balign 4

glabel D_809848DC
    .asciz "../z_demo_ik_inFace.c"
    .balign 4

glabel D_809848F4
    .asciz "../z_demo_ik_inFace.c"
    .balign 4

glabel D_8098490C
    .asciz "../z_demo_ik_inFace.c"
    .balign 4

glabel D_80984924
    .asciz "../z_demo_ik_inFace.c"
    .balign 4

glabel D_8098493C
    .asciz "../z_demo_ik_inFace.c"
    .balign 4

glabel D_80984954
    .asciz "../z_demo_ik_inFace.c"
    .balign 4

glabel D_8098496C
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.balign 4

glabel D_809849A8
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel jtbl_809849E0
.word L80983A3C
.word L80983A4C
.word L80983A60
.word L80983A70
.word L80983A88
.word L80983A88
.word 0x00000000, 0x00000000


