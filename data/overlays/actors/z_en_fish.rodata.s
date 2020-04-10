.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A170A0
    .asciz "[43;30m"
    .balign 4

glabel D_80A170AC
    .asciz "BG 抜け？ Actor_delete します(%s %d)\n"
    .balign 4

glabel D_80A170D4
    .asciz "../z_en_sakana.c"
    .balign 4

glabel D_80A170E8
    .asciz "\x1b[m"
    .balign 4

glabel D_80A170EC
    .asciz "Warning : dousa 3 消滅 が呼ばれずにデモが終了した(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80A17138
    .asciz "../z_en_sakana.c"
    .balign 4

glabel D_80A1714C
 .word 0xA5C7A5E2, 0xB5FBBEC3, 0xCCC70A00
glabel D_80A17158
    .asciz "不正なデモ動作(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80A17180
    .asciz "../z_en_sakana.c"
    .balign 4

glabel D_80A17194
 .word 0x477FFF80
glabel D_80A17198
 .word 0x477FFF80
glabel D_80A1719C
    .float 1.4
    .balign 4

glabel D_80A171A0
    .float 0.8
    .balign 4

glabel D_80A171A4
    .float 0.8
    .balign 4

glabel D_80A171A8
    .float 0.8
    .balign 4

glabel D_80A171AC
    .float 0.8
    .balign 4

glabel D_80A171B0
    .float 0.1
    .balign 4

glabel D_80A171B4
 .word 0xC6F9EC00
glabel D_80A171B8
    .float 0.1
    .balign 4

glabel D_80A171BC
    .float 0.2
    .balign 4

glabel D_80A171C0
    .float 1.2
    .balign 4

glabel D_80A171C4
    .float 0.2
    .balign 4

glabel D_80A171C8
    .float 0.2
    .balign 4

glabel D_80A171CC
    .float 0.1
    .balign 4

glabel D_80A171D0
    .float 0.2
    .balign 4

glabel D_80A171D4
    .float 0.3
    .balign 4

glabel D_80A171D8
 .word 0x3F7B645A
glabel D_80A171DC
    .float 1.2
    .balign 4

glabel D_80A171E0
    .float 0.2
    .balign 4

glabel D_80A171E4
    .float 0.1
    .balign 4

glabel D_80A171E8
    .float 0.4
    .balign 4

glabel D_80A171EC
    .float 0.01
    .balign 4

glabel D_80A171F0
    .float 0.01
    .balign 4

glabel D_80A171F4
    .float 0.01
    .balign 4

glabel D_80A171F8
 .word 0x3A83126F, 0x00000000


