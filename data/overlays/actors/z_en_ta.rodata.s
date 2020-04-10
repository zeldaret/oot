.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B16EA0
    .asciz "[36m 追放タロン \n[m"
    .balign 4

glabel D_80B16EB8
    .asciz "[36m 出戻りタロン \n[m"
    .balign 4

glabel D_80B16ED0
    .asciz "[36m 夜はいない \n[m"
    .balign 4

glabel D_80B16EE8
    .asciz "[36m その他のタロン \n[m"
    .balign 4

glabel D_80B16F04
    .asciz "[36m ロンロン牧場の倉庫 の タロン\n[m"
    .balign 4

glabel D_80B16F2C
    .asciz "../z_en_ta.c"
    .balign 4

glabel D_80B16F3C
    .asciz "../z_en_ta.c"
    .balign 4

glabel D_80B16F4C
    .float 0.8
    .balign 4

glabel D_80B16F50
    .float 0.4
    .balign 4

glabel D_80B16F54
 .word 0x4483A000
glabel D_80B16F58
    .float 0.1
    .balign 4

glabel D_80B16F5C
    .float 0.03
    .balign 4

glabel D_80B16F60
 .word 0x3CF5C28F, 0x00000000, 0x00000000, 0x00000000


