.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_80161100
    .space 0x4

glabel D_80161104
    .space 0x4

glabel D_80161108
    .space 0x4

glabel D_8016110C
    .space 0x4

glabel D_80161110
    .space 0x4

glabel D_80161114
    .space 0x4

glabel D_80161118
    .space 0x2

glabel D_8016111A
    .space 0x2

glabel D_8016111C
    .space 0x4

glabel D_80161120
    .space 0xC

glabel D_8016112C
    .space 0xC

glabel D_80161138
    .space 0x4

glabel D_8016113C
    .space 0x4

glabel D_80161140
    .space 0x4

glabel D_80161144
    .space 0x4

glabel D_80161148
    .space 0x2

glabel D_8016114A
    .space 0x6

glabel D_80161150
    .space 0xE

glabel D_8016115E
    .space 0x2

glabel D_80161160
    .space 0xE

glabel D_8016116E
    .space 0x2

glabel D_80161170
    .space 0xE

glabel D_8016117E
    .space 0x2

glabel D_80161180
    .space 0xC0

glabel D_80161240
    .space 0x10

glabel D_80161250
    .space 0xC

glabel D_8016125C
    .space 0x33

glabel D_8016128F
    .space 0x41

glabel D_801612D0
    .space 0x1

glabel D_801612D1
    .space 0x1

glabel D_801612D2
    .space 0x18

glabel D_801612EA
    .space 0x2

glabel D_801612EC
    .space 0x4
