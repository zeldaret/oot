.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A3A1E0
    .asciz "../z_en_geldB.c"
    .balign 4

glabel D_80A3A1F0
    .asciz "../z_en_geldB.c"
    .balign 4

glabel D_80A3A200
    .asciz "../z_en_geldB.c"
    .balign 4

glabel D_80A3A210
    .asciz "../z_en_geldB.c"
    .balign 4

glabel D_80A3A220
 .word 0x3E99999A
glabel D_80A3A224
 .word 0x3E99999A
glabel D_80A3A228
 .word 0x3F333333
glabel D_80A3A22C
 .word 0x3CF5C28F
glabel D_80A3A230
 .word 0x3F4CCCCD
glabel D_80A3A234
 .word 0xBF4CCCCD
glabel D_80A3A238
 .word 0xBF4CCCCD
glabel D_80A3A23C
 .word 0xBF59999A
glabel D_80A3A240
 .word 0xBF4CCCCD
glabel D_80A3A244
 .word 0x3F333333
glabel D_80A3A248
 .word 0x3F333333
glabel D_80A3A24C
 .word 0x3F333333
glabel D_80A3A250
 .word 0x3F333333
glabel D_80A3A254
 .word 0x3E4CCCCD
glabel D_80A3A258
 .word 0x3D4CCCCD
glabel D_80A3A25C
 .word 0x3D4CCCCD
glabel D_80A3A260
 .word 0x3F333333
glabel D_80A3A264
 .word 0xBF4CCCCD
glabel D_80A3A268
 .word 0xBF4CCCCD
glabel D_80A3A26C
 .word 0x460B6000
glabel D_80A3A270
 .word 0x3DCCCCCD
glabel jtbl_80A3A274
.word L80A39A08
.word L80A399E0
.word L80A39A24
.word L80A39A24
.word L80A39A24
.word L80A39A00
.word L80A39A24
.word L80A39A24
.word L80A39A24
.word L80A399F0
.word L80A399F8
.word L80A39A24
.word L80A39A24
.word L80A39A24
.word L80A399E8
.word L80A39A24
.word L80A39A24
.word L80A39A18
.word L80A39A24
.word L80A39A24
.word L80A39A20
.word L80A39A10
.word 0x00000000
glabel D_80A3A2D0
 .word 0x4082C000, 0x00000000, 0x00000000, 0x00000000


