.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809FAB60
    .float 0.02
    .balign 4

glabel D_809FAB64
    .float 0.1
    .balign 4

glabel D_809FAB68
    .float 0.15
    .balign 4

glabel D_809FAB6C
    .float 0.1
    .balign 4

glabel D_809FAB70
    .float 0.15
    .balign 4

glabel D_809FAB74
    .float 0.02
    .balign 4

glabel D_809FAB78
    .float 0.1
    .balign 4

glabel D_809FAB7C
    .float 0.15
    .balign 4

glabel D_809FAB80
    .float 0.1
    .balign 4

glabel D_809FAB84
    .float 0.15
    .balign 4

glabel D_809FAB88
    .float 0.02
    .balign 4

glabel D_809FAB8C
    .float 0.1
    .balign 4

glabel D_809FAB90
    .float 0.15
    .balign 4

glabel D_809FAB94
    .float 0.1
    .balign 4

glabel D_809FAB98
    .float 0.15
    .balign 4

glabel D_809FAB9C
 .word 0xBDCCCCCD
glabel D_809FABA0
    .float 0.7
    .balign 4

glabel D_809FABA4
    .float 0.08
    .balign 4

glabel D_809FABA8
 .word 0x45ABE000
glabel jtbl_809FABAC
.word L809FA2E4
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA338
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA40C
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA494
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4BC
.word L809FA4AC
glabel jtbl_809FAC18
.word L809FA4F0
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA504
.word L809FA50C
.word L809FA514
.word L809FA51C
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA534
.word L809FA524
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA540
.word L809FA53C
.word L809FA52C
glabel D_809FAC74
 .word 0x3FE66666, 0x00000000, 0x00000000


