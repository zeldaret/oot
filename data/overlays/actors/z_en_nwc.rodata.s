.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80ABCAC0
    .asciz "../z_en_nwc.c"
    .balign 4

glabel D_80ABCAD0
    .asciz "../z_en_nwc.c"
    .balign 4

glabel D_80ABCAE0
    .asciz "../z_en_nwc.c"
    .balign 4

glabel D_80ABCAF0
    .asciz "../z_en_nwc.c"
    .balign 4

glabel D_80ABCB00
 .word 0x3DCCCCCD
glabel D_80ABCB04
 .word 0x47C34FF3
glabel D_80ABCB08
 .word 0x3C23D70A
glabel D_80ABCB0C
 .word 0x38C90FDB


