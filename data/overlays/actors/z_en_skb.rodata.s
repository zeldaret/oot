.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AFE0E0
    .asciz "../z_en_skb.c"
    .balign 4

glabel D_80AFE0F0
    .asciz "../z_en_skb.c"
    .balign 4

glabel D_80AFE100
 .word 0x40C8F5C3
glabel D_80AFE104
 .word 0x3F4CCCCD
glabel D_80AFE108
 .word 0x3DCCCCCD
glabel D_80AFE10C
 .word 0x3C23D70A
glabel D_80AFE110
 .word 0x47435000
glabel D_80AFE114
 .word 0x3D4CCCCD
glabel D_80AFE118
 .word 0x3D4CCCCD
glabel D_80AFE11C
 .word 0x3C23D70A
glabel D_80AFE120
 .word 0x3C75C28F
glabel D_80AFE124
 .word 0x45EA6000
glabel D_80AFE128
 .word 0x453B8000, 0x00000000


