.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A873F0
    .asciz "[43;30m"
    .balign 4

glabel D_80A873FC
    .asciz "地面に付着失敗(%s %d)\n"
    .balign 4

glabel D_80A87414
    .asciz "../z_en_ishi.c"
    .balign 4

glabel D_80A87424
    .asciz "\x1b[m"
    .balign 4

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
    .float -0.8
    .balign 4

glabel D_80A8745C
    .float 0.8
    .balign 4

glabel D_80A87460
    .float -0.9
    .balign 4

glabel D_80A87464
    .float 0.9
    .balign 4

glabel D_80A87468
    .float -0.8
    .balign 4

glabel D_80A8746C
    .float 0.8
    .balign 4

glabel D_80A87470
    .float 0.7
    .balign 4

glabel D_80A87474
    .float 0.2
    .balign 4

glabel D_80A87478
    .float 0.1
    .balign 4

glabel D_80A8747C
 .word 0x477FFF00


