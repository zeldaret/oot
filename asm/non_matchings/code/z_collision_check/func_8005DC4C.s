.rdata
glabel D_8013AAD0
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013AAF8
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013AB10
    .asciz "CollisionCheck_setOC():インデックスがオーバして追加不能\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

glabel D_8013AB4C
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013AB74
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013AB8C
    .asciz "CollisionCheck_setOC_SAC():全データ数より大きいところに登録しようとしている。\n"
    # EUC-JP: 全データ数より大きいところに登録しようとしている。| You are trying to register a location that is larger than the total number of data.
    .balign 4

glabel D_8013ABDC
    .asciz "CollisionCheck_setOC():インデックスがオーバして追加不能\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

glabel D_8013AC18
    .asciz "CollisionCheck_setOCLine():インデックスがオーバして追加不能\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

.text
glabel Actor_CollisionCheck_SetOT
/* AD4DEC 8005DC4C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4DF0 8005DC50 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4DF4 8005DC54 AFB00018 */  sw    $s0, 0x18($sp)
/* AD4DF8 8005DC58 00C08025 */  move  $s0, $a2
/* AD4DFC 8005DC5C AFA40020 */  sw    $a0, 0x20($sp)
/* AD4E00 8005DC60 0C03034A */  jal   func_800C0D28
/* AD4E04 8005DC64 AFA50024 */   sw    $a1, 0x24($sp)
/* AD4E08 8005DC68 24010001 */  li    $at, 1
/* AD4E0C 8005DC6C 14410003 */  bne   $v0, $at, .L8005DC7C
/* AD4E10 8005DC70 8FA70024 */   lw    $a3, 0x24($sp)
/* AD4E14 8005DC74 10000034 */  b     .L8005DD48
/* AD4E18 8005DC78 2402FFFF */   li    $v0, -1
.L8005DC7C:
/* AD4E1C 8005DC7C 92020015 */  lbu   $v0, 0x15($s0)
/* AD4E20 8005DC80 3C048014 */  lui   $a0, %hi(D_8013AAD0) # $a0, 0x8014
/* AD4E24 8005DC84 2484AAD0 */  addiu $a0, %lo(D_8013AAD0) # addiu $a0, $a0, -0x5530
/* AD4E28 8005DC88 28410004 */  slti  $at, $v0, 4
/* AD4E2C 8005DC8C 14200007 */  bnez  $at, .L8005DCAC
/* AD4E30 8005DC90 3C058014 */   lui   $a1, %hi(D_8013AAF8) # $a1, 0x8014
/* AD4E34 8005DC94 24A5AAF8 */  addiu $a1, %lo(D_8013AAF8) # addiu $a1, $a1, -0x5508
/* AD4E38 8005DC98 24060C9D */  li    $a2, 3229
/* AD4E3C 8005DC9C 0C0007FC */  jal   __assert
/* AD4E40 8005DCA0 AFA70024 */   sw    $a3, 0x24($sp)
/* AD4E44 8005DCA4 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4E48 8005DCA8 92020015 */  lbu   $v0, 0x15($s0)
.L8005DCAC:
/* AD4E4C 8005DCAC 00027080 */  sll   $t6, $v0, 2
/* AD4E50 8005DCB0 3C198012 */  lui   $t9, %hi(D_8011DF18)
/* AD4E54 8005DCB4 032EC821 */  addu  $t9, $t9, $t6
/* AD4E58 8005DCB8 8F39DF18 */  lw    $t9, %lo(D_8011DF18)($t9)
/* AD4E5C 8005DCBC 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4E60 8005DCC0 02002825 */  move  $a1, $s0
/* AD4E64 8005DCC4 0320F809 */  jalr  $t9
/* AD4E68 8005DCC8 AFA70024 */  sw    $a3, 0x24($sp)
/* AD4E6C 8005DCCC 8E030000 */  lw    $v1, ($s0)
/* AD4E70 8005DCD0 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4E74 8005DCD4 50600007 */  beql  $v1, $zero, .L8005DCF4
/* AD4E78 8005DCD8 8CE301C0 */   lw    $v1, 0x1c0($a3)
/* AD4E7C 8005DCDC 8C6F0130 */  lw    $t7, 0x130($v1)
/* AD4E80 8005DCE0 55E00004 */  bnezl $t7, .L8005DCF4
/* AD4E84 8005DCE4 8CE301C0 */   lw    $v1, 0x1c0($a3)
/* AD4E88 8005DCE8 10000017 */  b     .L8005DD48
/* AD4E8C 8005DCEC 2402FFFF */   li    $v0, -1
/* AD4E90 8005DCF0 8CE301C0 */  lw    $v1, 0x1c0($a3)
.L8005DCF4:
/* AD4E94 8005DCF4 3C048014 */  lui   $a0, %hi(D_8013AB10) # $a0, 0x8014
/* AD4E98 8005DCF8 28610032 */  slti  $at, $v1, 0x32
/* AD4E9C 8005DCFC 54200006 */  bnezl $at, .L8005DD18
/* AD4EA0 8005DD00 94F80002 */   lhu   $t8, 2($a3)
/* AD4EA4 8005DD04 0C00084C */  jal   osSyncPrintf
/* AD4EA8 8005DD08 2484AB10 */   addiu $a0, %lo(D_8013AB10) # addiu $a0, $a0, -0x54f0
/* AD4EAC 8005DD0C 1000000E */  b     .L8005DD48
/* AD4EB0 8005DD10 2402FFFF */   li    $v0, -1
/* AD4EB4 8005DD14 94F80002 */  lhu   $t8, 2($a3)
.L8005DD18:
/* AD4EB8 8005DD18 00034880 */  sll   $t1, $v1, 2
/* AD4EBC 8005DD1C 00E95021 */  addu  $t2, $a3, $t1
/* AD4EC0 8005DD20 33080001 */  andi  $t0, $t8, 1
/* AD4EC4 8005DD24 51000004 */  beql  $t0, $zero, .L8005DD38
/* AD4EC8 8005DD28 AD5001C4 */   sw    $s0, 0x1c4($t2)
/* AD4ECC 8005DD2C 10000006 */  b     .L8005DD48
/* AD4ED0 8005DD30 2402FFFF */   li    $v0, -1
/* AD4ED4 8005DD34 AD5001C4 */  sw    $s0, 0x1c4($t2)
.L8005DD38:
/* AD4ED8 8005DD38 8CEB01C0 */  lw    $t3, 0x1c0($a3)
/* AD4EDC 8005DD3C 00601025 */  move  $v0, $v1
/* AD4EE0 8005DD40 256C0001 */  addiu $t4, $t3, 1
/* AD4EE4 8005DD44 ACEC01C0 */  sw    $t4, 0x1c0($a3)
.L8005DD48:
/* AD4EE8 8005DD48 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4EEC 8005DD4C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD4EF0 8005DD50 27BD0020 */  addiu $sp, $sp, 0x20
/* AD4EF4 8005DD54 03E00008 */  jr    $ra
/* AD4EF8 8005DD58 00000000 */   nop   

