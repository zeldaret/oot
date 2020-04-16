glabel func_80AEB7D0
/* 00BC0 80AEB7D0 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 00BC4 80AEB7D4 31CFFFFC */  andi    $t7, $t6, 0xFFFC           ## $t7 = 00000000
/* 00BC8 80AEB7D8 03E00008 */  jr      $ra                        
/* 00BCC 80AEB7DC A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181
