.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AB0C70
    .asciz "../z_en_mu.c"
    .balign 4

glabel D_80AB0C80
    .asciz "../z_en_mu.c"
    .balign 4

glabel jtbl_80AB0C90
.word L80AB05FC
.word L80AB05FC
.word L80AB0604
.word L80AB05FC
.word L80AB05FC
.word L80AB05FC
.word L80AB05FC
.word L80AB05FC
.word L80AB05FC
.word L80AB05FC
.word 0x00000000, 0x00000000


