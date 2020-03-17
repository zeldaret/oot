.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8082F420
    .asciz "../z_kaleido_collect.c"
    .balign 4

glabel D_8082F438
    .asciz "000 ccc=%d\n"
    .balign 4

glabel D_8082F444
    .asciz "111 ccc=%d\n"
    .balign 4

glabel D_8082F450
    .asciz "222 ccc=%d (%d, %d, %d)\n"
    .balign 4

glabel D_8082F46C
    .asciz "999 ccc=%d (%d,  %d)\n"
    .balign 4

glabel D_8082F484
    .asciz "888 ccc=%d (%d,  %d,  %x)\n"
    .balign 4

glabel D_8082F4A0
    .asciz "../z_kaleido_collect.c\x00\x00\x00\x00\x00\x00\x00\x00"
    .balign 4

glabel D_8082F4C0
 .word 0x25730000
glabel D_8082F4C4
 .word 0x8C8ED98E, 0xCB8EDF8E, 0xB0000000
glabel D_8082F4D0
 .word 0x25730000
glabel D_8082F4D4
 .word 0x8C8ECA8E, 0xB08EC400
glabel D_8082F4DC
 .word 0x25730000
glabel D_8082F4E0
 .word 0x2F340000
glabel D_8082F4E4
 .word 0x25730000
glabel D_8082F4E8
 .word 0x8C8EB18E, 0xB28EC38E, 0xD1000000
glabel D_8082F4F4
 .word 0x25730000
glabel D_8082F4F8
 .word 0x4B455900
glabel D_8082F4FC
 .word 0x25730000
glabel D_8082F500
 .word 0x8D8EBF8E, 0xB38ECB8E, 0xDE000000
glabel D_8082F50C
 .word 0x25730000
glabel D_8082F510
 .word 0x8C8EB98E, 0xDD000000
glabel D_8082F518
 .word 0x25730000
glabel D_8082F51C
 .word 0x8C8EC08E, 0xC3000000
glabel D_8082F524
 .word 0x25730000
glabel D_8082F528
 .word 0x4D415000
glabel D_8082F52C
 .word 0x25730000
glabel D_8082F530
 .word 0x8D8ECC8E, 0xB38EB28E, 0xDD000000
glabel D_8082F53C
 .word 0x25730000
glabel D_8082F540
 .word 0x8D8EBE8E, 0xB28EDA8E, 0xB28EBE8E, 0xB7000000
glabel D_8082F550
 .word 0x25730000
glabel D_8082F554
 .word 0x8C8EB58E, 0xB68ED88E, 0xC5000000
glabel D_8082F560
 .word 0x25730000
glabel D_8082F564
 .word 0x8C8EBA8E, 0xDA8EB88E, 0xC4000000
glabel D_8082F570
 .word 0x25730000
glabel D_8082F574
 .word 0x8C8EB78E, 0xDD8EBD8E, 0xC0000000
glabel D_8082F580
 .word 0x25730000
glabel D_8082F584
 .word 0x8C8EB68E, 0xB98ED700
glabel D_8082F58C
 .word 0x25730000
glabel D_8082F590
 .word 0x2F340000
glabel D_8082F594
    .asciz "../z_kaleido_debug.c"
    .balign 4

glabel D_8082F5AC
    .asciz "../z_kaleido_debug.c"
    .balign 4

glabel D_8082F5C4
    .asciz "../z_kaleido_debug.c"
    .balign 4

glabel D_8082F5DC
    .asciz "i=%d  j=%d\n"
    .balign 4

glabel D_8082F5E8
    .asciz "../z_kaleido_debug.c"
    .balign 4

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
glabel D_8082F710
    .asciz "../z_kaleido_item.c"
    .balign 4

glabel D_8082F724
    .asciz "../z_kaleido_item.c"
    .balign 4

glabel D_8082F738
    .asciz "../z_kaleido_item.c"
    .balign 4

glabel D_8082F74C
    .asciz "now=%d  ccc=%d\n"
    .balign 4

glabel D_8082F75C
    .asciz "【Ｘ cursor=%d(%) (cur_xpt=%d)(ok_fg=%d)(ccc=%d)(key_angle=%d)】  "
    .balign 4

glabel D_8082F7A0
    .asciz "【Ｙ cursor=%d(%) (cur_ypt=%d)(ok_fg=%d)(ccc=%d)】  "
    .balign 4

glabel D_8082F7D8
    .asciz "../z_kaleido_item.c"
    .balign 4

glabel D_8082F7EC
 .word 0x0AA1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE1A1E1A1, 0xE10A0000
