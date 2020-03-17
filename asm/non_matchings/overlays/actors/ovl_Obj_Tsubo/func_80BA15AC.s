glabel func_80BA15AC
/* 0084C 80BA15AC 3C0E80BA */  lui     $t6, %hi(func_80BA15BC)    ## $t6 = 80BA0000
/* 00850 80BA15B0 25CE15BC */  addiu   $t6, $t6, %lo(func_80BA15BC) ## $t6 = 80BA15BC
/* 00854 80BA15B4 03E00008 */  jr      $ra                        
/* 00858 80BA15B8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


