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
 .word 0x3C23D70A
glabel D_80AD7244
 .word 0x44BB8000
glabel D_80AD7248
 .word 0x3ECCCCCD
glabel D_80AD724C
 .word 0x3D4CCCCD
glabel D_80AD7250
 .word 0x3DCCCCCD
glabel D_80AD7254
 .word 0x453B8000
glabel D_80AD7258
 .word 0x3E4CCCCD
glabel D_80AD725C
 .word 0x44BB8000
glabel D_80AD7260
 .word 0x3A83126F
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
 .word 0x38C90FDB
glabel D_80AD728C
 .word 0x3B449BA6
glabel D_80AD7290
 .word 0x3F333333
glabel D_80AD7294
 .word 0x3A6BEDFB
glabel D_80AD7298
 .word 0x418547AE
glabel D_80AD729C
 .word 0x41855555
glabel D_80AD72A0
 .word 0x3C23D70A
glabel D_80AD72A4
 .word 0x3F48C8C9
glabel D_80AD72A8
 .word 0x38C90FDB, 0x00000000

