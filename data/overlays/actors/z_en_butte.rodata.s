.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809CE420
    .asciz "../z_en_choo.c"
    .balign 4

glabel D_809CE430
    .asciz "../z_en_choo.c"
    .balign 4

glabel D_809CE440
    .asciz "../z_en_choo.c"
    .balign 4

glabel D_809CE450
    .asciz "(field keep 蝶)(%x)(arg_data 0x%04x)\n"
    .balign 4

glabel D_809CE478
 .word 0x3F19999A
glabel D_809CE47C
 .word 0x3B449BA6
glabel D_809CE480
 .word 0x38C90FDB
glabel D_809CE484
 .word 0x38C90FDB
glabel D_809CE488
 .word 0x38C90FDB
glabel D_809CE48C
 .word 0x477FFF00
glabel D_809CE490
 .word 0x477FFF00
glabel D_809CE494
 .word 0x477FFF00
glabel D_809CE498
 .word 0x461C4000
glabel D_809CE49C
 .word 0x44992000
glabel D_809CE4A0
 .word 0x3E99999A
glabel D_809CE4A4
 .word 0x3ECCCCCD
glabel D_809CE4A8
 .word 0x3E4CCCCD
glabel D_809CE4AC
 .word 0x3E19999A
glabel D_809CE4B0
 .word 0x3E99999A
glabel D_809CE4B4
 .word 0x3E99999A
glabel D_809CE4B8
 .word 0x3E4CCCCD
glabel D_809CE4BC
 .word 0x3E19999A
glabel D_809CE4C0
 .word 0x3E99999A
glabel D_809CE4C4
 .word 0x3FE66666
glabel D_809CE4C8
 .word 0x459C4000, 0x00000000


