.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80977CB0
    .asciz "Demo_Ext_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80977CE4
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80977D20
    .asciz "../z_demo_ext.c"
    .balign 4

glabel D_80977D30
    .asciz "../z_demo_ext.c"
    .balign 4

glabel D_80977D40
    .asciz "../z_demo_ext.c"
    .balign 4

glabel D_80977D50
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.balign 16



