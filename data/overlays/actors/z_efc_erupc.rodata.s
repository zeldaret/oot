.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8099D790
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D7A4
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D7B8
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D7CC
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D7E0
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D7F4
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D808
    .asciz "../z_efc_erupc.c"
    .balign 4

glabel D_8099D81C
 .word 0x3DCCCCCD
glabel D_8099D820
 .word 0x3F4CCCCD
glabel D_8099D824
 .word 0x4059999A, 0x00000000, 0x00000000


