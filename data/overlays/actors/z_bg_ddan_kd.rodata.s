.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80871920

    .asciz "dam    %d\n"
    .balign 4

glabel D_8087192C
 .word 0x3BF5C28F
glabel D_80871930
 .word 0x3F19999A, 0x00000000, 0x00000000, 0x00000000


