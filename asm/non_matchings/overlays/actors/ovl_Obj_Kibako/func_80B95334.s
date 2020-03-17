glabel func_80B95334
/* 00694 80B95334 3C0E80B9 */  lui     $t6, %hi(func_80B9534C)    ## $t6 = 80B90000
/* 00698 80B95338 25CE534C */  addiu   $t6, $t6, %lo(func_80B9534C) ## $t6 = 80B9534C
/* 0069C 80B9533C 240F00FE */  addiu   $t7, $zero, 0x00FE         ## $t7 = 000000FE
/* 006A0 80B95340 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 006A4 80B95344 03E00008 */  jr      $ra                        
/* 006A8 80B95348 A08F00AE */  sb      $t7, 0x00AE($a0)           ## 000000AE


