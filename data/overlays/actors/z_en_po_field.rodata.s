.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AD7160
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD7174
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD7188
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD719C
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD71B0
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD71C4
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD71D8
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD71EC
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD7200
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD7214
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD7228
    .asciz "../z_en_po_field.c"
    .balign 4

glabel D_80AD723C
 .word 0x3C656042
glabel D_80AD7240
    .float 0.01
    .balign 4

glabel D_80AD7244
    .float 1500.0
    .balign 4

glabel D_80AD7248
    .float 0.4
    .balign 4

glabel D_80AD724C
    .float 0.05
    .balign 4

glabel D_80AD7250
    .float 0.1
    .balign 4

glabel D_80AD7254
    .float 3000.0
    .balign 4

glabel D_80AD7258
    .float 0.2
    .balign 4

glabel D_80AD725C
    .float 1500.0
    .balign 4

glabel D_80AD7260
    .float 0.001
    .balign 4

glabel D_80AD7264
 .word 0x3BE56042
glabel D_80AD7268
 .word 0x3B808081
glabel D_80AD726C
 .word 0x3BB78035
glabel D_80AD7270
 .word 0x3AB78035
glabel D_80AD7274
 .word 0x37E64689
glabel D_80AD7278
 .word 0x3D70F0F1
glabel D_80AD727C
 .word 0x3F48C8C9
glabel D_80AD7280
 .word 0x3F48C8C9
glabel D_80AD7284
 .word 0x47A60400
glabel D_80AD7288
    .float 9.58738019108e-05
    .balign 4

glabel D_80AD728C
 .word 0x3B449BA6
glabel D_80AD7290
    .float 0.7
    .balign 4

glabel D_80AD7294
 .word 0x3A6BEDFB
glabel D_80AD7298
 .word 0x418547AE
glabel D_80AD729C
 .word 0x41855555
glabel D_80AD72A0
    .float 0.01
    .balign 4

glabel D_80AD72A4
 .word 0x3F48C8C9
glabel D_80AD72A8
 .word 0x38C90FDB, 0x00000000

