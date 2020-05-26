.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809AA5C0
    .asciz "shape_modelがNULL\n"
    .balign 4

glabel D_809AA5D4
    .asciz "../z_eff_kakera.c"
    .balign 4

glabel D_809AA5E8
    .asciz "範囲がマイナス！！(randomD_sectionUniformity)\n"
    .balign 4

glabel D_809AA618
    .asciz "../z_eff_kakera.c"
    .balign 4

glabel D_809AA62C
    .asciz "../z_eff_kakera.c"
    .balign 4

glabel D_809AA640
    .asciz "../z_eff_kakera.c"
    .balign 4

glabel D_809AA654
    .asciz "../z_eff_kakera.c"
    .balign 4

glabel D_809AA668
 .word 0x46FFFE00
glabel D_809AA66C
 .word 0x46FFFE00
glabel D_809AA670
    .float 0.01
    .balign 4

glabel D_809AA674
    .float 0.01
    .balign 4

glabel D_809AA678
    .float 0.01
    .balign 4

glabel D_809AA67C
    .float 0.9
    .balign 4

glabel D_809AA680
    .float 0.2
    .balign 4

glabel D_809AA684
    .float -0.8
    .balign 4

glabel D_809AA688
    .float 0.9
    .balign 4

glabel D_809AA68C
    .float 0.2
    .balign 4



