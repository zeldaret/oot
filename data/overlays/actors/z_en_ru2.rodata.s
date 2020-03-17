.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AF5140
    .asciz "../z_en_ru2_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80AF5164
    .asciz "../z_en_ru2_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80AF5188
    .asciz "En_Ru2_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.balign 4

glabel D_80AF51C4
 .word 0xA4AAA4EC, 0xA4ACBEAE, 0xBEBEA4C0, 0xA1AA200A, 0x00000000
glabel D_80AF51D8
 .word 0xA4A6A4AA, 0xA4EAA4E3, 0xA1BCA1AA, 0x200A0000
glabel D_80AF51E8
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.balign 4

glabel D_80AF5224
    .asciz "../z_en_ru2.c"
    .balign 4

glabel D_80AF5234
    .asciz "../z_en_ru2.c"
    .balign 4

glabel D_80AF5244
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80AF527C
 .word 0x42A6AAAB
glabel D_80AF5280
 .word 0xC61C4000, 0x00000000, 0x00000000, 0x00000000


