glabel func_800DBBD4
/* B52D74 800DBBD4 30AE00FF */  andi  $t6, $a1, 0xff
/* B52D78 800DBBD8 000E7C00 */  sll   $t7, $t6, 0x10
/* B52D7C 800DBBDC 3C010C00 */  lui   $at, 0xc00
/* B52D80 800DBBE0 01E1C025 */  or    $t8, $t7, $at
/* B52D84 800DBBE4 30D9FFFF */  andi  $t9, $a2, 0xffff
/* B52D88 800DBBE8 03194025 */  or    $t0, $t8, $t9
/* B52D8C 800DBBEC AC880000 */  sw    $t0, ($a0)
/* B52D90 800DBBF0 8FAB0010 */  lw    $t3, 0x10($sp)
/* B52D94 800DBBF4 00075400 */  sll   $t2, $a3, 0x10
/* B52D98 800DBBF8 316CFFFF */  andi  $t4, $t3, 0xffff
/* B52D9C 800DBBFC 014C6825 */  or    $t5, $t2, $t4
/* B52DA0 800DBC00 03E00008 */  jr    $ra
/* B52DA4 800DBC04 AC8D0004 */   sw    $t5, 4($a0)

