glabel func_800DBC64
/* B52E04 800DBC64 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B52E08 800DBC68 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B52E0C 800DBC6C 00A17024 */  and   $t6, $a1, $at
/* B52E10 800DBC70 3C010A00 */  lui   $at, 0xa00
/* B52E14 800DBC74 0006CC00 */  sll   $t9, $a2, 0x10
/* B52E18 800DBC78 30E8FFFF */  andi  $t0, $a3, 0xffff
/* B52E1C 800DBC7C 01C17825 */  or    $t7, $t6, $at
/* B52E20 800DBC80 03284825 */  or    $t1, $t9, $t0
/* B52E24 800DBC84 AC8F0000 */  sw    $t7, ($a0)
/* B52E28 800DBC88 03E00008 */  jr    $ra
/* B52E2C 800DBC8C AC890004 */   sw    $t1, 4($a0)

