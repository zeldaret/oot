.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80ADD810
    .asciz "../z_en_po_sisters.c"
    .balign 4

glabel D_80ADD828
    .asciz "../z_en_po_sisters.c"
    .balign 4

glabel D_80ADD840
    .asciz "../z_en_po_sisters.c"
    .balign 4

glabel D_80ADD858
    .asciz "../z_en_po_sisters.c"
    .balign 4

glabel D_80ADD870
    .asciz "../z_en_po_sisters.c"
    .balign 4

glabel D_80ADD888
    .float 0.1
    .balign 4

glabel D_80ADD88C
 .word 0xC5BB8000
glabel D_80ADD890
    .float 3000.0
    .balign 4

glabel D_80ADD894
    .float 3000.0
    .balign 4

glabel D_80ADD898
    .float 0.1
    .balign 4

glabel D_80ADD89C
    .float 0.2
    .balign 4

glabel D_80ADD8A0
    .float 0.3
    .balign 4

glabel D_80ADD8A4
    .float 0.7
    .balign 4

glabel D_80ADD8A8
 .word 0x3BB78035
glabel D_80ADD8AC
 .word 0x3B30F27C
glabel D_80ADD8B0
 .word 0x3B30F27C
glabel D_80ADD8B4
 .word 0x3B656042
glabel D_80ADD8B8
 .word 0x3B30F27C
glabel D_80ADD8BC
    .float 0.8
    .balign 4

glabel D_80ADD8C0
    .float 0.025
    .balign 4

glabel D_80ADD8C4
 .word 0x3BE56042, 0x00000000, 0x00000000


