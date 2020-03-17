.rdata
glabel D_8013A988
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013A9B0
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A9C8
    .asciz "CollisionCheck_setAC():インデックスがオーバして追加不能\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

glabel D_8013AA04
    .asciz "pcl_obj->data_type <= CL_DATA_LBL_SWRD"
    .balign 4

glabel D_8013AA2C
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013AA44
    .asciz "CollisionCheck_setAC_SAC():全データ数より大きいところに登録しようとしている。\n"
    # EUC-JP: 全データ数より大きいところに登録しようとしている。| You are trying to register a location that is larger than the total number of data.
    .balign 4

glabel D_8013AA94
    .asciz "CollisionCheck_setAC():インデックスがオーバして追加不能\n"
    # EUC-JP: インデックスがオーバして追加不能 | Index exceeded and cannot be added
    .balign 4

.text
glabel Actor_CollisionCheck_SetAC
/* AD4B94 8005D9F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4B98 8005D9F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4B9C 8005D9FC AFB00018 */  sw    $s0, 0x18($sp)
/* AD4BA0 8005DA00 00C08025 */  move  $s0, $a2
/* AD4BA4 8005DA04 AFA40020 */  sw    $a0, 0x20($sp)
/* AD4BA8 8005DA08 0C03034A */  jal   func_800C0D28
/* AD4BAC 8005DA0C AFA50024 */   sw    $a1, 0x24($sp)
/* AD4BB0 8005DA10 24010001 */  li    $at, 1
/* AD4BB4 8005DA14 14410003 */  bne   $v0, $at, .L8005DA24
/* AD4BB8 8005DA18 8FA70024 */   lw    $a3, 0x24($sp)
/* AD4BBC 8005DA1C 10000034 */  b     .L8005DAF0
/* AD4BC0 8005DA20 2402FFFF */   li    $v0, -1
.L8005DA24:
/* AD4BC4 8005DA24 92020015 */  lbu   $v0, 0x15($s0)
/* AD4BC8 8005DA28 3C048014 */  lui   $a0, %hi(D_8013A988) # $a0, 0x8014
/* AD4BCC 8005DA2C 2484A988 */  addiu $a0, %lo(D_8013A988) # addiu $a0, $a0, -0x5678
/* AD4BD0 8005DA30 28410004 */  slti  $at, $v0, 4
/* AD4BD4 8005DA34 14200007 */  bnez  $at, .L8005DA54
/* AD4BD8 8005DA38 3C058014 */   lui   $a1, %hi(D_8013A9B0) # $a1, 0x8014
/* AD4BDC 8005DA3C 24A5A9B0 */  addiu $a1, %lo(D_8013A9B0) # addiu $a1, $a1, -0x5650
/* AD4BE0 8005DA40 24060C2A */  li    $a2, 3114
/* AD4BE4 8005DA44 0C0007FC */  jal   __assert
/* AD4BE8 8005DA48 AFA70024 */   sw    $a3, 0x24($sp)
/* AD4BEC 8005DA4C 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4BF0 8005DA50 92020015 */  lbu   $v0, 0x15($s0)
.L8005DA54:
/* AD4BF4 8005DA54 00027080 */  sll   $t6, $v0, 2
/* AD4BF8 8005DA58 3C198012 */  lui   $t9, %hi(D_8011DF08)
/* AD4BFC 8005DA5C 032EC821 */  addu  $t9, $t9, $t6
/* AD4C00 8005DA60 8F39DF08 */  lw    $t9, %lo(D_8011DF08)($t9)
/* AD4C04 8005DA64 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4C08 8005DA68 02002825 */  move  $a1, $s0
/* AD4C0C 8005DA6C 0320F809 */  jalr  $t9
/* AD4C10 8005DA70 AFA70024 */  sw    $a3, 0x24($sp)
/* AD4C14 8005DA74 8E030000 */  lw    $v1, ($s0)
/* AD4C18 8005DA78 8FA70024 */  lw    $a3, 0x24($sp)
/* AD4C1C 8005DA7C 50600007 */  beql  $v1, $zero, .L8005DA9C
/* AD4C20 8005DA80 8CE300CC */   lw    $v1, 0xcc($a3)
/* AD4C24 8005DA84 8C6F0130 */  lw    $t7, 0x130($v1)
/* AD4C28 8005DA88 55E00004 */  bnezl $t7, .L8005DA9C
/* AD4C2C 8005DA8C 8CE300CC */   lw    $v1, 0xcc($a3)
/* AD4C30 8005DA90 10000017 */  b     .L8005DAF0
/* AD4C34 8005DA94 2402FFFF */   li    $v0, -1
/* AD4C38 8005DA98 8CE300CC */  lw    $v1, 0xcc($a3)
.L8005DA9C:
/* AD4C3C 8005DA9C 3C048014 */  lui   $a0, %hi(D_8013A9C8) # $a0, 0x8014
/* AD4C40 8005DAA0 2861003C */  slti  $at, $v1, 0x3c
/* AD4C44 8005DAA4 54200006 */  bnezl $at, .L8005DAC0
/* AD4C48 8005DAA8 94F80002 */   lhu   $t8, 2($a3)
/* AD4C4C 8005DAAC 0C00084C */  jal   osSyncPrintf
/* AD4C50 8005DAB0 2484A9C8 */   addiu $a0, %lo(D_8013A9C8) # addiu $a0, $a0, -0x5638
/* AD4C54 8005DAB4 1000000E */  b     .L8005DAF0
/* AD4C58 8005DAB8 2402FFFF */   li    $v0, -1
/* AD4C5C 8005DABC 94F80002 */  lhu   $t8, 2($a3)
.L8005DAC0:
/* AD4C60 8005DAC0 00034880 */  sll   $t1, $v1, 2
/* AD4C64 8005DAC4 00E95021 */  addu  $t2, $a3, $t1
/* AD4C68 8005DAC8 33080001 */  andi  $t0, $t8, 1
/* AD4C6C 8005DACC 51000004 */  beql  $t0, $zero, .L8005DAE0
/* AD4C70 8005DAD0 AD5000D0 */   sw    $s0, 0xd0($t2)
/* AD4C74 8005DAD4 10000006 */  b     .L8005DAF0
/* AD4C78 8005DAD8 2402FFFF */   li    $v0, -1
/* AD4C7C 8005DADC AD5000D0 */  sw    $s0, 0xd0($t2)
.L8005DAE0:
/* AD4C80 8005DAE0 8CEB00CC */  lw    $t3, 0xcc($a3)
/* AD4C84 8005DAE4 00601025 */  move  $v0, $v1
/* AD4C88 8005DAE8 256C0001 */  addiu $t4, $t3, 1
/* AD4C8C 8005DAEC ACEC00CC */  sw    $t4, 0xcc($a3)
.L8005DAF0:
/* AD4C90 8005DAF0 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4C94 8005DAF4 8FB00018 */  lw    $s0, 0x18($sp)
/* AD4C98 8005DAF8 27BD0020 */  addiu $sp, $sp, 0x20
/* AD4C9C 8005DAFC 03E00008 */  jr    $ra
/* AD4CA0 8005DB00 00000000 */   nop   

