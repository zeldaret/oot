.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A8020
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8034
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8048
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A805C
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8070
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8084
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8098
 .word 0x3A83126F
glabel D_809A809C
 .word 0x3C23D70A
glabel D_809A80A0
 .word 0x3C23D70A
glabel D_809A80A4
 .word 0x3A83126F
glabel D_809A80A8
 .word 0x3C23D70A
glabel D_809A80AC
 .word 0x3C23D70A


