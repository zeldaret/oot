glabel func_80A5AA14
/* 00DE4 80A5AA14 3C0E80A6 */  lui     $t6, %hi(func_80A5AA24)    ## $t6 = 80A60000
/* 00DE8 80A5AA18 25CEAA24 */  addiu   $t6, $t6, %lo(func_80A5AA24) ## $t6 = 80A5AA24
/* 00DEC 80A5AA1C 03E00008 */  jr      $ra                        
/* 00DF0 80A5AA20 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


