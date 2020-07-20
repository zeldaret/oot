glabel func_800DBD94
/* B52F34 800DBD94 30AE00FF */  andi  $t6, $a1, 0xff
/* B52F38 800DBD98 000E7C00 */  sll   $t7, $t6, 0x10
/* B52F3C 800DBD9C 3C011700 */  lui   $at, 0x1700
/* B52F40 800DBDA0 01E1C025 */  or    $t8, $t7, $at
/* B52F44 800DBDA4 AC980000 */  sw    $t8, ($a0)
/* B52F48 800DBDA8 03E00008 */  jr    $ra
/* B52F4C 800DBDAC AC860004 */   sw    $a2, 4($a0)

