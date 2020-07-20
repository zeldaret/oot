glabel func_800E9AAC
/* B60C4C 800E9AAC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B60C50 800E9AB0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B60C54 800E9AB4 30A500FF */  andi  $a1, $a1, 0xff
/* B60C58 800E9AB8 00057080 */  sll   $t6, $a1, 2
/* B60C5C 800E9ABC AFBF0024 */  sw    $ra, 0x24($sp)
/* B60C60 800E9AC0 AFB30020 */  sw    $s3, 0x20($sp)
/* B60C64 800E9AC4 AFB2001C */  sw    $s2, 0x1c($sp)
/* B60C68 800E9AC8 AFB10018 */  sw    $s1, 0x18($sp)
/* B60C6C 800E9ACC AFB00014 */  sw    $s0, 0x14($sp)
/* B60C70 800E9AD0 008E7821 */  addu  $t7, $a0, $t6
/* B60C74 800E9AD4 8DF20038 */  lw    $s2, 0x38($t7)
/* B60C78 800E9AD8 00008025 */  move  $s0, $zero
/* B60C7C 800E9ADC 24130004 */  li    $s3, 4
/* B60C80 800E9AE0 92590000 */  lbu   $t9, ($s2)
/* B60C84 800E9AE4 A2400078 */  sb    $zero, 0x78($s2)
/* B60C88 800E9AE8 AE460060 */  sw    $a2, 0x60($s2)
/* B60C8C 800E9AEC 37290080 */  ori   $t1, $t9, 0x80
/* B60C90 800E9AF0 312A00BF */  andi  $t2, $t1, 0xbf
/* B60C94 800E9AF4 A2490000 */  sb    $t1, ($s2)
/* B60C98 800E9AF8 A24A0000 */  sb    $t2, ($s2)
/* B60C9C 800E9AFC A640001E */  sh    $zero, 0x1e($s2)
/* B60CA0 800E9B00 02408825 */  move  $s1, $s2
.L800E9B04:
/* B60CA4 800E9B04 8E2B0050 */  lw    $t3, 0x50($s1)
/* B60CA8 800E9B08 02402025 */  move  $a0, $s2
/* B60CAC 800E9B0C 51600004 */  beql  $t3, $zero, .L800E9B20
/* B60CB0 800E9B10 26100001 */   addiu $s0, $s0, 1
/* B60CB4 800E9B14 0C03A61E */  jal   func_800E9878
/* B60CB8 800E9B18 02002825 */   move  $a1, $s0
/* B60CBC 800E9B1C 26100001 */  addiu $s0, $s0, 1
.L800E9B20:
/* B60CC0 800E9B20 1613FFF8 */  bne   $s0, $s3, .L800E9B04
/* B60CC4 800E9B24 26310004 */   addiu $s1, $s1, 4
/* B60CC8 800E9B28 8FBF0024 */  lw    $ra, 0x24($sp)
/* B60CCC 800E9B2C 8FB00014 */  lw    $s0, 0x14($sp)
/* B60CD0 800E9B30 8FB10018 */  lw    $s1, 0x18($sp)
/* B60CD4 800E9B34 8FB2001C */  lw    $s2, 0x1c($sp)
/* B60CD8 800E9B38 8FB30020 */  lw    $s3, 0x20($sp)
/* B60CDC 800E9B3C 03E00008 */  jr    $ra
/* B60CE0 800E9B40 27BD0028 */   addiu $sp, $sp, 0x28

