.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80888EA0
    .asciz "◯◯◯炎の神殿オブジェクト【ハンマーステップ】出現\n"
    .balign 4

glabel D_80888ED4
    .asciz "【ハンマーステップ】 足場産れない！！\n"
    .balign 4

glabel D_80888EFC
    .asciz "%s %d\n"
    .balign 4

glabel D_80888F04
    .asciz "../z_bg_hidan_hamstep.c"
    .balign 4

glabel D_80888F1C
    .asciz "A(%d)\n"
    .balign 4

glabel D_80888F24
    .asciz "【ハンマーステップ】 arg_data おかしい (arg_data = %d)"
    .balign 4

glabel D_80888F5C
    .asciz "%s %d\n"
    .balign 4

glabel D_80888F64
    .asciz "../z_bg_hidan_hamstep.c"
    .balign 4

glabel D_80888F7C
    .asciz "B(%d)\n"
    .balign 4

glabel D_80888F84
    .asciz "../z_bg_hidan_hamstep.c"
    .balign 4

glabel D_80888F9C
    .asciz "../z_bg_hidan_hamstep.c"
    .balign 4

glabel D_80888FB4
    .asciz "../z_bg_hidan_hamstep.c"
    .balign 4

glabel D_80888FCC
    .float -1.2
    .balign 4

glabel D_80888FD0
 .word 0xBE75C28F
glabel D_80888FD4
 .word 0xBE75C28F
glabel D_80888FD8
 .word 0x461C4000, 0x00000000


