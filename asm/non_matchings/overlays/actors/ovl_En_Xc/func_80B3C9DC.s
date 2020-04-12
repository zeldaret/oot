glabel func_80B3C9DC
/* 007FC 80B3C9DC 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 00800 80B3C9E0 31CFFFFC */  andi    $t7, $t6, 0xFFFC           ## $t7 = 00000000
/* 00804 80B3C9E4 03E00008 */  jr      $ra                        
/* 00808 80B3C9E8 A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181
