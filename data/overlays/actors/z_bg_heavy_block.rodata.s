.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80884EE0
    .asciz "[36m 最大 ブロック セーブビット %x\n[m"
    .balign 4

glabel D_80884F08
    .asciz "../z_bg_heavy_block.c"
    .balign 4

glabel D_80884F20
    .asciz "\"NA_SE_PL_PULL_UP_BIGROCK\" = %s\n"
    .balign 4

glabel D_80884F44
    .asciz "NA_SE_PL_PULL_UP_BIGROCK"
    .balign 4

glabel D_80884F60
    .asciz "../z_bg_heavy_block.c"
    .balign 4

glabel D_80884F78
    .asciz "../z_bg_heavy_block.c"
    .balign 4

glabel D_80884F90
    .asciz "../z_bg_heavy_block.c"
    .balign 4

glabel D_80884FA8
 .word 0xBF19999A
glabel D_80884FAC
 .word 0x3E4CCCCD
glabel jtbl_80884FB0
.word L80883BF8
.word L80883B2C
.word L80883A9C
.word L80883AE4
.word L80883B6C
glabel D_80884FC4
 .word 0x3F7AE148
glabel D_80884FC8
 .word 0x44D1C000
glabel D_80884FCC
 .word 0x44A0C000
glabel D_80884FD0
 .word 0x44D82000
glabel D_80884FD4
 .word 0x449EA000
glabel D_80884FD8
 .word 0xC437C000
glabel D_80884FDC
 .word 0xC555A000


