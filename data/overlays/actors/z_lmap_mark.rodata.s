.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80830520
 .word 0x00000000, 0x00000001, 0x00000002, 0x00000003
glabel D_80830530
 .word 0x00000002, 0x00000002, 0x00000002, 0x00000003
glabel D_80830540
 .word 0x00000003, 0x00000001, 0x00000000, 0x00000000
glabel D_80830550
 .word 0x00000002, 0x00000001, 0x00000000, 0x00000000
glabel D_80830560
 .word 0x00000000, 0x00000001, 0x00000002, 0x00000004
glabel D_80830570
 .word 0x00000000, 0x00000001, 0x00000002, 0x00000002
glabel D_80830580
    .asciz "../z_lmap_mark.c"
    .balign 4

glabel D_80830594
    .asciz "../z_lmap_mark.c"
    .balign 4

glabel D_808305A8
    .asciz "../z_lmap_mark.c"
    .balign 4

glabel jtbl_808305BC
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
glabel jtbl_808305DC
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044

# This appears to be a file boundary
.balign 16

glabel D_80830610
 .word 0xFFFC0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFFC, 0x00000000, 0x00000100, 0xFFFFFFFF, 0x00040004, 0x00000000, 0x01000000, 0xFFFFFFFF, 0x0004FFFC, 0x00000000, 0x01000100, 0xFFFFFFFF
glabel D_80830650
 .word 0xFFFC0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFFC, 0x00000000, 0x00000100, 0xFFFFFFFF, 0x00040004, 0x00000000, 0x01000000, 0xFFFFFFFF, 0x0004FFFC, 0x00000000, 0x01000100, 0xFFFFFFFF

