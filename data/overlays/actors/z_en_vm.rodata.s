.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B2EBB0
    .asciz "hp down %d\n"
    .balign 4

glabel D_80B2EBBC
    .asciz "../z_en_vm.c"
    .balign 4

glabel D_80B2EBCC
    .asciz "../z_en_vm.c"
    .balign 4

glabel D_80B2EBDC
    .asciz "../z_en_vm.c"
    .balign 4

glabel D_80B2EBEC
    .asciz "../z_en_vm.c"
    .balign 4

glabel D_80B2EBFC
    .asciz "../z_en_vm.c"
    .balign 4

glabel D_80B2EC0C
    .float 0.6
    .balign 4

glabel D_80B2EC10
    .float 0.1
    .balign 4

glabel D_80B2EC14
    .float 0.1
    .balign 4

glabel D_80B2EC18
 .word 0xC59C4000
glabel D_80B2EC1C
    .float 5000.0
    .balign 4

glabel D_80B2EC20
 .word 0x477FFF00
glabel D_80B2EC24
 .word 0x45CB2000
glabel D_80B2EC28
    .float 10000.0
    .balign 4

glabel D_80B2EC2C
    .float 0.01
    .balign 4

glabel D_80B2EC30
    .float 0.8
    .balign 4

glabel D_80B2EC34
 .word 0x46FFFE00
glabel D_80B2EC38
    .float 0.1
    .balign 4

glabel D_80B2EC3C
    .float 0.0015
    .balign 4



