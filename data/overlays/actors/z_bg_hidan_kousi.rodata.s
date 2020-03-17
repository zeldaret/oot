.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80889E90
    .asciz "◯◯◯炎の神殿オブジェクト【格子(arg_data : %0x)】出現 (%d %d)\n"
    .balign 4

glabel D_80889ED0
    .asciz "arg_data おかしい 【格子】\n"
    .balign 4

glabel D_80889EEC
    .asciz "../z_bg_hidan_kousi.c"
    .balign 4

glabel D_80889F04
    .asciz "../z_bg_hidan_kousi.c"
    .balign 4

glabel D_80889F1C
    .asciz "../z_bg_hidan_kousi.c"
    .balign 4

glabel D_80889F34
 .word 0x3E4CCCCD, 0x00000000, 0x00000000


