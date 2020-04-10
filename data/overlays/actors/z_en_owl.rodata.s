.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80ACD650
    .asciz "[36m 会話フクロウ %4x no = %d, sv = %d\n[m"
    .balign 4

glabel D_80ACD67C
    .asciz "savebitでフクロウ退避\n"
    .balign 4

glabel D_80ACD694
 .word 0xA5D5A5AF, 0xA5EDA5A6, 0xC2E0C8F2, 0x0A000000
glabel D_80ACD6A4
 .word 0xA5D5A5AF, 0xA5EDA5A6, 0xC2E0C8F2, 0x0A000000
glabel D_80ACD6B4
 .word 0xA5D5A5AF, 0xA5EDA5A6, 0xC2E0C8F2, 0x0A000000
glabel D_80ACD6C4
 .word 0xA5D5A5AF, 0xA5EDA5A6, 0xC2E0C8F2, 0x0A000000
glabel D_80ACD6D4
 .word 0xA5D5A5AF, 0xA5EDA5A6, 0xC2E0C8F2, 0x0A000000
glabel D_80ACD6E4
    .asciz "[36m"
    .balign 4

glabel D_80ACD6EC
    .asciz "no = %d  \n"
    .balign 4

glabel D_80ACD6F8
 .word 0xCCA4B4B0, 0xC0AEA4CE, 0xA5D5A5AF, 0xA5EDA5A6, 0xCCA4B4B0, 0xC0AEA4CE, 0xA5D5A5AF, 0xA5EDA5A6, 0xCCA4B4B0, 0xC0AEA4CE, 0xA5D5A5AF, 0xA5EDA5A6, 0x0A000000
glabel D_80ACD72C
    .asciz "\x1b[m"
    .balign 4

glabel D_80ACD730
    .asciz "[36m Actor_Environment_sw = %d\n[m"
    .balign 4

glabel D_80ACD754
    .asciz "[36m"
    .balign 4

glabel D_80ACD75C
    .asciz "%dのフクロウ\n"
    .balign 4

glabel D_80ACD76C
    .asciz "\x1b[m"
    .balign 4

glabel D_80ACD770
    .asciz "[36m"
    .balign 4

glabel D_80ACD778
    .asciz "SPOT 06 の デモがはしった\n"
    .balign 4

glabel D_80ACD794
    .asciz "\x1b[m"
    .balign 4

glabel D_80ACD798
 .word 0x30000000
glabel D_80ACD79C
    .asciz "../z_en_owl.c"
    .balign 4

glabel D_80ACD7AC
 .word 0xA5D5A5AF, 0xA5EDA5A6, 0xBEC3CCC7, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21210A00
glabel D_80ACD7DC
    .asciz "../z_en_owl.c"
    .balign 4

glabel D_80ACD7EC
    .asciz "../z_en_owl.c"
    .balign 4

glabel jtbl_80ACD7FC
.word L80ACA110
.word L80ACA12C
.word L80ACA13C
.word L80ACA160
.word L80ACA1A0
.word L80ACA1E0
.word L80ACA1F0
.word L80ACA244
.word L80ACA264
.word L80ACA274
.word L80ACA284
.word L80ACA294
.word L80ACA2DC
glabel jtbl_80ACD830
.word L80ACBAFC
.word L80ACBB38
.word L80ACBB80
.word L80ACBBC8
.word L80ACBBE4
glabel D_80ACD844
    .float 6000.0
    .balign 4

glabel D_80ACD848
    .float 0.4
    .balign 4

glabel D_80ACD84C
    .float 0.2
    .balign 4

glabel D_80ACD850
    .float 0.2
    .balign 4

glabel D_80ACD854
    .float 0.3
    .balign 4

glabel D_80ACD858
    .float 5000.0
    .balign 4

glabel D_80ACD85C
    .float 5000.0
    .balign 4

glabel D_80ACD860
 .word 0x459C4000, 0x00000000, 0x00000000, 0x00000000


