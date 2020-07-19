.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80993DC0
    # Construct failure
    .asciz "Demo_Tre_Lgt_Actor_ct();コンストラクト失敗\n"
    .balign 4

# unused
glabel D_80993DE4
    .asciz "1"
    .balign 4

# unused
glabel D_80993DE8
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

glabel D_80993E04
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

glabel D_80993E18
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

glabel D_80993E2C
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

glabel D_80993E40
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

