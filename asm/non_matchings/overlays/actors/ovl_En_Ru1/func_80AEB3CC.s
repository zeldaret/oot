glabel func_80AEB3CC
/* 007BC 80AEB3CC 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 007C0 80AEB3D0 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000000
/* 007C4 80AEB3D4 03E00008 */  jr      $ra                        
/* 007C8 80AEB3D8 A08F0181 */  sb      $t7, 0x0181($a0)           ## 00000181


