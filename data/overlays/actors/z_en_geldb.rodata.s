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
    .float 0.3
    .balign 4

glabel D_80A3A224
    .float 0.3
    .balign 4

glabel D_80A3A228
    .float 0.7
    .balign 4

glabel D_80A3A22C
    .float 0.03
    .balign 4

glabel D_80A3A230
    .float 0.8
    .balign 4

glabel D_80A3A234
    .float -0.8
    .balign 4

glabel D_80A3A238
    .float -0.8
    .balign 4

glabel D_80A3A23C
    .float -0.85
    .balign 4

glabel D_80A3A240
    .float -0.8
    .balign 4

glabel D_80A3A244
    .float 0.7
    .balign 4

glabel D_80A3A248
    .float 0.7
    .balign 4

glabel D_80A3A24C
    .float 0.7
    .balign 4

glabel D_80A3A250
    .float 0.7
    .balign 4

glabel D_80A3A254
    .float 0.2
    .balign 4

glabel D_80A3A258
    .float 0.05
    .balign 4

glabel D_80A3A25C
    .float 0.05
    .balign 4

glabel D_80A3A260
    .float 0.7
    .balign 4

glabel D_80A3A264
    .float -0.8
    .balign 4

glabel D_80A3A268
    .float -0.8
    .balign 4

glabel D_80A3A26C
 .word 0x460B6000
glabel D_80A3A270
    .float 0.1
    .balign 4

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


