glabel func_800DBCD4
/* B52E74 800DBCD4 30AE00FF */  andi  $t6, $a1, 0xff
/* B52E78 800DBCD8 000E7C00 */  sll   $t7, $t6, 0x10
/* B52E7C 800DBCDC 3C011200 */  lui   $at, 0x1200
/* B52E80 800DBCE0 01E1C025 */  or    $t8, $t7, $at
/* B52E84 800DBCE4 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B52E88 800DBCE8 03194025 */  or    $t0, $t8, $t9
/* B52E8C 800DBCEC AC880000 */  sw    $t0, ($a0)
/* B52E90 800DBCF0 8FAB0010 */  lw    $t3, 0x10($sp)
/* B52E94 800DBCF4 00075400 */  sll   $t2, $a3, 0x10
/* B52E98 800DBCF8 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52E9C 800DBCFC 014C6825 */  or    $t5, $t2, $t4
/* B52EA0 800DBD00 03E00008 */  jr    $ra
/* B52EA4 800DBD04 AC8D0004 */   sw    $t5, 4($a0)

