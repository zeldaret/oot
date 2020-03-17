.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8086CDB0

    .asciz "Bg_Bdan_Objects_Get_Contact_Ru1\nそんな受信モードは無い%d!!!!!!!!\n"
    .balign 4

glabel D_8086CDF4

    .asciz "Bg_Bdan_Objects_Set_Contact_Ru1\nそんな送信モードは無い%d!!!!!!!!\n"
    .balign 4

glabel D_8086CE38
 .word 0x43838000
glabel D_8086CE3C
 .word 0xC48D4000
glabel D_8086CE40
 .word 0xC4802000
glabel D_8086CE44
 .word 0xC54E4000
glabel D_8086CE48
 .word 0x3DCCCCCD
glabel D_8086CE4C
 .word 0xC48D4000
glabel D_8086CE50
 .word 0xC4802000
glabel D_8086CE54
 .word 0xC55AC000
glabel D_8086CE58
 .word 0x44714000
glabel D_8086CE5C
 .word 0x3E4CCCCD
glabel D_8086CE60
 .word 0x3C23D70A
glabel D_8086CE64
 .word 0x3C490FDB
glabel D_8086CE68
 .word 0x43EB9EB8
glabel D_8086CE6C
 .word 0x3D80ADFD


