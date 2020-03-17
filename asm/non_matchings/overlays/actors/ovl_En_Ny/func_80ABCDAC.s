glabel func_80ABCDAC
/* 001FC 80ABCDAC 3C0E80AC */  lui     $t6, %hi(func_80ABCEEC)    ## $t6 = 80AC0000
/* 00200 80ABCDB0 25CECEEC */  addiu   $t6, $t6, %lo(func_80ABCEEC) ## $t6 = 80ABCEEC
/* 00204 80ABCDB4 03E00008 */  jr      $ra                        
/* 00208 80ABCDB8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


