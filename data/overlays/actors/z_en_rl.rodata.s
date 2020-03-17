.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AE8200
    .asciz "../z_en_rl_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80AE8220
    .asciz "../z_en_rl_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80AE8240
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80AE827C
    .asciz "../z_en_rl.c"
    .balign 4

glabel D_80AE828C
    .asciz "../z_en_rl.c"
    .balign 4

glabel D_80AE829C
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.balign 16



