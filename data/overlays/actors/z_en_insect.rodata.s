.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A7DF40
 .word 0x1B5B3433, 0x3B33306D, 0x00000000
glabel D_80A7DF4C
    .asciz "warning:目標 Actor が NULL (%s %d)\n"
    .balign 4

glabel D_80A7DF70
    .asciz "../z_en_mushi.c"
    .balign 4

glabel D_80A7DF80
 .word 0x1B5B6D00
glabel D_80A7DF84
 .word 0x1B5B3433, 0x3B33306D, 0x00000000
glabel D_80A7DF90
    .asciz "BG 抜け？ Actor_delete します(%s %d)\n"
    .balign 4

glabel D_80A7DFB8
    .asciz "../z_en_mushi.c"
    .balign 4

glabel D_80A7DFC8
 .word 0x1B5B6D00
glabel D_80A7DFCC
 .word 0x3DCCCCCD
glabel D_80A7DFD0
 .word 0xBE4CCCCD
glabel D_80A7DFD4
 .word 0x3E99999A
glabel D_80A7DFD8
 .word 0x3ECCCCCD
glabel D_80A7DFDC
 .word 0x3F99999A
glabel D_80A7DFE0
 .word 0x3F4CCCCD
glabel D_80A7DFE4
 .word 0x3FF33333
glabel D_80A7DFE8
 .word 0x3F333333
glabel D_80A7DFEC
 .word 0x3FB33333
glabel D_80A7DFF0
 .word 0x3FF33333
glabel D_80A7DFF4
 .word 0x3F4CCCCD
glabel D_80A7DFF8
 .word 0x3FCCCCCD
glabel D_80A7DFFC
 .word 0x3FF33333
glabel D_80A7E000
 .word 0x3E99999A
glabel D_80A7E004
 .word 0x3C23D70A
glabel D_80A7E008
 .word 0x3C23D70A
glabel D_80A7E00C
 .word 0x3A83126F
glabel D_80A7E010
 .word 0x3FF33333
glabel D_80A7E014
 .word 0x3A83126F
glabel D_80A7E018
 .word 0x3951B717
glabel D_80A7E01C
 .word 0x3F4CCCCD
glabel D_80A7E020
 .word 0x3DCCCCCD
glabel D_80A7E024
 .word 0xBF19999A
glabel D_80A7E028
 .word 0x3F19999A
glabel D_80A7E02C
 .word 0xBF19999A
glabel D_80A7E030
 .word 0x3DCCCCCD
glabel D_80A7E034
 .word 0x3C9374BC
glabel D_80A7E038
 .word 0x3FF33333
glabel D_80A7E03C
 .word 0x3CF5C28F
glabel D_80A7E040
 .word 0xBF4CCCCD
glabel D_80A7E044
 .word 0xBD23D70A
glabel D_80A7E048
 .word 0x3A83126F
glabel D_80A7E04C
 .word 0x3851B717
glabel D_80A7E050
 .word 0x3E99999A
glabel D_80A7E054
 .word 0x3D23D70A
glabel D_80A7E058
 .word 0x3CA3D70A
glabel D_80A7E05C
 .word 0x477FFF80
glabel D_80A7E060
 .word 0x44BB8000
glabel D_80A7E064
 .word 0x477FFF80
glabel D_80A7E068
 .word 0x3B5A740D
glabel D_80A7E06C
 .word 0x3F7FBE77
glabel D_80A7E070
 .word 0x3F8CCCCD
glabel D_80A7E074
 .word 0x3D8F5C29
glabel D_80A7E078
 .word 0x3F7FBE77
glabel D_80A7E07C
 .word 0x3F19999A
glabel D_80A7E080
 .word 0x3D8F5C29
glabel D_80A7E084
 .word 0x3DCCCCCD
glabel D_80A7E088
 .word 0x3F4CCCCD
glabel D_80A7E08C
 .word 0x3FA66666
glabel D_80A7E090
 .word 0x477FFF00
glabel D_80A7E094
 .word 0x3C23D70A
glabel D_80A7E098
 .word 0x3A51B717
glabel D_80A7E09C
 .word 0x3E0F5C29
glabel D_80A7E0A0
 .word 0x3DF5C28F
glabel D_80A7E0A4
 .word 0x3FA66666
glabel D_80A7E0A8
 .word 0x3FF33333
glabel D_80A7E0AC
 .word 0xC6F9EC00


