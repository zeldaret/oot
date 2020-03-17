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
 .word 0xBF4CCCCD
glabel D_80B872D8
 .word 0x44BB8000
glabel D_80B872DC
 .word 0x3C23D70A
glabel D_80B872E0
 .word 0x3E4CCCCD
glabel D_80B872E4
 .word 0x3A23D70A
glabel D_80B872E8
 .word 0xBF4CCCCD, 0x00000000


