glabel func_80B9A6E8
/* 007A8 80B9A6E8 3C0E80BA */  lui     $t6, %hi(func_80B9A6F8)    ## $t6 = 80BA0000
/* 007AC 80B9A6EC 25CEA6F8 */  addiu   $t6, $t6, %lo(func_80B9A6F8) ## $t6 = 80B9A6F8
/* 007B0 80B9A6F0 03E00008 */  jr      $ra                        
/* 007B4 80B9A6F4 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
