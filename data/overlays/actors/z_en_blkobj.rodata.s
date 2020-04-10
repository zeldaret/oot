.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809C25B0
    .asciz "../z_en_blkobj.c"
    .balign 4

glabel D_809C25C4
    .asciz "../z_en_blkobj.c"
    .balign 4

glabel D_809C25D8
    .asciz "../z_en_blkobj.c"
    .balign 4

glabel D_809C25EC
    .asciz "../z_en_blkobj.c"
    .balign 4

glabel D_809C2600
    .asciz "../z_en_blkobj.c"
    .balign 4

.align 4

