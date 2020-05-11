.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A5580
    .asciz "Effect_Ss_Fhg_Flash_ct():pffd->modeエラー\n"
    .balign 4

glabel D_809A55AC
    .asciz "../z_eff_fhg_flash.c"
    .balign 4

glabel D_809A55C4
    .asciz "../z_eff_fhg_flash.c"
    .balign 4

glabel D_809A55DC
    .asciz "../z_eff_fhg_flash.c"
    .balign 4

glabel D_809A55F4
    .asciz "../z_eff_fhg_flash.c"
    .balign 4

glabel D_809A560C
    .asciz "../z_eff_fhg_flash.c"
    .balign 4

glabel D_809A5624
    .asciz "../z_eff_fhg_flash.c"
    .balign 4

glabel D_809A563C
 .word 0x40490FF9
glabel D_809A5640
 .word 0x3F921FF3
glabel D_809A5644
 .word 0x40490FF9
glabel D_809A5648
 .word 0x469C4000
glabel D_809A564C
 .word 0x469C4000
glabel D_809A5650
 .word 0x418F3333
glabel D_809A5654
 .word 0x41BF3333, 0x00000000, 0x00000000


