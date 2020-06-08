.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8082F4C0
 .word 0x25730000
glabel D_8082F4C4
 .word 0x8C8ED98E, 0xCB8EDF8E, 0xB0000000
glabel D_8082F4D0
 .word 0x25730000
glabel D_8082F4D4
 .word 0x8C8ECA8E, 0xB08EC400
glabel D_8082F4DC
 .word 0x25730000
glabel D_8082F4E0
 .word 0x2F340000
glabel D_8082F4E4
 .word 0x25730000
glabel D_8082F4E8
 .word 0x8C8EB18E, 0xB28EC38E, 0xD1000000
glabel D_8082F4F4
 .word 0x25730000
glabel D_8082F4F8
 .word 0x4B455900
glabel D_8082F4FC
 .word 0x25730000
glabel D_8082F500
 .word 0x8D8EBF8E, 0xB38ECB8E, 0xDE000000
glabel D_8082F50C
 .word 0x25730000
glabel D_8082F510
 .word 0x8C8EB98E, 0xDD000000
glabel D_8082F518
 .word 0x25730000
glabel D_8082F51C
 .word 0x8C8EC08E, 0xC3000000
glabel D_8082F524
 .word 0x25730000
glabel D_8082F528
 .word 0x4D415000
glabel D_8082F52C
 .word 0x25730000
glabel D_8082F530
 .word 0x8D8ECC8E, 0xB38EB28E, 0xDD000000
glabel D_8082F53C
 .word 0x25730000
glabel D_8082F540
 .word 0x8D8EBE8E, 0xB28EDA8E, 0xB28EBE8E, 0xB7000000
glabel D_8082F550
 .word 0x25730000
glabel D_8082F554
 .word 0x8C8EB58E, 0xB68ED88E, 0xC5000000
glabel D_8082F560
 .word 0x25730000
glabel D_8082F564
 .word 0x8C8EBA8E, 0xDA8EB88E, 0xC4000000
glabel D_8082F570
 .word 0x25730000
glabel D_8082F574
 .word 0x8C8EB78E, 0xDD8EBD8E, 0xC0000000
glabel D_8082F580
 .word 0x25730000
glabel D_8082F584
 .word 0x8C8EB68E, 0xB98ED700
glabel D_8082F58C
 .word 0x25730000
glabel D_8082F590
 .word 0x2F340000
glabel D_8082F594
    .asciz "../z_kaleido_debug.c"
    .balign 4

glabel D_8082F5AC
    .asciz "../z_kaleido_debug.c"
    .balign 4

glabel D_8082F5C4
    .asciz "../z_kaleido_debug.c"
    .balign 4

glabel D_8082F5DC
    .asciz "i=%d  j=%d\n"
    .balign 4

glabel D_8082F5E8
    .asciz "../z_kaleido_debug.c"
    .balign 4
