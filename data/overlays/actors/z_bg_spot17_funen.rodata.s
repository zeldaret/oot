.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B7630
    .asciz "spot17 obj. 噴煙 (arg_data 0x%04x)\n"
    .balign 4

glabel D_808B7654
    .asciz "../z_bg_spot17_funen.c"
    .balign 4

glabel D_808B766C
    .asciz "../z_bg_spot17_funen.c"
    .balign 4

glabel D_808B7684
    .asciz "../z_bg_spot17_funen.c"
    .balign 4

glabel D_808B769C
 .word 0x38C90FDB


