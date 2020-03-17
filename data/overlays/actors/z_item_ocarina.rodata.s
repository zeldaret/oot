.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B86810
    .asciz "../z_item_ocarina.c"
    .balign 4

glabel D_80B86824
 .word 0x6E6F203D, 0x2025640A, 0x00000000
glabel D_80B86830
 .word 0x44866000
glabel D_80B86834
 .word 0xBDCCCCCD
glabel D_80B86838
 .word 0x4462C000
glabel D_80B8683C
 .word 0xBE99999A
glabel D_80B86840
 .word 0x44D2C000
glabel D_80B86844
 .word 0xBE19999A
glabel D_80B86848
 .word 0xBE99999A
glabel D_80B8684C
 .word 0x3E051EB8


