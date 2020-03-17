.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B5A5A0
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5A5B0
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5A5C0
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5A5D0
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5A5E0
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5A5F0
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5A600
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5A610
    .asciz "ゼルダ姫のEn_Zl3_Actor_inFinal_Init通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A654
    .asciz "ゼルダ姫のEn_Zl3_Actor_inFinal_Initは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A69C
    .asciz "En_Zl3_inFinal_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80B5A6D4
    .asciz "ゼルダ姫のEn_Zl3_Actor_inFinal2_Init通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A71C
    .asciz "ゼルダ姫のEn_Zl3_Actor_inFinal2_Initは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A764
    .asciz "En_Zl3_inFinal2_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80B5A7A0
    .asciz "En_Zl3_Get_path_info レールデータをゲットだぜ = %d!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A7E4
    .asciz "En_Zl3_Get_path_info レールデータが無い!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A824
    .asciz "../z_en_zl3_inEscape.c"
    .balign 4

glabel D_80B5A83C
    .asciz "../z_en_zl3_inEscape.c"
    .balign 4

glabel D_80B5A854
    .asciz "../z_en_zl3_inEscape.c"
    .balign 4

glabel D_80B5A86C
    .asciz "../z_en_zl3_inEscape.c"
    .balign 4

glabel D_80B5A884
    .asciz "../z_en_zl3_inEscape.c"
    .balign 4

glabel D_80B5A89C
    .asciz "../z_en_zl3_inEscape.c"
    .balign 4

glabel D_80B5A8B4
    .asciz "../z_en_zl3_inEscape.c"
    .balign 4

glabel D_80B5A8CC
    .asciz "[31m En_Oa3 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B5A910
    .asciz "[31mEn_Zl3_main_bankアニメーションのバンクを読めない!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B5A958
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B5A994
    .asciz "ゼルダ姫のEn_Zl3_Actor_ct通すよ!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A9D0
    .asciz "ゼルダ姫のEn_Zl3_Actor_ctは通った!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5AA0C
    .asciz "[31m描画前処理モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B5AA4C
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5AA5C
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5AA6C
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5AA7C
    .asciz "../z_en_zl3.c"
    .balign 4

glabel D_80B5AA8C
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B5AAC4
 .word 0x45803000
glabel D_80B5AAC8
 .word 0xC3B98000
glabel D_80B5AACC
 .word 0xC62BE000
glabel D_80B5AAD0
 .word 0x45C1C000
glabel D_80B5AAD4
 .word 0xC5A28000
glabel D_80B5AAD8
 .word 0x45834000
glabel D_80B5AADC
 .word 0xC5ED8000
glabel D_80B5AAE0
 .word 0x46A41000
glabel D_80B5AAE4
 .word 0xC5DAC000
glabel D_80B5AAE8
 .word 0xC5DAC000
glabel D_80B5AAEC
 .word 0xC47EC000
glabel D_80B5AAF0
 .word 0x43E98000
glabel D_80B5AAF4
 .word 0x43848000
glabel D_80B5AAF8
 .word 0xC3D58000
glabel D_80B5AAFC
 .word 0x43E98000
glabel D_80B5AB00
 .word 0x43848000
glabel D_80B5AB04
 .word 0xC3D58000
glabel jtbl_80B5AB08
.word L80B55490
.word L80B554A0
.word L80B55510
.word L80B554BC
.word L80B554CC
.word L80B554DC
.word L80B554EC
.word L80B554FC
.word L80B55520
glabel D_80B5AB2C
 .word 0x404A5E38
glabel D_80B5AB30
 .word 0xBFCDBF48
glabel D_80B5AB34
 .word 0x404A5E38
glabel D_80B5AB38
 .word 0xBFCDBF48
glabel D_80B5AB3C
 .word 0xBC47E000
glabel D_80B5AB40
 .word 0x3DFCD6EA
glabel D_80B5AB44
 .word 0x3DFCD6EA
glabel jtbl_80B5AB48
.word L80B56544
.word L80B56554
.word L80B56564
.word L80B56574
.word L80B56584
.word L80B56594
.word L80B565A4
.word L80B565B4
.word L80B565C4
.word L80B565D4
.word L80B565E4
.word L80B565F4
.word L80B56604
.word L80B56614
.word L80B56624
glabel D_80B5AB84
 .word 0x4622F983
glabel D_80B5AB88
 .word 0x4622F983
glabel D_80B5AB8C
 .word 0x4622F983
glabel D_80B5AB90
 .word 0x4622F983
glabel D_80B5AB94
 .word 0xC39E8000
glabel D_80B5AB98
 .word 0xC47EC000
glabel D_80B5AB9C
 .word 0x455D8000


