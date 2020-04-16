.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80915140
 .word 0x4454310A, 0x00000000
glabel D_80915148
 .word 0x4454320A, 0x00000000
glabel D_80915150
    .asciz "SW %d------------------------------------------------\n"
    .balign 4

glabel D_80915188
    .asciz "RUN 1\n"
    .balign 4

glabel D_80915190
    .asciz "RUN 2\n"
    .balign 4

glabel D_80915198
    .asciz "RUN 3\n"
    .balign 4

glabel D_809151A0
    .asciz "RUN 4\n"
    .balign 4

glabel D_809151A8
    .asciz "this->fwork[GND_END_FRAME] = %d\n"
    .balign 4

glabel D_809151CC
    .asciz "this->work[GND_SHOT_FRAME] = %d\n"
    .balign 4

glabel D_809151F0
    .asciz "VOISE               2  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_8091522C
    .asciz "VOISE               2  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80915268
    .asciz "DAMAGE   .................................\n"
    .balign 4

glabel D_80915294
    .asciz "TIME0 %d ********************************************\n"
    .balign 4

glabel D_809152CC
    .asciz "YP %f @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n"
    .balign 4

glabel D_809152F8
    .asciz "PYP %f\n"
    .balign 4

glabel D_80915300
 .word 0x370A0000
glabel D_80915304
 .word 0x380A0000
glabel D_80915308
    .asciz "hit != 0 \n"
    .balign 4

glabel D_80915314
    .asciz "MOVE START %d\n"
    .balign 4

glabel D_80915324
    .asciz "MOVE START EEEEEEEEEEEEEEEEEEEEEE%d\n"
    .balign 4

glabel D_8091534C
    .asciz "MOVE END\n"
    .balign 4

glabel D_80915358
 .word 0x4620310A, 0x00000000
glabel D_80915360
    .asciz "F 15\n"
    .balign 4

glabel D_80915368
 .word 0x4620320A, 0x00000000
glabel D_80915370
    .asciz "../z_boss_ganondrof.c"
    .balign 4

glabel D_80915388
    .asciz "MOVE P = %x\n"
    .balign 4

glabel D_80915398
    .asciz "STOP TIMER = %d ==============\n"
    .balign 4

glabel D_809153B8
    .asciz "YP %f\n"
    .balign 4

glabel D_809153C0
    .asciz "DRAW 11\n"
    .balign 4

glabel D_809153CC
    .asciz "EYE_COL %d\n"
    .balign 4

glabel D_809153D8
    .asciz "DRAW 22\n"
    .balign 4

glabel D_809153E4
    .asciz "../z_boss_ganondrof.c"
    .balign 4

glabel D_809153FC
    .asciz "DRAW END %d\n"
    .balign 4

glabel D_8091540C
 .word 0xC54F3000
glabel D_80915410
 .word 0xC54F3000
glabel D_80915414
    .float 0.03
    .balign 4

glabel D_80915418
 .word 0x3F933333
glabel D_8091541C
    .float 0.8
    .balign 4

glabel D_80915420
 .word 0xC54F3000
glabel D_80915424
 .word 0xC54F3000
glabel D_80915428
 .word 0xC53EA000
glabel D_8091542C
 .word 0xC53EA000
glabel D_80915430
 .word 0xC541C000
glabel D_80915434
 .word 0xBDA3D70A
glabel D_80915438
    .float 0.1
    .balign 4

glabel D_8091543C
    .float 1.99000000954
    .balign 4

glabel D_80915440
 .word 0xBE4CCCCD
glabel D_80915444
 .word 0xC54F3000
glabel D_80915448
 .word 0x4622F983
glabel D_8091544C
    .float 10000.0
    .balign 4

glabel D_80915450
    .float 0.2
    .balign 4

glabel D_80915454
    .float 0.1
    .balign 4

glabel D_80915458
    .float 3.14159274101
    .balign 4

glabel jtbl_8091545C
.word L80912E00
.word L80912FB4
.word L809131C4
.word L80913424
.word L809134B4
.word L8091352C
glabel D_80915474
    .float 0.2
    .balign 4

glabel D_80915478
    .float 0.02
    .balign 4

glabel D_8091547C
    .float 0.05
    .balign 4

glabel D_80915480
    .float 0.05
    .balign 4

glabel D_80915484
    .float 0.05
    .balign 4

glabel D_80915488
 .word 0xC54F3000
glabel D_8091548C
 .word 0xC54F3000
glabel D_80915490
 .word 0xC54F3000
glabel D_80915494
 .word 0xC54F3000
glabel D_80915498
 .word 0xC54F3000
glabel D_8091549C
 .word 0xC54C1000
glabel D_809154A0
 .word 0xC54F3000
glabel D_809154A4
 .word 0xC54F3000
glabel D_809154A8
 .word 0xC542B000
glabel D_809154AC
 .word 0xBE4CCCCD
glabel D_809154B0
    .float 0.002
    .balign 4

glabel D_809154B4
 .word 0xC54F3000
glabel D_809154B8
    .float 0.002
    .balign 4

glabel D_809154BC
    .float 0.001
    .balign 4

glabel D_809154C0
    .float 0.001
    .balign 4

glabel D_809154C4
 .word func_809145BC
.word func_809145BC
.word func_809145BC
.word func_80914610
.word func_80914610
.word func_80914610
.word L80914678
.word L80914678
.word func_80914664
.word L80914678
.word L8091430C
.word L80914678
.word L80914678
.word L80914678
.word func_80914394
.word func_809143F0
.word func_8091444C
.word L80914678
.word func_809144A8
.word func_80914504
.word func_80914560
glabel D_80915518
 .word 0x40490FF9, 0x00000000


