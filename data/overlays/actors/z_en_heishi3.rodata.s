.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A55F90
    .asciz "[32m☆☆☆☆☆ 城門兵パワーアップ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A55FC4
    .asciz "[32m☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A55FEC
 .word 0x1B5B3332, 0x6DA1F9A1, 0xF9A1F9A1, 0xF9A1F920, 0xC8AFB8AB, 0xA1AA20A1, 0xF9A1F9A1, 0xF9A1F9A1, 0xF9200A1B, 0x5B6D0000, 0x00000000, 0x00000000, 0x00000000