/* AD4CA4 8005DB04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AD4CA8 8005DB08 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD4CAC 8005DB0C AFB10018 */  sw    $s1, 0x18($sp)
/* AD4CB0 8005DB10 AFB00014 */  sw    $s0, 0x14($sp)
/* AD4CB4 8005DB14 AFA40020 */  sw    $a0, 0x20($sp)
/* AD4CB8 8005DB18 90CE0015 */  lbu   $t6, 0x15($a2)
/* AD4CBC 8005DB1C 00A08025 */  move  $s0, $a1
/* AD4CC0 8005DB20 00C08825 */  move  $s1, $a2
/* AD4CC4 8005DB24 29C10004 */  slti  $at, $t6, 4
/* AD4CC8 8005DB28 14200008 */  bnez  $at, .L8005DB4C
/* AD4CCC 8005DB2C 3C048014 */   lui   $a0, %hi(D_8013AA04) # $a0, 0x8014
/* AD4CD0 8005DB30 3C058014 */  lui   $a1, %hi(D_8013AA2C) # $a1, 0x8014
/* AD4CD4 8005DB34 24A5AA2C */  addiu $a1, %lo(D_8013AA2C) # addiu $a1, $a1, -0x55d4
/* AD4CD8 8005DB38 2484AA04 */  addiu $a0, %lo(D_8013AA04) # addiu $a0, $a0, -0x55fc
/* AD4CDC 8005DB3C 24060C51 */  li    $a2, 3153
/* AD4CE0 8005DB40 0C0007FC */  jal   __assert
/* AD4CE4 8005DB44 AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4CE8 8005DB48 8FA7002C */  lw    $a3, 0x2c($sp)
.L8005DB4C:
/* AD4CEC 8005DB4C 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4CF0 8005DB50 0C03034A */  jal   func_800C0D28
/* AD4CF4 8005DB54 AFA7002C */   sw    $a3, 0x2c($sp)
/* AD4CF8 8005DB58 24010001 */  li    $at, 1
/* AD4CFC 8005DB5C 14410003 */  bne   $v0, $at, .L8005DB6C
/* AD4D00 8005DB60 8FA7002C */   lw    $a3, 0x2c($sp)
/* AD4D04 8005DB64 10000034 */  b     .L8005DC38
/* AD4D08 8005DB68 2402FFFF */   li    $v0, -1
.L8005DB6C:
/* AD4D0C 8005DB6C AFA7002C */  sw    $a3, 0x2c($sp)
/* AD4D10 8005DB70 922F0015 */  lbu   $t7, 0x15($s1)
/* AD4D14 8005DB74 3C198012 */  lui   $t9, %hi(D_8011DF08)
/* AD4D18 8005DB78 8FA40020 */  lw    $a0, 0x20($sp)
/* AD4D1C 8005DB7C 000FC080 */  sll   $t8, $t7, 2
/* AD4D20 8005DB80 0338C821 */  addu  $t9, $t9, $t8
/* AD4D24 8005DB84 8F39DF08 */  lw    $t9, %lo(D_8011DF08)($t9)
/* AD4D28 8005DB88 02202825 */  move  $a1, $s1
/* AD4D2C 8005DB8C 0320F809 */  jalr  $t9
/* AD4D30 8005DB90 00000000 */  nop   
/* AD4D34 8005DB94 8E230000 */  lw    $v1, ($s1)
/* AD4D38 8005DB98 8FA7002C */  lw    $a3, 0x2c($sp)
/* AD4D3C 8005DB9C 50600007 */  beql  $v1, $zero, .L8005DBBC
/* AD4D40 8005DBA0 96090002 */   lhu   $t1, 2($s0)
/* AD4D44 8005DBA4 8C680130 */  lw    $t0, 0x130($v1)
/* AD4D48 8005DBA8 55000004 */  bnezl $t0, .L8005DBBC
/* AD4D4C 8005DBAC 96090002 */   lhu   $t1, 2($s0)
/* AD4D50 8005DBB0 10000021 */  b     .L8005DC38
/* AD4D54 8005DBB4 2402FFFF */   li    $v0, -1
/* AD4D58 8005DBB8 96090002 */  lhu   $t1, 2($s0)
.L8005DBBC:
/* AD4D5C 8005DBBC 312A0001 */  andi  $t2, $t1, 1
/* AD4D60 8005DBC0 5140000E */  beql  $t2, $zero, .L8005DBFC
/* AD4D64 8005DBC4 8E0200CC */   lw    $v0, 0xcc($s0)
/* AD4D68 8005DBC8 8E0B00CC */  lw    $t3, 0xcc($s0)
/* AD4D6C 8005DBCC 00076080 */  sll   $t4, $a3, 2
/* AD4D70 8005DBD0 3C048014 */  lui   $a0, %hi(D_8013AA44) # $a0, 0x8014
/* AD4D74 8005DBD4 00EB082A */  slt   $at, $a3, $t3
/* AD4D78 8005DBD8 14200005 */  bnez  $at, .L8005DBF0
/* AD4D7C 8005DBDC 020C6821 */   addu  $t5, $s0, $t4
/* AD4D80 8005DBE0 0C00084C */  jal   osSyncPrintf
/* AD4D84 8005DBE4 2484AA44 */   addiu $a0, %lo(D_8013AA44) # addiu $a0, $a0, -0x55bc
/* AD4D88 8005DBE8 10000013 */  b     .L8005DC38
/* AD4D8C 8005DBEC 2402FFFF */   li    $v0, -1
.L8005DBF0:
/* AD4D90 8005DBF0 10000010 */  b     .L8005DC34
/* AD4D94 8005DBF4 ADB100D0 */   sw    $s1, 0xd0($t5)
/* AD4D98 8005DBF8 8E0200CC */  lw    $v0, 0xcc($s0)
.L8005DBFC:
/* AD4D9C 8005DBFC 3C048014 */  lui   $a0, %hi(D_8013AA94) # $a0, 0x8014
/* AD4DA0 8005DC00 2841003C */  slti  $at, $v0, 0x3c
/* AD4DA4 8005DC04 14200005 */  bnez  $at, .L8005DC1C
/* AD4DA8 8005DC08 00027080 */   sll   $t6, $v0, 2
/* AD4DAC 8005DC0C 0C00084C */  jal   osSyncPrintf
/* AD4DB0 8005DC10 2484AA94 */   addiu $a0, %lo(D_8013AA94) # addiu $a0, $a0, -0x556c
/* AD4DB4 8005DC14 10000008 */  b     .L8005DC38
/* AD4DB8 8005DC18 2402FFFF */   li    $v0, -1
.L8005DC1C:
/* AD4DBC 8005DC1C 020E7821 */  addu  $t7, $s0, $t6
/* AD4DC0 8005DC20 ADF100D0 */  sw    $s1, 0xd0($t7)
/* AD4DC4 8005DC24 8E1800CC */  lw    $t8, 0xcc($s0)
/* AD4DC8 8005DC28 00403825 */  move  $a3, $v0
/* AD4DCC 8005DC2C 27190001 */  addiu $t9, $t8, 1
/* AD4DD0 8005DC30 AE1900CC */  sw    $t9, 0xcc($s0)
.L8005DC34:
/* AD4DD4 8005DC34 00E01025 */  move  $v0, $a3
.L8005DC38:
/* AD4DD8 8005DC38 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD4DDC 8005DC3C 8FB00014 */  lw    $s0, 0x14($sp)
/* AD4DE0 8005DC40 8FB10018 */  lw    $s1, 0x18($sp)
/* AD4DE4 8005DC44 03E00008 */  jr    $ra
/* AD4DE8 8005DC48 27BD0020 */   addiu $sp, $sp, 0x20

