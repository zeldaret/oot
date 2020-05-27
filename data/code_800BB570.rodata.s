.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80143CF0
    .asciz "mempak: find '%c' (%d)\n"
    .balign 4

glabel D_80143D08
    .asciz "mempak: find '%c' - '%c' %02x\n"
    .balign 4

glabel D_80143D28
    .asciz "mempak: write %d byte '%c' (%d)->%d\n"
    .balign 4

glabel D_80143D50
    .asciz "mempak: read %d byte '%c' (%d)<-%d\n"
    .balign 4

glabel D_80143D74
    .asciz "mempak: alloc %d byte '%c' (%d)\n"
    .balign 4

glabel D_80143D98
    .asciz "mempak: resize %d byte '%c' (%d)\n"
    .balign 4

glabel D_80143DBC
    .asciz "mempak: alloc %d byte '%c' (%d) with search\n"
    .balign 4

glabel D_80143DEC
    .asciz "mempak: delete '%c' (%d)\n"
    .balign 4
