.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B4EB0
    .asciz "../z_en_arrow.c"
    .balign 4

glabel D_809B4EC0
    .asciz "this->at_info.cl_elem.at_btl_info.at_type = %x\n"
    .balign 4

glabel D_809B4EF0
    .asciz "../z_en_arrow.c"
    .balign 4

glabel D_809B4F00
    .asciz "../z_en_arrow.c"
    .balign 4

glabel D_809B4F10
    .asciz "../z_en_arrow.c"
    .balign 4

glabel jtbl_809B4F20
.word L809B3C50
.word L809B3C50
.word L809B3C50
.word L809B3C64
.word L809B3C64
.word L809B3C64
.word L809B3C70
.word L809B3C70
.word L809B3C70
.word L809B3C3C
glabel D_809B4F48
 .word 0x3ECCCCCD
glabel D_809B4F4C
 .word 0x3D23D70A
glabel D_809B4F50
 .word 0x3E99999A
glabel D_809B4F54
 .word 0x40E66667
glabel D_809B4F58
 .word 0xBECCCCCD
glabel D_809B4F5C
 .word 0x38C90FDB
glabel D_809B4F60
 .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000


