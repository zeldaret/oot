.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A0580
    .asciz "<コンストラクト>%x %x %x\n"
    .balign 4

glabel D_808A059C
 .word 0x25782025, 0x78202578, 0x0A000000
glabel D_808A05A8
    .asciz "../z_bg_mizu_water.c"
    .balign 4

glabel D_808A05C0
    .asciz "../z_bg_mizu_water.c"
    .balign 4

glabel D_808A05D8
    .asciz "../z_bg_mizu_water.c"
    .balign 4

glabel jtbl_808A05F0
.word L8089FAB4
.word L8089FCCC
.word L8089FBFC
.word L8089FC3C
.word L8089FC84
glabel jtbl_808A0604
.word L8089FD30
.word L8089FE8C
.word L8089FDE8
.word L8089FE20
.word L8089FE58
glabel jtbl_808A0618
.word L8089FF08
.word L808A0154
.word L8089FFE0
.word L808A005C
.word L808A00D8
glabel D_808A062C
 .word 0xC450C000
glabel D_808A0630
 .word 0x43DE8000
glabel D_808A0634
 .word 0x443F4000, 0x00000000, 0x00000000


