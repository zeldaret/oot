.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80881040
 .word 0x3DCCCCCD
glabel D_80881044
 .word 0x3DCCCCCD
glabel D_80881048
 .word 0x3FCCCCCD
glabel D_8088104C
 .word 0x3C23D70A
glabel D_80881050
 .word 0x3C23D70A
glabel D_80881054
 .word 0x3D75C28F
glabel D_80881058
 .word 0x388D3DCB
glabel D_8088105C
 .word 0x3F2AAAAB
glabel D_80881060
 .word 0x3CF5C28F
glabel D_80881064
 .word 0x3CF5C28F, 0x00000000, 0x00000000


