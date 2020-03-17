.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B07200
    .asciz "../z_en_st.c"
    .balign 4

glabel D_80B07210
    .asciz "../z_en_st.c"
    .balign 4

glabel D_80B07220
 .word 0x40490FDB
glabel D_80B07224
 .word 0x3FB33333
glabel D_80B07228
 .word 0x3D23D70A
glabel D_80B0722C
 .word 0x3F19999A
glabel D_80B07230
 .word 0x3EEEEEEF
glabel D_80B07234
 .word 0x43360B61
glabel D_80B07238
 .word 0x38C90FDB, 0x00000000


