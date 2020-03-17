.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B1D5B0
    .asciz "../z_en_tk_eff.c"
    .balign 4

glabel D_80B1D5C4
    .asciz "../z_en_tk_eff.c"
    .balign 4

glabel D_80B1D5D8
    .asciz "../z_en_tk_eff.c"
    .balign 4

glabel D_80B1D5EC
    .asciz "../z_en_tk.c"
    .balign 4

glabel D_80B1D5FC
    .asciz "../z_en_tk.c"
    .balign 4

glabel D_80B1D60C
    .asciz "../z_en_tk.c"
    .balign 4

glabel D_80B1D61C
    .asciz "../z_en_tk.c"
    .balign 4

glabel D_80B1D62C
 .word 0x3E4CCCCD
glabel D_80B1D630
 .word 0x3ECCCCCD
glabel D_80B1D634
 .word 0x461C4000
glabel D_80B1D638
 .word 0x452AAAAB
glabel D_80B1D63C
 .word 0x4622F983
glabel jtbl_80B1D640
.word L80B1C724
.word L80B1C724
.word L80B1C5EC
.word L80B1C724
.word L80B1C614
.word L80B1C6E4
.word L80B1C724
.word L80B1C724
.word L80B1C724
.word L80B1C724
glabel D_80B1D668
 .word 0x3ECCCCCD, 0x00000000
glabel D_80B1D670
 .word 0x3FE66666, 0x66666666
glabel D_80B1D678
 .word 0x3FECCCCC, 0xCCCCCCCD
glabel D_80B1D680
 .word 0x3DCCCCCD
glabel D_80B1D684
 .word 0xBDCCCCCD, 0x00000000, 0x00000000


