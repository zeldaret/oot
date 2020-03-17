.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80976880
 .word 0x1B5B3336, 0x6D206E6F, 0x203D2025, 0x640A1B5B, 0x6D000000
glabel D_80976894
    .asciz "[36m bank_ID = %d\n[m"
    .balign 4

glabel D_809768AC
 .word 0x30000000
glabel D_809768B0
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809768C4
 .word 0x30000000
glabel D_809768C8
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809768DC
    .asciz "[36m 転送終了 move_wait [m"
    .balign 4

glabel D_809768FC
 .word 0x30000000
glabel D_80976900
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976914
    .asciz "[36m 縮むバージョン \n[m"
    .balign 4

glabel D_80976930
    .asciz "[36m 通常 バージョン \n[m"
    .balign 4

glabel D_8097694C
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976960
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976974
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976988
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_8097699C
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809769B0
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809769C4
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809769D8
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_809769EC
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A00
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A14
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A28
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A3C
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A50
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A64
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A78
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A8C
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976AA0
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976AB4
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976AC8
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976ADC
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976AF0
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976B04
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976B18
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976B2C
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976B40
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976B54
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976B68
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976B7C
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976B90
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976BA4
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976BB8
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976BCC
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976BE0
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976BF4
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976C08
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976C1C
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976C30
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976C44
    .asciz "../z_demo_effect.c"
    .balign 4

glabel jtbl_80976C58
.word L809711AC
.word L809711C8
.word L809711F8
.word L809713A8
.word L809713CC
.word L80971424
.word L809714B8
.word L80971544
.word L809715E0
.word L809716D8
.word L809716EC
.word L80971700
.word L80971714
.word L80971728
.word L8097173C
.word L80971774
.word L809715B0
.word L80971578
.word L8097125C
.word L809717B0
.word L809717E8
.word L80971820
.word L8097189C
.word L80971750
.word L80971764
.word L80971764
glabel jtbl_80976CC0
.word L809712AC
.word L809712CC
.word L809712EC
.word L8097130C
.word L8097132C
.word L8097134C
.word L80971370
glabel D_80976CDC
 .word 0xBDCCCCCD
glabel D_80976CE0
 .word 0x3DCCCCCD
glabel D_80976CE4
 .word 0x3FD9999A
glabel D_80976CE8
 .word 0x3AAEC33E
glabel D_80976CEC
 .word 0x3C23D70A
glabel D_80976CF0
 .word 0x3E0F5C29
glabel D_80976CF4
 .word 0x3F19999A
glabel D_80976CF8
 .word 0xBCF5C28F
glabel D_80976CFC
 .word 0x3F666666
glabel D_80976D00
 .word 0x3C23D70A
glabel D_80976D04
 .word 0x3C23D70A
glabel D_80976D08
 .word 0x3E6B851F
glabel D_80976D0C
 .word 0x3A83126F
glabel D_80976D10
 .word 0x4001EB85
glabel D_80976D14
 .word 0x3D4CCCCD
glabel D_80976D18
 .word 0x3DCCCCCD
glabel D_80976D1C
 .word 0x3BA3D70A
glabel D_80976D20
 .word 0x3F866666
glabel D_80976D24
 .word 0x3E6B851F
glabel D_80976D28
 .word 0x3E19999A
glabel D_80976D2C
 .word 0x3C8EFA35
glabel D_80976D30
 .word 0x38C90FDB
glabel D_80976D34
 .word 0x38C90FDB
glabel D_80976D38
 .word 0x4622F983
glabel D_80976D3C
 .word 0xBDCCCCCD
glabel D_80976D40
 .word 0x3E4CCCCD
glabel D_80976D44
 .word 0x3E449809
glabel D_80976D48
 .word 0x40060A92
glabel D_80976D4C
 .word 0x3E449809
glabel D_80976D50
 .word 0x40860A92
glabel D_80976D54
 .word 0x3E449809
glabel D_80976D58
 .word 0x3C8EFA35
glabel D_80976D5C
 .word 0x3FC90FDB
glabel D_80976D60
 .word 0x3CF5C28F
glabel D_80976D64
 .word 0x3D4CCCCD
glabel D_80976D68
 .word 0x3C8EFA35
glabel D_80976D6C
 .word 0x3C8EFA35
glabel D_80976D70
 .word 0x38C90FDB
glabel D_80976D74
 .word 0x4019999A
glabel D_80976D78
 .word 0x38C90FDB
glabel D_80976D7C
 .word 0x38C90FDB
glabel D_80976D80
 .word 0x4622F983
glabel D_80976D84
 .word 0x4622F983, 0x00000000, 0x00000000


