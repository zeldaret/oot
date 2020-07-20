glabel func_800DBD10
/* B52EB0 800DBD10 00067103 */  sra   $t6, $a2, 4
/* B52EB4 800DBD14 31CF00FF */  andi  $t7, $t6, 0xff
/* B52EB8 800DBD18 000FC400 */  sll   $t8, $t7, 0x10
/* B52EBC 800DBD1C 3C011400 */  lui   $at, 0x1400
/* B52EC0 800DBD20 0301C825 */  or    $t9, $t8, $at
/* B52EC4 800DBD24 30A8FFFF */  andi  $t0, $a1, 0xffff
/* B52EC8 800DBD28 03284825 */  or    $t1, $t9, $t0
/* B52ECC 800DBD2C AC890000 */  sw    $t1, ($a0)
/* B52ED0 800DBD30 03E00008 */  jr    $ra
/* B52ED4 800DBD34 AC870004 */   sw    $a3, 4($a0)

