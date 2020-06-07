glabel func_80A4BD70
/* 000D0 80A4BD70 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 000D4 80A4BD74 908E01D3 */  lbu     $t6, 0x01D3($a0)           ## 000001D3
/* 000D8 80A4BD78 31D8FFFC */  andi    $t8, $t6, 0xFFFC           ## $t8 = 00000000
/* 000DC 80A4BD7C A09801D3 */  sb      $t8, 0x01D3($a0)           ## 000001D3
/* 000E0 80A4BD80 0305C825 */  or      $t9, $t8, $a1              ## $t9 = 00000000
/* 000E4 80A4BD84 03E00008 */  jr      $ra                        
/* 000E8 80A4BD88 A09901D3 */  sb      $t9, 0x01D3($a0)           ## 000001D3
