.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

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

.align 4 # file split?

glabel jtbl_80149490
    .word L800E58AC
    .word L800E58AC
    .word L800E58AC
    .word L800E593C
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E569C
    .word L800E56B0
    .word L800E5700
    .word L800E57D8
    .word L800E57F0
    .word L800E5810
    .word L800E5850
    .word L800E5944
    .word L800E5944
    .word L800E5880
    .word L800E5944
    .word L800E589C
    .word L800E5830
    .word L800E5944
    .word L800E58C8

glabel jtbl_8014950C
    .word L800E55EC
    .word L800E5600
    .word L800E563C
    .word L800E5944
    .word L800E5624
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5944
    .word L800E5860

glabel jtbl_8014954C
    .word L800E6150
    .word L800E62F8
    .word L800E62F8
    .word L800E62F8
    .word L800E62F8
    .word L800E61C4
    .word L800E617C
    .word L800E61B8
    .word L800E6194
    .word L800E61D8
    .word L800E61F8
    .word L800E6268
    .word L800E62B8
    .word L800E61AC

glabel jtbl_80149584
    .word L800E6328
    .word L800E6354
    .word L800E6380
    .word L800E63C8
    .word L800E63F4
    .word L800E640C
    .word L800E63A4
    .word L800E642C
    .word L800E644C
    .word L800E6458
    .word L800E6470
    .word L800E6488
    .word L800E6494
    .word L800E64A0
