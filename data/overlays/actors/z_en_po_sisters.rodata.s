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
 .word 0x3DCCCCCD
glabel D_80ADD88C
 .word 0xC5BB8000
glabel D_80ADD890
 .word 0x453B8000
glabel D_80ADD894
 .word 0x453B8000
glabel D_80ADD898
 .word 0x3DCCCCCD
glabel D_80ADD89C
 .word 0x3E4CCCCD
glabel D_80ADD8A0
 .word 0x3E99999A
glabel D_80ADD8A4
 .word 0x3F333333
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
 .word 0x3F4CCCCD
glabel D_80ADD8C0
 .word 0x3CCCCCCD
glabel D_80ADD8C4
 .word 0x3BE56042, 0x00000000, 0x00000000


