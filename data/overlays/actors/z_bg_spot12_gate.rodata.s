.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B3340
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B3380
 .word 0x2E2E2F7A, 0x5F62675F, 0x73706F74, 0x31325F67, 0x6174652E, 0x63000000, 0x00000000, 0x00000000


