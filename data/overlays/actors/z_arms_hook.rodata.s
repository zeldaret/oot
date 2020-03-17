.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80865BC0
    .asciz "../z_arms_hook.c"
    .balign 4

glabel D_80865BD4
    .asciz "../z_arms_hook.c"
    .balign 4

glabel D_80865BE8
    .asciz "../z_arms_hook.c"
    .balign 4

glabel D_80865BFC
    .asciz "../z_arms_hook.c"
    .balign 4

glabel D_80865C10
 .word 0x38000100
glabel D_80865C14
 .word 0x3C75C28F
glabel D_80865C18
 .word 0x3C23D70A, 0x00000000


