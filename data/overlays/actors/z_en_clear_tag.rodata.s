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
    .float 6.28318548203
    .balign 4

glabel D_809DC0DC
    .float 6.28318548203
    .balign 4

glabel D_809DC0E0
    .float 0.15
    .balign 4

glabel D_809DC0E4
    .float 0.4
    .balign 4

glabel D_809DC0E8
 .word 0x38000100
glabel D_809DC0EC
    .float 6.28318548203
    .balign 4

glabel D_809DC0F0
 .word 0x4622F983
glabel D_809DC0F4
 .word 0x4622F983
glabel D_809DC0F8
    .float 0.2
    .balign 4

glabel D_809DC0FC
 .word 0x3FD33333
glabel D_809DC100
    .float 0.3
    .balign 4

glabel D_809DC104
    .float 0.3
    .balign 4

glabel D_809DC108
    .float 0.15
    .balign 4

glabel D_809DC10C
    .float 0.075
    .balign 4

glabel D_809DC110
    .float 0.05
    .balign 4

glabel D_809DC114
    .float 1.3
    .balign 4

glabel D_809DC118
 .word 0x3F933333
glabel D_809DC11C
 .word 0x3EB33333
glabel D_809DC120
    .float 3.14159274101
    .balign 4

glabel D_809DC124
    .float 3.14159274101
    .balign 4

glabel D_809DC128
    .float 3.14159274101
    .balign 4

glabel D_809DC12C
    .float 0.05
    .balign 4

glabel D_809DC130
 .word 0x3EB33333, 0x00000000, 0x00000000, 0x00000000