/* AD4EFC 8005DD5C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4F00 8005DD60 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4F04 8005DD64 AFB10018 */  sw    $s1, 0x18($sp)
/* AD4F08 8005DD68 AFB00014 */  sw    $s0, 0x14($sp)
/* AD4F0C 8005DD6C 00A08025 */  move  $s0, $a1
/* AD4F10 8005DD70 00C08825 */  move  $s1, $a2
/* AD4F14 8005DD74 AFA40020 */  sw    $a0, 0x20($sp)
/* AD4F18 8005DD78 0C03034A */  jal   func_800C0D28
/* AD4F1C 8005DD7C AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4F20 8005DD80 24010001 */  li    $at, 1
/* AD4F24 8005DD84 14410003 */  bne   $v0, $at, .L8005DD94
/* AD4F28 8005DD88 8FA7002C */   lw    $a3, 0x2c($sp)
/* AD4F2C 8005DD8C 1000003E */  b     .L8005DE88
/* AD4F30 8005DD90 2402FFFF */   li    $v0, -1
.L8005DD94:
/* AD4F34 8005DD94 92220015 */  lbu   $v0, 0x15($s1)
/* AD4F38 8005DD98 3C048014 */  lui   $a0, %hi(D_8013AB4C) # $a0, 0x8014
/* AD4F3C 8005DD9C 2484AB4C */  addiu $a0, %lo(D_8013AB4C) # addiu $a0, $a0, -0x54b4
/* AD4F40 8005DDA0 28410004 */  slti  $at, $v0, 4
/* AD4F44 8005DDA4 14200007 */  bnez  $at, .L8005DDC4
/* AD4F48 8005DDA8 3C058014 */   lui   $a1, %hi(D_8013AB74) # $a1, 0x8014
/* AD4F4C 8005DDAC 24A5AB74 */  addiu $a1, %lo(D_8013AB74) # addiu $a1, $a1, -0x548c
/* AD4F50 8005DDB0 24060CCA */  li    $a2, 3274
/* AD4F54 8005DDB4 0C0007FC */  jal   __assert
/* AD4F58 8005DDB8 AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4F5C 8005DDBC 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD4F60 8005DDC0 92220015 */  lbu   $v0, 0x15($s1)
.L8005DDC4:
/* AD4F64 8005DDC4 00027080 */  sll   $t6, $v0, 2
/* AD4F68 8005DDC8 3C198012 */  lui   $t9, %hi(D_8011DF18)
/* AD4F6C 8005DDCC 032EC821 */  addu  $t9, $t9, $t6
/* AD4F70 8005DDD0 8F39DF18 */  lw    $t9, %lo(D_8011DF18)($t9)
/* AD4F74 8005DDD4 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4F78 8005DDD8 02202825 */  move  $a1, $s1
/* AD4F7C 8005DDDC 0320F809 */  jalr  $t9
/* AD4F80 8005DDE0 AFA7002C */  sw    $a3, 0x2c($sp)
/* AD4F84 8005DDE4 8E230000 */  lw    $v1, ($s1)
/* AD4F88 8005DDE8 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD4F8C 8005DDEC 50600007 */  beql  $v1, $zero, .L8005DE0C
/* AD4F90 8005DDF0 96180002 */   lhu   $t8, 2($s0)
/* AD4F94 8005DDF4 8C6F0130 */  lw    $t7, 0x130($v1)
/* AD4F98 8005DDF8 55E00004 */  bnezl $t7, .L8005DE0C
/* AD4F9C 8005DDFC 96180002 */   lhu   $t8, 2($s0)
/* AD4FA0 8005DE00 10000021 */  b     .L8005DE88
/* AD4FA4 8005DE04 2402FFFF */   li    $v0, -1
/* AD4FA8 8005DE08 96180002 */  lhu   $t8, 2($s0)
.L8005DE0C:
/* AD4FAC 8005DE0C 33080001 */  andi  $t0, $t8, 1
/* AD4FB0 8005DE10 5100000E */  beql  $t0, $zero, .L8005DE4C
/* AD4FB4 8005DE14 8E0201C0 */   lw    $v0, 0x1c0($s0)
/* AD4FB8 8005DE18 8E0901C0 */  lw    $t1, 0x1c0($s0)
/* AD4FBC 8005DE1C 00075080 */  sll   $t2, $a3, 2
/* AD4FC0 8005DE20 3C048014 */  lui   $a0, %hi(D_8013AB8C) # $a0, 0x8014
/* AD4FC4 8005DE24 00E9082A */  slt   $at, $a3, $t1
/* AD4FC8 8005DE28 14200005 */  bnez  $at, .L8005DE40
/* AD4FCC 8005DE2C 020A5821 */   addu  $t3, $s0, $t2
/* AD4FD0 8005DE30 0C00084C */  jal   osSyncPrintf
/* AD4FD4 8005DE34 2484AB8C */   addiu $a0, %lo(D_8013AB8C) # addiu $a0, $a0, -0x5474
/* AD4FD8 8005DE38 10000013 */  b     .L8005DE88
/* AD4FDC 8005DE3C 2402FFFF */   li    $v0, -1
.L8005DE40:
/* AD4FE0 8005DE40 10000010 */  b     .L8005DE84
/* AD4FE4 8005DE44 AD710004 */   sw    $s1, 4($t3)
/* AD4FE8 8005DE48 8E0201C0 */  lw    $v0, 0x1c0($s0)
.L8005DE4C:
/* AD4FEC 8005DE4C 3C048014 */  lui   $a0, %hi(D_8013ABDC) # $a0, 0x8014
/* AD4FF0 8005DE50 28410032 */  slti  $at, $v0, 0x32
/* AD4FF4 8005DE54 14200005 */  bnez  $at, .L8005DE6C
/* AD4FF8 8005DE58 00026080 */   sll   $t4, $v0, 2
/* AD4FFC 8005DE5C 0C00084C */  jal   osSyncPrintf
/* AD5000 8005DE60 2484ABDC */   addiu $a0, %lo(D_8013ABDC) # addiu $a0, $a0, -0x5424
/* AD5004 8005DE64 10000008 */  b     .L8005DE88
/* AD5008 8005DE68 2402FFFF */   li    $v0, -1
.L8005DE6C:
/* AD500C 8005DE6C 020C6821 */  addu  $t5, $s0, $t4
/* AD5010 8005DE70 ADB101C4 */  sw    $s1, 0x1c4($t5)
/* AD5014 8005DE74 8E0E01C0 */  lw    $t6, 0x1c0($s0)
/* AD5018 8005DE78 00403825 */  move  $a3, $v0
/* AD501C 8005DE7C 25D90001 */  addiu $t9, $t6, 1
/* AD5020 8005DE80 AE1901C0 */  sw    $t9, 0x1c0($s0)
.L8005DE84:
/* AD5024 8005DE84 00E01025 */  move  $v0, $a3
.L8005DE88:
/* AD5028 8005DE88 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD502C 8005DE8C 8FB00014 */  lw    $s0, 0x14($sp)
/* AD5030 8005DE90 8FB10018 */  lw    $s1, 0x18($sp)
/* AD5034 8005DE94 03E00008 */  jr    $ra
/* AD5038 8005DE98 27BD0020 */   addiu $sp, $sp, 0x20

