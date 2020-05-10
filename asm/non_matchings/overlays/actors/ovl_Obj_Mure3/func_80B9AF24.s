glabel func_80B9AF24
/* 00554 80B9AF24 3C0E80BA */  lui     $t6, %hi(func_80B9AF34)    ## $t6 = 80BA0000
/* 00558 80B9AF28 25CEAF34 */  addiu   $t6, $t6, %lo(func_80B9AF34) ## $t6 = 80B9AF34
/* 0055C 80B9AF2C 03E00008 */  jr      $ra                        
/* 00560 80B9AF30 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
