.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80888EA0
 .word 0xA2FEA2FE, 0xA2FEB1EA, 0xA4CEBFC0, 0xC5C2A5AA, 0xA5D6A5B8, 0xA5A7A5AF, 0xA5C8A1DA, 0xA5CFA5F3, 0xA5DEA1BC, 0xA5B9A5C6, 0xA5C3A5D7, 0xA1DBBDD0, 0xB8BD0A00
glabel D_80888ED4
 .word 0xA1DAA5CF, 0xA5F3A5DE, 0xA1BCA5B9, 0xA5C6A5C3, 0xA5D7A1DB, 0x20C2ADBE, 0xECBBBAA4, 0xECA4CAA4, 0xA4A1AAA1, 0xAA0A0000
glabel D_80888EFC
 .word 0x25732025, 0x640A0000
glabel D_80888F04
    .asciz "../z_bg_hidan_hamstep.c"
    .balign 4

glabel D_80888F1C
 .word 0x41282564, 0x290A0000
glabel D_80888F24
    .asciz "【ハンマーステップ】 arg_data おかしい (arg_data = %d)"
    .balign 4

glabel D_80888F5C
 .word 0x25732025, 0x640A0000
glabel D_80888F64
    .asciz "../z_bg_hidan_hamstep.c"
    .balign 4

glabel D_80888F7C
 .word 0x42282564, 0x290A0000
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
 .word 0xBF99999A
glabel D_80888FD0
 .word 0xBE75C28F
glabel D_80888FD4
 .word 0xBE75C28F
glabel D_80888FD8
 .word 0x461C4000, 0x00000000


