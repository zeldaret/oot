glabel func_80B992E4
/* 00844 80B992E4 3C0E80BA */  lui     $t6, %hi(func_80B992F8)    ## $t6 = 80BA0000
/* 00848 80B992E8 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0084C 80B992EC 25CE92F8 */  addiu   $t6, $t6, %lo(func_80B992F8) ## $t6 = 80B992F8
/* 00850 80B992F0 03E00008 */  jr      $ra                        
/* 00854 80B992F4 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
