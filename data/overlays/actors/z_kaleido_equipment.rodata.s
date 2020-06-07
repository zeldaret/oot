.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8082F600
    .asciz "../z_kaleido_equipment.c"
    .balign 4

glabel D_8082F61C
    .asciz "../z_kaleido_equipment.c"
    .balign 4

glabel D_8082F638
    .asciz "../z_kaleido_equipment.c"
    .balign 4

glabel D_8082F654
    .asciz "H_arrowcase_1 + non_equip_item_table = %d\n"
    .balign 4

glabel D_8082F680
    .asciz "大人 H_arrowcase_1 + non_equip_item_table = %d\n"
    .balign 4

glabel D_8082F6B0
    .asciz "ccc=%d\n"
    .balign 4

glabel D_8082F6B8
    .asciz "kscope->select_name[Display_Equipment] = %d\n"
    .balign 4

glabel D_8082F6E8
    .asciz "../z_kaleido_equipment.c"
    .balign 4

glabel D_8082F704
 .word 0x3D3C6A7F
glabel D_8082F708
 .word 0x3D656042
glabel D_8082F70C
 .word 0x3D408312
