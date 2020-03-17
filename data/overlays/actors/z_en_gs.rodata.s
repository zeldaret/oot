.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A4FE50
    .asciz "../z_en_gs.c"
    .balign 4

glabel D_80A4FE60
    .asciz "../z_en_gs.c"
    .balign 4

glabel D_80A4FE70
    .asciz "../z_en_gs.c"
    .balign 4

glabel D_80A4FE80
    .asciz "../z_en_gs.c"
    .balign 4

glabel D_80A4FE90
 .word 0x3C8EFA35
glabel D_80A4FE94
 .word 0x3C8EFA35
glabel D_80A4FE98
 .word 0x3F4CCCCD
glabel D_80A4FE9C
 .word 0x3BE56042
glabel D_80A4FEA0
 .word 0x3A83126F
glabel D_80A4FEA4
 .word 0x3E99999A
glabel D_80A4FEA8
 .word 0x43360B61
glabel D_80A4FEAC
 .word 0x3F4CCCCD
glabel D_80A4FEB0
 .word 0x3BA3D70A
glabel D_80A4FEB4
 .word 0x3A83126F
glabel D_80A4FEB8
 .word 0xBF4CCCCD
glabel D_80A4FEBC
 .word 0x3A83126F
glabel D_80A4FEC0
 .word 0x3A83126F
glabel D_80A4FEC4
 .word 0x3CF5C28F
glabel D_80A4FEC8
 .word 0x3A83126F
glabel D_80A4FECC
 .word 0x463B8000
glabel D_80A4FED0
 .word 0x3E99999A
glabel D_80A4FED4
 .word 0xC63B8000
glabel D_80A4FED8
 .word 0x3DCCCCCD
glabel D_80A4FEDC
 .word 0x3A83126F
glabel D_80A4FEE0
 .word 0x3A83126F
glabel D_80A4FEE4
 .word 0x43360B61
glabel D_80A4FEE8
 .word 0x43360B61
glabel D_80A4FEEC
 .word 0xBE99999A
glabel D_80A4FEF0
 .word 0x3A83126F
glabel D_80A4FEF4
 .word 0x3A83126F
glabel D_80A4FEF8
 .word 0x3F32B8C2
glabel D_80A4FEFC
 .word 0x3EB2B8C2
glabel D_80A4FF00
 .word 0x45638000
glabel D_80A4FF04
 .word 0x3A83126F
glabel D_80A4FF08
 .word 0x3A83126F
glabel D_80A4FF0C
 .word 0x3A83126F
glabel D_80A4FF10
 .word 0x3A83126F
glabel D_80A4FF14
 .word 0x3DCCCCCD
glabel D_80A4FF18
 .word 0x3C8EFA35
glabel D_80A4FF1C
 .word 0x3DCCCCCD
glabel D_80A4FF20
 .word 0x3C8EFA35
glabel jtbl_80A4FF24
.word L80A4F8F8
.word L80A4F8D4
.word L80A4F8B0
.word L80A4F88C
.word L80A4F868
glabel D_80A4FF38
 .word 0x38C90FDB
glabel D_80A4FF3C
 .word 0x38C90FDB
glabel D_80A4FF40
 .word 0x38C90FDB
glabel D_80A4FF44
 .word 0x38C90FDB
glabel D_80A4FF48
 .word 0x38C90FDB
glabel D_80A4FF4C
 .word 0x38C90FDB
glabel D_80A4FF50
 .word 0x3D4CCCCD
glabel D_80A4FF54
 .word 0xBD4CCCCD, 0x00000000, 0x00000000


