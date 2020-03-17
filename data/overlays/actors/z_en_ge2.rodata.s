.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A343D0
 .word 0x30000000
glabel D_80A343D4
    .asciz "../z_en_ge2.c"
    .balign 4

glabel D_80A343E4
    .asciz "[32m発見!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80A34400
    .asciz "[32m発見!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80A3441C
    .asciz "../z_en_ge2.c"
    .balign 4

glabel D_80A3442C
 .word 0x2E2E2F7A, 0x5F656E5F, 0x6765322E, 0x63000000, 0x00000000


