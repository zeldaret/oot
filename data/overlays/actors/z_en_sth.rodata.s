.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B0B4C0
    .asciz "[34m金スタル屋 no = %d\n[m"
    .balign 4

glabel D_80B0B4DC
    .asciz "金スタル屋 まだ 人間に戻れない \n"
    .balign 4

glabel D_80B0B500
    .asciz "[34m金スタル屋 まだ 人間に戻れない \n[m"
    .balign 4

glabel D_80B0B52C
    .asciz "bank_ID = %d\n"
    .balign 4

glabel D_80B0B53C
    .asciz "0"
    .balign 4

glabel D_80B0B540
    .asciz "../z_en_sth.c"
    .balign 4

glabel D_80B0B550
    .asciz "../z_en_sth.c"
    .balign 4

glabel D_80B0B560
    .asciz "../z_en_sth.c"
    .balign 4

glabel D_80B0B570
    .asciz "../z_en_sth.c"
    .balign 4

glabel D_80B0B580
    .asciz "../z_en_sth.c"
    .balign 4



