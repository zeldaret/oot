.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A873F0
 .word 0x1B5B3433, 0x3B33306D, 0x00000000
glabel D_80A873FC
    .asciz "地面に付着失敗(%s %d)\n"
    .balign 4

glabel D_80A87414
    .asciz "../z_en_ishi.c"
    .balign 4

glabel D_80A87424
 .word 0x1B5B6D00
glabel D_80A87428
    .asciz "../z_en_ishi.c"
    .balign 4

glabel D_80A87438
    .asciz "../z_en_ishi.c"
    .balign 4

glabel D_80A87448
    .asciz "../z_en_ishi.c"
    .balign 4

glabel D_80A87458
 .word 0xBF4CCCCD
glabel D_80A8745C
 .word 0x3F4CCCCD
glabel D_80A87460
 .word 0xBF666666
glabel D_80A87464
 .word 0x3F666666
glabel D_80A87468
 .word 0xBF4CCCCD
glabel D_80A8746C
 .word 0x3F4CCCCD
glabel D_80A87470
 .word 0x3F333333
glabel D_80A87474
 .word 0x3E4CCCCD
glabel D_80A87478
 .word 0x3DCCCCCD
glabel D_80A8747C
 .word 0x477FFF00


