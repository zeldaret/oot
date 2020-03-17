.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B2750
    .asciz "(spot11 爆弾壁)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B2774
 .word 0x3E4CCCCD
glabel D_808B2778
 .word 0x3ECCCCCD, 0x00000000


