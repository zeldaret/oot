glabel func_800DBD38
/* B52ED8 800DBD38 00067103 */  sra   $t6, $a2, 4
/* B52EDC 800DBD3C 31CF00FF */  andi  $t7, $t6, 0xff
/* B52EE0 800DBD40 000FC400 */  sll   $t8, $t7, 0x10
/* B52EE4 800DBD44 3C011500 */  lui   $at, 0x1500
/* B52EE8 800DBD48 0301C825 */  or    $t9, $t8, $at
/* B52EEC 800DBD4C 30A8FFFF */  andi  $t0, $a1, 0xffff
/* B52EF0 800DBD50 03284825 */  or    $t1, $t9, $t0
/* B52EF4 800DBD54 AC890000 */  sw    $t1, ($a0)
/* B52EF8 800DBD58 03E00008 */  jr    $ra
/* B52EFC 800DBD5C AC870004 */   sw    $a3, 4($a0)

