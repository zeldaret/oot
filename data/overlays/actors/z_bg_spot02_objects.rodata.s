.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808AD8C0
    .asciz "../z_bg_spot02_objects.c"
    .balign 4

glabel D_808AD8DC
    .asciz "../z_bg_spot02_objects.c"
    .balign 4

glabel D_808AD8F8
    .asciz "../z_bg_spot02_objects.c"
    .balign 4

glabel D_808AD914
    .asciz "../z_bg_spot02_objects.c"
    .balign 4

glabel D_808AD930
    .asciz "../z_bg_spot02_objects.c"
    .balign 4

glabel D_808AD94C
    .asciz "../z_bg_spot02_objects.c"
    .balign 4

glabel jtbl_808AD968
.word L808AC6BC
.word L808AC6BC
.word L808AC6BC
.word L808AC824
.word L808AC87C
glabel D_808AD97C
 .word 0x38C90FDB
glabel D_808AD980
 .word 0x38C90FDB
glabel D_808AD984
 .word 0x38C90FDB
glabel D_808AD988
 .word 0x3BB400B9
glabel D_808AD98C
 .word 0x38C90FDB
glabel D_808AD990
 .word 0x38C90FDB
glabel D_808AD994
 .word 0x3F666666
glabel D_808AD998
 .word 0x3DCCCCCD, 0x00000000


