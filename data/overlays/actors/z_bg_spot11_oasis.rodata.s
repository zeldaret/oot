.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B2E70
    .asciz "../z_bg_spot11_oasis.c"
    .balign 4

glabel D_808B2E88
    .asciz "../z_bg_spot11_oasis.c"
    .balign 4

glabel D_808B2EA0
    .asciz "../z_bg_spot11_oasis.c"
    .balign 4

glabel D_808B2EB8
 .word 0x3DF5C28F
glabel D_808B2EBC
 .word 0x3CA3D70A
glabel D_808B2EC0
 .word 0x3E99999A
glabel D_808B2EC4
 .word 0x409CCCCD, 0x00000000, 0x00000000


