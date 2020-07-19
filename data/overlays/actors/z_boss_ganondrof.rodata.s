.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80915140
    .asciz "DT1\n"
    .balign 4

glabel D_80915148
    .asciz "DT2\n"
    .balign 4

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
    .asciz "7\n"
    .balign 4

glabel D_80915304
    .asciz "8\n"
    .balign 4

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
    .asciz "F 1\n"
    .balign 4

glabel D_80915360
    .asciz "F 15\n"
    .balign 4

glabel D_80915368
    .asciz "F 2\n"
    .balign 4

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
    .float -3315.0

glabel D_80915410
    .float -3315.0

glabel D_80915414
    .float 0.03

glabel D_80915418
    .float 1.14999997

glabel D_8091541C
    .float 0.8

glabel D_80915420
    .float -3315.0

glabel D_80915424
    .float -3315.0

glabel D_80915428
    .float -3050.0

glabel D_8091542C
    .float -3050.0

glabel D_80915430
    .float -3100.0

glabel D_80915434
    .float -0.079999998

glabel D_80915438
    .float 0.1

glabel D_8091543C
    .float 1.99000000954

glabel D_80915440
    .float -0.2

glabel D_80915444
    .float -3315.0

glabel D_80915448
    .float 10430.3779

glabel D_8091544C
    .float 10000.0

glabel D_80915450
    .float 0.2

glabel D_80915454
    .float 0.1

glabel D_80915458
    .float 3.14159274101

glabel jtbl_8091545C
    .word L80912E00
    .word L80912FB4
    .word L809131C4
    .word L80913424
    .word L809134B4
    .word L8091352C

glabel D_80915474
    .float 0.2

glabel D_80915478
    .float 0.02

glabel D_8091547C
    .float 0.05

glabel D_80915480
    .float 0.05

glabel D_80915484
    .float 0.05

glabel D_80915488
    .float -3315.0

glabel D_8091548C
    .float -3315.0

glabel D_80915490
    .float -3315.0

glabel D_80915494
    .float -3315.0

glabel D_80915498
    .float -3315.0

glabel D_8091549C
    .float -3265.0

glabel D_809154A0
    .float -3315.0

glabel D_809154A4
    .float -3315.0

glabel D_809154A8
    .float -3115.0

glabel D_809154AC
    .float -0.2

glabel D_809154B0
    .float 0.002

glabel D_809154B4
    .float -3315.0

glabel D_809154B8
    .float 0.002

glabel D_809154BC
    .float 0.001

glabel D_809154C0
    .float 0.001

glabel jtbl_80A3F02C
    .word L809145BC
    .word L809145BC
    .word L809145BC
    .word L80914610
    .word L80914610
    .word L80914610
    .word L80914678
    .word L80914678
    .word L80914664
    .word L80914678
    .word L8091430C
    .word L80914678
    .word L80914678
    .word L80914678
    .word L80914394
    .word L809143F0
    .word L8091444C
    .word L80914678
    .word L809144A8
    .word L80914504
    .word L80914560

glabel D_80915518
    .float 3.14159989357

