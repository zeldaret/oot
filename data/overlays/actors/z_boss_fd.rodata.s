.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808D1C30
 .word 0x4D4F4445, 0x2025640A, 0x00000000
glabel D_808D1C3C
    .asciz "WAY_SPD X = %f\n"
    .balign 4

glabel D_808D1C4C
    .asciz "WAY_SPD Y = %f\n"
    .balign 4

glabel D_808D1C5C
    .asciz "WAY_SPD Z = %f\n"
    .balign 4

glabel D_808D1C6C
    .asciz "this->timer[2] = %d\n"
    .balign 4

glabel D_808D1C84
    .asciz "this->timer[5] = %d\n"
    .balign 4

glabel D_808D1C9C
    .asciz "BGCHECKKKKKKKKKKKKKKKKKKKKKKK\n"
    .balign 4

glabel D_808D1CBC
    .asciz "FD MOVE START \n"
    .balign 4

glabel D_808D1CCC
    .asciz "FD MOVE END 1\n"
    .balign 4

glabel D_808D1CDC
    .asciz "FD MOVE END 2\n"
    .balign 4

glabel D_808D1CEC
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1CFC
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D0C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D1C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D2C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D3C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D4C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D5C
    .asciz "FD DRAW START\n"
    .balign 4

glabel D_808D1D6C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D7C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D8C
 .word 0x46442044, 0x52415720, 0x454E440A, 0x00000000
glabel D_808D1D9C
    .asciz "FD DRAW END2\n"
    .balign 4

glabel D_808D1DAC
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1DBC
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1DCC
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1DDC
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1DEC
 .word 0x4C480A00
glabel D_808D1DF0
 .word 0x52480A00
glabel D_808D1DF4
 .word 0x42440A00
glabel D_808D1DF8
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1E08
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1E18
 .word 0x42480A00
glabel D_808D1E1C
 .word 0x4248430A, 0x00000000
glabel D_808D1E24
 .word 0x42484345, 0x0A000000
glabel D_808D1E2C
 .word 0x534B0A00
glabel D_808D1E30
 .word 0x454E440A, 0x00000000
glabel D_808D1E38
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1E48
 .word 0x44E08000
glabel D_808D1E4C
 .word 0x4622F983
glabel jtbl_808D1E50
.word L808CB988
.word L808CBCD4
.word L808CBCF8
.word L808CBE20
.word L808CBF44
.word L808CC140
glabel D_808D1E68
 .word 0x461C4000
glabel D_808D1E6C
 .word 0x3D4CCCCD
glabel D_808D1E70
 .word 0x3DCCCCCD
glabel D_808D1E74
 .word 0x3BA3D70A, 0x3DCCCCCD
glabel D_808D1E7C
 .word 0x3A831270
glabel D_808D1E80
 .word 0x3E4CCCCD
glabel D_808D1E84
 .word 0x3CA3D70A
glabel D_808D1E88
 .word 0x3BA3D70A
glabel D_808D1E8C
 .word 0x3DCCCCCD
glabel D_808D1E90
 .word 0x3DCCCCCD
glabel D_808D1E94
 .word 0x3DCCCCCD
glabel D_808D1E98
 .word 0x3DCCCCCD
glabel D_808D1E9C
 .word 0x3DCCCCCD
glabel D_808D1EA0
 .word 0x3DCCCCCD
glabel D_808D1EA4
 .word 0x3D4CCCCD
glabel D_808D1EA8
 .word 0x3D4CCCCD
glabel D_808D1EAC
 .word 0x3D4CCCCD
glabel D_808D1EB0
 .word 0x42AB1EB8, 0x3DCCCCCD
glabel jtbl_808D1EB8
.word L808CCCF4
.word L808CCDF0
.word L808CD0E4
.word L808CD154
.word L808CD178
.word L808CD3A8
glabel jtbl_808D1ED0
.word L808CD598
.word L808CC6A4
.word L808CC878
.word L808CC91C
.word L808CC944
glabel D_808D1EE4
 .word 0x410E6666
