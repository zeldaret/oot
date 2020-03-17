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
 .word 0x0A0A0000
glabel D_80AE6628
    .asciz "[32m☆☆☆☆☆ 何匹ＤＥＡＤ？ ☆☆☆☆☆%d\n[m"
    .balign 4

glabel D_80AE6658
 .word 0x0A0A0000
glabel D_80AE665C
    .asciz "../z_en_reeba.c"
    .balign 4

glabel D_80AE666C
    .asciz "../z_en_reeba.c"
    .balign 4

glabel D_80AE667C
 .word 0x3D23D70A
glabel D_80AE6680
 .word 0xC6D6D800
glabel jtbl_80AE6684
.word L80AE5170
.word L80AE517C
.word L80AE51A8
.word L80AE51A8
.word L80AE51E8
glabel D_80AE6698
 .word 0x3E19999A
glabel D_80AE669C
 .word 0x3FE66666
glabel D_80AE66A0
 .word 0x3C23D70A
glabel D_80AE66A4
 .word 0x453B8000
glabel D_80AE66A8
 .word 0x453B8000
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


