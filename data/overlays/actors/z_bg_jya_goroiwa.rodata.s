.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80897FC0
 .word 0x432F4CEB
glabel D_80897FC4
 .word 0x3C23D70A
glabel D_80897FC8
 .word 0x44B74000
glabel D_80897FCC
 .word 0x44D12000
glabel D_80897FD0
 .word 0xC3018000
glabel D_80897FD4
 .word 0x44C42000
glabel D_80897FD8
 .word 0x3EC2C859
glabel D_80897FDC
 .word 0x43018000
glabel D_80897FE0
 .word 0x4414C000
glabel D_80897FE4
 .word 0x44DA2000
glabel D_80897FE8
 .word 0x44AE2000
glabel D_80897FEC
 .word 0x3DCCCCCD


