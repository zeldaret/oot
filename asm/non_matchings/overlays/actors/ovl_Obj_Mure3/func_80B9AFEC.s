glabel func_80B9AFEC
/* 0061C 80B9AFEC 3C0E80BA */  lui     $t6, %hi(func_80B9AFFC)    ## $t6 = 80BA0000
/* 00620 80B9AFF0 25CEAFFC */  addiu   $t6, $t6, %lo(func_80B9AFFC) ## $t6 = 80B9AFFC
/* 00624 80B9AFF4 03E00008 */  jr      $ra                        
/* 00628 80B9AFF8 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
