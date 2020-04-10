.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AE65F0
    .asciz "[33m☆☆☆☆☆ リーバぼす登場 ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80AE6624
    .asciz "\n\n"
    .balign 4

glabel D_80AE6628
    .asciz "[32m☆☆☆☆☆ 何匹ＤＥＡＤ？ ☆☆☆☆☆%d\n[m"
    .balign 4

glabel D_80AE6658
    .asciz "\n\n"
    .balign 4

glabel D_80AE665C
    .asciz "../z_en_reeba.c"
    .balign 4

glabel D_80AE666C
    .asciz "../z_en_reeba.c"
    .balign 4

glabel D_80AE667C
    .float 0.04
    .balign 4

glabel D_80AE6680
 .word 0xC6D6D800
glabel jtbl_80AE6684
.word L80AE5170
.word L80AE517C
.word L80AE51A8
.word L80AE51A8
.word L80AE51E8
glabel D_80AE6698
    .float 0.15
    .balign 4

glabel D_80AE669C
 .word 0x3FE66666
glabel D_80AE66A0
    .float 0.01
    .balign 4

glabel D_80AE66A4
    .float 3000.0
    .balign 4

glabel D_80AE66A8
    .float 3000.0
    .balign 4

glabel jtbl_80AE66AC
.word L80AE60CC
.word L80AE6104
.word L80AE608C
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE5F5C
.word L80AE5F5C
.word L80AE5FB4
.word L80AE600C
.word 0x00000000, 0x00000000, 0x00000000


