.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80149420
    .asciz "SUPERDMA"
    .balign 4

glabel D_8014942C
    .asciz "FastCopy"
    .balign 4

glabel D_80149438
    .asciz "FastCopy"
    .balign 4

glabel D_80149444
    .asciz "SLOWCOPY"
    .balign 4

glabel D_80149450
    .asciz "BGCOPY"
    .balign 4

glabel jtbl_80149458
    .word L800E2610
    .word L800E2630
    .word L800E2654
    .word L800E2678
    .word L800E2678

glabel jtbl_8014946C
    .word L800E2E30
    .word L800E2E5C
    .word L800E2E80
    .word L800E2EA4
    .word L800E2EA4

glabel D_80149480
    .float 20.03042

glabel D_80149484
    .float 16.546

glabel D_80149488
    .float 16.713
