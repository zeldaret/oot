.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AC8EF0
 .word 0xA5B3A5AD, 0xA5EAA4CE, 0xC5B92020, 0x00000000
glabel D_80AC8F00
 .word 0xCCF4B2B0, 0x20202020, 0x20202020, 0x00000000
glabel D_80AC8F10
 .word 0xCCEBA4CE, 0xC5B92020, 0x20202020, 0x00000000
glabel D_80AC8F20
 .word 0xCFA9C3CF, 0xCEA2A4CE, 0xC5B92020, 0x00000000
glabel D_80AC8F30
 .word 0xBDE2A4CE, 0xC5B92020, 0x20202020, 0x00000000
glabel D_80AC8F40
 .word 0xC2E7BFCD, 0xA4CEC5B9, 0x20202020, 0x00000000
glabel D_80AC8F50
 .word 0xA5BFA5ED, 0xA5F3A4CE, 0xC5B92020, 0x00000000
glabel D_80AC8F60
 .word 0xA5BEA1BC, 0xA5E9A4CE, 0xC5B92020, 0x00000000
glabel D_80AC8F70
 .word 0xA5B4A5ED, 0xA5F3CCEB, 0xA4CEC5B9, 0x00000000
glabel D_80AC8F80
 .word 0xA5A4A5F3, 0xA5B4A1BC, 0xA4CEC5B9, 0x00000000
glabel D_80AC8F90
 .word 0xA4AACCCC, 0xB2B02020, 0x20202020, 0x00000000
glabel D_80AC8FA0
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80AC8FAC
    .asciz "引数がおかしいよ(arg_data=%d)！！\n"
    .balign 4

glabel D_80AC8FD0
 .word 0x1B5B6D00
glabel D_80AC8FD4
 .word 0x30000000
glabel D_80AC8FD8
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC8FE8
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80AC8FF4
    .asciz "バンクが無いよ！！(%s)\n"
    .balign 4

glabel D_80AC900C
 .word 0x1B5B6D00
glabel D_80AC9010
 .word 0x30000000
glabel D_80AC9014
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9024
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80AC9030
    .asciz "予備バンクが無いよ！！(%s)\n"
    .balign 4

glabel D_80AC904C
 .word 0x1B5B6D00
glabel D_80AC9050
 .word 0x30000000
glabel D_80AC9054
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9064
    .asciz "[33m%s[%d]:★★★ 会話終了！！ ★★★[m\n"
    .balign 4

glabel D_80AC9090
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC90A0
    .asciz "[33m★★★ 会話開始！！ ★★★[m\n"
    .balign 4

glabel D_80AC90C4
 .word 0xA1D6A5B9, 0xA5C6A5A3, 0xA5C3A5AF, 0xBAB8B1A6, 0xA4C7C9CA, 0xCAAAA4DF, 0xA4C6A4AF, 0xA4ECA1AA, 0xA1D70A00
glabel D_80AC90E8
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC9108
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9118
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC9138
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9148
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC9168
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9178
    .asciz "\n[33m初めて手にいれた！！[m\n\n"
    .balign 4

glabel D_80AC9198
    .asciz "[33m持ち上げ開始！！[m\n\n"
    .balign 4

glabel D_80AC91B4
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC91D4
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC91E4
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC9204
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9214
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC9234
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9244
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC9264
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC9274
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC9294
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC92A4
    .asciz "店主の依頼 ( %d )\n"
    .balign 4

glabel D_80AC92B8
    .asciz "%s[%d]:[32mズーム中！！[m\n"
    .balign 4

glabel D_80AC92D8
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC92E8
    .asciz "[33m★★★ 続けるよ！！ ★★★[m\n"
    .balign 4

glabel D_80AC930C
    .asciz "[33m★★★ やめるよ！！ ★★★[m\n"
    .balign 4

glabel D_80AC9330
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80AC933C
 .word 0xA1FAA1FA, 0xA1FA20B7, 0xD9B9F0A1, 0xAAA1AA20, 0xC3AAA4AC, 0xA4CAA4A4, 0xA4E8A1AA, 0xA1AA20A1, 0xFAA1FAA1, 0xFA0A0000
glabel D_80AC9364
 .word 0x1B5B6D00
glabel D_80AC9368
    .asciz "[33m◇◇◇ 店のおやじ( %d ) 初期設定 ◇◇◇[m\n"
    .balign 4

glabel D_80AC939C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC93AC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC93BC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC93CC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC93DC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC93EC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC93FC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC940C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC941C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC942C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC943C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC944C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC945C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC946C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC947C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC948C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC949C
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC94AC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC94BC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC94CC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC94DC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel D_80AC94EC
    .asciz "../z_en_oB1.c"
    .balign 4

glabel jtbl_80AC94FC
.word L80AC4198
.word L80AC4198
.word L80AC4198
.word L80AC4198
.word L80AC4184
.word L80AC41AC
.word L80AC4168
glabel jtbl_80AC9518
.word L80AC4918
.word L80AC4934
.word L80AC4934
.word L80AC4918
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC48C4
.word L80AC48E0
.word L80AC48FC
.word L80AC48FC
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC48A8
.word L80AC48A8
.word L80AC48A8
.word L80AC48A8
.word L80AC48A8
.word L80AC48A8
.word L80AC48A8
.word L80AC48A8
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4934
.word L80AC4918
.word L80AC4918
.word L80AC4918
glabel jtbl_80AC95CC
.word L80AC5070
.word L80AC50DC
.word L80AC512C
.word L80AC514C
.word L80AC516C
.word L80AC518C
glabel jtbl_80AC95E4
.word L80AC5B5C
.word L80AC5B74
.word L80AC5B8C
.word L80AC5BA4
.word L80AC5BB8
.word L80AC5BB8
.word L80AC5BB8
.word L80AC5BB8
glabel D_80AC9604
 .word 0x3F59999A
glabel D_80AC9608
 .word 0x3E19999A
glabel D_80AC960C
 .word 0x3D4CCCCD
glabel D_80AC9610
 .word 0x3D4CCCCD
glabel D_80AC9614
 .word 0x3D4CCCCD
glabel D_80AC9618
 .word 0x3D4CCCCD
glabel D_80AC961C
 .word 0x3DCCCCCD


