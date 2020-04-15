glabel func_80BA152C
/* 007CC 80BA152C 3C0E80BA */  lui     $t6, %hi(func_80BA153C)    ## $t6 = 80BA0000
/* 007D0 80BA1530 25CE153C */  addiu   $t6, $t6, %lo(func_80BA153C) ## $t6 = 80BA153C
/* 007D4 80BA1534 03E00008 */  jr      $ra                        
/* 007D8 80BA1538 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
