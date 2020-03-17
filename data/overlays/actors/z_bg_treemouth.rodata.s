.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808BD9E0
    .asciz "../z_bg_treemouth.c"
    .balign 4

glabel D_808BD9F4
    .asciz "../z_bg_treemouth.c"
    .balign 4

glabel D_808BDA08
    .asciz "../z_bg_treemouth.c"
    .balign 4

glabel D_808BDA1C
 .word 0x3C23D70A
glabel D_808BDA20
 .word 0x4490C000
glabel D_808BDA24
 .word 0x4554F000
glabel D_808BDA28
 .word 0x44728000
glabel D_808BDA2C
 .word 0x44FD4000
glabel D_808BDA30
 .word 0xC5073000
glabel D_808BDA34
 .word 0x3D4CCCCD
glabel D_808BDA38
 .word 0x3F4CCCCD
glabel D_808BDA3C
 .word 0x3CF5C28F
glabel D_808BDA40
 .word 0x456F3000
glabel D_808BDA44
 .word 0xC48EC000
glabel D_808BDA48
 .word 0x457BD000
glabel D_808BDA4C
 .word 0xC3C78000
glabel D_808BDA50
 .word 0xC49CE000
glabel D_808BDA54
 .word 0x3DCCCCCD, 0x00000000, 0x00000000


