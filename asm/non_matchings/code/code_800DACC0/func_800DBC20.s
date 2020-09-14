glabel func_800DBC20
/* B52DC0 800DBC20 30AE00FF */  andi  $t6, $a1, 0xff
/* B52DC4 800DBC24 000E7C00 */  sll   $t7, $t6, 0x10
/* B52DC8 800DBC28 3C010800 */  lui   $at, 0x800
/* B52DCC 800DBC2C 01E1C025 */  or    $t8, $t7, $at
/* B52DD0 800DBC30 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B52DD4 800DBC34 03194025 */  or    $t0, $t8, $t9
/* B52DD8 800DBC38 AC880000 */  sw    $t0, ($a0)
/* B52DDC 800DBC3C 8FAB0010 */  lw    $t3, 0x10($sp)
/* B52DE0 800DBC40 00075400 */  sll   $t2, $a3, 0x10
/* B52DE4 800DBC44 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52DE8 800DBC48 014C6825 */  or    $t5, $t2, $t4
/* B52DEC 800DBC4C 03E00008 */  jr    $ra
/* B52DF0 800DBC50 AC8D0004 */   sw    $t5, 4($a0)

