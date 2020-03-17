.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B9A880
    .asciz "Warning : 既に子供がいる(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B9A8B4
 .word 0x2E2E2F7A, 0x5F6F626A, 0x5F6D7572, 0x65322E63, 0x00000000, 0x00000000, 0x00000000


