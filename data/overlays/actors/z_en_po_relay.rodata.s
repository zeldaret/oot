.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AD8D60
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8D74
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8D88
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8D9C
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8DB0
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8DC4
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8DD8
    .asciz "../z_en_po_relay.c"
    .balign 4

glabel D_80AD8DEC
 .word 0x3CF5C28F
glabel D_80AD8DF0
 .word 0x44D98000
glabel D_80AD8DF4
 .word 0x44C58000
glabel D_80AD8DF8
 .word 0x4502A000
glabel D_80AD8DFC
 .word 0x3FB33333
glabel D_80AD8E00
 .word 0x3F99999A
glabel D_80AD8E04
 .word 0x3F99999A
glabel D_80AD8E08
 .word 0x3F4CCCCD
glabel D_80AD8E0C
 .word 0x3CA3D70A


