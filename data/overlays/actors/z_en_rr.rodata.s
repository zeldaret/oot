.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AEA720
 .word 0xA5BFA5A4, 0xA5D7A3B7, 0x20200000
glabel D_80AEA72C
 .word 0xCBE2CBA1, 0xA4CEC4DB, 0xBEAE0000
glabel D_80AEA738
 .word 0xCCF02020, 0x20202020, 0x20200000
glabel D_80AEA744
 .word 0xCDC5C0BA, 0x20202020, 0x20200000
glabel D_80AEA750
 .word 0x3230A5EB, 0xA5D4A1BC, 0x20200000
glabel D_80AEA75C
 .word 0x3530A5EB, 0xA5D4A1BC, 0x20200000
glabel D_80AEA768
    .asciz "[33m%s[%d] : Rr_Catch_Cancel[m\n"
    .balign 4

glabel D_80AEA78C
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA79C
    .asciz "[32mカキン(%d)！！[m\n"
    .balign 4

glabel D_80AEA7B4
    .asciz "[31mいてっ( %d : LIFE %d : DAMAGE %d : %x )！！[m\n"
    .balign 4

glabel D_80AEA7EC
    .asciz "[32mキャッチ(%d)！！[m\n"
    .balign 4

glabel D_80AEA808
    .asciz "[32m「%s」が出た！！[m\n"
    .balign 4

glabel D_80AEA824
 .word 0x30000000
glabel D_80AEA828
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA838
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA848
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA858
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA868
    .asciz "../z_en_rr.c"
    .balign 4

glabel D_80AEA878
 .word 0x3C656042
glabel D_80AEA87C
 .word 0x3C54FDF4
glabel D_80AEA880
 .word 0xBECCCCCD
glabel D_80AEA884
 .word 0x451C4000
glabel D_80AEA888
 .word 0x3F4CCCCD
glabel D_80AEA88C
 .word 0x45BB8000
glabel D_80AEA890
 .word 0x451C4000
glabel D_80AEA894
 .word 0x3E19999A
glabel D_80AEA898
 .word 0x459C4000
glabel D_80AEA89C
 .word 0x451C4000
glabel D_80AEA8A0
 .word 0x451C4000
glabel D_80AEA8A4
 .word 0x3E19999A
glabel D_80AEA8A8
 .word 0x451C4000
glabel D_80AEA8AC
 .word 0x451C4000
glabel D_80AEA8B0
 .word 0x3E19999A
glabel jtbl_80AEA8B4
.word L80AE9170
.word L80AE9094
.word L80AE90DC
.word L80AE912C
.word L80AE91A8
.word L80AE91A8
.word L80AE91A8
.word L80AE91A8
.word L80AE91A8
.word L80AE91A8
.word L80AE8FD4
.word L80AE8FD8
.word L80AE8FE0
.word L80AE8FE8
.word L80AE8FF0
glabel D_80AEA8F0
 .word 0x451C4000
glabel D_80AEA8F4
 .word 0x3E19999A
glabel jtbl_80AEA8F8
.word L80AE96CC
.word L80AE96E4
.word L80AE9710
.word L80AE9738
.word L80AE9764
glabel D_80AEA90C
 .word 0x3F4CCCCD
glabel D_80AEA910
 .word 0x459C4000
glabel D_80AEA914
 .word 0xC59C4000
glabel D_80AEA918
 .word 0x3B449BA6
glabel jtbl_80AEA91C
.word L80AE9B4C
.word L80AE9AD4
.word L80AE9AEC
.word L80AE9B04
.word L80AE9B1C
.word L80AE9B34
glabel D_80AEA934
 .word 0x3E4CCCCD, 0x00000000, 0x00000000


