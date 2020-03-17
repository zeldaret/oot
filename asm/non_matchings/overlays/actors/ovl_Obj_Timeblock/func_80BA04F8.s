glabel func_80BA04F8
/* 00558 80BA04F8 3C0E80BA */  lui     $t6, %hi(func_80BA0508)    ## $t6 = 80BA0000
/* 0055C 80BA04FC 25CE0508 */  addiu   $t6, $t6, %lo(func_80BA0508) ## $t6 = 80BA0508
/* 00560 80BA0500 03E00008 */  jr      $ra                        
/* 00564 80BA0504 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164


