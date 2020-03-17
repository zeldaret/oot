.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809DBFA0
    .asciz "DEMO_MODE %d\n"
    .balign 4

glabel D_809DBFB0
    .asciz "CAMERA_NO %d\n"
    .balign 4

glabel D_809DBFC0
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DBFD4
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DBFE8
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DBFFC
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC010
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC024
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC038
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC04C
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC060
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC074
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC088
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC09C
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC0B0
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC0C4
    .asciz "../z_en_clear_tag.c"
    .balign 4

glabel D_809DC0D8
 .word 0x40C90FDB
glabel D_809DC0DC
 .word 0x40C90FDB
glabel D_809DC0E0
 .word 0x3E19999A
glabel D_809DC0E4
 .word 0x3ECCCCCD
glabel D_809DC0E8
 .word 0x38000100
glabel D_809DC0EC
 .word 0x40C90FDB
glabel D_809DC0F0
 .word 0x4622F983
glabel D_809DC0F4
 .word 0x4622F983
glabel D_809DC0F8
 .word 0x3E4CCCCD
glabel D_809DC0FC
 .word 0x3FD33333
glabel D_809DC100
 .word 0x3E99999A
glabel D_809DC104
 .word 0x3E99999A
glabel D_809DC108
 .word 0x3E19999A
glabel D_809DC10C
 .word 0x3D99999A
glabel D_809DC110
 .word 0x3D4CCCCD
glabel D_809DC114
 .word 0x3FA66666
glabel D_809DC118
 .word 0x3F933333
glabel D_809DC11C
 .word 0x3EB33333
glabel D_809DC120
 .word 0x40490FDB
glabel D_809DC124
 .word 0x40490FDB
glabel D_809DC128
 .word 0x40490FDB
glabel D_809DC12C
 .word 0x3D4CCCCD
glabel D_809DC130
 .word 0x3EB33333, 0x00000000, 0x00000000, 0x00000000

