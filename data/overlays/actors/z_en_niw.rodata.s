.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AB8720
    .asciz "[33m☆☆☆☆☆ もういてる原 Ver.1 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80AB8754
    .asciz "[33m☆☆☆☆☆ もういてる原 Ver.2 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80AB8788
    .asciz "[33m 通常鶏index %d\n[m"
    .balign 4

.balign 4

glabel D_80AB87A4
    .asciz "[33m☆☆☆☆☆ どんな奴？ ☆☆☆☆☆ %d\n[m"
    .balign 4

.balign 4

glabel D_80AB87D4
 .word 0x0A0A0000
glabel D_80AB87D8
 .word 0x0A0A0000
glabel D_80AB87DC
    .asciz "[32m ☆☆☆☆☆ 発生できず  ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_80AB880C
    .asciz "[32m☆☆☆☆☆ 上下？ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB8838
    .asciz "[31m☆☆☆☆☆ 範囲外Ｘ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB8868
    .asciz "[31m☆☆☆☆☆ 範囲外Ｙ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB8898
    .asciz "[31m☆☆☆☆☆ 範囲外Ｚ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB88C8
    .asciz "[32m☆☆☆☆☆ セットＸ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB88F8
    .asciz "[32m☆☆☆☆☆ セットＹ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB8928
    .asciz "[32m☆☆☆☆☆ セットＺ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB8958
    .asciz "[33m☆☆☆☆☆ 修整後Ｘ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB8988
    .asciz "[33m☆☆☆☆☆ 修整後Ｙ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB89B8
    .asciz "[33m☆☆☆☆☆ 修整後Ｚ！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.balign 4

glabel D_80AB89E8
 .word 0x0A0A0000
glabel D_80AB89EC
 .word 0x0A0A0000
glabel D_80AB89F0
    .asciz "[33m☆☆☆☆☆ ぶくぶく ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_80AB8A1C
 .word 0x0A0A0000
glabel D_80AB8A20
    .asciz "../z_en_niw.c"
    .balign 4

glabel D_80AB8A30
    .asciz "../z_en_niw.c"
    .balign 4

glabel D_80AB8A40
    .asciz "../z_en_niw.c"
    .balign 4

glabel D_80AB8A50
 .word 0x44BF4000
glabel D_80AB8A54
 .word 0x407F5C29
glabel jtbl_80AB8A58
.word L80AB5A44
.word L80AB5A28
.word L80AB5A64
.word L80AB5AE8
.word L80AB5A84
.word L80AB5AF4
.word L80AB5AA4
.word L80AB5AF4
.word L80AB5AF4
.word L80AB5AF4
.word L80AB5AF4
.word L80AB5AF4
.word L80AB5AC4
.word L80AB5AD0
glabel D_80AB8A90
 .word 0xC61C4000
glabel jtbl_80AB8A94
.word L80AB5D08
.word L80AB5D14
.word L80AB5D44
.word L80AB5DA4
.word L80AB5DD8
.word L80AB5DE4
glabel D_80AB8AAC
 .word 0x45DAC000
glabel D_80AB8AB0
 .word 0x46C35000
glabel D_80AB8AB4
 .word 0x45BB8000
glabel D_80AB8AB8
 .word 0xC61C4000
glabel D_80AB8ABC
 .word 0xC61C4000
glabel D_80AB8AC0
 .word 0x461C4000
glabel D_80AB8AC4
 .word 0x453B8000
glabel D_80AB8AC8
 .word 0x465AC000
glabel D_80AB8ACC
 .word 0x461C4000
glabel D_80AB8AD0
 .word 0x3E99999A
glabel D_80AB8AD4
 .word 0x3FFEB852
glabel D_80AB8AD8
 .word 0x407F5C29
glabel D_80AB8ADC
 .word 0x407F5C29
glabel D_80AB8AE0
 .word 0x4622F983
glabel D_80AB8AE4
 .word 0x4622F983
glabel D_80AB8AE8
 .word 0x459C4000
glabel D_80AB8AEC
 .word 0x459C4000
glabel D_80AB8AF0
 .word 0x459C4000
glabel D_80AB8AF4
 .word 0x465AC000
glabel D_80AB8AF8
 .word 0x461C4000
glabel D_80AB8AFC
 .word 0x3FFEB852
glabel D_80AB8B00
 .word 0x3FFEB852
glabel D_80AB8B04
 .word 0x4622F983
glabel D_80AB8B08
 .word 0x407F5C29
glabel D_80AB8B0C
 .word 0xBE19999A
glabel D_80AB8B10
 .word 0x3E4CCCCD
glabel D_80AB8B14
 .word 0x40490FDB
glabel D_80AB8B18
 .word 0x3D4CCCCD, 0x00000000


