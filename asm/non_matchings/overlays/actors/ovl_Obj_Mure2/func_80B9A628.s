glabel func_80B9A628
/* 006E8 80B9A628 3C0E80BA */  lui     $t6, %hi(func_80B9A638)    ## $t6 = 80BA0000
/* 006EC 80B9A62C 25CEA638 */  addiu   $t6, $t6, %lo(func_80B9A638) ## $t6 = 80B9A638
/* 006F0 80B9A630 03E00008 */  jr      $ra                        
/* 006F4 80B9A634 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
