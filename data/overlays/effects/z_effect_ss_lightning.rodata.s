.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809AB560
    .asciz "../z_eff_ss_lightning.c"
    .balign 4

glabel D_809AB578
    .asciz "../z_eff_ss_lightning.c"
    .balign 4

glabel D_809AB590
 .word 0x3C23D70A
glabel D_809AB594
 .word 0x3F19999A
glabel D_809AB598
 .word 0x45638000
glabel D_809AB59C
 .word 0x3C23D70A
glabel D_809AB5A0
 .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000


