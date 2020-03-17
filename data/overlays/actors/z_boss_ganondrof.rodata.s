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
 .word 0x52554E20, 0x310A0000
glabel D_80915190
 .word 0x52554E20, 0x320A0000
glabel D_80915198
 .word 0x52554E20, 0x330A0000
glabel D_809151A0
 .word 0x52554E20, 0x340A0000
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
 .word 0x4D4F5645, 0x20454E44, 0x0A000000
glabel D_80915358
 .word 0x4620310A, 0x00000000
glabel D_80915360
 .word 0x46203135, 0x0A000000
glabel D_80915368
 .word 0x4620320A, 0x00000000
glabel D_80915370
    .asciz "../z_boss_ganondrof.c"
    .balign 4

glabel D_80915388
 .word 0x4D4F5645, 0x2050203D, 0x2025780A, 0x00000000
glabel D_80915398
    .asciz "STOP TIMER = %d ==============\n"
    .balign 4

glabel D_809153B8
 .word 0x59502025, 0x660A0000
glabel D_809153C0
 .word 0x44524157, 0x2031310A, 0x00000000
glabel D_809153CC
    .asciz "EYE_COL %d\n"
    .balign 4

glabel D_809153D8
 .word 0x44524157, 0x2032320A, 0x00000000
glabel D_809153E4
    .asciz "../z_boss_ganondrof.c"
    .balign 4

glabel D_809153FC
 .word 0x44524157, 0x20454E44, 0x2025640A, 0x00000000
glabel D_8091540C
 .word 0xC54F3000
glabel D_80915410
 .word 0xC54F3000
glabel D_80915414
 .word 0x3CF5C28F
glabel D_80915418
 .word 0x3F933333
glabel D_8091541C
 .word 0x3F4CCCCD
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
 .word 0x3DCCCCCD
glabel D_8091543C
 .word 0x3FFEB852
glabel D_80915440
 .word 0xBE4CCCCD
glabel D_80915444
 .word 0xC54F3000
glabel D_80915448
 .word 0x4622F983
glabel D_8091544C
 .word 0x461C4000
glabel D_80915450
 .word 0x3E4CCCCD
glabel D_80915454
 .word 0x3DCCCCCD
glabel D_80915458
 .word 0x40490FDB
glabel jtbl_8091545C
.word L80912E00
.word L80912FB4
.word L809131C4
.word L80913424
.word L809134B4
.word L8091352C
glabel D_80915474
 .word 0x3E4CCCCD
glabel D_80915478
 .word 0x3CA3D70A
glabel D_8091547C
 .word 0x3D4CCCCD
glabel D_80915480
 .word 0x3D4CCCCD
glabel D_80915484
 .word 0x3D4CCCCD
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
 .word 0x3B03126F
glabel D_809154B4
 .word 0xC54F3000
glabel D_809154B8
 .word 0x3B03126F
glabel D_809154BC
 .word 0x3A83126F
glabel D_809154C0
 .word 0x3A83126F
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


