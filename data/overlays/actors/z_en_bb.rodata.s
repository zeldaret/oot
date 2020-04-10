.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809BBC30
    .asciz "../z_en_bb.c"
    .balign 4

glabel D_809BBC40
    .asciz "../z_en_bb.c"
    .balign 4

glabel D_809BBC50
    .asciz "../z_en_bb.c"
    .balign 4

glabel D_809BBC60
 .word 0x3DC08312
glabel D_809BBC64
    .float 0.075
    .balign 4

glabel D_809BBC68
    .float 0.8
    .balign 4

glabel jtbl_809BBC6C
.word L809B882C
.word L809B8858
.word L809B8764
.word L809B872C
.word L809B86E4
glabel D_809BBC80
    .float 0.1
    .balign 4

glabel D_809BBC84
    .float 0.1
    .balign 4

glabel D_809BBC88
    .float 1500.0
    .balign 4

glabel D_809BBC8C
    .float 0.2
    .balign 4

glabel D_809BBC90
 .word 0x477FFF00
glabel D_809BBC94
    .float 0.1
    .balign 4

glabel D_809BBC98
 .word 0xBF333333
glabel D_809BBC9C
 .word 0xBF87AE14
glabel D_809BBCA0
 .word 0x477FFF00
glabel D_809BBCA4
    .float 0.05
    .balign 4

glabel D_809BBCA8
    .float 0.01
    .balign 4

glabel D_809BBCAC
    .float 0.1
    .balign 4

glabel D_809BBCB0
    .float 0.05
    .balign 4

glabel D_809BBCB4
    .float 0.01
    .balign 4

glabel D_809BBCB8
    .float 0.002
    .balign 4

glabel D_809BBCBC
    .float 0.05
    .balign 4

glabel D_809BBCC0
    .float 0.1
    .balign 4

glabel D_809BBCC4
    .float 0.1
    .balign 4

glabel D_809BBCC8
    .float 1500.0
    .balign 4

glabel D_809BBCCC
 .word 0xBECCCCCD
glabel jtbl_809BBCD0
.word L809BB034
.word L809BB044
.word L809BB024
.word L809BB058
.word L809BB058
.word L809BB080
.word L809BB080
.word L809BB080
.word L809BB268
.word L809BB080
.word L809BB058
glabel D_809BBCFC
    .float 0.8
    .balign 4

glabel D_809BBD00
    .float 9.58738019108e-05
    .balign 4

glabel D_809BBD04
 .word 0x3C23D70A, 0x00000000, 0x00000000


