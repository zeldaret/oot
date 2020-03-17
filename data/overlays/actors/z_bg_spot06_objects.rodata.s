.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808AF970
    .asciz "spot06 obj nthisx->arg_data=[%d]"
    .balign 4

glabel D_808AF994
    .asciz "../z_bg_spot06_objects.c"
    .balign 4

glabel D_808AF9B0
    .asciz "../z_bg_spot06_objects.c"
    .balign 4

glabel D_808AF9CC
    .asciz "../z_bg_spot06_objects.c"
    .balign 4

glabel D_808AF9E8
 .word 0xC4F92000
glabel D_808AF9EC
 .word 0xC4A42000
glabel D_808AF9F0
 .word 0xC42A4000
glabel D_808AF9F4
 .word 0xC42A4000
glabel D_808AF9F8
 .word 0xC4A42000
glabel D_808AF9FC
 .word 0x3D4CCCCD
glabel D_808AFA00
 .word 0x3E333333
glabel D_808AFA04
 .word 0x3D4CCCCD
glabel D_808AFA08
 .word 0x3E333333
glabel D_808AFA0C
 .word 0x3F333333
glabel D_808AFA10
 .word 0x3DCCCCCD
glabel D_808AFA14
 .word 0x3E99999A
glabel D_808AFA18
 .word 0x3E99999A
glabel D_808AFA1C
 .word 0x4089999A
glabel D_808AFA20
 .word 0x3FA66666
glabel D_808AFA24
 .word 0xC4F92000
glabel D_808AFA28
 .word 0xC4F6A000
glabel D_808AFA2C
 .word 0x3CA3D70A
glabel D_808AFA30
 .word 0xC4F92000
glabel D_808AFA34
 .word 0x3E490FDB
glabel D_808AFA38
 .word 0xC4A42000
glabel D_808AFA3C
 .word 0x38D1B717
glabel D_808AFA40
 .word 0x3A83126F, 0x00000000, 0x00000000, 0x00000000


