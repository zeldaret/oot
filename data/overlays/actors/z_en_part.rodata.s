.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80ACF210
    .asciz "../z_en_part.c"
    .balign 4

glabel D_80ACF220
    .asciz "../z_en_part.c"
    .balign 4

glabel D_80ACF230
    .asciz "../z_en_part.c"
    .balign 4

glabel D_80ACF240
 .word 0x469C4000
glabel jtbl_80ACF244
.word L80ACDE58
.word L80ACDF68
.word L80ACDF98
.word L80ACE010
.word L80ACDF68
.word L80ACE0AC
.word L80ACE0AC
.word L80ACE0AC
.word L80ACE0AC
.word L80ACDF68
.word L80ACDF68
.word L80ACDFEC
.word L80ACDEBC
.word L80ACDEB4
.word L80ACDF44
glabel D_80ACF280
 .word 0xBE99999A
glabel D_80ACF284
 .word 0x3E99999A
glabel D_80ACF288
 .word 0xBF19999A
glabel D_80ACF28C
 .word 0x3E19999A
glabel D_80ACF290
 .word 0xBF19999A
glabel D_80ACF294
 .word 0x3E19999A
glabel D_80ACF298
 .word 0xBF19999A
glabel D_80ACF29C
 .word 0x3E99999A
glabel D_80ACF2A0
 .word 0x3E19999A
glabel D_80ACF2A4
 .word 0xBF99999A
glabel D_80ACF2A8
 .word 0x3E19999A
glabel jtbl_80ACF2AC
.word L80ACE2AC
.word L80ACE56C
.word L80ACE348
.word L80ACE3E4
.word L80ACE4A4
.word L80ACE4A4
.word L80ACE4A4
.word L80ACE4A4
.word L80ACE2AC
.word L80ACE2AC
.word L80ACE348
.word L80ACE56C
.word L80ACE56C
.word L80ACE2AC
glabel D_80ACF2E4
 .word 0x44228000
glabel D_80ACF2E8
 .word 0x3D23D70A, 0x00000000


