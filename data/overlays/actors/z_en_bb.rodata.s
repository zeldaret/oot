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
 .word 0x3D99999A
glabel D_809BBC68
 .word 0x3F4CCCCD
glabel jtbl_809BBC6C
.word L809B882C
.word L809B8858
.word L809B8764
.word L809B872C
.word L809B86E4
glabel D_809BBC80
 .word 0x3DCCCCCD
glabel D_809BBC84
 .word 0x3DCCCCCD
glabel D_809BBC88
 .word 0x44BB8000
glabel D_809BBC8C
 .word 0x3E4CCCCD
glabel D_809BBC90
 .word 0x477FFF00
glabel D_809BBC94
 .word 0x3DCCCCCD
glabel D_809BBC98
 .word 0xBF333333
glabel D_809BBC9C
 .word 0xBF87AE14
glabel D_809BBCA0
 .word 0x477FFF00
glabel D_809BBCA4
 .word 0x3D4CCCCD
glabel D_809BBCA8
 .word 0x3C23D70A
glabel D_809BBCAC
 .word 0x3DCCCCCD
glabel D_809BBCB0
 .word 0x3D4CCCCD
glabel D_809BBCB4
 .word 0x3C23D70A
glabel D_809BBCB8
 .word 0x3B03126F
glabel D_809BBCBC
 .word 0x3D4CCCCD
glabel D_809BBCC0
 .word 0x3DCCCCCD
glabel D_809BBCC4
 .word 0x3DCCCCCD
glabel D_809BBCC8
 .word 0x44BB8000
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
 .word 0x3F4CCCCD
glabel D_809BBD00
 .word 0x38C90FDB
glabel D_809BBD04
 .word 0x3C23D70A, 0x00000000, 0x00000000


