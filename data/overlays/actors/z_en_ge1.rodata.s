.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A327C0
    .asciz "[36m谷底 ゲルド 撤退 \n[m"
    .balign 4

glabel D_80A327DC
    .asciz "[36mやぶさめ ゲルド EVENT_INF(0) = %x\n[m"
    .balign 4

glabel D_80A32808
    .asciz "../z_en_ge1.c"
    .balign 4

glabel D_80A32818
    .asciz "z_common_data.yabusame_total = %d\n"
    .balign 4

glabel D_80A3283C
    .asciz "../z_en_ge1.c"
    .balign 4

glabel D_80A3284C
    .asciz "z_common_data.memory.information.room_inf[127][ 0 ] = %d\n"
    .balign 4

glabel D_80A32888
    .asciz "../z_en_ge1.c"
    .balign 4

glabel D_80A32898
    .asciz "../z_en_ge1.c"
    .balign 4

glabel D_80A328A8
    .asciz "../z_en_ge1.c"
    .balign 4

glabel D_80A328B8
 .word 0x2E2E2F7A, 0x5F656E5F, 0x6765312E, 0x63000000, 0x00000000, 0x00000000


