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
