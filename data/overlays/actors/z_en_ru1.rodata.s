.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AF1A30
    .asciz "[31mお立ち台が無い!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80AF1A64
 .word 0xA5B9A5A4, 0xA5C3A5C1, 0xA5EBA5C8, 0xA5BBA5C3, 0xA5C82121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x0A000000
glabel D_80AF1A90
 .word 0xA5B9A5A4, 0xA5C3A5C1, 0xA5EBA5C8, 0xA5BBA5C3, 0xA5C8A4B7, 0xA4CAA4A4, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21210A00
glabel D_80AF1AC0
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80AF1AFC
    .asciz "該当 arge_data = %d 無し\n"
    .balign 4

glabel D_80AF1B18
    .asciz "[31m首回しモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80AF1B54
    .asciz "../z_en_ru1.c"
    .balign 4

glabel D_80AF1B64
    .asciz "../z_en_ru1.c"
    .balign 4

glabel D_80AF1B74
    .asciz "../z_en_ru1.c"
    .balign 4

glabel D_80AF1B84
    .asciz "../z_en_ru1.c"
    .balign 4

glabel D_80AF1B94
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80AF1BCC
    .float 0.01
    .balign 4

glabel D_80AF1BD0
 .word 0x402CCCCD
glabel D_80AF1BD4
    .float 0.01
    .balign 4

glabel D_80AF1BD8
 .word 0x402CCCCD
glabel D_80AF1BDC
    .float 0.01
    .balign 4

glabel D_80AF1BE0
    .float 0.01
    .balign 4

glabel D_80AF1BE4
 .word 0x43848000
glabel D_80AF1BE8
 .word 0xC61C4000
glabel D_80AF1BEC
 .word 0x42A6AAAB
glabel D_80AF1BF0
 .word 0x4622F983
glabel D_80AF1BF4
    .float 0.01
    .balign 4

glabel D_80AF1BF8
    .float 0.01
    .balign 4

glabel D_80AF1BFC
    .float 0.8
    .balign 4

glabel D_80AF1C00
    .float 0.6
    .balign 4

glabel D_80AF1C04
 .word 0x3F19999A, 0x3C23D70A
glabel D_80AF1C0C
    .float 0.01
    .balign 4

glabel D_80AF1C10
    .float 0.8
    .balign 4

glabel D_80AF1C14
    .float 0.6
    .balign 4

glabel D_80AF1C18
    .float 0.01
    .balign 4

glabel D_80AF1C1C
    .float 0.6
    .balign 4

glabel D_80AF1C20
    .float 1.1
    .balign 4

glabel D_80AF1C24
    .float 0.01
    .balign 4

glabel D_80AF1C28
 .word 0x3F7AE148
glabel D_80AF1C2C
    .float 0.2
    .balign 4

glabel D_80AF1C30
 .word 0xBDCCCCCD
glabel D_80AF1C34
    .float 0.1
    .balign 4

glabel D_80AF1C38
 .word 0x3F733333
glabel D_80AF1C3C
    .float 0.01
    .balign 4

glabel D_80AF1C40
 .word 0x40D9999A
glabel D_80AF1C44
    .float 1.3
    .balign 4

glabel D_80AF1C48
    .float 0.01
    .balign 4

glabel D_80AF1C4C
 .word 0x40D9999A
glabel D_80AF1C50
    .float 1.3
    .balign 4

glabel D_80AF1C54
 .word 0xBDCCCCCD
glabel D_80AF1C58
    .float 0.1
    .balign 4

glabel D_80AF1C5C
    .float 0.7
    .balign 4

glabel jtbl_80AF1C60
.word L80AF01A4
.word L80AF01B8
.word L80AF01CC
.word L80AF01E0
.word L80AF01F4
.word L80AF0208
.word L80AF021C
.word L80AF0244
.word L80AF0244
.word L80AF0244
.word L80AF0230
.word 0x00000000


