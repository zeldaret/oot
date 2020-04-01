.rdata
glabel D_8013A8BC
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013A8E4
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A8FC
    .asciz "CollisionCheck_setAT_SAC():全データ数より大きいところに登録しようとしている。\n"
    # EUC-JP: 全データ数より大きいところに登録しようとしている。 | You are trying to register a location that is larger than the total number of data.
    .balign 4

glabel D_8013A94C
    .asciz "CollisionCheck_setAT():インデックスがオーバーして追加不能\n"
    # EUC-JP: インデックスがオーバーして追加不能 | Index cannot be added due to over index
    .balign 4

.text
glabel func_8005D8AC
/* AD4A4C 8005D8AC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4A50 8005D8B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4A54 8005D8B4 AFB10018 */  sw    $s1, 0x18($sp)
/* AD4A58 8005D8B8 AFB00014 */  sw    $s0, 0x14($sp)
/* AD4A5C 8005D8BC AFA40020 */  sw    $a0, 0x20($sp)
/* AD4A60 8005D8C0 90CE0015 */  lbu   $t6, 0x15($a2)
/* AD4A64 8005D8C4 00A08025 */  move  $s0, $a1
/* AD4A68 8005D8C8 00C08825 */  move  $s1, $a2
/* AD4A6C 8005D8CC 29C10004 */  slti  $at, $t6, 4
/* AD4A70 8005D8D0 14200008 */  bnez  $at, .L8005D8F4
/* AD4A74 8005D8D4 3C048014 */   lui   $a0, %hi(D_8013A8BC) # $a0, 0x8014
/* AD4A78 8005D8D8 3C058014 */  lui   $a1, %hi(D_8013A8E4) # $a1, 0x8014
/* AD4A7C 8005D8DC 24A5A8E4 */  addiu $a1, %lo(D_8013A8E4) # addiu $a1, $a1, -0x571c
/* AD4A80 8005D8E0 2484A8BC */  addiu $a0, %lo(D_8013A8BC) # addiu $a0, $a0, -0x5744
/* AD4A84 8005D8E4 24060BDD */  li    $a2, 3037
/* AD4A88 8005D8E8 0C0007FC */  jal   __assert
/* AD4A8C 8005D8EC AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4A90 8005D8F0 8FA7002C */  lw    $a3, 0x2c($sp)
.L8005D8F4:
/* AD4A94 8005D8F4 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4A98 8005D8F8 0C03034A */  jal   func_800C0D28
/* AD4A9C 8005D8FC AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4AA0 8005D900 24010001 */  li    $at, 1
/* AD4AA4 8005D904 14410003 */  bne   $v0, $at, .L8005D914
/* AD4AA8 8005D908 8FA7002C */   lw    $a3, 0x2c($sp)
/* AD4AAC 8005D90C 10000034 */  b     .L8005D9E0
/* AD4AB0 8005D910 2402FFFF */   li    $v0, -1
.L8005D914:
/* AD4AB4 8005D914 AFA7002C */  sw    $a3, 0x2c($sp)
/* AD4AB8 8005D918 922F0015 */  lbu   $t7, 0x15($s1)
/* AD4ABC 8005D91C 3C198012 */  lui   $t9, %hi(D_8011DEF8)
/* AD4AC0 8005D920 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4AC4 8005D924 000FC080 */  sll   $t8, $t7, 2
/* AD4AC8 8005D928 0338C821 */  addu  $t9, $t9, $t8
/* AD4ACC 8005D92C 8F39DEF8 */  lw    $t9, %lo(D_8011DEF8)($t9)
/* AD4AD0 8005D930 02202825 */  move  $a1, $s1
/* AD4AD4 8005D934 0320F809 */  jalr  $t9
/* AD4AD8 8005D938 00000000 */  nop   
/* AD4ADC 8005D93C 8E230000 */  lw    $v1, ($s1)
/* AD4AE0 8005D940 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD4AE4 8005D944 50600007 */  beql  $v1, $zero, .L8005D964
/* AD4AE8 8005D948 96090002 */   lhu   $t1, 2($s0)
/* AD4AEC 8005D94C 8C680130 */  lw    $t0, 0x130($v1)
/* AD4AF0 8005D950 55000004 */  bnezl $t0, .L8005D964
/* AD4AF4 8005D954 96090002 */   lhu   $t1, 2($s0)
/* AD4AF8 8005D958 10000021 */  b     .L8005D9E0
/* AD4AFC 8005D95C 2402FFFF */   li    $v0, -1
/* AD4B00 8005D960 96090002 */  lhu   $t1, 2($s0)
.L8005D964:
/* AD4B04 8005D964 312A0001 */  andi  $t2, $t1, 1
/* AD4B08 8005D968 5140000E */  beql  $t2, $zero, .L8005D9A4
/* AD4B0C 8005D96C 86020000 */   lh    $v0, ($s0)
/* AD4B10 8005D970 860B0000 */  lh    $t3, ($s0)
/* AD4B14 8005D974 00076080 */  sll   $t4, $a3, 2
/* AD4B18 8005D978 3C048014 */  lui   $a0, %hi(D_8013A8FC) # $a0, 0x8014
/* AD4B1C 8005D97C 00EB082A */  slt   $at, $a3, $t3
/* AD4B20 8005D980 14200005 */  bnez  $at, .L8005D998
/* AD4B24 8005D984 020C6821 */   addu  $t5, $s0, $t4
/* AD4B28 8005D988 0C00084C */  jal   osSyncPrintf
/* AD4B2C 8005D98C 2484A8FC */   addiu $a0, %lo(D_8013A8FC) # addiu $a0, $a0, -0x5704
/* AD4B30 8005D990 10000013 */  b     .L8005D9E0
/* AD4B34 8005D994 2402FFFF */   li    $v0, -1
.L8005D998:
/* AD4B38 8005D998 10000010 */  b     .L8005D9DC
/* AD4B3C 8005D99C ADB10004 */   sw    $s1, 4($t5)
/* AD4B40 8005D9A0 86020000 */  lh    $v0, ($s0)
.L8005D9A4:
/* AD4B44 8005D9A4 3C048014 */  lui   $a0, %hi(D_8013A94C) # $a0, 0x8014
/* AD4B48 8005D9A8 28410032 */  slti  $at, $v0, 0x32
/* AD4B4C 8005D9AC 14200005 */  bnez  $at, .L8005D9C4
/* AD4B50 8005D9B0 00027080 */   sll   $t6, $v0, 2
/* AD4B54 8005D9B4 0C00084C */  jal   osSyncPrintf
/* AD4B58 8005D9B8 2484A94C */   addiu $a0, %lo(D_8013A94C) # addiu $a0, $a0, -0x56b4
/* AD4B5C 8005D9BC 10000008 */  b     .L8005D9E0
/* AD4B60 8005D9C0 2402FFFF */   li    $v0, -1
.L8005D9C4:
/* AD4B64 8005D9C4 020E7821 */  addu  $t7, $s0, $t6
/* AD4B68 8005D9C8 ADF10004 */  sw    $s1, 4($t7)
/* AD4B6C 8005D9CC 86180000 */  lh    $t8, ($s0)
/* AD4B70 8005D9D0 00403825 */  move  $a3, $v0
/* AD4B74 8005D9D4 27190001 */  addiu $t9, $t8, 1
/* AD4B78 8005D9D8 A6190000 */  sh    $t9, ($s0)
.L8005D9DC:
/* AD4B7C 8005D9DC 00E01025 */  move  $v0, $a3
.L8005D9E0:
/* AD4B80 8005D9E0 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4B84 8005D9E4 8FB00014 */  lw    $s0, 0x14($sp)
/* AD4B88 8005D9E8 8FB10018 */  lw    $s1, 0x18($sp)
/* AD4B8C 8005D9EC 03E00008 */  jr    $ra
/* AD4B90 8005D9F0 27BD0020 */   addiu $sp, $sp, 0x20

