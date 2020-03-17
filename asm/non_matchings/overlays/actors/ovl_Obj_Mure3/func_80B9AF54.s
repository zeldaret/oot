glabel func_80B9AF54
/* 00584 80B9AF54 3C0E80BA */  lui     $t6, %hi(func_80B9AF64)    ## $t6 = 80BA0000
/* 00588 80B9AF58 25CEAF64 */  addiu   $t6, $t6, %lo(func_80B9AF64) ## $t6 = 80B9AF64
/* 0058C 80B9AF5C 03E00008 */  jr      $ra                        
/* 00590 80B9AF60 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C