glabel D_8082F830
    .asciz "Ｃ左sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F858
    .asciz "Ｃ左sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F880
    .asciz "Ｃ下sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F8A8
    .asciz "Ｃ下sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F8D0
    .asciz "Ｃ下sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F8F8
    .asciz "Ｃ下sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F920
    .asciz "Ｃ右sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F948
    .asciz "Ｃ右sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F970
    .asciz "Ｃ右sl_item_no=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F998
    .asciz "Ｃ右sl_number=%d (1)=%d (2)=%d (3)=%d\n"
    .balign 4

glabel D_8082F9C0
    .asciz "../z_kaleido_map_PAL.c"
    .balign 4

glabel D_8082F9D8
    .asciz "kscope->cursor_point=%d\n"
    .balign 4

glabel D_8082F9F4
    .asciz "kscope->cursor_point====%d\n"
    .balign 4

glabel D_8082FA10
    .asciz "../z_kaleido_map_PAL.c"
    .balign 4

glabel D_8082FA28
    .asciz "../z_kaleido_map_PAL.c"
    .balign 4

glabel D_8082FA40
    .asciz "../z_kaleido_map_PAL.c\x00\x00\x00\x00\x00\x00"
    .balign 4

glabel D_8082FA60
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FA7C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FA98
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FAB4
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FAD0
    .asciz "kscope->kscp_pos+pt = %d\n"
    .balign 4

glabel D_8082FAEC
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FB08
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FB24
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FB40
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FB5C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FB78
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FB94
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FBB0
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FBCC
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FBE8
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FC04
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FC20
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FC3C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FC58
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FC74
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FC90
    .asciz "[33m"
    .balign 4

glabel D_8082FC98
    .asciz "キンスタ数(%d) Get_KIN_STA=%x (%x)  (%x)\n"
    .balign 4

glabel D_8082FCC4
 .word 0x1B5B6D00
glabel D_8082FCC8
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FCE4
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FD00
    .asciz "zoom_name=%d\n"
    .balign 4

glabel D_8082FD10
    .asciz "J_N=%d  point=%d\n"
    .balign 4

glabel D_8082FD24
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FD40
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FD5C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FD78
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FD94
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FDB0
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FDCC
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FDE8
    .asciz "ＭＡＰ ＤＭＡ = %d\n"
    .balign 4

glabel D_8082FDFC
    .asciz "プレイヤー size1＝%x\n"
    .balign 4

glabel D_8082FE14
    .asciz "icon_item size0=%x\n"
    .balign 4

glabel D_8082FE28
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FE44
    .asciz "icon_item24 size=%x\n"
    .balign 4

glabel D_8082FE5C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FE78
    .asciz "icon_item_dungeon dungeon-size2=%x\n"
    .balign 4

glabel D_8082FE9C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FEB8
    .asciz "icon_item_field field-size2=%x\n"
    .balign 4

glabel D_8082FED8
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FEF4
    .asciz "icon_item_dungeon dungeon-size=%x\n"
    .balign 4

glabel D_8082FF18
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FF34
    .asciz "icon_item_dungeon dungeon-size=%x\n"
    .balign 4

glabel D_8082FF58
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FF74
    .asciz "icon_item_dungeon dungeon-size=%x\n"
    .balign 4

glabel D_8082FF98
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FFB4
    .asciz "サイズ＝%x\n"
    .balign 4

glabel D_8082FFC0
    .asciz "item_name I_N_PT=%x\n"
    .balign 4

glabel D_8082FFD8
    .asciz "サイズ＝%x\n"
    .balign 4

glabel D_8082FFE4
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_80830000
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8083001C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_80830038
    .asciz "icon_item size0=%x\n"
    .balign 4

glabel D_8083004C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_80830068
    .asciz "icon_item24 size=%x\n"
    .balign 4

glabel D_80830080
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8083009C
    .asciz "icon_item_dungeon gameover-size2=%x\n"
    .balign 4

glabel D_808300C4
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_808300E0
    .asciz "icon_item_dungeon dungeon-size=%x\n"
    .balign 4

glabel D_80830104
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_80830120
    .asciz "icon_item_dungeon dungeon-size=%x\n"
    .balign 4

glabel D_80830144
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_80830160
    .asciz "icon_item_dungeon dungeon-size=%x\n"
    .balign 4

glabel D_80830184
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_808301A0
    .asciz "kscope->angle_s = %f\n"
    .balign 4

glabel D_808301B8
    .asciz "[33m"
    .balign 4

glabel D_808301C0
    .asciz "MAGIC_NOW=%d "
    .balign 4

glabel D_808301D0
    .asciz "Z_MAGIC_NOW_NOW=%d   →  "
    .balign 4

glabel D_808301EC
    .asciz "MAGIC_NOW=%d "
    .balign 4

glabel D_808301FC
    .asciz "Z_MAGIC_NOW_NOW=%d\n"
    .balign 4

