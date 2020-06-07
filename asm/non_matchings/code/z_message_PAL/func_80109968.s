.rdata
glabel D_80154054
    .asciz "../z_message_PAL.c"
    .balign 4

glabel D_80154068
    # Item 32-0
    .asciz "アイテム32-0\n"
    .balign 4

glabel D_80154078
    .asciz "../z_message_PAL.c"
    .balign 4

glabel D_8015408C
    # Item 24＝%d (%d) {%d}
    .asciz "アイテム24＝%d (%d) {%d}\n"
    .balign 4

.text
glabel func_80109968
/* B80B08 80109968 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B80B0C 8010996C AFB00020 */  sw    $s0, 0x20($sp)
/* B80B10 80109970 30B0FFFF */  andi  $s0, $a1, 0xffff
/* B80B14 80109974 24010076 */  li    $at, 118
/* B80B18 80109978 AFBF002C */  sw    $ra, 0x2c($sp)
/* B80B1C 8010997C AFB20028 */  sw    $s2, 0x28($sp)
/* B80B20 80109980 AFB10024 */  sw    $s1, 0x24($sp)
/* B80B24 80109984 AFA40030 */  sw    $a0, 0x30($sp)
/* B80B28 80109988 AFA50034 */  sw    $a1, 0x34($sp)
/* B80B2C 8010998C 16010007 */  bne   $s0, $at, .L801099AC
/* B80B30 80109990 AFA60038 */   sw    $a2, 0x38($sp)
/* B80B34 80109994 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* B80B38 80109998 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B80B3C 8010999C 240300FF */  li    $v1, 255
/* B80B40 801099A0 00811021 */  addu  $v0, $a0, $at
/* B80B44 801099A4 A043015E */  sb    $v1, 0x15e($v0)
/* B80B48 801099A8 A043015F */  sb    $v1, 0x15f($v0)
.L801099AC:
/* B80B4C 801099AC 2A010066 */  slti  $at, $s0, 0x66
/* B80B50 801099B0 10200029 */  beqz  $at, .L80109A58
/* B80B54 801099B4 3C038016 */   lui   $v1, %hi(gGameInfo)
/* B80B58 801099B8 3C0F8016 */  lui   $t7, %hi(gSaveContext+0x1409) # $t7, 0x8016
/* B80B5C 801099BC 91EFFA69 */  lbu   $t7, %lo(gSaveContext+0x1409)($t7)
/* B80B60 801099C0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* B80B64 801099C4 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* B80B68 801099C8 8C620000 */  lw    $v0, ($v1)
/* B80B6C 801099CC 3C198015 */  lui   $t9, %hi(D_80153C40)
/* B80B70 801099D0 000FC040 */  sll   $t8, $t7, 1
/* B80B74 801099D4 0338C821 */  addu  $t9, $t9, $t8
/* B80B78 801099D8 87393C40 */  lh    $t9, %lo(D_80153C40)($t9)
/* B80B7C 801099DC 844E0B00 */  lh    $t6, 0xb00($v0)
/* B80B80 801099E0 240C0020 */  li    $t4, 32
/* B80B84 801099E4 34018000 */  li    $at, 32768
/* B80B88 801099E8 01D94023 */  subu  $t0, $t6, $t9
/* B80B8C 801099EC A4480522 */  sh    $t0, 0x522($v0)
/* B80B90 801099F0 87A9003A */  lh    $t1, 0x3a($sp)
/* B80B94 801099F4 8C6B0000 */  lw    $t3, ($v1)
/* B80B98 801099F8 3C180075 */  lui   $t8, %hi(_icon_item_staticSegmentRomStart) # $t8, 0x75
/* B80B9C 801099FC 252A0006 */  addiu $t2, $t1, 6
/* B80BA0 80109A00 A56A0524 */  sh    $t2, 0x524($t3)
/* B80BA4 80109A04 8C6D0000 */  lw    $t5, ($v1)
/* B80BA8 80109A08 2718C000 */  addiu $t8, %lo(_icon_item_staticSegmentRomStart) # addiu $t8, $t8, -0x4000
/* B80BAC 80109A0C 240E05C1 */  li    $t6, 1473
/* B80BB0 80109A10 A5AC052A */  sh    $t4, 0x52a($t5)
/* B80BB4 80109A14 8FB10030 */  lw    $s1, 0x30($sp)
/* B80BB8 80109A18 00107B00 */  sll   $t7, $s0, 0xc
/* B80BBC 80109A1C 3C078015 */  lui   $a3, %hi(D_80154054) # $a3, 0x8015
/* B80BC0 80109A20 263120D8 */  addiu $s1, $s1, 0x20d8
/* B80BC4 80109A24 02219021 */  addu  $s2, $s1, $at
/* B80BC8 80109A28 8E4462B0 */  lw    $a0, 0x62b0($s2)
/* B80BCC 80109A2C AFAE0010 */  sw    $t6, 0x10($sp)
/* B80BD0 80109A30 24E74054 */  addiu $a3, %lo(D_80154054) # addiu $a3, $a3, 0x4054
/* B80BD4 80109A34 01F82821 */  addu  $a1, $t7, $t8
/* B80BD8 80109A38 24061000 */  li    $a2, 4096
/* B80BDC 80109A3C 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B80BE0 80109A40 24841000 */   addiu $a0, $a0, 0x1000
/* B80BE4 80109A44 3C048015 */  lui   $a0, %hi(D_80154068) # $a0, 0x8015
/* B80BE8 80109A48 0C00084C */  jal   osSyncPrintf
/* B80BEC 80109A4C 24844068 */   addiu $a0, %lo(D_80154068) # addiu $a0, $a0, 0x4068
/* B80BF0 80109A50 1000002F */  b     .L80109B10
/* B80BF4 80109A54 964B63CE */   lhu   $t3, 0x63ce($s2)
.L80109A58:
/* B80BF8 80109A58 3C088016 */  lui   $t0, %hi(gSaveContext+0x1409) # $t0, 0x8016
/* B80BFC 80109A5C 9108FA69 */  lbu   $t0, %lo(gSaveContext+0x1409)($t0)
/* B80C00 80109A60 2463FA90 */  addiu $v1, %lo(gGameInfo)
/* B80C04 80109A64 8C620000 */  lw    $v0, ($v1)
/* B80C08 80109A68 3C0A8015 */  lui   $t2, %hi(D_80153C48)
/* B80C0C 80109A6C 00084840 */  sll   $t1, $t0, 1
/* B80C10 80109A70 01495021 */  addu  $t2, $t2, $t1
/* B80C14 80109A74 854A3C48 */  lh    $t2, %lo(D_80153C48)($t2)
/* B80C18 80109A78 84590B00 */  lh    $t9, 0xb00($v0)
/* B80C1C 80109A7C 24180018 */  li    $t8, 24
/* B80C20 80109A80 34018000 */  li    $at, 32768
/* B80C24 80109A84 032A5823 */  subu  $t3, $t9, $t2
/* B80C28 80109A88 A44B0522 */  sh    $t3, 0x522($v0)
/* B80C2C 80109A8C 87AC003A */  lh    $t4, 0x3a($sp)
/* B80C30 80109A90 8C6F0000 */  lw    $t7, ($v1)
/* B80C34 80109A94 001040C0 */  sll   $t0, $s0, 3
/* B80C38 80109A98 258D000A */  addiu $t5, $t4, 0xa
/* B80C3C 80109A9C A5ED0524 */  sh    $t5, 0x524($t7)
/* B80C40 80109AA0 8C6E0000 */  lw    $t6, ($v1)
/* B80C44 80109AA4 01104021 */  addu  $t0, $t0, $s0
/* B80C48 80109AA8 00084200 */  sll   $t0, $t0, 8
/* B80C4C 80109AAC A5D8052A */  sh    $t8, 0x52a($t6)
/* B80C50 80109AB0 8FB10030 */  lw    $s1, 0x30($sp)
/* B80C54 80109AB4 3C19007D */  lui   $t9, %hi(_icon_item_24_staticSegmentRomStart) # $t9, 0x7d
/* B80C58 80109AB8 27396000 */  addiu $t9, %lo(_icon_item_24_staticSegmentRomStart) # addiu $t9, $t9, 0x6000
/* B80C5C 80109ABC 263120D8 */  addiu $s1, $s1, 0x20d8
/* B80C60 80109AC0 02219021 */  addu  $s2, $s1, $at
/* B80C64 80109AC4 3C01FFFC */  lui   $at, (0xFFFC6A00 >> 16) # lui $at, 0xfffc
/* B80C68 80109AC8 8E4462B0 */  lw    $a0, 0x62b0($s2)
/* B80C6C 80109ACC 34216A00 */  ori   $at, (0xFFFC6A00 & 0xFFFF) # ori $at, $at, 0x6a00
/* B80C70 80109AD0 01014821 */  addu  $t1, $t0, $at
/* B80C74 80109AD4 240A05CA */  li    $t2, 1482
/* B80C78 80109AD8 3C078015 */  lui   $a3, %hi(D_80154078) # $a3, 0x8015
/* B80C7C 80109ADC 24E74078 */  addiu $a3, %lo(D_80154078) # addiu $a3, $a3, 0x4078
/* B80C80 80109AE0 AFAA0010 */  sw    $t2, 0x10($sp)
/* B80C84 80109AE4 01392821 */  addu  $a1, $t1, $t9
/* B80C88 80109AE8 24060900 */  li    $a2, 2304
/* B80C8C 80109AEC 0C0006A8 */  jal   DmaMgr_SendRequest1
/* B80C90 80109AF0 24841000 */   addiu $a0, $a0, 0x1000
/* B80C94 80109AF4 3C048015 */  lui   $a0, %hi(D_8015408C) # $a0, 0x8015
/* B80C98 80109AF8 2484408C */  addiu $a0, %lo(D_8015408C) # addiu $a0, $a0, 0x408c
/* B80C9C 80109AFC 02002825 */  move  $a1, $s0
/* B80CA0 80109B00 2606FF94 */  addiu $a2, $s0, -0x6c
/* B80CA4 80109B04 0C00084C */  jal   osSyncPrintf
/* B80CA8 80109B08 24070054 */   li    $a3, 84
/* B80CAC 80109B0C 964B63CE */  lhu   $t3, 0x63ce($s2)
.L80109B10:
/* B80CB0 80109B10 26217FFF */  addiu $at, $s1, 0x7fff
/* B80CB4 80109B14 240D0001 */  li    $t5, 1
/* B80CB8 80109B18 256C0001 */  addiu $t4, $t3, 1
/* B80CBC 80109B1C A42C63CF */  sh    $t4, 0x63cf($at)
/* B80CC0 80109B20 A02D63E7 */  sb    $t5, 0x63e7($at)
/* B80CC4 80109B24 8FBF002C */  lw    $ra, 0x2c($sp)
/* B80CC8 80109B28 8FB20028 */  lw    $s2, 0x28($sp)
/* B80CCC 80109B2C 8FB10024 */  lw    $s1, 0x24($sp)
/* B80CD0 80109B30 8FB00020 */  lw    $s0, 0x20($sp)
/* B80CD4 80109B34 03E00008 */  jr    $ra
/* B80CD8 80109B38 27BD0030 */   addiu $sp, $sp, 0x30

