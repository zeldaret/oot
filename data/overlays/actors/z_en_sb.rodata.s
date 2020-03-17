.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AF8A60
 .word 0xA5A2A5BF, 0xA5A1A1C1, 0xA5C3A5AF, 0xA1AAA1AA, 0x0A000000
glabel D_80AF8A74
    .asciz "[31m攻撃終了！！[m\n"
    .balign 4

glabel D_80AF8A8C
 .word 0xBEB33333
glabel D_80AF8A90
 .word 0x40066666
glabel D_80AF8A94
 .word 0x3FB33333
glabel D_80AF8A98
 .word 0xBEB33333
glabel D_80AF8A9C
 .word 0xBDCCCCCD
glabel D_80AF8AA0
 .word 0xBEB33333
glabel jtbl_80AF8AA4
.word L80AF82B0
.word func_80AF82F0
.word func_80AF832C
.word func_80AF8368
.word func_80AF8388
glabel jtbl_80AF8AB8
.word L80AF8538
.word L80AF8504
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF8538
.word L80AF8450
.word L80AF8458
.word 0x00000000, 0x00000000, 0x00000000


