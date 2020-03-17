glabel func_80B8EF28
/* 004A8 80B8EF28 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 004AC 80B8EF2C 908E01F7 */  lbu     $t6, 0x01F7($a0)           ## 000001F7
/* 004B0 80B8EF30 31D8FFF0 */  andi    $t8, $t6, 0xFFF0           ## $t8 = 00000000
/* 004B4 80B8EF34 A09801F7 */  sb      $t8, 0x01F7($a0)           ## 000001F7
/* 004B8 80B8EF38 0305C825 */  or      $t9, $t8, $a1              ## $t9 = 00000000
/* 004BC 80B8EF3C 03E00008 */  jr      $ra                        
/* 004C0 80B8EF40 A09901F7 */  sb      $t9, 0x01F7($a0)           ## 000001F7


