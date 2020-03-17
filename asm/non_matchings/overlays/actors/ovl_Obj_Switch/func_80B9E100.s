glabel func_80B9E100
/* 00EF0 80B9E100 3C0E80BA */  lui     $t6, %hi(func_80B9E118)    ## $t6 = 80BA0000
/* 00EF4 80B9E104 25CEE118 */  addiu   $t6, $t6, %lo(func_80B9E118) ## $t6 = 80B9E118
/* 00EF8 80B9E108 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00EFC 80B9E10C AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 00F00 80B9E110 03E00008 */  jr      $ra                        
/* 00F04 80B9E114 A48F0170 */  sh      $t7, 0x0170($a0)           ## 00000170