glabel D_808D1EE8
 .word 0x461C4000
glabel D_808D1EEC
 .word 0x453B8000
glabel D_808D1EF0
 .word 0x461C4000
glabel D_808D1EF4
 .word 0xC68FA000
glabel D_808D1EF8
 .word 0x4515C000
glabel D_808D1EFC
 .word 0x461C4000
glabel D_808D1F00
 .word 0x3ECCCCCD
glabel D_808D1F04
 .word 0x42C7CCCD
glabel D_808D1F08
 .word 0x3CF5C28F
glabel D_808D1F0C
 .word 0x3E99999A
glabel D_808D1F10
 .word 0x3CF5C28F
glabel D_808D1F14
 .word 0x40490FDB
glabel D_808D1F18
 .word 0x45AEE000
glabel D_808D1F1C
 .word 0x3E99999A
glabel D_808D1F20
 .word 0x45ABC000
glabel D_808D1F24
 .word 0x3E99999A
glabel D_808D1F28
 .word 0x3E99999A
glabel D_808D1F2C
 .word 0x44BB8000
glabel D_808D1F30
 .word 0x453B8000
glabel D_808D1F34
 .word 0x45098000
glabel D_808D1F38
 .word 0x44D48000
glabel D_808D1F3C
 .word 0x44ED8000
glabel D_808D1F40
 .word 0xC53B8000
glabel D_808D1F44
 .word 0xC53B8000
glabel D_808D1F48
 .word 0x410E6666
glabel D_808D1F4C
 .word 0x3D4CCCCD
glabel D_808D1F50
 .word 0x3F0CCCCD
glabel D_808D1F54
 .word 0x3D8F5C29
glabel D_808D1F58
 .word 0x3E570A3D
glabel D_808D1F5C
 .word 0x3C23D70A
glabel D_808D1F60
 .word 0x3E99999A
glabel D_808D1F64
 .word 0x45BB8000
glabel D_808D1F68
 .word 0x44A28000
glabel D_808D1F6C
 .word 0xBE99999A
glabel D_808D1F70
 .word 0xBE99999A
glabel D_808D1F74
 .word 0x3ECCCCCD
glabel D_808D1F78
 .word 0x40490FDB
glabel D_808D1F7C
 .word 0x3E99999A
glabel D_808D1F80
 .word 0x40C90FDB
glabel D_808D1F84
 .word 0x40C90FDB
glabel D_808D1F88
 .word 0x3ECCCCCD
glabel D_808D1F8C
 .word 0x410E6666
glabel D_808D1F90
 .word 0x41EF3333
glabel D_808D1F94
 .word 0x3ECCCCCD
glabel D_808D1F98
 .word 0x3F0CCCCD
glabel D_808D1F9C
 .word 0x3DCCCCCD
glabel D_808D1FA0
 .word 0x3E99999A
glabel D_808D1FA4
 .word 0x3DA3D70A
glabel D_808D1FA8
 .word 0x3DCCCCCD
glabel D_808D1FAC
 .word 0x3C23D70A
glabel D_808D1FB0
 .word 0x3F333333
glabel D_808D1FB4
 .word 0x3A51B717
glabel D_808D1FB8
 .word 0xBFC90FDB
glabel D_808D1FBC
 .word 0x3DCCCCCD
glabel D_808D1FC0
 .word 0x3DCCCCCD
glabel D_808D1FC4
 .word 0x45DAC000
glabel D_808D1FC8
 .word 0x459C4000
glabel D_808D1FCC
 .word 0x459C4000
glabel D_808D1FD0
 .word 0x3FC90FDB
glabel D_808D1FD4
 .word 0xC0490FDB
glabel D_808D1FD8
 .word 0x3E4CCCCD
glabel D_808D1FDC
 .word 0x40490FDB


