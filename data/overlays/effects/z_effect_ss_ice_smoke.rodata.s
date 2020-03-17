.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A90C0
    .asciz "Effect_SS_Ice_Smoke_ct():バンク Object_Bank_Fzが有りません。\n"
    .balign 4

glabel D_809A9100
    .asciz "../z_eff_ss_ice_smoke.c"
    .balign 4

glabel D_809A9118
    .asciz "../z_eff_ss_ice_smoke.c"
    .balign 4

glabel D_809A9130
    .asciz "../z_eff_ss_ice_smoke.c"
    .balign 4

glabel D_809A9148
 .word 0x38D1B717, 0x00000000


