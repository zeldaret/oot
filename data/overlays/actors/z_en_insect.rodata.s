.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A7DF40
    .asciz "[43;30m"
    .balign 4

glabel D_80A7DF4C
    .asciz "warning:目標 Actor が NULL (%s %d)\n"
    .balign 4

glabel D_80A7DF70
    .asciz "../z_en_mushi.c"
    .balign 4

glabel D_80A7DF80
    .asciz "\x1b[m"
    .balign 4

glabel D_80A7DF84
    .asciz "[43;30m"
    .balign 4

glabel D_80A7DF90
    .asciz "BG 抜け？ Actor_delete します(%s %d)\n"
    .balign 4

glabel D_80A7DFB8
    .asciz "../z_en_mushi.c"
    .balign 4

glabel D_80A7DFC8
    .asciz "\x1b[m"
    .balign 4

glabel D_80A7DFCC
    .float 0.1
    .balign 4

glabel D_80A7DFD0
 .word 0xBE4CCCCD
glabel D_80A7DFD4
    .float 0.3
    .balign 4

glabel D_80A7DFD8
    .float 0.4
    .balign 4

glabel D_80A7DFDC
    .float 1.2
    .balign 4

glabel D_80A7DFE0
    .float 0.8
    .balign 4

glabel D_80A7DFE4
    .float 1.9
    .balign 4

glabel D_80A7DFE8
    .float 0.7
    .balign 4

glabel D_80A7DFEC
    .float 1.4
    .balign 4

glabel D_80A7DFF0
    .float 1.9
    .balign 4

glabel D_80A7DFF4
    .float 0.8
    .balign 4

glabel D_80A7DFF8
    .float 1.6
    .balign 4

glabel D_80A7DFFC
    .float 1.9
    .balign 4

glabel D_80A7E000
    .float 0.3
    .balign 4

glabel D_80A7E004
    .float 0.01
    .balign 4

glabel D_80A7E008
    .float 0.01
    .balign 4

glabel D_80A7E00C
    .float 0.001
    .balign 4

glabel D_80A7E010
    .float 1.9
    .balign 4

glabel D_80A7E014
    .float 0.001
    .balign 4

glabel D_80A7E018
 .word 0x3951B717
glabel D_80A7E01C
    .float 0.8
    .balign 4

glabel D_80A7E020
    .float 0.1
    .balign 4

glabel D_80A7E024
 .word 0xBF19999A
glabel D_80A7E028
    .float 0.6
    .balign 4

glabel D_80A7E02C
 .word 0xBF19999A
glabel D_80A7E030
    .float 0.1
    .balign 4

glabel D_80A7E034
 .word 0x3C9374BC
glabel D_80A7E038
    .float 1.9
    .balign 4

glabel D_80A7E03C
    .float 0.03
    .balign 4

glabel D_80A7E040
    .float -0.8
    .balign 4

glabel D_80A7E044
 .word 0xBD23D70A
glabel D_80A7E048
    .float 0.001
    .balign 4

glabel D_80A7E04C
 .word 0x3851B717
glabel D_80A7E050
    .float 0.3
    .balign 4

glabel D_80A7E054
    .float 0.04
    .balign 4

glabel D_80A7E058
    .float 0.02
    .balign 4

glabel D_80A7E05C
 .word 0x477FFF80
glabel D_80A7E060
    .float 1500.0
    .balign 4

glabel D_80A7E064
 .word 0x477FFF80
glabel D_80A7E068
 .word 0x3B5A740D
glabel D_80A7E06C
 .word 0x3F7FBE77
glabel D_80A7E070
    .float 1.1
    .balign 4

glabel D_80A7E074
 .word 0x3D8F5C29
glabel D_80A7E078
 .word 0x3F7FBE77
glabel D_80A7E07C
    .float 0.6
    .balign 4

glabel D_80A7E080
 .word 0x3D8F5C29
glabel D_80A7E084
    .float 0.1
    .balign 4

glabel D_80A7E088
    .float 0.8
    .balign 4

glabel D_80A7E08C
    .float 1.3
    .balign 4

glabel D_80A7E090
 .word 0x477FFF00
glabel D_80A7E094
    .float 0.01
    .balign 4

glabel D_80A7E098
 .word 0x3A51B717
glabel D_80A7E09C
 .word 0x3E0F5C29
glabel D_80A7E0A0
    .float 0.12
    .balign 4

glabel D_80A7E0A4
    .float 1.3
    .balign 4

glabel D_80A7E0A8
    .float 1.9
    .balign 4

glabel D_80A7E0AC
 .word 0xC6F9EC00


