.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80993DC0
 .word 0x44656D6F, 0x5F547265, 0x5F4C6774, 0x5F416374, 0x6F725F63, 0x7428293B, 0xA5B3A5F3, 0xA5B9A5C8, 0xA5E9A5AF, 0xA5C8BCBA, 0xC7D40A00, 0x31000000, 0x2E2E2F7A, 0x5F64656D, 0x6F5F7472, 0x655F6C67, 0x742E6300
glabel D_80993E04
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

glabel D_80993E18
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

glabel D_80993E2C
    .asciz "../z_demo_tre_lgt.c"
    .balign 4

glabel D_80993E40
 .word 0x2E2E2F7A, 0x5F64656D, 0x6F5F7472, 0x655F6C67, 0x742E6300, 0x00000000, 0x00000000, 0x00000000


