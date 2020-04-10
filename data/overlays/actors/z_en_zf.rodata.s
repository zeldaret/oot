.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B4A310
    .asciz "../z_en_zf.c"
    .balign 4

glabel D_80B4A320
    .asciz "../z_en_zf.c"
    .balign 4

glabel D_80B4A330
    .float 10000.0
    .balign 4

glabel D_80B4A334
 .word 0x44124000
glabel D_80B4A338
 .word 0x47C34F00
glabel D_80B4A33C
 .word 0x47C34F80
glabel D_80B4A340
 .word 0x47C34F00
glabel D_80B4A344
 .word 0x47C34F80
glabel D_80B4A348
    .float 0.3
    .balign 4

glabel D_80B4A34C
    .float 0.3
    .balign 4

glabel D_80B4A350
    .float 1.2
    .balign 4

glabel D_80B4A354
    .float 0.7
    .balign 4

glabel D_80B4A358
    .float 0.05
    .balign 4

glabel D_80B4A35C
    .float 0.1
    .balign 4

glabel D_80B4A360
    .float 0.1
    .balign 4

glabel D_80B4A364
    .float 0.8
    .balign 4

glabel D_80B4A368
    .float -0.8
    .balign 4

glabel D_80B4A36C
    .float -0.8
    .balign 4

glabel D_80B4A370
    .float -0.85
    .balign 4

glabel D_80B4A374
    .float 0.7
    .balign 4

glabel D_80B4A378
    .float 0.7
    .balign 4

glabel D_80B4A37C
    .float 0.7
    .balign 4

glabel D_80B4A380
    .float 0.2
    .balign 4

glabel D_80B4A384
    .float 0.05
    .balign 4

glabel D_80B4A388
 .word 0x44098000
glabel D_80B4A38C
    .float 1.2
    .balign 4

glabel D_80B4A390
    .float 1.2
    .balign 4

glabel D_80B4A394
    .float 0.05
    .balign 4

glabel D_80B4A398
    .float -0.8
    .balign 4

glabel D_80B4A39C
    .float -0.8
    .balign 4

glabel D_80B4A3A0
 .word 0x462AA000
glabel jtbl_80B4A3A4
.word L80B4985C
.word L80B49864
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B4988C
.word L80B498A0
.word L80B49874
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B4987C
.word L80B498A0
.word L80B4986C
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B49894
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B4989C
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B49884
glabel D_80B4A444
 .word 0x3FB33333, 0x00000000, 0x00000000

