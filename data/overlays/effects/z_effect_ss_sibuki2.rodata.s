.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809AC090
    .asciz "../z_eff_ss_sibuki2.c"
    .balign 4

glabel D_809AC0A8
    .asciz "../z_eff_ss_sibuki2.c"
    .balign 4

glabel D_809AC0C0
 .word 0x2E2E2F7A, 0x5F656666, 0x5F73735F, 0x73696275, 0x6B69322E, 0x63000000, 0x00000000, 0x00000000


