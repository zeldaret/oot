.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809CA830
    .asciz "Actor_Environment_Tbox_On() %d\n"
    .balign 4

glabel D_809CA850
    .asciz "../z_en_box.c"
    .balign 4

glabel D_809CA860
    .asciz "../z_en_box.c"
    .balign 4

glabel D_809CA870
    .asciz "gfxp != NULL"
    .balign 4

glabel D_809CA880
    .asciz "../z_en_box.c"
    .balign 4

glabel D_809CA890
    .asciz "gfxp != NULL"
    .balign 4

glabel D_809CA8A0
    .asciz "../z_en_box.c"
    .balign 4

glabel D_809CA8B0
    .asciz "gfxp != NULL"
    .balign 4

glabel D_809CA8C0
    .asciz "../z_en_box.c"
    .balign 4

glabel D_809CA8D0
    .asciz "../z_en_box.c"
    .balign 4

glabel D_809CA8E0
    .asciz "../z_en_box.c"
    .balign 4

glabel D_809CA8F0
 .word 0x3F0CCCCD
glabel D_809CA8F4
 .word 0x3F266666
glabel D_809CA8F8
 .word 0x46AFC800
glabel D_809CA8FC
 .word 0x387BA882
glabel D_809CA900
 .word 0x3E99999A
glabel D_809CA904
 .word 0x3F4CCCCD
glabel D_809CA908
 .word 0x3FE66666
glabel D_809CA90C
 .word 0x3FCCCCCD
glabel D_809CA910
 .word 0x3FE66666, 0x00000000, 0x00000000, 0x00000000


