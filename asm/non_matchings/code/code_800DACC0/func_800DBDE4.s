glabel func_800DBDE4
/* B52F84 800DBDE4 8FAE0010 */  lw    $t6, 0x10($sp)
/* B52F88 800DBDE8 3C011900 */  lui   $at, 0x1900
/* B52F8C 800DBDEC 30E8FFFF */  andi  $t0, $a3, 0xffff
/* B52F90 800DBDF0 31CF00FF */  andi  $t7, $t6, 0xff
/* B52F94 800DBDF4 000FC400 */  sll   $t8, $t7, 0x10
/* B52F98 800DBDF8 0301C825 */  or    $t9, $t8, $at
/* B52F9C 800DBDFC 00055C00 */  sll   $t3, $a1, 0x10
/* B52FA0 800DBE00 30CCFFFF */  andi  $t4, $a2, 0xffff
/* B52FA4 800DBE04 03284825 */  or    $t1, $t9, $t0
/* B52FA8 800DBE08 016C6825 */  or    $t5, $t3, $t4
/* B52FAC 800DBE0C AC890000 */  sw    $t1, ($a0)
/* B52FB0 800DBE10 03E00008 */  jr    $ra
/* B52FB4 800DBE14 AC8D0004 */   sw    $t5, 4($a0)

