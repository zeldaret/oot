.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A5EA0
    .asciz "森の神殿 obj. 落下天井 (home posY %f)\n"
    .balign 4

glabel D_808A5EC8
    .asciz "Warning : セット位置が変更されています。プログラムを修正しましょう。\n"
    .balign 4

glabel D_808A5F10
    .asciz "Warning : セット Angle が変更されています。プログラムを修正しましょう。\n"
    .balign 4

glabel D_808A5F5C
    .asciz "Error : 森の神殿 obj 落下天井 バンク危険！(%s %d)\n"
    .balign 4

glabel D_808A5F90
    .asciz "../z_bg_mori_rakkatenjo.c"
    .balign 4

glabel D_808A5FAC
    .asciz "camera changed (mori rakka tenjyo) ... \n"
    .balign 4

glabel D_808A5FD8
    .asciz "camera changed (previous) ... \n"
    .balign 4

glabel D_808A5FF8
    .asciz "../z_bg_mori_rakkatenjo.c"
    .balign 4

glabel D_808A6014
    .asciz "../z_bg_mori_rakkatenjo.c"
    .balign 4

glabel D_808A6030
    .asciz "../z_bg_mori_rakkatenjo.c"
    .balign 4

glabel D_808A604C
 .word 0x3A83126F
glabel D_808A6050
 .word 0x44F8E000
glabel D_808A6054
 .word 0x442AC000
glabel D_808A6058
 .word 0xC51D8000
glabel D_808A605C
 .word 0xC54E4000
glabel D_808A6060
 .word 0x44DFE000
glabel D_808A6064
 .word 0x4508F000
glabel D_808A6068
 .word 0x44DFE000
glabel D_808A606C
 .word 0x4508F000
glabel D_808A6070
 .word 0x442AC000
glabel D_808A6074
 .word 0x43C98000
glabel D_808A6078
 .word 0x43C98000
glabel D_808A607C
 .word 0x43C98000
glabel D_808A6080
 .word 0xBDCCCCCD
glabel D_808A6084
 .word 0x442AC000, 0x00000000, 0x00000000