glabel D_80830210
 .word 0x1B5B6D00
glabel D_80830214
    .asciz "[33m"
    .balign 4

glabel D_8083021C
    .asciz "i=%d  LAST_TIME_TYPE=%d\n"
    .balign 4

glabel D_80830238
 .word 0x1B5B6D00
glabel D_8083023C
 .word 0x3F47AE14
glabel D_80830240
 .word 0x3F47AE14
glabel D_80830244
 .word 0x3FC8F5C3
glabel D_80830248
 .word 0x3F47AE14
glabel D_8083024C
 .word 0x4048F5C3
glabel D_80830250
 .word 0x3F47AE14
glabel D_80830254
 .word 0xBFC8F5C3
glabel D_80830258
 .word 0x3F47AE14
glabel D_8083025C
 .word 0x3F47AE14
glabel D_80830260
 .word 0x3F47AE14
glabel D_80830264
 .word 0x3F47AE14
glabel D_80830268
 .word 0xBFC8F5C3
glabel D_8083026C
 .word 0x3F47AE14
glabel D_80830270
 .word 0x4048F5C3
glabel D_80830274
 .word 0x3F47AE14
glabel D_80830278
 .word 0x3FC8F5C3
glabel D_8083027C
 .word 0x3F47AE14
glabel D_80830280
 .word 0x3F47AE14
glabel D_80830284
 .word 0xBFC8F5C3
glabel D_80830288
 .word 0x3F47AE14
glabel D_8083028C
 .word 0x4048F5C3
glabel D_80830290
 .word 0x3F47AE14
glabel D_80830294
 .word 0x3FC8F5C3
glabel jtbl_80830298
.word L80826E00
.word L808279D0
.word L80827C1C
.word L80827C90
.word L80828098
.word L80829940
.word L80829940
.word L808286FC
.word L80828A38
.word L80828E28
.word L80828E54
.word L808290DC
.word L808291B8
.word L80829264
.word L80829484
.word L808295F0
.word L80829828
glabel jtbl_808302DC
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827100
.word L80827100
.word L80827100
.word L80827100
.word L80827100
.word L80827100
.word L80827100
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
.word L80827078
glabel jtbl_80830340
.word L80827CB4
.word L80827D78
.word L80827D8C
.word L80827DBC
.word L80829940
.word L80827DCC
.word L80827F70
.word L80829940
.word L80827FB4
.word L80829940
glabel jtbl_80830368
.word L808280BC
.word L80828198
.word L808284C0
.word L808283CC
.word L80828310
.word L808284C0
.word L808283CC
glabel jtbl_80830384
.word L808293F8
.word L80829478
.word L80829478
.word L80829478
.word L808293F0
.word L80829478
.word L80829478
.word L80829478
.word L80829434
.word L80829478
.word L80829478
.word L80829478
.word L80829420
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829440
glabel jtbl_808303D8
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L8082940C
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
.word L80829478
glabel jtbl_808304B8
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829894
.word L80829894
.word L80829894
.word L80829894
.word L80829894
.word L80829894
.word L80829894
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word L80829880
.word 0x00000000
glabel D_80830520
 .word 0x00000000, 0x00000001, 0x00000002, 0x00000003
glabel D_80830530
 .word 0x00000002, 0x00000002, 0x00000002, 0x00000003
glabel D_80830540
 .word 0x00000003, 0x00000001, 0x00000000, 0x00000000
glabel D_80830550
 .word 0x00000002, 0x00000001, 0x00000000, 0x00000000
glabel D_80830560
 .word 0x00000000, 0x00000001, 0x00000002, 0x00000004
glabel D_80830570
 .word 0x00000000, 0x00000001, 0x00000002, 0x00000002
glabel D_80830580
    .asciz "../z_lmap_mark.c"
    .balign 4

glabel D_80830594
    .asciz "../z_lmap_mark.c"
    .balign 4

glabel D_808305A8
    .asciz "../z_lmap_mark.c"
    .balign 4

glabel jtbl_808305BC
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
.word L80829C28
glabel jtbl_808305DC
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word L8082A044
.word 0x00000000, 0x00000000, 0x00000000
glabel D_80830610
 .word 0xFFFC0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFFC, 0x00000000, 0x00000100, 0xFFFFFFFF, 0x00040004, 0x00000000, 0x01000000, 0xFFFFFFFF, 0x0004FFFC, 0x00000000, 0x01000100, 0xFFFFFFFF
glabel D_80830650
 .word 0xFFFC0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFFC, 0x00000000, 0x00000100, 0xFFFFFFFF, 0x00040004, 0x00000000, 0x01000000, 0xFFFFFFFF, 0x0004FFFC, 0x00000000, 0x01000100, 0xFFFFFFFF

