glabel func_80BA0514
/* 00574 80BA0514 3C0E80BA */  lui     $t6, %hi(func_80BA0524)    ## $t6 = 80BA0000
/* 00578 80BA0518 25CE0524 */  addiu   $t6, $t6, %lo(func_80BA0524) ## $t6 = 80BA0524
/* 0057C 80BA051C 03E00008 */  jr      $ra                        
/* 00580 80BA0520 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164


