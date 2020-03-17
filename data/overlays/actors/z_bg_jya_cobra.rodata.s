.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80897570
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808975B0
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_808975C4
 .word 0x1B5B3331, 0x6D000000
glabel D_808975CC
    .asciz "Ｅｒｒｏｒ : Mir Ray 発生失敗 (%s %d)\n"
    .balign 4

glabel D_808975F4
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_80897608
 .word 0x1B5B6D00
glabel D_8089760C
    .asciz "(jya コブラ)(arg_data 0x%04x)(act %x)(txt %x)(txt16 %x)\n"
    .balign 4

glabel D_80897648
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_8089765C
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_80897670
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_80897684
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_80897698
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_808976AC
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_808976C0
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_808976D4
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_808976E8
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_808976FC
 .word 0x38C90FDB
glabel D_80897700
 .word 0x38C90FDB
glabel D_80897704
 .word 0x3DCCCCCD
glabel D_80897708
 .word 0x3DCCCCCD
glabel D_8089770C
 .word 0x3EAE147B
glabel D_80897710
 .word 0x3EAE147B
glabel D_80897714
 .word 0x3DCCCCCD
glabel D_80897718
 .word 0x3EAE147B
glabel D_8089771C
 .word 0x3EAE147B
glabel D_80897720
 .word 0x3F490FDB
glabel D_80897724
 .word 0x38C90FDB
glabel D_80897728
 .word 0x3F666666
glabel D_8089772C
 .word 0x3F23D70A
glabel D_80897730
 .word 0x3E4CCCCD
glabel D_80897734
 .word 0x3A83126F
glabel D_80897738
 .word 0x3A83126F
glabel D_8089773C
 .word 0x3A83126F
glabel D_80897740
 .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000


