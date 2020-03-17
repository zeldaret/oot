.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B2CFF0
    .asciz "bank_ID >= 0"
    .balign 4

glabel D_80B2D000
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D014
    .asciz "this->anime_bank_ID >= 0"
    .balign 4

glabel D_80B2D030
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D044
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D058
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D06C
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D080
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D094
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D0A8
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D0BC
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D0D0
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D0E4
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D0F8
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D10C
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D120
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D134
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D148
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D15C
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D170
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D184
 .word 0x461C4000
glabel D_80B2D188
 .word 0x44994000
glabel jtbl_80B2D18C
.word L80B2AC10
.word L80B2AC38
.word L80B2AC60
.word L80B2AC8C
.word L80B2ACB4
.word L80B2ACE0
.word L80B2AD0C
.word L80B2AD44
glabel D_80B2D1AC
 .word 0x45228000
glabel D_80B2D1B0
 .word 0x44FE6000
glabel D_80B2D1B4
 .word 0x3A83126F
glabel D_80B2D1B8
 .word 0x3A83126F
glabel D_80B2D1BC
 .word 0x3DCCCCCD
glabel D_80B2D1C0
 .word 0x3C23D70A
glabel D_80B2D1C4
 .word 0xC61C4000
glabel D_80B2D1C8
 .word 0x40490FDB, 0x00000000

