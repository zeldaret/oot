.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_8082A3F0
 .word 0x05010203
glabel D_8082A3F4
 .word 0x00010203
glabel D_8082A3F8
 .word 0x474D5053
glabel D_8082A3FC
 .word 0x4A4D5053
glabel D_8082A400
 .word 0x00030609
glabel D_8082A404
 .word 0x00000102, 0x00030405, 0x00060708, 0x00090A0B
glabel D_8082A414
 .word 0x00000000, 0x00000000, 0x00000000
