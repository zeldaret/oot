.rdata
glabel D_8013A840
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013A868
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A880
    .asciz "CollisionCheck_setAT():インデックスがオーバーして追加不能\n"
    # EUC-JP: インデックスがオーバーして追加不能 | Index cannot be added due to over index
    .balign 4

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
glabel Actor_CollisionCheck_SetAT
/* AD493C 8005D79C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4940 8005D7A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4944 8005D7A4 AFB00018 */  sw    $s0, 0x18($sp)
/* AD4948 8005D7A8 00C08025 */  move  $s0, $a2
/* AD494C 8005D7AC AFA40020 */  sw    $a0, 0x20($sp)
/* AD4950 8005D7B0 0C03034A */  jal   func_800C0D28
/* AD4954 8005D7B4 AFA50024 */   sw    $a1, 0x24($sp)
/* AD4958 8005D7B8 24010001 */  li    $at, 1
/* AD495C 8005D7BC 14410003 */  bne   $v0, $at, .L8005D7CC
/* AD4960 8005D7C0 8FA70024 */   lw    $a3, 0x24($sp)
/* AD4964 8005D7C4 10000034 */  b     .L8005D898
/* AD4968 8005D7C8 2402FFFF */   li    $v0, -1
.L8005D7CC:
/* AD496C 8005D7CC 92020015 */  lbu   $v0, 0x15($s0)
/* AD4970 8005D7D0 3C048014 */  lui   $a0, %hi(D_8013A840) # $a0, 0x8014
/* AD4974 8005D7D4 2484A840 */  addiu $a0, %lo(D_8013A840) # addiu $a0, $a0, -0x57c0
/* AD4978 8005D7D8 28410004 */  slti  $at, $v0, 4
/* AD497C 8005D7DC 14200007 */  bnez  $at, .L8005D7FC
/* AD4980 8005D7E0 3C058014 */   lui   $a1, %hi(D_8013A868) # $a1, 0x8014
/* AD4984 8005D7E4 24A5A868 */  addiu $a1, %lo(D_8013A868) # addiu $a1, $a1, -0x5798
/* AD4988 8005D7E8 24060BB5 */  li    $a2, 2997
/* AD498C 8005D7EC 0C0007FC */  jal   __assert
/* AD4990 8005D7F0 AFA70024 */   sw    $a3, 0x24($sp)
/* AD4994 8005D7F4 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4998 8005D7F8 92020015 */  lbu   $v0, 0x15($s0)
.L8005D7FC:
/* AD499C 8005D7FC 00027080 */  sll   $t6, $v0, 2
/* AD49A0 8005D800 3C198012 */  lui   $t9, %hi(D_8011DEF8)
/* AD49A4 8005D804 032EC821 */  addu  $t9, $t9, $t6
/* AD49A8 8005D808 8F39DEF8 */  lw    $t9, %lo(D_8011DEF8)($t9)
/* AD49AC 8005D80C 8FA40020 */  lw    $a0, 0x20($sp)
/* AD49B0 8005D810 02002825 */  move  $a1, $s0
/* AD49B4 8005D814 0320F809 */  jalr  $t9
/* AD49B8 8005D818 AFA70024 */  sw    $a3, 0x24($sp)
/* AD49BC 8005D81C 8E030000 */  lw    $v1, ($s0)
/* AD49C0 8005D820 8FA70024 */  lw    $a3, 0x24($sp)
/* AD49C4 8005D824 50600007 */  beql  $v1, $zero, .L8005D844
/* AD49C8 8005D828 84E30000 */   lh    $v1, ($a3)
/* AD49CC 8005D82C 8C6F0130 */  lw    $t7, 0x130($v1)
/* AD49D0 8005D830 55E00004 */  bnezl $t7, .L8005D844
/* AD49D4 8005D834 84E30000 */   lh    $v1, ($a3)
/* AD49D8 8005D838 10000017 */  b     .L8005D898
/* AD49DC 8005D83C 2402FFFF */   li    $v0, -1
/* AD49E0 8005D840 84E30000 */  lh    $v1, ($a3)
.L8005D844:
/* AD49E4 8005D844 3C048014 */  lui   $a0, %hi(D_8013A880) # $a0, 0x8014
/* AD49E8 8005D848 28610032 */  slti  $at, $v1, 0x32
/* AD49EC 8005D84C 54200006 */  bnezl $at, .L8005D868
/* AD49F0 8005D850 94F80002 */   lhu   $t8, 2($a3)
/* AD49F4 8005D854 0C00084C */  jal   osSyncPrintf
/* AD49F8 8005D858 2484A880 */   addiu $a0, %lo(D_8013A880) # addiu $a0, $a0, -0x5780
/* AD49FC 8005D85C 1000000E */  b     .L8005D898
/* AD4A00 8005D860 2402FFFF */   li    $v0, -1
/* AD4A04 8005D864 94F80002 */  lhu   $t8, 2($a3)
.L8005D868:
/* AD4A08 8005D868 00034880 */  sll   $t1, $v1, 2
/* AD4A0C 8005D86C 00E95021 */  addu  $t2, $a3, $t1
/* AD4A10 8005D870 33080001 */  andi  $t0, $t8, 1
/* AD4A14 8005D874 51000004 */  beql  $t0, $zero, .L8005D888
/* AD4A18 8005D878 AD500004 */   sw    $s0, 4($t2)
/* AD4A1C 8005D87C 10000006 */  b     .L8005D898
/* AD4A20 8005D880 2402FFFF */   li    $v0, -1
/* AD4A24 8005D884 AD500004 */  sw    $s0, 4($t2)
.L8005D888:
/* AD4A28 8005D888 84EB0000 */  lh    $t3, ($a3)
/* AD4A2C 8005D88C 00601025 */  move  $v0, $v1
/* AD4A30 8005D890 256C0001 */  addiu $t4, $t3, 1
/* AD4A34 8005D894 A4EC0000 */  sh    $t4, ($a3)
.L8005D898:
/* AD4A38 8005D898 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4A3C 8005D89C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD4A40 8005D8A0 27BD0020 */  addiu $sp, $sp, 0x20
/* AD4A44 8005D8A4 03E00008 */  jr    $ra
/* AD4A48 8005D8A8 00000000 */   nop   

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

