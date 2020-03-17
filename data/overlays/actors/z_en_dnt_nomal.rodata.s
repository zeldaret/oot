.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809F5EB0
 .word 0x0A0A0000
glabel D_809F5EB4
    .asciz "[32m☆☆☆☆☆ デグナッツ的当て ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809F5EE8
 .word 0x0A0A0000
glabel D_809F5EEC
    .asciz "[32m☆☆☆☆☆ デグナッツお面品評会一般人 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809F5F28
    .asciz "[35m なにみの？ %d\n[m\n"
    .balign 4

glabel D_809F5F44
    .asciz "[36m バンクおかしいしぞ！%d\n[m\n"
    .balign 4

glabel D_809F5F68
    .asciz "[36m☆☆☆☆☆ 大当り ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809F5F94
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F5FA8
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F5FBC
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F5FD0
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F5FE4
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F5FF8
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F600C
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F6020
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F6034
 .word 0x44A78000
glabel D_809F6038
 .word 0x44A78000
glabel D_809F603C
 .word 0x44A7E000
glabel D_809F6040
 .word 0x4622F983
glabel D_809F6044
 .word 0x4622F983
glabel D_809F6048
 .word 0x4622F983
glabel D_809F604C
 .word 0x4622F983
glabel D_809F6050
 .word 0x4622F983
glabel D_809F6054
 .word 0x3FFEB852
glabel D_809F6058
 .word 0x407F5C29
glabel D_809F605C
 .word 0x4622F983
glabel D_809F6060
 .word 0x40490FDB
glabel D_809F6064
 .word 0x40490FDB
glabel D_809F6068
 .word 0x4622F983
glabel jtbl_809F606C
.word L809F57B0
.word L809F56EC
.word L809F5714
.word L809F576C
.word L809F5784
.word L809F5794
.word L809F57A4
glabel D_809F6088
 .word 0x3C23D70A
glabel D_809F608C
 .word 0x3C23D70A


