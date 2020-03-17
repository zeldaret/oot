.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A740A0
    .asciz "(ice 炎)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80A740BC
    .asciz "ありえない値(ratio = %f)\n"
    .balign 4

glabel D_80A740D8
    .asciz "../z_en_ice_hono.c"
    .balign 4

glabel D_80A740EC
    .asciz "../z_en_ice_hono.c"
    .balign 4

glabel D_80A74100
    .asciz "../z_en_ice_hono.c"
    .balign 4

glabel D_80A74114
 .word 0x37A7C5AC
glabel D_80A74118
 .word 0xBE99999A
glabel D_80A7411C
 .word 0x457A0666
glabel D_80A74120
 .word 0x45FA019A
glabel D_80A74124
 .word 0x3A51B717
glabel D_80A74128
 .word 0xBE99999A
glabel D_80A7412C
 .word 0x477FFF80
glabel D_80A74130
 .word 0x477FFF80
glabel D_80A74134
 .word 0x3ADED289
glabel D_80A74138
 .word 0x455AC000
glabel D_80A7413C
 .word 0x38D1B717
glabel D_80A74140
 .word 0x455AC000
glabel D_80A74144
 .word 0x45BB8000
glabel D_80A74148
 .word 0x3BA3D70A
glabel D_80A7414C
 .word 0x3B83126F
glabel D_80A74150
 .word 0x3FCCCCCD
glabel D_80A74154
 .word 0x3BA3D70A
glabel D_80A74158
 .word 0x3B449BA6
glabel D_80A7415C
 .word 0x3F2AC083
glabel D_80A74160
 .word 0x3DCCCCCD
glabel D_80A74164
 .word 0x3D4CCCCD
glabel D_80A74168
 .word 0x3ED9999A
glabel D_80A7416C
 .word 0x3F333333
glabel D_80A74170
 .word 0x3E4CCCCD
glabel D_80A74174
 .word 0x38C90FDB, 0x00000000, 0x00000000


