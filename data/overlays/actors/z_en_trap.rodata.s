.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B25860
 .word 0x3FE66666
glabel D_80B25864
 .word 0x3FE66666
glabel D_80B25868
 .word 0x3FE66666
glabel D_80B2586C
 .word 0x477FFF00
glabel D_80B25870
 .word 0x477FFF00
glabel D_80B25874
 .word 0x477FFF00
glabel D_80B25878
 .word 0x477FFF00
glabel D_80B2587C
 .word 0x477FFF00


