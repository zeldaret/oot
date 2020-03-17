.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B52900
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52910
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52920
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52930
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52940
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52950
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52960
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52970
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52980
    .asciz "En_Zl2_inAgain_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80B529B8
    .asciz "En_Zl2_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80B529F4
    .asciz "En_Zl2_inRunning_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80B52A30
    .asciz "[31m En_Oa2 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B52A74
    .asciz "[31mEn_Zl2_main_bankアニメーションのバンクを読めない!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B52ABC
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B52AF8
    .asciz "[31m描画前処理モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B52B38
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52B48
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52B58
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52B68
    .asciz "../z_en_zl2.c"
    .balign 4

glabel D_80B52B78
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B52BB0
 .word 0x455AC000
glabel D_80B52BB4
 .word 0xC47EC000
glabel D_80B52BB8
 .word 0x43E98000
glabel D_80B52BBC
 .word 0x43848000
glabel D_80B52BC0
 .word 0xC3D58000
glabel D_80B52BC4
 .word 0x43E98000
glabel D_80B52BC8
 .word 0x43848000
glabel D_80B52BCC
 .word 0xC3D58000
glabel D_80B52BD0
 .word 0x4474C000
glabel D_80B52BD4
 .word 0x3F99999A
glabel D_80B52BD8
 .word 0x4622F983
glabel jtbl_80B52BDC
.word L80B50A6C
.word L80B50A80
.word L80B50A94
.word L80B50AA8
.word L80B50ABC
.word L80B50AD0
.word L80B50AE4
.word L80B50AF8
.word L80B50B0C
.word L80B50B20
.word L80B50B34
.word L80B50B48
.word L80B50B5C
.word L80B50B70
.word L80B50B84
glabel jtbl_80B52C18
.word L80B519AC
.word L80B519BC
.word L80B51A34
.word L80B51A00
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B51A34
.word L80B519D0
.word L80B519E0
.word L80B519F0
.word L80B51A34
.word L80B51A10
.word L80B51A20
.word 0x00000000


