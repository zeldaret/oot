.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B87280
    .asciz "[32mItem_Shild %d \n[m"
    .balign 4

glabel D_80B87298
    .asciz "../z_item_shield.c"
    .balign 4

glabel D_80B872AC
    .asciz "../z_item_shield.c"
    .balign 4

glabel D_80B872C0
    .asciz "../z_item_shield.c"
    .balign 4

glabel D_80B872D4
    .float -0.8
    .balign 4

glabel D_80B872D8
    .float 1500.0
    .balign 4

glabel D_80B872DC
    .float 0.01
    .balign 4

glabel D_80B872E0
    .float 0.2
    .balign 4

glabel D_80B872E4
 .word 0x3A23D70A
glabel D_80B872E8
 .word 0xBF4CCCCD, 0x00000000


