.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80AB8720
    .asciz "\x1b[33m☆☆☆☆☆ もういてる原 Ver.1 ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80AB8754
    .asciz "\x1b[33m☆☆☆☆☆ もういてる原 Ver.2 ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80AB8788
    .asciz "\x1b[33m 通常鶏index %d\n\x1b[m"
    .balign 4

glabel D_80AB87A4
    .asciz "\x1b[33m☆☆☆☆☆ どんな奴？ ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80AB87D4
    .asciz "\n\n"
    .balign 4

glabel D_80AB87D8
    .asciz "\n\n"
    .balign 4

glabel D_80AB87DC
    .asciz "\x1b[32m ☆☆☆☆☆ 発生できず  ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80AB880C
    .asciz "\x1b[32m☆☆☆☆☆ 上下？ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB8838
    .asciz "\x1b[31m☆☆☆☆☆ 範囲外Ｘ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB8868
    .asciz "\x1b[31m☆☆☆☆☆ 範囲外Ｙ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB8898
    .asciz "\x1b[31m☆☆☆☆☆ 範囲外Ｚ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB88C8
    .asciz "\x1b[32m☆☆☆☆☆ セットＸ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB88F8
    .asciz "\x1b[32m☆☆☆☆☆ セットＹ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB8928
    .asciz "\x1b[32m☆☆☆☆☆ セットＺ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB8958
    .asciz "\x1b[33m☆☆☆☆☆ 修整後Ｘ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB8988
    .asciz "\x1b[33m☆☆☆☆☆ 修整後Ｙ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB89B8
    .asciz "\x1b[33m☆☆☆☆☆ 修整後Ｚ！ ☆☆☆☆☆ %f\n\x1b[m"
    .balign 4

glabel D_80AB89E8
    .asciz "\n\n"
    .balign 4

glabel D_80AB89EC
    .asciz "\n\n"
    .balign 4

glabel D_80AB89F0
    .asciz "\x1b[33m☆☆☆☆☆ ぶくぶく ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80AB8A1C
    .asciz "\n\n"
    .balign 4

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
    .float 1530.0

glabel D_80AB8A54
    .float 3.99

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
    .float -10000.0

glabel jtbl_80AB8A94
    .word L80AB5D08
    .word L80AB5D14
    .word L80AB5D44
    .word L80AB5DA4
    .word L80AB5DD8
    .word L80AB5DE4

glabel D_80AB8AAC
    .float 7000.0

glabel D_80AB8AB0
    .float 25000.0

glabel D_80AB8AB4
    .float 6000.0

glabel D_80AB8AB8
    .float -10000.0

glabel D_80AB8ABC
    .float -10000.0

glabel D_80AB8AC0
    .float 10000.0

glabel D_80AB8AC4
    .float 3000.0

glabel D_80AB8AC8
    .float 14000.0

glabel D_80AB8ACC
    .float 10000.0

glabel D_80AB8AD0
    .float 0.3

glabel D_80AB8AD4
    .float 1.99000000954

glabel D_80AB8AD8
    .float 3.99

glabel D_80AB8ADC
    .float 3.99

glabel D_80AB8AE0
    .float 10430.378

glabel D_80AB8AE4
    .float 10430.378

glabel D_80AB8AE8
    .float 5000.0

glabel D_80AB8AEC
    .float 5000.0

glabel D_80AB8AF0
    .float 5000.0

glabel D_80AB8AF4
    .float 14000.0

glabel D_80AB8AF8
    .float 10000.0

glabel D_80AB8AFC
    .float 1.99000000954

glabel D_80AB8B00
    .float 1.99000000954

glabel D_80AB8B04
    .float 10430.378

glabel D_80AB8B08
    .float 3.99

glabel D_80AB8B0C
    .float -0.15

glabel D_80AB8B10
    .float 0.2

glabel D_80AB8B14
    .float 3.14159274101

glabel D_80AB8B18
    .float 0.05

