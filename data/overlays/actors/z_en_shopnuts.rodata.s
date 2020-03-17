.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AFB520
    .asciz "../z_en_shopnuts.c"
    .balign 4

glabel D_80AFB534
    .asciz "../z_en_shopnuts.c"
    .balign 4

glabel D_80AFB548
    .asciz "../z_en_shopnuts.c"
    .balign 4

glabel D_80AFB55C
 .word 0x3DAA9931
glabel D_80AFB560
 .word 0x3DEF0069
glabel D_80AFB564
 .word 0x3FD9999A
glabel D_80AFB568
 .word 0x3F333333
glabel D_80AFB56C
 .word 0x3E2AB368


