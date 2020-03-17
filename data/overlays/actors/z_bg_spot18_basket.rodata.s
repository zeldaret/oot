.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B85F0
 .word 0x1B5B3331, 0x6D000000
glabel D_808B85F8
    .asciz "Ｅｒｒｏｒ : 変化壷蓋発生失敗(%s %d)\n"
    .balign 4

glabel D_808B8620
    .asciz "../z_bg_spot18_basket.c"
    .balign 4

glabel D_808B8638
 .word 0x1B5B6D00
glabel D_808B863C
 .word 0x3C23D70A
glabel D_808B8640
 .word 0x3A1D4952
glabel D_808B8644
 .word 0x3A1D4952, 0x00000000, 0x00000000


