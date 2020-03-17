glabel func_80B9A658
/* 00718 80B9A658 3C0E80BA */  lui     $t6, %hi(func_80B9A668)    ## $t6 = 80BA0000
/* 0071C 80B9A65C 25CEA668 */  addiu   $t6, $t6, %lo(func_80B9A668) ## $t6 = 80B9A668
/* 00720 80B9A660 03E00008 */  jr      $ra                        
/* 00724 80B9A664 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


