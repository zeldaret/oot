.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B18230
 .word 0xCCDAA4CE, 0xC3AA0000
glabel D_80B18238
 .word 0xC0D0A4CE, 0xC3AA0000
glabel D_80B18240
    .asciz "☆☆☆ %s ☆☆☆\n"
    .balign 4

glabel D_80B18254
    .asciz "../z_en_tana.c"
    .balign 4

glabel D_80B18264
    .asciz "../z_en_tana.c"
    .balign 4

glabel D_80B18274
    .asciz "../z_en_tana.c"
    .balign 4

glabel D_80B18284
    .asciz "../z_en_tana.c"
    .balign 4

glabel D_80B18294
    .asciz "../z_en_tana.c"
    .balign 4

glabel D_80B182A4
 .word 0x2E2E2F7A, 0x5F656E5F, 0x74616E61, 0x2E630000, 0x00000000, 0x00000000, 0x00000000


