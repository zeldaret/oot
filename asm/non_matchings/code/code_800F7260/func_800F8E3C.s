glabel func_800F8E3C
/* B6FFDC 800F8E3C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6FFE0 800F8E40 AFB10018 */  sw    $s1, 0x18($sp)
/* B6FFE4 800F8E44 AFB00014 */  sw    $s0, 0x14($sp)
/* B6FFE8 800F8E48 3C108013 */  lui   $s0, %hi(D_801333A4) # $s0, 0x8013
/* B6FFEC 800F8E4C 3C118013 */  lui   $s1, %hi(D_801333A0) # $s1, 0x8013
/* B6FFF0 800F8E50 263133A0 */  addiu $s1, %lo(D_801333A0) # addiu $s1, $s1, 0x33a0
/* B6FFF4 800F8E54 261033A4 */  addiu $s0, %lo(D_801333A4) # addiu $s0, $s0, 0x33a4
/* B6FFF8 800F8E58 920E0000 */  lbu   $t6, ($s0)
/* B6FFFC 800F8E5C 922F0000 */  lbu   $t7, ($s1)
/* B70000 800F8E60 AFBF001C */  sw    $ra, 0x1c($sp)
/* B70004 800F8E64 51CF000A */  beql  $t6, $t7, .L800F8E90
/* B70008 800F8E68 8FBF001C */   lw    $ra, 0x1c($sp)
.L800F8E6C:
/* B7000C 800F8E6C 0C03DDA0 */  jal   func_800F7680
/* B70010 800F8E70 00000000 */   nop   
/* B70014 800F8E74 92180000 */  lbu   $t8, ($s0)
/* B70018 800F8E78 92290000 */  lbu   $t1, ($s1)
/* B7001C 800F8E7C 27190001 */  addiu $t9, $t8, 1
/* B70020 800F8E80 332800FF */  andi  $t0, $t9, 0xff
/* B70024 800F8E84 1509FFF9 */  bne   $t0, $t1, .L800F8E6C
/* B70028 800F8E88 A2190000 */   sb    $t9, ($s0)
/* B7002C 800F8E8C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800F8E90:
/* B70030 800F8E90 8FB00014 */  lw    $s0, 0x14($sp)
/* B70034 800F8E94 8FB10018 */  lw    $s1, 0x18($sp)
/* B70038 800F8E98 03E00008 */  jr    $ra
/* B7003C 800F8E9C 27BD0020 */   addiu $sp, $sp, 0x20