/* AD503C 8005DE9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD5040 8005DEA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD5044 8005DEA4 AFA40018 */  sw    $a0, 0x18($sp)
/* AD5048 8005DEA8 AFA60020 */  sw    $a2, 0x20($sp)
/* AD504C 8005DEAC 0C03034A */  jal   func_800C0D28
/* AD5050 8005DEB0 AFA5001C */   sw    $a1, 0x1c($sp)
/* AD5054 8005DEB4 24010001 */  li    $at, 1
/* AD5058 8005DEB8 14410003 */  bne   $v0, $at, .L8005DEC8
/* AD505C 8005DEBC 8FA7001C */   lw    $a3, 0x1c($sp)
/* AD5060 8005DEC0 10000016 */  b     .L8005DF1C
/* AD5064 8005DEC4 2402FFFF */   li    $v0, -1
.L8005DEC8:
/* AD5068 8005DEC8 8FA40018 */  lw    $a0, 0x18($sp)
/* AD506C 8005DECC 8FA50020 */  lw    $a1, 0x20($sp)
/* AD5070 8005DED0 0C0174E9 */  jal   func_8005D3A4
/* AD5074 8005DED4 AFA7001C */   sw    $a3, 0x1c($sp)
/* AD5078 8005DED8 8FA7001C */  lw    $a3, 0x1c($sp)
/* AD507C 8005DEDC 3C048014 */  lui   $a0, %hi(D_8013AC18) # $a0, 0x8014
/* AD5080 8005DEE0 8FAE0020 */  lw    $t6, 0x20($sp)
/* AD5084 8005DEE4 8CE3028C */  lw    $v1, 0x28c($a3)
/* AD5088 8005DEE8 28610003 */  slti  $at, $v1, 3
/* AD508C 8005DEEC 14200005 */  bnez  $at, .L8005DF04
/* AD5090 8005DEF0 00037880 */   sll   $t7, $v1, 2
/* AD5094 8005DEF4 0C00084C */  jal   osSyncPrintf
/* AD5098 8005DEF8 2484AC18 */   addiu $a0, %lo(D_8013AC18) # addiu $a0, $a0, -0x53e8
/* AD509C 8005DEFC 10000007 */  b     .L8005DF1C
/* AD50A0 8005DF00 2402FFFF */   li    $v0, -1
.L8005DF04:
/* AD50A4 8005DF04 00EFC021 */  addu  $t8, $a3, $t7
/* AD50A8 8005DF08 AF0E0290 */  sw    $t6, 0x290($t8)
/* AD50AC 8005DF0C 8CF9028C */  lw    $t9, 0x28c($a3)
/* AD50B0 8005DF10 00601025 */  move  $v0, $v1
/* AD50B4 8005DF14 27280001 */  addiu $t0, $t9, 1
/* AD50B8 8005DF18 ACE8028C */  sw    $t0, 0x28c($a3)
.L8005DF1C:
/* AD50BC 8005DF1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD50C0 8005DF20 27BD0018 */  addiu $sp, $sp, 0x18
/* AD50C4 8005DF24 03E00008 */  jr    $ra
/* AD50C8 8005DF28 00000000 */   nop   

